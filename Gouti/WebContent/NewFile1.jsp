<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
#cla {
background-image: url(logo.png);
 background-repeat: no-repeat;
background-position:left top ;  
}
</style>
<body>
<div id="cla">
<form id="myform">

<h3>TAKE THE FIRST STEP</h3>
<p>Fill out the short form below to receive more on the k12 academy programs we have tou your child.</p>
<p>Which Grade Level are you in?</p>
  <label><input type="radio">k-8</label>
  <label><input type="radio">9-12</label>
  <label><input type="radio">Both</label>
  
    First name:
  <input type="text" name="firstname"><br>
  Last name:
  <input type="text" name="lastname"><br>
  Email:
  <input type="text" name="Email"><br>
  Phone:
  <input type="text" name="Phone"><br>
   State:
   <select>
   	<option value=""></option>
   	<option value="AK">Alaska</option>
   	<option value="AZ">Arizona</option>
  </select><br>
  Zipcode:
  <input type="text" name="Zipcode"><br>
  <img src="images/submit-image.png">
</form>

</div>

</body>
</html>