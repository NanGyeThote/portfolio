<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,java.text.*"%>
<%
String flight_id=request.getParameter("flight_id");
String flight_no=request.getParameter("flight_no");
String flight_name=request.getParameter("flight_name");


session.setAttribute("flight_id",flight_id);

try
{
         Class.forName("com.mysql.cj.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/AIRRESERVE", "root", "");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("delete from flight_details where flight_id = '"+flight_id+"' AND flight_no = '"+flight_no+"' AND flight_name =  '"+flight_name+"'");
            response.sendRedirect("deleteflight_success.jsp");

        }
        catch(Exception e)
        {
            response.sendRedirect("deleteflight_failed.jsp");
        }
 %>