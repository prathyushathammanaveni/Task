<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search History On Company</title>
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
.style5 {color:#CC0066}
.style7 {color:#FF3300}
.style9 {color:#006600}
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
          <h2>User Search Transactions On Company..</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          
          <div class="post_content">
		  <table width="568" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
              <tr>
                <td  width="43" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style47 style50"><b>Si No</b>.</div></td>
				<td  width="150" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style52"><b>User Name </b></div>
</td>          
                <td  width="175" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style52"><b>Searched Keyword</b></div></td>
                <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style52"><b>Date</b></div></td>
              </tr>
              <%@ include file="connect.jsp" %>
              <%
					  
						
						try 
						{
						    
							String cname=(String)application.getAttribute("cname");
							String user="",c_Name="",keyword="",date="";
							int i=1;
						    
						   	String query="select * from search where cname='"+cname+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								user=rs.getString(2);
								c_Name=rs.getString(4);
								keyword=rs.getString(3);
								date=rs.getString(5);
								
					
					%>
              <tr>
                <td height="46" align="center"  valign="middle"><div align="center" class="style4">
                    <div align="center">
                      <b><%out.println(i);%></b>                    </div>
                </div></td>
				<td height="46" align="center"  valign="middle"><div align="center" class="style9"><b>
                    <%out.println(user);%>
                </b></div></td>               
                <td height="46" align="center"  valign="middle"><div align="center" class="style5"><b>
                    <%out.println(keyword);%>
                </b></div></td>
                <td height="46" align="center"  valign="middle"><div align="center" class="style4">
                    <%out.println(date);%>
                </div></td>
              </tr>
              <%
					i=i+1;	
						
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
			
			
        
          
            <p align="right">&nbsp;</p>
            <p align="right">&nbsp;</p>
            <p align="right">&nbsp;</p>
            <p align="right">&nbsp;</p>
            <p align="left"><a href="CompanyUser_Main.jsp" class="style14">Back</a> </p>
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