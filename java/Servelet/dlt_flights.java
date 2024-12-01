package Servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;

public class dlt_flights extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out = response.getWriter();
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "AIRRESERVE";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        try {
            int count=0;
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("connected!.....");
            String flight_id = request.getParameter("flight_id");
            String flight_no = request.getParameter("flight_no");
            String flight_name = request.getParameter("flight_name");
//            int flight_id_int=Integer.parseInt(flight_id);
            
            HttpSession session = request.getSession();
            session.setAttribute("flight_id", flight_id);
             
            Statement st1=null;
            String query1 = "select flight_id, flight_no, flight_name from flight_details where flight_id='" + flight_id + "' and flight_no = '" + flight_no + "' and flight_name = '" + flight_name + "'  ";
            System.out.println("query1 " + query1);
            st1 = conn.createStatement();
            String flight_id_search = "";
            String flight_no_search = "";
            String flight_name_search = "";
            
            ResultSet rs = st1.executeQuery(query1);
            while(rs.next()){
                flight_id_search = rs.getString("flight_id");
                flight_no_search = rs.getString("flight_no");
                flight_name_search = rs.getString("flight_name");
            }
            System.out.println("Flight Number: "+flight_id);
            System.out.println("Flight Number: "+flight_name);
            System.out.println("Flight Number: "+flight_no);
            System.out.println("Flight_id_search: "+flight_id_search);
            System.out.println(flight_id.equals(flight_id_search));
            
            if(((flight_id.equals(flight_id_search)) == true) && ((flight_no.equals(flight_no_search)) == true) && ((flight_name.equals(flight_name_search)) == true)){
                String dlt = "DELETE FROM flight_details WHERE flight_id = ? and flight_no = ? and flight_name = ?";
                PreparedStatement psdlt=conn.prepareStatement(dlt);
                psdlt.setString(1, flight_id);
                psdlt.setString(2,flight_no);
                psdlt.setString(3, flight_name);
                int i=psdlt.executeUpdate();
                if(i==1)
                {
                    System.out.println("Flight Schedule is Deleted");
                }
                RequestDispatcher view = request.getRequestDispatcher("flight_dlt_scs.jsp");
                view.forward(request, response);
                conn.close();
            }
            else{
                System.out.println("Flight Schedule can't be Deleted");
                RequestDispatcher view = request.getRequestDispatcher("deleteflight_failed.jsp");
                view.forward(request, response);
                conn.close();
                long startTime = System.currentTimeMillis();
            	long endTime = System.currentTimeMillis();
            	long runtime = endTime - startTime;
            	System.out.println("Runtime: " + runtime + " milliseconds");
            }
                
        }
        catch(ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException  e){
            System.out.print(e);
        }       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
