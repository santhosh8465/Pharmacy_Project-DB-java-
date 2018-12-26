<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,num;
	
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

num=request.getParameter("num");
name=request.getParameter("name");

%>
<%
Statement st1=con.createStatement();
/*ResultSet r=st1.executeQuery("SELECT MAX(no) FROM register");
if(r.next()){
	i=r.getInt(1);
	if(i>=0){ i++;}}*/

int q= st.executeUpdate("insert into PHARM_CO(PH_NAME,PHONE) values('"+name+"','"+num+"')");

if(q>0)
{

	response.sendRedirect("Add_Pharmaceutical.jsp?msgg=succ");
}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
