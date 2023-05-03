<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Company Data Status</title>
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
.style34 {color: #000000}
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
          <h2>Company Data Set Adding Status</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          
          <div class="post_content">
            <%@ include file="connect.jsp" %>
                  <%@ page import="java.io.*" %>
                  <%@ page import="java.util.*" %>
                  <%@ page import="com.oreilly.servlet.*" %>
                  <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,cname=null,ccat=null,cprod=null,cdesc=null,cpdesc=null,cowner=null,mail=null,cno=null,addr=null,csyear=null,cbranches=null,image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("cname"))
							{
								cname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("category"))
							{
								ccat=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("production"))
							{
								cprod=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc"))
							{
								cdesc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("text"))
							{
								cpdesc=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cowner"))
							{
								cowner=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mail"))
							{
								mail=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("cno"))
							{
								cno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("addr"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("syear"))
							{
								csyear=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cbranch"))
							{
								cbranches=multi.getParameter(paramname);
							}
							
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						
		
						FileInputStream fs1 = null;
			 			String query1="select * from companydata  where cname='"+cname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24 style34">Company Name Already Exist..</p>
		          <p align="left"><a href="AddCompanyData.jsp" class="style5 style16 style35">Back</a></p>
		          <%
				
					   }
					   else
					   {
					   
					  int rank=0;
PreparedStatement ps=connection.prepareStatement("insert into companydata(cname,ccat,cprod,cdesc,cpdesc,cowner,cmail,cno,caddr,csyear,cbranches,image,rank) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,cname);
						ps.setString(2,ccat);
						ps.setString(3,cprod);	
						ps.setString(4,cdesc);
						ps.setString(5,cpdesc);
						ps.setString(6,cowner);
						ps.setString(7,mail);
						ps.setString(8,cno);
						ps.setString(9,addr);
						ps.setString(10,csyear);
						ps.setString(11,cbranches);
						
						ps.setBinaryStream(12, (InputStream)fs, (int)(file1.length()));	
						ps.setInt(13,rank);	
				       
						
						if(f == 0)
							ps.setObject(12,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(12,fs1,fs1.available());
						}	
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  <p class="style23 style34">Added Company Data Successfully...</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="CompanyUser_Main.jsp" class="style16">Back</a></p>
		          <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
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
