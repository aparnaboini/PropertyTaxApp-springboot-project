<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List zonal details</title>


<style>
table{

width:50%;
border-collapse:collapse;

border:1px solid #oof;
font-size:16px;



}



</style>

<%@ page isELIgnored="false"%>
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>

<h2>Zonal wise Collection of property tax for the year 2014</h2>

<table border="1" callspacing="0">
<tr>
<th style="text-align:left"><b>Zonal Name</b></th>
<th style="text-align:left"><b>Property Type</b></th>
<th style="text-align:left"><b>Amount collected</b></th>
</tr>
<tr>
<td rowspan="2" style="text-align:center">Zone A</td>
<td style="text-align:left">Owner</td>
<td style="text-align:right">&#x20B9;${totals[0]}</td>
</tr>

<tr>

<td style="text-align:left">Tenented</td>
<td style="text-align:right"> &#x20B9;${totals[1]}   </td>

</tr>

<tr>
<td rowspan="2" style="text-align:center">Zone B</td>
<td style="text-align:left">Owner</td>
<td style="text-align:right"> &#x20B9;${totals[2]}     </td>
</tr>

<tr>

<td style="text-align:left">Tenented</td>
<td style="text-align:right"> &#x20B9;${totals[3]}    </td>

</tr>
<tr>
<td rowspan="2" style="text-align:center">Zone C</td>
<td style="text-align:left">Owner</td>
<td style="text-align:right"> &#x20B9;${totals[4]}     </td>
</tr>

<tr>

<td style="text-align:left">Tenented</td>
<td style="text-align:right">&#x20B9;${totals[5]}    </td>

</tr>




</table>

<button onclick="window.location.replace('home')" style="margin:10px">Cancel</button>

</body>
</html>