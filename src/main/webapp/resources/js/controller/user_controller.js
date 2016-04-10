'use strict';

App.controller('UserController', ['$scope', '$rootScope', 'UserService', function($scope, $rootScope, UserService) {
          var self = this;
          self.user={id:null,username:'',address:'',email:''};
          $scope.fromCurrencyList;
          $scope.toCurrencyList;
          
          $scope.callOrPut = '';
          $scope.callRadio = 'CALL';
          $scope.putRadio = 'PUT';
          $scope.radioClicked = function(d) {
        	console.log(d);  
        	if(d && d == 'callRadio') {
        		$scope.callOrPut = 'CALL';
        	} else {
        		$scope.callOrPut = 'PUT';
        	}
        	
        	console.log('radioClicked');
          };
          
          $scope.dataFromCurrency = {
    		  fromCurrency: null,
    		  toCurrency : null,
    		  availableOptions: [
    		    { "name" : "CNY",
					"exchangeRate" : 0.1549522747
				}, {
					"name" : "JPY",
					"exchangeRate" : 0.0088833615
				}, {
					"name" : "LKR",
					"exchangeRate" : 0.0068469702
				}, {
					"name" : "MKD",
					"exchangeRate" : 0.0184673912
				}, {
					"name" : "MXN",
					"exchangeRate" : 0.0578737195
				}, {
					"name" : "CAD",
					"exchangeRate" : 0.7689941556
				}, {
					"name" : "ZAR",
					"exchangeRate" : 0.0677171859
				}, {
					"name" : "AUD",
					"exchangeRate" : 0.7657554177
				}, {
					"name" : "ILS",
					"exchangeRate" : 0.2662335934
				}, {
					"name" : "NOK",
					"exchangeRate" : 0.1209409204
				}, {
					"name" : "PKR",
					"exchangeRate" : 0.0095506423
				}, {
					"name" : "THB",
					"exchangeRate" : 0.0284689404
				}, {
					"name" : "IDR",
					"exchangeRate" : 0.0000755344
				}, {
					"name" : "GHS",
					"exchangeRate" : 0.2610966057
				}, {
					"name" : "AED",
					"exchangeRate" : 0.2722644232
				}, {
					"name" : "QAR",
					"exchangeRate" : 0.2746347358
				}, {
					"name" : "BHD",
					"exchangeRate" : 2.6525902544
				}, {
					"name" : "NGN",
					"exchangeRate" : 0.0050238634
				}, {
					"name" : "HRK",
					"exchangeRate" : 0.1513225592
				}, {
					"name" : "COP",
					"exchangeRate" : 0.0003330891
				}, {
					"name" : "DKK",
					"exchangeRate" : 0.1527253845
				}, {
					"name" : "MYR",
					"exchangeRate" : 0.2564431337
				}, {
					"name" : "SEK",
					"exchangeRate" : 0.1231860849
				}, {
					"name" : "BGN",
					"exchangeRate" : 0.5818689631
				}, {
					"name" : "KRW",
					"exchangeRate" : 0.0008745693
				}, {
					"name" : "VEF",
					"exchangeRate" : 0.1001251564
				}, {
					"name" : "CZK",
					"exchangeRate" : 0.0420841768
				}, {
					"name" : "KWD",
					"exchangeRate" : 3.3125745329
				}, {
					"name" : "VEB",
					"exchangeRate" : 0.0001001252
				}, {
					"name" : "VND",
					"exchangeRate" : 0.0000448571
				}, {
					"name" : "TRL",
					"exchangeRate" : 3.5490555786
				}, {
					"name" : "JOD",
					"exchangeRate" : 1.4094432699
				}, {
					"name" : "NZD",
					"exchangeRate" : 0.6909417536
				}, {
					"name" : "CLP",
					"exchangeRate" : 0.0014976786
				}, {
					"name" : "GBP",
					"exchangeRate" : 1.4361625736
				}, {
					"name" : "DZD",
					"exchangeRate" : 0.0092256369
				}, {
					"name" : "KES",
					"exchangeRate" : 0.0098590161
				}, {
					"name" : "PEN",
					"exchangeRate" : 0.3018503426
				}, {
					"name" : "CHF",
					"exchangeRate" : 1.0397171969
				}, {
					"name" : "KZT",
					"exchangeRate" : 0.0029019995
				}, {
					"name" : "UAH",
					"exchangeRate" : 0.0381679389
				}, {
					"name" : "RUB",
					"exchangeRate" : 0.0149487110
				}, {
					"name" : "ARS",
					"exchangeRate" : 0.0680063926
				}, {
					"name" : "SAR",
					"exchangeRate" : 0.2666026820
				}, {
					"name" : "EGP",
					"exchangeRate" : 0.1126773259
				}, {
					"name" : "INR",
					"exchangeRate" : 0.0150949092
				}, {
					"name" : "TWD",
					"exchangeRate" : 0.0310443313
				}, {
					"name" : "TRY",
					"exchangeRate" : 0.3549497746
				}, {
					"name" : "SGD",
					"exchangeRate" : 0.7416196974
				}, {
					"name" : "MAD",
					"exchangeRate" : 0.1038141312
				}, {
					"name" : "HKD",
					"exchangeRate" : 0.1289124942
				}, {
					"name" : "LTL",
					"exchangeRate" : 0.3295870275
				}, {
					"name" : "BRL",
					"exchangeRate" : 0.2783809365
				}, {
					"name" : "EUR",
					"exchangeRate" : 1.1380448390
				}, {
					"name" : "HUF",
					"exchangeRate" : 0.0036242389
				}, {
					"name" : "PHP",
					"exchangeRate" : 0.0217533174
				}, {
					"name" : "PLN",
					"exchangeRate" : 0.2682403433
				}, {
					"name" : "USD",
					"exchangeRate" : 1.0000000000
				} ]
          };
          
          self.dividedRate;
          self.currency = [{name:'',exchangeRate:''}];
          self.users=[];
          
          /*self.fetchAllCurrency = function(){
              UserService.fetchAllCurrency()
                  .then( function(d) {
                	  
					    }, function(errResponse){
					    	console.error('Error while fetching Currencies');
					    }
			       );
          };

          self.fetchAllCurrency();
           */
          
          self.test = function(data) {
        	  var number;
              if($scope.dataFromCurrency.fromCurrency && $scope.dataFromCurrency.toCurrency) {
            	  number= $scope.dataFromCurrency.fromCurrency.exchangeRate / $scope.dataFromCurrency.toCurrency.exchangeRate;;
              }
              if (number) {
            	  self.dividedRate = number;
              }
          };
      }]);
