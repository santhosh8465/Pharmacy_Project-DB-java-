<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String pre_id,dssn,pssn,date,qn,tn,pn,dt,pt,status;
	
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

pre_id=request.getParameter("pre_id");

pssn=request.getParameter("pssn");
dssn=request.getParameter("dssn");
date=request.getParameter("date");
qn=request.getParameter("qn");
tn=request.getParameter("tn");
pn=request.getParameter("pn");

dt=request.getParameter("dt");
pt=request.getParameter("pt");
status=request.getParameter("status");

%>
<%
Statement st1=con.createStatement();
/*ResultSet r=st1.executeQuery("SELECT MAX(no) FROM register");
if(r.next()){
	i=r.getInt(1);
	if(i>=0){ i++;}}*/

int q= st.executeUpdate("insert into PRESCRIPTION values('"+pre_id+"','"+pssn+"','"+dssn+"','"+date+"','"+qn+"','"+tn+"','"+pn+"','"+dt+"','"+pt+"','"+status+"')");

if(q>0)
{

	response.sendRedirect("newpre.jsp?msgg=succ");
}
}
catch(Exception e)
{
	response.sendRedirect("newpre.jsp?msg=existed");
e.printStackTrace();
	}
%>
