<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,ssn,exp,specialty,ex;
	
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

ssn=request.getParameter("ssn");
name=request.getParameter("name");
specialty=request.getParameter("specialty");
ex=request.getParameter("ex");
//System.out.println(pwd);
%>
<%
Statement st1=con.createStatement();
/*ResultSet r=st1.executeQuery("SELECT MAX(no) FROM register");
if(r.next()){
	i=r.getInt(1);
	if(i>=0){ i++;}}*/

int q= st.executeUpdate("insert into DOCTOR values('"+ssn+"','"+name+"','"+specialty+"','"+ex+"')");

if(q>0)
{



//int res=st.executeUpdate("insert into keygen values('"+username+"','"+pk+"','"+mk+"','"+sk+"')");


	response.sendRedirect("doctor.jsp?msgg=succ");
}
}
catch(Exception e)
{
	response.sendRedirect("doctor_signup.jsp?msg=existed");
e.printStackTrace();
	}
%>
