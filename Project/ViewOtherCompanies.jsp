<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Other Related Companies</title>
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
.style4 {color:#000000}
.style25 {color:#CC0066;
			font-size:20px}
.style26 {color:#006666;
		font-size: 16px}
.style27 {color: #FFFFFF}
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
          <h2><strong>View all Companies by Crisis Tree Format </strong>..</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          
          <div class="post_content">
		  <p>&nbsp;</p>
					
					<p>
                    <%@ include file="connect.jsp" %>
                  <%

				String cname=(String)application.getAttribute("cname");

    int num=1,count=0;
try 
{
	String str= "select ccat from companydata where cname='"+cname+"'";
	Statement st = connection.createStatement();
	ResultSet rs= st.executeQuery(str);
	
	while(rs.next())
	{	
		String cat=rs.getString(1);
		
		%><p class="style25 style25"><span class="style25"> <%="  "+cat%></span> <span class="style4 style3 style26">(Company Category )</span><br />
                  <br /><%
		String str1= "select id,cname from companydata where ccat='"+cat+"' and cname!='"+cname+"'  ";
		Statement st1 = connection.createStatement();
		ResultSet rs1 = st1.executeQuery(str1);
		while(rs1.next())
		{	
			int i=rs1.getInt(1);
			String cnm=rs1.getString(2);
			
			
				count++;
			
			out.print("<input type=\"radio\" name=\"t_task\" ");
			
			%>
                  <p class="style25"><span class="style25"><a href="Company_TreeDetails.jsp?id=<%=i%>&cname=<%=cnm%>&ccat=<%=cat%>"></span><span class="style16"><%=num%> . <%=""+cnm%> <%="  "+"Company"%></a></span></p><p><%
		}
		num++;
	}         
	connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}

	if(count==0){out.print("No Company details Found");}

     %>
			  </table>
			</p>
        	
		<p align="left"><a href="CompanyUser_Main.jsp" class="style95">Back</a></p>
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
          <h2 class="star"><span>Company</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="CompanyUser_Main.jsp">Home</a></li> 
			<li><a href="CompanyLogin.jsp">Logout</a></li>
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