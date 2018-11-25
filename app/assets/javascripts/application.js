// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require angular/angular
//= require turbolinks
//= require_tree .


var app = angular.module("Myfood", []);

app.controller('indexCtrl', ['$scope', '$http', function($scope, $http) {
var vm = $scope
    vm.front = true;  

  vm.changeListName = function(name) {
    // sharedProperties.setListName(name);
  };

  // $http.get("/home/index.json")
  // .then(function(res) {
  //   debugger
  //   $scope.myWelcome = res.data;
  // });

  
  // $http.get("/restaurants.json")
  // .then(function(res) {
  //   $scope.myWelcome = res.data;
  // });


}]);
