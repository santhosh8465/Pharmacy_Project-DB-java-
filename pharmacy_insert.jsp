<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,num,pid,adr;
	
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

num=request.getParameter("num");
name=request.getParameter("name");
pid=request.getParameter("pid");
adr=request.getParameter("adr");

%>
<%
Statement st1=con.createStatement();
/*ResultSet r=st1.executeQuery("SELECT MAX(no) FROM register");
if(r.next()){
	i=r.getInt(1);
	if(i>=0){ i++;}}*/

int q= st.executeUpdate("insert into PHARMACY values('"+pid+"','"+name+"','"+adr+"','"+num+"')");

if(q>0)
{

	response.sendRedirect("Add_Pharmacy.jsp?msgg=succ");
}
}
catch(Exception e)
{
	response.sendRedirect("Add_Pharmacy.jsp?msg=existed");
e.printStackTrace();
	}
%>
