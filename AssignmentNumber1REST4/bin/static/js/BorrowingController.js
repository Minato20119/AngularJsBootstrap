'use strict';

angular.module('crudApp').controller(
				'BookController',
				[
						'BookService',
						'$scope',
						function(BookService, $scope) {

							var self = this;
							self.book = {};
							self.books = [];

							self.submit = submit;
							self.getAllUsers = getAllUsers;
							self.createUser = createUser;
							self.updateUser = updateUser;
							self.removeUser = removeUser;
							self.editUser = editUser;
							self.reset = reset;

							self.successMessage = '';
							self.errorMessage = '';
							self.done = false;

							self.onlyIntegers = /^\d+$/;
							self.onlyNumbers = /^\d+([,.]\d+)?$/;

							function submit() {
								console.log('Submitting');
								if (self.book.id === undefined
										|| self.book.id === null) {
									console.log('Saving New User', self.book);
									createUser(self.book);
								} else {
									updateUser(self.book, self.book.id);
									console.log('User updated with id ',
											self.book.id);
								}
							}

							function createUser(book) {
								console.log('About to create user');
								BookService
										.createUser(book)
										.then(
												function(response) {
													console
															.log('User created successfully');
													self.successMessage = 'User created successfully';
													self.errorMessage = '';
													self.done = true;
													reset();
													$scope.myForm
															.$setPristine();
												},
												function(errResponse) {
													console
															.error('Error while creating User');
													self.errorMessage = 'Error while creating User: '
															+ errResponse.data.errorMessage;
													self.successMessage = '';
												});
							}

							function updateUser(book, id) {
								console.log('About to update user');
								BookService
										.updateUser(book, id)
										.then(
												function(response) {
													console
															.log('User updated successfully');
													self.successMessage = 'User updated successfully';
													self.errorMessage = '';
													self.done = true;
													self.book = {};
													$scope.myForm.$setPristine();
													reset();
												},
												function(errResponse) {
													console
															.error('Error while updating User');
													self.errorMessage = 'Error while updating User '
															+ errResponse.data;
													self.successMessage = '';
												});
							}

							function removeUser(id) {
								console.log('About to remove User with id '
										+ id);
								BookService
										.removeUser(id)
										.then(
												function() {
													console
															.log('User '
																	+ id
																	+ ' removed successfully');
												},
												function(errResponse) {
													console
															.error('Error while removing user '
																	+ id
																	+ ', Error :'
																	+ errResponse.data);
												});
							}

							function getAllUsers() {
								return BookService.getAllUsers();
							}

							function editUser(id) {
								self.successMessage = '';
								self.errorMessage = '';
								BookService
										.getUser(id)
										.then(
												function(book) {
													self.book = book;
												},
												function(errResponse) {
													console
															.error('Error while removing user '
																	+ idbook
																	+ ', Error :'
																	+ errResponse.data);
												});
							}
							function reset() {
								self.successMessage = '';
								self.errorMessage = '';
								self.book = {};
								$scope.myForm.$setPristine(); // reset Form
							}
						} ]);