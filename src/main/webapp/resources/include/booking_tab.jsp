<div class="generic-container ng-scope"
	ng-controller="BookingController as ctrl">
	<div class="panel panel-default">
		<div class="panel-heading">
			<span class="lead">Booking Form </span>
		</div>
		<div class="formcontainer">
			<form ng-submit="ctrl.submit()" name="myForm"
				class="form-horizontal ng-pristine ng-valid-minlength ng-valid-email ng-valid ng-valid-required">
				<input type="hidden" ng-model="ctrl.user.id"
					class="ng-pristine ng-untouched ng-valid">
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="uname">Trading
							Book Name</label>
						<div class="col-md-8">
							<input type="text" ng-model="ctrl.user.name" id="uname"
								class="username form-control input-sm ng-pristine ng-untouched ng-valid-minlength ng-valid ng-valid-required"
								placeholder="Enter Trading Book Name" required="true"
								ng-minlength="3">
							<div class="has-error ng-hide" ng-show="myForm.$dirty">
								<span ng-show="myForm.uname.$error.required" class="ng-hide">This
									is a required field</span> <span
									ng-show="myForm.uname.$error.minlength" class="ng-hide">Minimum
									length required is 3</span> <span ng-show="myForm.uname.$invalid"
									class="ng-hide">This field is invalid </span>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="company-name">Company
							Name</label>
						<div class="col-md-8">
							<select name="company-name" id="company-name"
								class="username form-control input-sm"
								placeholder="Company Name"
								ng-options="option.name for option in companyName.data"
								ng-model="companyName.data.selectedName" required
								ng-change="ctrl.setCompanyName(companyName.data.selectedName)"></select>
							<div class="has-error ng-hide" ng-show="myForm.$dirty">
								<span ng-show="myForm.uname.$error.required" class="ng-hide">This
									is a required field</span> <span ng-show="myForm.uname.$invalid"
									class="ng-hide">This field is invalid </span>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="address">Address</label>
						<div class="col-md-8">
							<textarea id="address" name="address"
								ng-model="ctrl.user.address"
								class="form-control input-sm ng-pristine ng-untouched ng-valid"
								placeholder="Enter your Address" ng-trim="true">
									</textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="perName">Sales
							Person Name</label>
						<div class="col-md-8">
							<input type="text" ng-model="ctrl.user.salesPersonName"
								id="perName"
								class="username form-control input-sm ng-pristine ng-untouched ng-valid-minlength ng-valid ng-valid-required"
								placeholder="Sales Person Name" required="" ng-minlength="3">
							<div class="has-error ng-hide" ng-show="myForm.$dirty">
								<span ng-show="myForm.uname.$error.required" class="ng-hide">This
									is a required field</span> <span
									ng-show="myForm.uname.$error.minlength" class="ng-hide">Minimum
									length required is 3</span> <span ng-show="myForm.uname.$invalid"
									class="ng-hide">This field is invalid </span>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="email">Sales
							Person Email</label>
						<div class="col-md-8">
							<input type="email" ng-model="ctrl.user.salesPersonEmail"
								id="email"
								class="email form-control input-sm ng-pristine ng-untouched ng-valid-email ng-valid ng-valid-required"
								placeholder="Sales Person Email" required="">
							<div class="has-error ng-hide" ng-show="myForm.$dirty">
								<span ng-show="myForm.email.$error.required" class="ng-hide">This
									is a required field</span> <span ng-show="myForm.email.$invalid"
									class="ng-hide">This field is invalid </span>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="cut-off">Cut
							Off</label>
						<div class="col-md-8">
							<select name="cut-off" id="cut-off"
								class="username form-control input-sm"
								ng-options="option.name for option in cutOff.data"
								ng-model="cutOff.data.selectedName" required
								ng-change="ctrl.setCutOff(cutOff.data.selectedName)"></select>
							<div class="has-error ng-hide" ng-show="myForm.$dirty">
								<span ng-show="myForm.uname.$error.required" class="ng-hide">This
									is a required field</span> <span ng-show="myForm.uname.$invalid"
									class="ng-hide">This field is invalid</span>
							</div>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable"></label>
						<div class="col-md-8">
							<div class="form-actions">
								<input type="submit" value="Add" class="btn btn-primary btn-sm"
									ng-disabled="myForm.$invalid">
								<button type="button" ng-click="ctrl.reset()"
									class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine"
									disabled="disabled">Reset Form</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<span class="lead">List of Bookings </span>
		</div>
		<div class="tablecontainer">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID.</th>
						<th>Trading Book Name</th>
						<th>Company Name</th>
						<th>Address</th>
						<th>Sales Person Name</th>
						<th>Sales Person Email</th>
						<th>Cut Off</th>
						<th width="100"></th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="u in ctrl.users" class="ng-scope">
						<td><span ng-bind="u.id" class="ng-binding">786</span></td>
						<td><span ng-bind="u.name" class="ng-binding">Vishu</span></td>
						<td><span ng-bind="u.companyName" class="ng-binding">Sharma</span></td>
						<td><span ng-bind="u.address" class="ng-binding">Chandigarh</span></td>
						<td><span ng-bind="u.salesPersonName" class="ng-binding">Sharma</span></td>
						<td><span ng-bind="u.salesPersonEmail" class="ng-binding">vishu.sharma.059@gmail.com</span></td>
						<td><span ng-bind="u.cutOff" class="ng-binding">5</span></td>
						<td>
							<button type="button" ng-click="ctrl.remove(u.id)"
								class="btn btn-danger custom-width">Remove</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
