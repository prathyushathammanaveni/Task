				
<%@ include file="connect.jsp"%>


<%

try
{


ResultSet rs=connection.createStatement().executeQuery("select distinct(keyword) from search_ratio");
%><html>
<head>
<title>Search Ratio In Chart..</title>	
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0,count=0;
	
	String s1=null; 
	
	while(rs.next())
	{
	 s1=rs.getString(1);
	
	ResultSet rs1=connection.createStatement().executeQuery("select ratio from search_ratio where keyword='"+s1+"'");
	
	while(rs1.next())
					{		
					 
					double kw=Double.parseDouble(rs1.getString(1));
					
					count++;
					
					
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%=kw%>];
        
	<%
	i++;}}
	%>
	
	var myChart = new JSChart('graph', 'pie');
	myChart.setDataArray(myData);
	myChart.setBarColor('#EFCF25');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

