<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String tname,pname,formula;
	
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

tname=request.getParameter("tname");
pname=request.getParameter("pname");
formula=request.getParameter("formula");


%>
<%
Statement st1=con.createStatement();
/*ResultSet r=st1.executeQuery("SELECT MAX(no) FROM register");
if(r.next()){
	i=r.getInt(1);
	if(i>=0){ i++;}}*/

int q= st.executeUpdate("insert into MAKE_DRUG(TRADE_NAME,PHARM_ID,FORMULA) values('"+tname+"','"+pname+"','"+formula+"')");

if(q>0)
{

	response.sendRedirect("add_drug.jsp?msgg=succ");
}
}
catch(Exception e)
{
	response.sendRedirect("signup.jsp?msg=existed");
e.printStackTrace();
	}
%>
