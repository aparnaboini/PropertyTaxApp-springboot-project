<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
#button {
	background-color: blue;
	color: white;
	border: none;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
}

label {
	width: 200px;
	display: inline-block;
}

#form {
	border-radius: 10px;
	width: 290px;
}

fieldset {
	display: inline-block;
	border: 2px groove;
	margin-left: 2px;
	margin-right: 2px;
	padding-top: 0.35em;
	padding-bottom: 0.625em;
	padding-left: 0.75em;
	padding-right: 0.75em;
	width: 50%;
}
</style>
<title>Taxform</title>


<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="https://www.tutorialspoint.com/jquery/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function yearValidation(year, ev) {

		var text = /^[0-9]+$/;
		if (ev.type == "blur" || year.length == 4 && ev.keyCode != 8
				&& ev.keyCode != 46) {
			if (year != 0) {
				if ((year != "") && (!text.test(year))) {

					alert("Please Enter Numeric Values Only");
					return false;
				}

				if (year.length != 4) {
					alert("Year is not proper. Please check");
					return false;
				}
				var current_year = new Date().getFullYear();
				if (year > current_year) {
					alert("Year entered cannot be a future year!");
					return false;
				}
				return true;
			}
		}
	}
</script>
<script type="text/javascript">
	function year(yoc, ev) {

		var text = /^[0-9]+$/;
		if (ev.type == "blur" || yoc.length == 4 && ev.keyCode != 8
				&& ev.keyCode != 46) {
			if (yoc != 0) {
				if ((yoc != "") && (!text.test(yoc))) {

					alert("Please Enter Numeric Values Only");
					return false;
				}

				if (yoc.length != 4) {
					alert("Year is not proper. Please check");
					return false;
				}
				var current_year = new Date().getFullYear();
				if (yoc > current_year) {
					alert("Year entered cannot be a future year!");
					return false;
				}
				return true;
			}
		}
	}
</script>

<script type="text/javascript">
	function set() {
		var property = document.getElementById('condition1').value;
		var zone = document.getElementById('condition2').value;
		var status = document.getElementById('condition3').value;
		var uav;
		if ((property == "RCC Buildings") && (zone == "A")) {
			if (status == "Owner") {
				uav = 2.50;
			} else if (status == "Tenented") {
				uav = 5.00;
			}
		}
		if ((property == "RCC Buildings with cement/red-oxide")
				&& (zone == "A")) {
			if (status == "Owner") {
				uav = 1.80;
			} else if (status == "Tenented") {
				uav = 4.00;
			}
		}
		if ((property == "Tiled/Sheet of all kinds") && (zone == "A")) {
			if (status == "Owner") {
				uav = 1.25;

			} else if (status == "Tenented") {
				uav = 3.00;
			}

		}
		if ((property == "RCC Buildings") && (zone == "B")) {
			if (status == "Owner") {
				uav = 2.00;
			} else if (status == "Tenented") {
				uav = 4.00;
			}
		}
		if ((property == "RCC Buildings with cement/red-oxide")
				&& (zone == "B")) {
			if (status == "Owner") {
				uav = 1.60;
			} else if (status == "Tenented") {
				uav = 3.50;
			}
		}
		if ((property == "Tiled/Sheet of all kinds") && (zone == "B")) {
			if (status == "Owner") {
				uav = 1.00;

			} else if (status == "Tenented") {
				uav = 2.50;
			}

		}
		if ((property == "RCC Buildings") && (zone == "C")) {
			if (status == "Owner") {
				uav = 1.80;
			} else if (status == "Tenented") {
				uav = 3.60;
			}
		}
		if ((property == "RCC Buildings with cement/red-oxide")
				&& (zone == "C")) {
			if (status == "Owner") {
				uav = 1.20;
			} else if (status == "Tenented") {
				uav = 3.00;
			}
		}
		if ((property == "Tiled/Sheet of all kinds") && (zone == "C")) {
			if (status == "Owner") {
				uav = 0.75;

			} else if (status == "Tenented") {
				uav = 2.00;
			}

		}
		return uav;

	}
	$(document).ready(function() {
		$("#area").on('input', function() {
			var area = $('#area').val();
			var uav = set();
			var total_1 = (area * uav * 10);
			var depreciation = parseInt((total_1) / 12);
			var total_2;
			if (depreciation >= 60) {
				total_2 = total_1 - (total_1 / 100);
			}
			var total_3 = (total_2) * 20 / 100;
			var total_4 = (total_3) * 24 / 100;
			var total = (total_3 + total_4).toFixed(2);
			$('#total').val(total);
		});

	});

	
	
	
	
	
