<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String price,pname,tn,pid;
	
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

price=request.getParameter("price");
pname=request.getParameter("pname");
tn=request.getParameter("tn");
pid=request.getParameter("pid");



%>
<%
Statement st1=con.createStatement();
/*ResultSet r=st1.executeQuery("SELECT MAX(no) FROM register");
if(r.next()){
	i=r.getInt(1);
	if(i>=0){ i++;}}*/

int q= st.executeUpdate("insert into SELL values('"+price+"','"+pname+"','"+tn+"','"+pid+"')");

if(q>0)
{

	response.sendRedirect("sells.jsp?msgg=succ");
}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
