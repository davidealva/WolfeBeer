'use strict';

var app = angular.module('app', ['ngResource']);

app.controller('indexCtrl', function($scope, $log, $http) {

  $http.get("./buyers.json").success(function(data) {
  	$scope.buyers = data;
  });

});