var app = angular.module('crudApp', [ 'ui.router', 'ngStorage' ]);

app.constant('urls', {
	BASE : 'http://localhost:8080/',
	BOOK_SERVICE_API : 'http://localhost:8080/api/book/'
});

app.config([
		'$stateProvider',
		'$urlRouterProvider',
		function($stateProvider, $urlRouterProvider) {

			$stateProvider.state('home', {
				url : '/',
				templateUrl : 'display/listBook',
				controller : 'BookController',
				controllerAs : 'ctrl',
				resolve : {
					books : function($q, BookService) {
						console.log('Load all books');
						var deferred = $q.defer();
						BookService.loadAllUsers().then(deferred.resolve,
								deferred.resolve);
						return deferred.promise;
					}
				}
			});
			$urlRouterProvider.otherwise('/');
		} ]);