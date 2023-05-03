<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Company Data</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<script language="javascript" type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
<script language="javascript" type="text/javascript">
function valid()
{
var na11=document.s.category.value;
if(na11=="")

{
alert("Please Enter Category Name");
document.s.category.focus();
return false;
}
var na1=document.s.production.value;
if(na1=="")

{
alert("Please Enter Company Production");
document.s.production.focus();
return false;
}
var na2=document.s.desc.value;
if(na2=="")

{
alert("Please Enter Description");
document.s.desc.focus();
return false;
}
var na3=document.s.pdesc.value;
if(na3=="")

{
alert("Attach Product Description File");
document.s.pdesc.focus();
return false;
}

var na4=document.s.cowner.value;
if(na4=="")

{
alert("Please Enter Company Owner Name");
document.s.cowner.focus();
return false;
}

var na5=document.s.mail.value;
if(na5=="")

{
alert("Please Enter Email Id");
document.s.mail.focus();
return false;
}

var cn=document.s.cno.value;
if(cn="")

{
alert("Please Enter Contact No");
document.s.cno.focus();
return false;
}

var adr=document.s.addr.value;
if(adr="")

{
alert("Please Enter Company Address");
document.s.addr.focus();
return false;
}

var sy=document.s.syear.value;
if(sy="")

{
alert("Please Enter Company Start Year");
document.s.syear.focus();
return false;
}

var cb=document.s.cbranch.value;
if(cb="")

{
alert("Please Enter Company Branches");
document.s.cbranch.focus();
return false;
}


var na6=document.s.file.value;
if(na6=="")

{
alert("Please Choose Image File");
document.s.file.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style1 {font-size: 14px}
.style2 {font-size: 24px}
.style34 {
	color: #FF0000;
	font-weight: bold;
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
          <h2>Add <%=(String)application.getAttribute("cname")%> Company Data Set</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          
          <div class="post_content">
            <%
			
			String cname =(String)application.getAttribute("cname");
			
			%>
				  <form action="AddCompanyData1.jsp" method="post" name="s" id="" enctype="multipart/form-data" onsubmit="return valid()">
                    <label for="name"><span class="style34">Company Name</span></label>
                    <p class="style34">
                     <input id="name" name="cname" value="<%=cname%>" readonly" />
                    </p>
			        <span class="style34">
			        <label for="shares">Company Category</label>
                    </span>
			        <p class="style34">
			          <select name="Category">
					   <option>--- Select ---</option>
			            <option>Government</option>
			            <option>Non Government</option>
		              </select>
			        </p>
				    <span class="style34">
			        <label for="capital">Company Production</label>
                    </span>
			        <p class="style34">
                      <textarea name="production" class="text" id="prod"></textarea>
                    </p>
				    <span class="style34">
			        <label for="desc">Company Description</label>
                    </span>
			        <p class="style34">
                      <textarea id="desc" name="desc" rows="2" cols="40"></textarea>
                    </p>
					<span class="style34">
			        <label for="desc">Product Description </label>
				    Crisis found to Manufacture					 </span>
					<p class="style34">			
					<textarea name="text" id="textarea" cols="40" rows="2"></textarea>
					</p>
					<span class="style34">
			        <label for="owner">Company Owner</label>
                    </span>
			        <p class="style34">
                      <input id="cowner" name="cowner" class="text" />
                    </p>
				    <span class="style34">
			        <label for="mail">Company E-mail Id</label>
                    </span>
			        <p class="style34">
                      <input id="mail" name="mail" class="text" />
                    </p>
			        <span class="style34">
			        <label for="contact">Company Contact No</label>
                    </span>
			        <p class="style34">
                      <input id="cno" name="cno" class="text" />
                    </p>
				    <span class="style34">
			        <label for="address">Company Address</label>
                    </span>
			        <p class="style34">
                      <textarea id="address" name="addr" rows="2" cols="40"></textarea>
                    </p>
				    <span class="style34">
			        <label for="mail">Started Year</label>
                    </span>
			        <p class="style34">
                      <input id="syear" name="syear" class="text" />
                    </p>
			        <span class="style34">
			        <label for="mail">Chalenges Found in the scenario</label>
                    </span>
			        <p class="style34">
			          <select name="cbranch">
					    <option>--- Select --- </option> 
			            <option>Prevention of spread</option>
			            <option>Diagnosis of infected patients</option>
			            <option>Development of treatments</option>
		              </select>
			        </p>
			   
			        <p class="style34">
                      <label for="pic">Select Company Picture (required)</label>
                      <input type="file" id="pic" name="pic" class="text" />
                    </p>
                    <p><br />
                      <input name="submit" type="submit" value="Add Company" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="CompanyUser_Main.jsp" class="style11">Back</a></p>
		          </form>
				  
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
