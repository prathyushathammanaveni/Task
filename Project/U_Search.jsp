<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Companies</title>
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
.style7 {color: #FF9900}
.style8 {color: #CC0000}
.style16 { color:#FF3300;
			font-size:16px}
.style25 {color:#CC0066;
			font-size:20px}
.style26 {font-size: 18px}
.style35 {color:#993300;
		font-size:20px}
.style36 {font-size: 18px}
.style75 {color:#FF6666;
		font-size:20px}
.style76 {font-size: 18px}
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
          <h2>Search Companies By Keyword</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          
          <div class="post_content">
		  <p>&nbsp;</p>
		  <form action="U_Search.jsp" method="post" id="leavereply">
                    <p>&nbsp;</p>
                    <table align="center" style="margin:0 0 0 30px;">
                      <tr>
                        <td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="center" class="style82 style7 style1"><b>Enter  Keyword</b></div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="keyword" />
                        </div></td>
                        <td width="155"><input name="submit" type="submit" style="width:50px; height:25px;" value="Search"/></td>
                      </tr>
                      <tr>
                        <td colspan="3"><div class="style2">
                            <div align="center" class="style8 style1"> ( searching content Based on Company Description)</div>
                        </div></td>
                      </tr>
                    </table>
			        <p class="style44">&nbsp;</p>
              

              <p align="center"><a href="User_Main.jsp" class="style11">Back</a></p>
          </form>
		  
		  </div>
		  </div>
		  
		  <div class="article">
		  <div class="post_content">
          <h2>Companies Found.. </h2>
		  
		  
		  <p>&nbsp;</p>
		  <p>
              <%
  String input="",l_Input="",c_Name="",c_prod="",c_Desc="",c_pdesc="",c_prod1="",c_Desc1="",c_pdesc1="",c_Cat=""; 
			int i=0,j=0,k=0,count=0,rank=0,num=1,trank=0;
			double o=0,p=0,l=0,m=0,n=0;

try
{	
						String user = (String)application.getAttribute("user");
								
								
								input= request.getParameter("keyword");
								if(!input.equals(""))	
								{
								
								l_Input = input.toLowerCase();
		
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
								 
								String query1="select count(*) from companydata "; 
	          					Statement stmt=connection.createStatement();
	      					    ResultSet rs1=stmt.executeQuery(query1);
	           
								if( rs1.next() )
		  						 {
									l=rs1.getInt(1);
		  						 }
		   
		   
								String str = "select * from companydata";
								Statement st=connection.createStatement();
								ResultSet rs = st.executeQuery(str);
								
								while(rs.next())
								{
									i=rs.getInt(1);
								    c_Name = rs.getString(2);
									c_Cat = rs.getString(3);
									c_prod = rs.getString(4);
									c_Desc = rs.getString(5);
									c_pdesc = rs.getString(6);
								    rank   = rs.getInt(14);
									
								
									count++;
								
									c_prod1 = c_prod.toLowerCase();
									c_pdesc1 = c_pdesc.toLowerCase();
									c_Desc1 = c_Desc.toLowerCase(); 
									 
									if (c_Desc1.indexOf(l_Input)>=0 || c_prod1.indexOf(l_Input)>=0 || c_pdesc1.indexOf(l_Input)>=0 )
									{
 			
 		  						m=m+1;
								trank+=1;
								PreparedStatement psmnt2 = connection.prepareStatement("insert into search(user,keyword,cname,date) values(?,?,?,?)");
									psmnt2.setString(1, user);
									psmnt2.setString(2, l_Input);
									psmnt2.setString(3, c_Name);
									psmnt2.setString(4, dt);
							
									psmnt2.executeUpdate();
									
									String query21="select * from topkeyword where keyword='"+l_Input+"'"; 
									Statement st21=connection.createStatement();
									ResultSet rs21=st21.executeQuery(query21);
									
									if( rs21.next()==true )
									{
											int keyrank=rs21.getInt(3);
											int newkeyrank=keyrank+1;
											String qq="Update topkeyword set rank='"+newkeyrank+"' where keyword='"+l_Input+"'"; 
											Statement sts=connection.createStatement();
											sts.executeUpdate(qq);
									}	
									else
									{
										PreparedStatement psmnt22 = connection.prepareStatement("insert into topkeyword(keyword,rank,date) values(?,?,?)");				
												//int ab=1;
												psmnt22.setString(1, l_Input);
												psmnt22.setInt(2, trank);
												psmnt22.setString(3, dt);
												psmnt22.executeUpdate();
												
										
									}
								
			%><p class="style25 style25"><span class="style25"><%=num%> . <b><%="  "+c_Cat%></b></span> <span class="style26">(Company Category )</span><br />
                  <br /><%
			
			
								out.print("<input type=\"radio\" name=\"t_task\" ");
			
								%>
            <p class="style25"><span class="style25"><a href="U_SearchCompanies.jsp?id=<%=i%>&user=<%=user%>&cname=<%=c_Name%>&rank=<%=rank%>"></span><span class="style16"><b><%=""+c_Name%></b> <b><%="  "+"Company"%></b></a></span></p>
            <p><%
		
		
				out.println("-----------------------------------------------------------------------------------------------");					
									}
									num++;
							  
									}
					
					
			%><p class="style35 style35"><span class="style35">Total :</span> <span class="style36"><%=l%> </b></span><br />
                  <br /><%
			%><p class="style35 style35"><span class="style35">Found :</span> <span class="style36"><%=m%> </b></span><br />
                  <br /><%	  				
			
			
			
			o=(m/l)*100;
			
			
			
			%><p class="style75"><span class="style75">Search Ratio :</span> <span class="style76"><%=o%> </b></span><br />
					 <br /><%
			
			
			String query27="select * from search_ratio where keyword='"+l_Input+"'"; 
									Statement st27=connection.createStatement();
									ResultSet rs27=st27.executeQuery(query27);
									
									if( rs27.next()==true )
									{
			
			
									}
									else
									{
									
									Statement st2=connection.createStatement();
			st2.executeUpdate(" insert into search_ratio(user,keyword,cname,ratio,date) values('"+user+"','"+l_Input+"','"+c_Name+"','"+o+"','"+dt+"') ");
									}
									
									%>
            
				 
				 
					
            <p>&nbsp;</p>
			
           
             <blockquote>
						      <p class="style72">
              <%

				
			
		
									}	
	
									else
									{
									%>
			</p>
						            <h3 align="center" class="style66 style72 style48">&nbsp;</h3>
						            <h3 align="center" class="style66 style72 style48 style6 style12">Please Enter Correct Keyword!!</h3>
						            <%
									}
	}
	

catch(Exception e)
{
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