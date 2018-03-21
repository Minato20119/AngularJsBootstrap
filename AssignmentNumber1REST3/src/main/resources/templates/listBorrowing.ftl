<div class="generic-container">
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<span class="lead">Enter info Borrowing </span>
		</div>
		<div class="panel-body">
			<div class="formcontainer">
				<div class="alert alert-success" role="alert"
					ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
				<div class="alert alert-danger" role="alert"
					ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
				<form ng-submit="ctrl.submit()" name="myForm"
					class="form-horizontal">
					<input type="hidden" ng-model="ctrl.borrowing.idBorrowing" />

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="">Select name book:</label> 
							<select ng-repeat="u in ctrl.getObjectBook()
								class="form-control form-control-lg" name="nameBook"
								id="nameBook" required>
								<option value="">Choose...</option>
								
								<option value="{{u.nameBook}}">{{u.nameBook}}</option>
							
							</select>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="">Select name reader:</label> 
							<select ng-repeat="u in ctrl.getObjectReader()
								class="form-control form-control-lg" name="idReader"
								id="idReader" required>
								<option value="">Choose...</option>
								
								<option value="{{u.id}}">{{u.id}}</option>
							</select>
						</div>
					</div>

					<!-- ///////////////////////////////////////////////////////////////////////////////  -->

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="borrowedDay">Borrowed
								Day</label>
							<div class="col-md-7">
								<input type="date" ng-model="ctrl.borrowing.borrowedDay"
									id="borrowedDay" class="form-control input-sm"
									placeholder="Enter your borrowed day" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="reimbursedDay">Reimbursed
								Day</label>
							<div class="col-md-7">
								<input type="date" ng-model="ctrl.borrowing.reimbursedDay"
									id="reimbursedDay" class="form-control input-sm"
									placeholder="Enter your reimbursed day" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit"
								value="{{!ctrl.borrowing.idBorrowing ? 'Add' : 'Update'}}"
								class="btn btn-primary btn-sm"
								ng-disabled="myForm.$invalid || myForm.$pristine" />
							<button type="button" ng-click="ctrl.reset()"
								class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset
								Form</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<span class="lead">List of Borrowing </span>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ID</th>
							<th>Borrowed Day</th>
							<th>Reimbursed Day</th>
							<th>ID Book</th>
							<th>ID Reader</th>
							<th width="100"></th>
							<th width="100"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.getAllUsers()">
							<td>{{u.idBorrowing}}</td>
							<td>{{u.borrowedDay}}</td>
							<td>{{u.reimbursedDay}}</td>
							<td>{{u.idBook}}</td>
							<td>{{u.idReader}}</td>
							<td><button type="button"
									ng-click="ctrl.editUser(u.idBorrowing)"
									class="btn btn-success custom-width">Edit</button></td>
							<td><button type="button"
									ng-click="ctrl.removeUser(u.idBorrowing)"
									class="btn btn-danger custom-width">Remove</button></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>