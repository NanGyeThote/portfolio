package Servelet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.RequestDispatcher;

public class view_payment_detail extends HttpServlet {

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
        Statement st=null;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("connected!.....");
            String pnro = request.getParameter("PNR");
            String uname = request.getParameter("U_name");
            
            if(pnro == null || pnro.equals("")){
                RequestDispatcher error = request.getRequestDispatcher("coupon_search_failed.jsp");
                error.forward(request, response);
                conn.close();
                System.out.println("Disconnected!");
            }
            else{
            	ArrayList<ArrayList<String>> pid_list = new ArrayList<>(); // Outer ArrayList to hold lists of flight details

            	String query = "SELECT * FROM payment_details";
            	if (pnro != null && !pnro.equals("")) {
            	    query = "SELECT * FROM payment_details WHERE pnr='" + pnro + "' ";
            	}
            	System.out.println("query " + query);
            	st = conn.createStatement();
            	ResultSet rs = st.executeQuery(query);

            	// Store flight details in an ArrayList
            	while (rs.next()) {
            	    ArrayList<String> al = new ArrayList<>(); // Inner ArrayList to hold individual flight details

            	    al.add(rs.getString(1)); // Add each column value to the inner ArrayList
            	    al.add(rs.getString(2));
            	    al.add(rs.getString(3));
            	    al.add(rs.getString(4));
            	    al.add(rs.getString(5));
            	    al.add(rs.getString(6));
            	    al.add(rs.getString(7));
            	    al.add(rs.getString(8));
            	    al.add(rs.getString(9));
            	    

            	    System.out.println("al :: " + al);
            	    pid_list.add(al); // Add the inner ArrayList to the outer ArrayList
            	}

            	// Binary search for the requested flight ID
            	int left = 0;
            	int right = pid_list.size() - 1;
            	while (left <= right) {
            	    int mid = left + (right - left) / 2;
            	    String midFlightId = pid_list.get(mid).get(0); // Assuming the flight ID is stored at index 0
            	    int compare = midFlightId.compareTo(pnro);
            	    if (compare == 0) {
            	        // Flight ID found, return the details
            	        ArrayList<String> paymentDetails = pid_list.get(mid);
            	        // Process the found flight details as needed
            	        break;
            	    } else if (compare < 0) {
            	        left = mid + 1; // Search the right half
            	    } else {
            	        right = mid - 1; // Search the left half
            	    }
            	}
            	long startTime = System.currentTimeMillis();

            	request.setAttribute("piList", pid_list);
            	RequestDispatcher view = request.getRequestDispatcher("view_payment_details.jsp");
            	view.forward(request, response);

            	// Close the connection after forwarding the request
            	conn.close();
            	System.out.println("Disconnected!");

            	long endTime = System.currentTimeMillis();
            	long runtime = endTime - startTime;
            	System.out.println("Runtime: " + runtime + " milliseconds");
                }
           
            } 
            catch (Exception e) {
                e.printStackTrace();
            }
        }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
