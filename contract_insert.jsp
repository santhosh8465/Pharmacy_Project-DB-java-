<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String phcname,phrnmae,start_date,end_date,text,supervisor;
	
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

phcname=request.getParameter("phcname");
phrnmae=request.getParameter("phrnmae");
start_date=request.getParameter("start_date");
end_date=request.getParameter("end_date");
text=request.getParameter("text");
supervisor=request.getParameter("supervisor");

%>
<%
Statement st1=con.createStatement();
/*ResultSet r=st1.executeQuery("SELECT MAX(no) FROM register");
if(r.next()){
	i=r.getInt(1);
	if(i>=0){ i++;}}*/

int q= st.executeUpdate("insert into CONTRACT values('"+phcname+"','"+phrnmae+"','"+start_date+"','"+end_date+"','"+text+"','"+supervisor+"')");

if(q>0)
{

	response.sendRedirect("Add_Contract.jsp?msgg=succ");
}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
