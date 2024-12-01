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

public class search_flight_by_fname_u extends HttpServlet {

  
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
        String driver = "com.mysql.cj.jdbc.Driver";
        String userName = "root";
        String password = "";
        Statement st=null;
        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("connected!.....");
            String flight_name = request.getParameter("flight_name");
            if(flight_name == null || flight_name.equals("")){
                RequestDispatcher error = request.getRequestDispatcher("error_u.jsp");
                error.forward(request, response);
                conn.close();
                System.out.println("Disconnected!");
            }
            else{
            	ArrayList<ArrayList<String>> pid_list = new ArrayList<>(); // Outer ArrayList to hold lists of flight details

            	String query = "SELECT * FROM flight_details";
            	if (flight_name != null && !flight_name.equals("")) {
            	    query = "SELECT * FROM flight_details WHERE flight_name='" + flight_name + "' ";
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
            	    al.add(rs.getString(10));
            	    al.add(rs.getString(11));
            	    al.add(rs.getString(12));
            	    al.add(rs.getString(13));
            	    al.add(rs.getString(14));
            	    al.add(rs.getString(15));
            	    al.add(rs.getString(16));
            	    al.add(rs.getString(17));
            	    al.add(rs.getString(18));
            	    al.add(rs.getString(19));
            	    al.add(rs.getString(20));
            	    al.add(rs.getString(21));

            	    System.out.println("al :: " + al);
            	    pid_list.add(al); // Add the inner ArrayList to the outer ArrayList
            	}

            	// Binary search for the requested flight ID
            	int left = 0;
            	int right = pid_list.size() - 1;
            	while (left <= right) {
            	    int mid = left + (right - left) / 2;
            	    String midFlightId = pid_list.get(mid).get(0); // Assuming the flight ID is stored at index 0
            	    int compare = midFlightId.compareTo(flight_name);
            	    if (compare == 0) {
            	        // Flight ID found, return the details
            	        ArrayList<String> flightDetails = pid_list.get(mid);
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
            	RequestDispatcher view = request.getRequestDispatcher("searc_filter_flights_result_u.jsp");
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
