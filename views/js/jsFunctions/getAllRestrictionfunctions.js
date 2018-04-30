
var app = angular.module('getAllRestrictionApp', []);

function getRestrictionDetails($scope, $http) {
	$http({
		method : "GET",
		url : "../rest_calls/Public/getAllRestrictions.php"
	}).then(function getRestrictionSuccess(response) {
		if(response['data']['status']) {
			$scope.restriction_details = response['data']['restriction_details'];
		}
		else {
			$scope.restriction_details = [];
			$.toaster({ priority : 'danger', title : "", message : response['data']['message']});
		}
	}, function getRestrictionFailure(response) {
		$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
	});
}

function deleteRestrictionHelper($scope, $http, idF) {
	$http({
		method : "POST",
		url : "../rest_calls/Admin/deleteRestriction.php",
		headers: {'Content-Type': 'application/x-www-form-urlencoded'},
		data: $.param({
			id: idF
		})
	}).then(function deleteRestrictionSuccess(response) {
		$.toaster({ priority : 'success', title : '', message : response['data']['message']});
		getRestrictionDetails($scope, $http);
	}, function deleteRestrictionFailure(response) {
		$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
		getRestrictionDetails($scope, $http);
	});
}

function addRestrictionHelper($scope, $http, restriction_name) {
	$http({
		method : "POST",
		url : "../rest_calls/Admin/addRestriction.php",
		headers: {'Content-Type': 'application/x-www-form-urlencoded'},
		data: $.param({
			restriction_name: restriction_name
		})
	}).then(function deleteRestrictionSuccess(response) {
		$.toaster({ priority : 'success', title : '', message : response['data']['message']});
		getRestrictionDetails($scope, $http);
	}, function deleteRestrictionFailure(response) {
		$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
		getRestrictionDetails($scope, $http);
	});
}	

app.controller('getAllRestrictionCtrl', function($scope, $http) {
	getRestrictionDetails($scope, $http);
	$scope.deleteRestriction = function(id) {
		deleteRestrictionHelper($scope, $http, id);
		getRestrictionDetails($scope, $http);
	}
	$scope.addRestriction = function() {
		// check whether all are filled or not
		if($scope.restriction_name === undefined || $scope.restriction_name == '') {
			$.toaster({ priority : 'danger', title : '', message : "Enter restriction name to add"});
		}
		else {
			//send request to add
			addRestrictionHelper($scope, $http, $scope.restriction_name);
			$scope.restriction_name = undefined;
		}
	}
});