<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@page import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Review Status Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-size: 24px}
.style4 {
	color: #000000;
	font-size: 14px;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
		  <li><a href="AdminLogin.jsp">Admin</a></li>
		  <strong></strong>
          <li><a href="CompanyLogin.jsp">Production Company </a></li>
          <li><a href="UserLogin.jsp"><span>End User </span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style2">Crisis Critical Intellectual Property Findings From the COVID-19 Pandemic</a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="970" height="305" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="970" height="305" alt="" /> </a> </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2>User Review Status On <%=request.getParameter("cname")%> Company </h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          
          <div class="post_content">

<p>&nbsp;</p>
			<%
		  try {

String cname=request.getParameter("cname");
String ccat=request.getParameter("ccat");
String user=request.getParameter("user");    
int id= Integer.parseInt(request.getParameter("id"));
String review=request.getParameter("com");


            SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			


PreparedStatement pst=connection.prepareStatement("insert into reviews(cname,ccat,rname,reviews,dt) values(?,?,?,?,?)");
             
			pst.setString(1,cname);
            pst.setString(2,ccat);
            pst.setString(3,user);
            pst.setString(4,review);
			pst.setString(5,dt);
			
			
			pst.executeUpdate();
		
					 
                  %> 
<span class="style4"> Reviewed Successfully...</span>
  <p align="left"><a href="User_Main.jsp" class="style47">Back</a></p>
                  <%
								
		} 
		catch (Exception e) {
		e.printStackTrace();
		}	
	
	%>
				  
				  
		  </div>		  
	  <div class="clr"></div>
      </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="User_Main.jsp">Home</a></li>
			<li><a href="UserLogin.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></a></div></body>
</html>