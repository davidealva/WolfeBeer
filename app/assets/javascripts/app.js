'use strict';

var app = angular.module('app', ['ngResource']);

app.controller('formCtrl', ['$scope', function($scope){
  $scope.step = 1;

  $scope.nextStep = function() {
      $scope.step++;
  }

  $scope.prevStep = function() {
      $scope.step--;
  }

  $scope.submitForm = function() {
      // submit code goes here
  }
}]);

app.controller('indexCtrl', function($scope, $log, $http) {

  $http.get("./buyers.json").success(function(data) {
  	$scope.buyers = data;
 	});

});