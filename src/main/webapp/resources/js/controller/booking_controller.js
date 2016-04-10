'use strict';

App.controller('BookingController', ['$scope', function($scope) {
              var self = this;
              self.user={id:null,name:'',companyName:'',address:'', salesPersonName: '', salesPersonEmail : '', cutOff : ''};
              self.id = 3;
              
              
              $scope.cutOff = {
            		  selectedName : null,
            		  data : [
    	    		    { "id" : 1,
    						"name" : "00:00"
    					}, {
    						"id" : 2,
    						"name" : "03:00"
    					}, {
    						"id" : 3,
    						"name" : "06:00"
    					}, {
    						"id" : 4,
    						"name" : "09:00"
    					}, {
    						"id" : 5,
    						"name" : "12:00"
    					}, {
    						"id" : 6,
    						"name" : "15:00"
    					}, {
    						"id" : 7,
    						"name" : "18:00"
    					},
    					{
    						"id" : 8,
    						"name" : "21:00"
    					}
    					]
              }
              $scope.companyName = {
            		  selectedName : null,
            		  data : [
						{ "id" : 0,
							"name" : "DBS"
						},
    	    		    { "id" : 1,
    						"name" : "Amazon"
    					}, {
    						"id" : 2,
    						"name" : "Flipkart"
    					}, {
    						"id" : 3,
    						"name" : "Linkedin"
    					}, {
    						"id" : 4,
    						"name" : "Facebook"
    					}, {
    						"id" : 5,
    						"name" : "SAP"
    					}, {
    						"id" : 6,
    						"name" : "Twitter"
    					}, {
    						"id" : 7,
    						"name" : "Oracle"
    					}
    					]
              };
              self.users =[// In future posts, we will get it from server using service
                           {id:1,name:'Trade Name',companyName:'Standard Chartered',address:'Singapore', salesPersonName: 'Vishu Sharma', salesPersonEmail : 'vishu.sharma.059@gmail.com', cutOff : '12:00'},
                           {id:2,name:'Trade Name 2',companyName:'Facebook',address:'California', salesPersonName: 'Test Name', salesPersonEmail : 'test@test.com', cutOff : '00:00'}
                   ];
              
              self.submit = function() {
                  if(self.user.id === null){
                      self.user.id = self.id++;
                      console.log('Saving New User', self.user);    
                      self.users.push(self.user);//Or send to server, we will do it in when handling services
                  }else{
                      for(var i = 0; i < self.users.length; i++){
                          if(self.users[i].id === self.user.id) {
                            self.users[i] = self.user;
                            break;
                          }
                      }
                     console.log('User updated with id ', self.user.id);
                  }
                  self.reset();
              };
              
              self.edit = function(id){
                  console.log('id to be edited', id);
                  for(var i = 0; i < self.users.length; i++){
                      if(self.users[i].id === id) {
                         self.user = angular.copy(self.users[i]);
                         break;
                      }
                  }
              }
              
              self.remove = function(id) {
                  console.log('id to be deleted', id);
                  for(var i = 0; i < self.users.length; i++){
                      if(self.users[i].id === id) {
                         self.users.splice(i,1);
                         if(self.user.id === id){//It is shown in form, reset it.
                            self.reset();
                         }
                         break;
                      }
                  }
              }
              
              self.reset = function() {
                  self.user={id:null,name:'',companyName:'',address:'', salesPersonName: '', salesPersonEmail : '', cutOff : ''};
                  $scope.myForm.$setPristine(); //reset Form
              }
              
              
              self.setCompanyName = function(d) {
                  self.user.companyName = d.name;
                  
              }
              
              self.setCutOff = function(d) {
                  self.user.cutOff = d.name;
              }

      }]);