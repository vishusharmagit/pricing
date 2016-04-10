<div class="generic-container" ng-controller="UserController as ctrl">
	<div class="panel panel-default">
		<div class="panel-heading">
			<span class="lead">Currency Conversion</span>
		</div>
		<div class="formcontainer">
			<form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="file">From
							Currency</label>
						<div class="col-md-8">
							<select name="from-currency" id="from-currency"
								placeholder="Select From Currency"
								class="username form-control input-sm"
								ng-options="option.name for option in dataFromCurrency.availableOptions"
								ng-model="dataFromCurrency.fromCurrency" required
								ng-change="ctrl.test(option)"></select>
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
						<label class="col-md-4 control-lable" for="file">To
							Currency</label>
						<div class="col-md-8">
							<select name="to-currency" id="to-currency"
								placeholder="Select To Currency"
								class="username form-control input-sm"
								ng-options="option.name for option in dataFromCurrency.availableOptions"
								ng-model="dataFromCurrency.toCurrency" required
								ng-change="ctrl.test(option)"></select>
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
						<label class="col-md-4 control-lable" for="file">Exchange
							Rate Price</label>
						<div class="col-md-8">
							<input type="text" ng-model="ctrl.dividedRate"
								class="form-control input-sm" ng-disabled="true"
								placeholder="Currency Exchange Rate" />
						</div>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="file">Option
							Type</label>
						<div class="col-md-8">
							<label class="radio-inline"> <input type="radio"
								name="optradio" value="callRadio"
								ng-click="radioClicked(callRadio)" ng-model="callRadio">CALL
							</label> <label class="radio-inline"> <input type="radio"
								name="optradio" value="putRadio"
								ng-click="radioClicked(putRadio)" ng-model="putRadio">PUT
							</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="file">Expiration
							Date</label>
						<div class="col-md-8">
							<input class="form-control  input-sm" type="text"
								placeholder="Select a date" id="datepicker" readonly />
						</div>
					</div>
				</div>

				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-4 control-lable" for="file">Volatility</label>
						<div class="col-md-8">
							<div class="input-group">
								<input type="number" min="0" step="any" class="form-control"
									id="volatility" placeholder="Volatility">
								<div class="input-group-addon">%</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div ng-controller="ModelController"
						class="form-actions floatRight">
						<button ng-click="toggleModal()" class="btn btn-primary btn-sm"
							ng-disabled="myForm.$invalid">Calculate Price</button>
						<modal title="Ready to Book" show="showModal">

						<div class="modal-content">
							<div class="modal-header">
								<h4>Calculated Price</h4>
							</div>
							<div class="modal-body" style="padding: 20px 30px;">
								<form role="form">
									<div class="form-group">
										<label for="calOptType">Option Type</label> <input type="text"
											class="form-control" id="calOptType" ng-model="callOrPut"
											placeholder="Option Type" disabled />
									</div>
									<div class="form-group">
										<label for="calOptVal">Option Value</label> <input type="text"
											class="form-control" id="calOptVal" value="123.43"
											placeholder="Option Type" disabled />
									</div>
									<div class="form-group">
										<label for="delta">Delta</label> <input type="text"
											value="22.1" class="form-control" id="delta"
											placeholder="Option Type" disabled />
									</div>
									<div class="form-group">
										<label for="gamma">Gamma</label> <input type="text"
											value="0.223" class="form-control" id="gamma"
											placeholder="Option Type" disabled />
									</div>

									<button ng-click="moveToBooking()"
										class="btn btn-success btn-block">Ready To Book ?</button>
								</form>
							</div>
						</div>
						</modal>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>