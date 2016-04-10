'use strict';

App.controller('ModelController', ['$scope','$rootScope', function($scope, $rootScope) {
	
	$scope.showModal = false;
	$rootScope.activeBooking = false;
    $scope.toggleModal = function(){
        $scope.showModal = !$scope.showModal;
    };
    
    $scope.moveToBooking = function(){
    	$scope.showModal = false;
    	$rootScope.activeBooking = true;
    }
    
}]);