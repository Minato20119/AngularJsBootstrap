var app = angular.module('appHome', []);
app.config([ '$stateProvider', function($stateProvider, $urlRouterProvider) {

	$stateProvider.state('home', {
		url : '/',
	});
} ]);