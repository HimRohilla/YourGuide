
	var app = angular.module('getAllPhobiaApp', []);

	function getAllSubtags($scope, $http) {
		$http({
			method : "GET",
			url : "../rest_calls/Admin/getAllSubtags.php"
		}).then(function getSubtagsSuccess(response) {
			console.log(response);
			if(response['data']['status']) {
				$scope.subtags_details = response['data']['subtags_details'];
			}
			else {
				$scope.subtags_details = [];
				$.toaster({ priority : 'danger', title : "", message : response['data']['message']});
			}
		}, function getSubtagsFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in retreival"});
		});		
	}

	function getPhobiaDetails($scope, $http) {
		$http({
			method : "GET",
			url : "../rest_calls/Public/getAllPhobia.php"
		}).then(function getPhobiaSuccess(response) {
			if(response['data']['status']) {
				$scope.phobia_details = response['data']['phobia_details'];
			}
			else {
				$scope.phobia_details = [];
				$.toaster({ priority : 'danger', title : "", message : response['data']['message']});
			}
		}, function getPhobiaFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in retreival"});
		});
	}

	function deletePhobiaHelper($scope, $http, idF) {
		$http({
			method : "POST",
			url : "../rest_calls/Admin/deletePhobia.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: $.param({
				id: idF
			})
		}).then(function deletePhobiaSuccess(response) {
			$.toaster({ priority : 'success', title : '', message : response['data']['message']});
			getPhobiaDetails($scope, $http);
		}, function deletePhobiaFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
			getPhobiaDetails($scope, $http);
		});
	}

	function addPhobiaHelper($scope, $http, phobia_name, tags) {
		$http({
			method : "POST",
			url : "../rest_calls/Admin/addPhobia.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: $.param({
				phobia_name: phobia_name,
				tags: tags
			})
		}).then(function deletePhobiaSuccess(response) {
			$.toaster({ priority : 'success', title : '', message : response['data']['message']});
			getPhobiaDetails($scope, $http);
		}, function deletePhobiaFailure(response) {
			$.toaster({ priority : 'warning', title : '', message : "Some error occured in deletion"});
			getPhobiaDetails($scope, $http);
		});
	}	

	app.controller('getAllPhobiaCtrl', function($scope, $http) {
		getAllSubtags($scope, $http);
		getPhobiaDetails($scope, $http);
		$scope.deletePhobia = function(id) {
			deletePhobiaHelper($scope, $http, id);
			getPhobiaDetails($scope, $http);
		}
		$scope.addPhobia = function() {
			// check whether all are filled or not
			var inputs = $("#tagsDiv :input");
			var tag_ids = [];
			var chk = false;
			for(var i = 0; i < $scope.subtags_details.length; i++) {
				if(inputs[i].checked) {
					chk = true;
					tag_ids.push(i+9);
				}				
			}
			// console.log(tag_ids);
			if(!chk || $scope.phobia_name === undefined || $scope.phobia_name == '') {
				$.toaster({ priority : 'danger', title : '', message : "Enter phobia and select atleast 1 tag"});
			}
			else {
				//send request to add
				addPhobiaHelper($scope, $http, $scope.phobia_name, tag_ids);
				$scope.phobia_name = undefined;
				for(var i = 0; i < $scope.subtags_details.length; i++) {
					inputs[i].checked = false;
				}
				getPhobiaDetails($scope, $http);
			}
		}
	});