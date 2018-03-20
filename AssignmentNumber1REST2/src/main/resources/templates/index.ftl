<!DOCTYPE html>
<html lang="en" ng-app="crudApp">
<head>
<meta charset="UTF-8">
<title>Book AngularJS</title>
<link href="css/menu.css" rel="stylesheet" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/app.css" rel="stylesheet" />
</head>
<body>

	<ul>
		<li><a ui-sref="/" ui-sref-active="active">Home</a></li>
		<li><a ui-sref="book" ui-sref-active="active">Book</a></li>
		<li><a ui-sref="borrowing" ui-sref-active="active">Borrowing</a></li>
		<li><a ui-sref="reader" ui-sref-active="active">Reader</a></li>
	</ul>

	<div ui-view></div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/1.0.3/angular-ui-router.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/localforage/1.6.0/localforage.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/ngStorage/0.3.11/ngStorage.min.js"></script>
	<script src="/js/app.js"></script>
	<script src="/js/BookService.js"></script>
	<script src="/js/BookController.js"></script>
</body>
</html>