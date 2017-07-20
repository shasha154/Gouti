<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<body>

<div ng-app="">
	 <p>Input something in the input box:</p>
	<p>Name: <input type="text" ng-model="name"></p>
	<p ng-bind="name"></p>

</div>

</body>
</html>