</script>
<script>
function validateForm() {
  let name = document.forms["form"]["name"].value;
  let email = document.forms["form"]["email"].value;
  let address = document.forms["form"]["address"].value;
  let yoc = document.forms["form"]["yoc"].value;
  let year = document.forms["form"]["year"].value;
  let area = document.forms["form"]["area"].value;
  
  
  
  if (name == "") {
    alert("Name must be filled out");
    return false;
  }
  if (email == "") {
	    alert("email must be filled out");
	    return false;
	  }
  if (year == "") {
	    alert("Year of Assessment must be filled out");
	    return false;
	  }
  
  if (area == "") {
	    alert("Build up area must be filled out");
	    return false;
	  }
  if (address == "") {
	    alert("Address must be filled out");
	    return false;
	  }
  if (yoc == "") {
	    alert("Year of Construction must be filled out");
	    return false;
	  }
  
}
</script>
</head>
<body>

	<fieldset style="border-color: #1e90ff">



		<h2>Self Assessment of Property Tax Form</h2>
		<form:form action="register" method="post" modelAttribute="data"
			id="form" onsubmit="return validateForm();">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />


			<label for="YOA">Year of Assessment</label>

			<form:input path="YOA" id="year"
				onblur="yearValidation(this.value,event)"
				onkeypress="yearValidation(this.value,event)"  />

			<br>
			<br>


			<label for="name">Name of the Owner</label>

			<form:input path="name" id="name" />

			<br>
			<br>

			<label for="email">Email</label>

			<form:input path="email" id="email" />
			<br>
			<br>

			<label for="address">Address of Property</label>

			<form:textarea path="address" rows="5" cols="30"
				cssClass="form-control"  id="address"/>

			<br>
			<br>
			<label for="zone">Zonal classification</label>

			<form:select path="zone" id="condition2" cssClass="form-control">
				<form:option value="A" label="zoneA" />
				<form:option value="B" label="zoneB" />
				<form:option value="C" label="zoneC" />
			</form:select>
			<br>
			<br>

			<label for="description">Description of the property </label>

			<form:select path="description" id="condition1"
				cssClass="form-control">
				<form:option value="RCC Buildings" label="RCC Buildings" />
				<form:option value="RCC Buildings with cement/red-oxide"
					label="RCC Buildings with cement/red-ozide" />
				<form:option value="Tiled/Sheet of all kinds"
					label="Tiled/Sheet of all kinds" />
			</form:select>


			<br>
			<br>
			<label for="status">Status</label>

			<form:select path="status" id="condition3" cssClass="form-control">
				<form:option value="Owner" label="Owner" />
				<form:option value="Tenented" label="Tenented" />

			</form:select>
			<br>
			<br>

			<label for="YOC">Building constructed year</label>

			<form:input path="YOC" cssClass="form-control" id="yoc"  onblur="year(this.value,event)"
				onkeypress="year(this.value,event)"/>

			<br>
			<br>
			<label for="area">Built up area (Square feet)</label>

			<form:input path="area" cssClass="form-control"  id="area"/>


			<br>
			<br>
			<label for="total">Total Tax Payable </label>

			<form:input path="total" id="total" readonly="true" />
			<br>

			<form:button onclick="home.jsp" id="button">Cancel</form:button>
			<!-- Button -->
			&emsp; &emsp; &emsp;



			<form:button type="submit" id="button">Pay Tax</form:button>

			<!--  onclick="alert('Tax details are saved succesfully');"-->
			<!-- Button -->
	</fieldset>

	</form:form>








</body>
</html>