<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String sd,ed,txt,end_date,text,supervisor,name;
	
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

sd=request.getParameter("sd");
ed=request.getParameter("ed");
txt=request.getParameter("txt");
supervisor=request.getParameter("supervisor");
name=request.getParameter("name");

%>
<%
Statement st1=con.createStatement();
/*ResultSet r=st1.executeQuery("SELECT MAX(no) FROM register");
if(r.next()){
	i=r.getInt(1);
	if(i>=0){ i++;}}*/

int q= st.executeUpdate("update contract set START_DATE='"+sd+"',END_DATE='"+ed+"',TEXT='"+txt+"',SUPERVISOR='"+supervisor+"' where NAME='"+name+"' ");

if(q>0)
{

	response.sendRedirect("viewcontracts.jsp?update=succ");
}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
