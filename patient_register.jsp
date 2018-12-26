<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,ssn,physician,adr,age;
	
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

ssn=request.getParameter("ssn");
name=request.getParameter("name");
physician=request.getParameter("physician");
adr=request.getParameter("adr");
age=request.getParameter("age");
%>
<%
Statement st1=con.createStatement();
/*ResultSet r=st1.executeQuery("SELECT MAX(no) FROM register");
if(r.next()){
	i=r.getInt(1);
	if(i>=0){ i++;}}*/

int q= st.executeUpdate("insert into PRI_PHY_PATIENT values('"+ssn+"','"+name+"','"+age+"','"+adr+"','"+physician+"')");

if(q>0)
{

	response.sendRedirect("patient.jsp?msgg=succ");
}


}
catch(Exception e)
{
	response.sendRedirect("signup.jsp?msg=existed");
e.printStackTrace();
	}
%>
