<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Forex Pricing and Ticketing Application</title>  
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/angular-material/1.0.7/angular-material.min.css">
    
    <link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
</head>
<body ng-app='myApp'>


<h2 class="header">
	Welcome Forex Options Application!  
</h2>

<P class="paragraph">  Startup Time: ${serverTime}. </P> 
<div ng-cloak="" class="tabsdemoDynamicHeight" class="tabsDiv">
  <md-content>
    <md-tabs md-dynamic-height="" md-border-bottom="">
      <md-tab label="Pricing and Exchange">
        <md-content class="md-padding">
	          <h1 class="md-display-2">Tab One</h1>
		<p>Integer turpis erat, porttitor vitae mi faucibus, laoreet
			interdum tellus. Curabitur posuere molestie dictum. Morbi eget congue
			risus, quis rhoncus quam. Suspendisse vitae hendrerit erat, at
			posuere mi. Cras eu fermentum nunc. Sed id ante eu orci commodo
			volutpat non ac est. Praesent ligula diam, congue eu enim
			scelerisque, finibus commodo lectus.</p>
		<div class="generic-container" ng-controller="UserController as ctrl">
				<div class="panel panel-default">
					<div class="panel-heading">
						<span class="lead">Currency Conversion</span>
					</div>
					<div class="formcontainer">
						<form ng-submit="ctrl.submit()" name="myForm"
							class="form-horizontal">
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-2 control-lable" for="file">From
										Currency</label>
									<div class="col-md-7">
										<select name="from-currency" id="from-currency"
											class="username form-control input-sm"
											ng-options="option.name for option in dataFromCurrency.availableOptions"
											ng-model="dataFromCurrency.fromCurrency" required
											ng-change="ctrl.test(option)"></select>
										<!-- <input type="text" ng-model="ctrl.user.username" name="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/> -->
										<div class="has-error" ng-show="myForm.$dirty">
											<span ng-show="myForm.uname.$error.required">This is a
												required field</span> <span ng-show="myForm.uname.$invalid">This
												field is invalid </span>
										</div>
									</div>
								</div>
							</div>
	
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-2 control-lable" for="file">To
										Currency</label>
									<div class="col-md-7">
										<select name="to-currency" id="to-currency"
											class="username form-control input-sm"
											ng-options="option.name for option in dataFromCurrency.availableOptions"
											ng-model="dataFromCurrency.toCurrency" required
											ng-change="ctrl.test(option)"></select>
										<!-- <input type="text" ng-model="ctrl.user.username" name="uname" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/> -->
										<div class="has-error" ng-show="myForm.$dirty">
											<span ng-show="myForm.uname.$error.required">This is a
												required field</span> <span ng-show="myForm.uname.$invalid">This
												field is invalid</span>
										</div>
									</div>
								</div>
							</div>
	
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-2 control-lable" for="file">Exchange
										Rate Price</label>
									<div class="col-md-7">
										<input type="text" ng-model="ctrl.dividedRate"
											class="form-control input-sm" ng-disabled="true"
											placeholder="Currency Exchange Rate" />
									</div>
								</div>
							</div>
	
							<div class="row">
								<div class="form-group col-md-12">
									<label class="col-md-2 control-lable" for="file">Email</label>
									<div class="col-md-7">
										<input type="email" ng-model="ctrl.user.email" name="email"
											class="email form-control input-sm"
											placeholder="Enter your Email" required />
										<div class="has-error" ng-show="myForm.$dirty">
											<span ng-show="myForm.email.$error.required">This is a
												required field</span> <span ng-show="myForm.email.$invalid">This
												field is invalid </span>
										</div>
									</div>
								</div>
							</div>
	
							<div class="row">
								<div class="form-actions floatRight">
									<input type="submit"
										value="{{!ctrl.user.id ? 'Add' : 'Update'}}"
										class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
									<button type="button" ng-click="ctrl.reset()"
										class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset
										Form</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
	
	
		</md-content>
      </md-tab>
      <md-tab label="Booking">
        <md-content class="md-padding">
          <h1 class="md-display-2">Tab Two</h1>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla venenatis ante augue. Phasellus volutpat neque ac dui mattis vulputate. Etiam consequat aliquam cursus. In sodales pretium ultrices. Maecenas lectus est, sollicitudin consectetur felis nec, feugiat ultricies mi. Aliquam erat volutpat. Nam placerat, tortor in ultrices porttitor, orci enim rutrum enim, vel tempor sapien arcu a tellus. Vivamus convallis sodales ante varius gravida. Curabitur a purus vel augue ultrices ultricies id a nisl. Nullam malesuada consequat diam, a facilisis tortor volutpat et. Sed urna dolor, aliquet vitae posuere vulputate, euismod ac lorem. Sed felis risus, pulvinar at interdum quis, vehicula sed odio. Phasellus in enim venenatis, iaculis tortor eu, bibendum ante. Donec ac tellus dictum neque volutpat blandit. Praesent efficitur faucibus risus, ac auctor purus porttitor vitae. Phasellus ornare dui nec orci posuere, nec luctus mauris semper.</p>
          <p>Morbi viverra, ante vel aliquet tincidunt, leo dolor pharetra quam, at semper massa orci nec magna. Donec posuere nec sapien sed laoreet. Etiam cursus nunc in condimentum facilisis. Etiam in tempor tortor. Vivamus faucibus egestas enim, at convallis diam pulvinar vel. Cras ac orci eget nisi maximus cursus. Nunc urna libero, viverra sit amet nisl at, hendrerit tempor turpis. Maecenas facilisis convallis mi vel tempor. Nullam vitae nunc leo. Cras sed nisl consectetur, rhoncus sapien sit amet, tempus sapien.</p>
        </md-content>
        	<div class="generic-container ng-scope" ng-controller="BookingController as ctrl">
          <div class="panel panel-default">
              <div class="panel-heading"><span class="lead">Booking Form </span></div>
              <div class="formcontainer">
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal ng-pristine ng-valid-minlength ng-valid-email ng-valid ng-valid-required">
                      <input type="hidden" ng-model="ctrl.user.id" class="ng-pristine ng-untouched ng-valid">
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="uname">Trading Book Name</label>
                              <div class="col-md-7">
									<input type="text" ng-model="ctrl.user.name" id="uname"
										class="username form-control input-sm ng-pristine ng-untouched ng-valid-minlength ng-valid ng-valid-required"
										placeholder="Enter Booking Name" required="true" ng-minlength="3">
									<div class="has-error ng-hide" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required" class="ng-hide">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength" class="ng-hide">Minimum length required is 3</span>
                                      <span ng-show="myForm.uname.$invalid" class="ng-hide">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                        
                         <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="uname">Company Name</label>
                              <div class="col-md-7">
                                  <select name="company-name" id="company-name"
											class="username form-control input-sm"
											ng-options="option.name for option in companyName.data"
											ng-model="companyName.data.selectedName" required ng-change="ctrl.setCompanyName(companyName.data.selectedName)"></select>
                                  <div class="has-error ng-hide" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required" class="ng-hide">This is a required field</span>
                                      <span ng-show="myForm.uname.$invalid" class="ng-hide">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                     	</div>
                      
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="address">Address</label>
                              <div class="col-md-7">
									<!-- <input type="text" ng-model="ctrl.user.address" id="address"
										class="form-control input-sm ng-pristine ng-untouched ng-valid"
										placeholder="Enter your Address. [This field is validation free]"> -->

									<textarea
										id="address"
										name= "address"
									  ng-model="ctrl.user.address"
									  class="form-control input-sm ng-pristine ng-untouched ng-valid"
									  placeholder="Enter your Address. [This field is validation free]"
									  ng-trim="true">
									</textarea>
                                  
                              </div>
                          </div>
                      </div>
					<div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="uname">Sales Person Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.salesPersonName" id="uname" class="username form-control input-sm ng-pristine ng-untouched ng-valid-minlength ng-valid ng-valid-required" placeholder="Enter your name" required="" ng-minlength="3">
                                  <div class="has-error ng-hide" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required" class="ng-hide">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength" class="ng-hide">Minimum length required is 3</span>
                                      <span ng-show="myForm.uname.$invalid" class="ng-hide">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="email">Sales Person Email</label>
                              <div class="col-md-7">
                                  <input type="email" ng-model="ctrl.user.salesPersonEmail" id="email" class="email form-control input-sm ng-pristine ng-untouched ng-valid-email ng-valid ng-valid-required" placeholder="Enter Person Name" required="">
                                  <div class="has-error ng-hide" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.email.$error.required" class="ng-hide">This is a required field</span>
                                      <span ng-show="myForm.email.$invalid" class="ng-hide">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
					
 						<div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="uname">Cut Off</label>
                              <div class="col-md-7">
                                  <select name="cut-off" id="cut-off"
											class="username form-control input-sm"
											ng-options="option.name for option in cutOff.data"
											ng-model="cutOff.data.selectedName" required ng-change="ctrl.setCutOff(cutOff.data.selectedName)"></select> <!-- ng-change="ctrl.setCutOff(ctrl.user.cutOff) -->
                                  <div class="has-error ng-hide" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required" class="ng-hide">This is a required field</span>
                                      <span ng-show="myForm.uname.$invalid" class="ng-hide">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                     	</div>
						
						
                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit" value="Add" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine" disabled="disabled">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">List of Bookings </span></div>
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
                              <th width="100">
                          </th></tr>
                      </thead>
                      <tbody>
                          <!-- ngRepeat: u in ctrl.users --><tr ng-repeat="u in ctrl.users" class="ng-scope">
                              <td><span ng-bind="u.id" class="ng-binding">3</span></td>
                              <td><span ng-bind="u.name" class="ng-binding">kelly</span></td>
                              <td><span ng-bind="u.companyName" class="ng-binding">NEBRASKA</span></td>
                              <td><span ng-bind="u.address" class="ng-binding">kelly@abc.com</span></td>
                              <td><span ng-bind="u.salesPersonName" class="ng-binding">3</span></td>
                              <td><span ng-bind="u.salesPersonEmail" class="ng-binding">kelly</span></td>
                              <td><span ng-bind="u.cutOff" class="ng-binding">NEBRASKA</span></td>
                              <td>
                             <!--  <button type="button" ng-click="ctrl.edit(u.id)" class="btn btn-success custom-width">Edit</button>   --><button type="button" ng-click="ctrl.remove(u.id)" class="btn btn-danger custom-width">Remove</button>
                          </td></tr><!-- end ngRepeat: u in ctrl.users -->
                      </tbody>
                  </table>
              </div>
          </div>
      </div> 
      </md-tab>
      <!-- <md-tab label="three">
        <md-content class="md-padding">
          <h1 class="md-display-2">Tab Three</h1>
          <p>Integer turpis erat, porttitor vitae mi faucibus, laoreet interdum tellus. Curabitur posuere molestie dictum. Morbi eget congue risus, quis rhoncus quam. Suspendisse vitae hendrerit erat, at posuere mi. Cras eu fermentum nunc. Sed id ante eu orci commodo volutpat non ac est. Praesent ligula diam, congue eu enim scelerisque, finibus commodo lectus.</p>
        </md-content>
      </md-tab> -->
    </md-tabs>
  </md-content>
</div>
      
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-aria.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-messages.min.js"></script>
      <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/t-114/svg-assets-cache.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-material/1.0.7/angular-material.min.js"></script>
      
      <script src="<c:url value='/resources/js/app.js' />"></script>
      <script src="<c:url value='/resources/js/service/user_service.js' />"></script>
      <script src="<c:url value='/resources/js/controller/user_controller.js' />"></script>
      <script src="<c:url value='/resources/js/controller/booking_controller.js' />"></script>
  </body>
</html>
