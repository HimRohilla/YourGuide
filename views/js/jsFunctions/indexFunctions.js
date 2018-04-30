	var app = angular.module('indexApp', []);

	function getAllPlaces($scope, $http) {
		$http({
			method : "GET",
			url : "../rest_calls/Public/getRandomDestinations.php?n=4"
		}).then(function randomDestinationSuccess(response) {
			if(response['data']['status']) {
				$scope.places = response['data']['places_details'];
				$scope.places[0].gridNumber = "one";
				$scope.places[1].gridNumber = "two";
				$scope.places[2].gridNumber = "three";
				$scope.places[3].gridNumber = "four";
			}
			else
				$("#pricing").hide();
		}, function randomDestinationFailure(response) {
			$("#pricing").hide();
		});		
	}

	function getNumFeedbacksAndUsers($scope, $http) {
		$http({
			method : "GET",
			url : "../rest_calls/Public/getNumberFeedbackAndUsers.php"
		}).then(function numFeedbackSuccess(response) {
			if(response['data']['status']) {
				$scope.numFeedbacks = response['data']['feedback_count'];
				$scope.numUsers = response['data']['user_count'];
			}
		}, function numFeedbackFailure(response) {
			$scope.numFeedbacks = 0;
			$scope.numUsers = 0;
		});
	}

	function getAllFeedbacks($scope, $http) {
		$http({
			method : "GET",
			url : "../rest_calls/Public/getAllFeedbacks.php?n=4"
		}).then(function feedbacksSuccess(response) {
			if(response['data']['status']) {
				console.log(response['data']['feedback_details']);
				$scope.feedbacks = response['data']['feedback_details'];
				for (var i = 0; i < $scope.feedbacks.length; i++) {
					$scope.feedbacks[i].image_name = "images/"+$scope.feedbacks[i].image_name;
				}
				$scope.feedback1 = $scope.feedbacks[0];
				$scope.feedback2 = $scope.feedbacks[1];
				$scope.feedback3 = $scope.feedbacks[2];
				$scope.feedback4 = $scope.feedbacks[3];
			}
			else {
				$("#clientsDiv").hide();
			}
		}, function feedbacksFailure(response) {
			$("#clientsDiv").hide();
		});
	}

	app.controller('indexCtrl', function($scope, $http) {
		getAllPlaces($scope, $http);
		getNumFeedbacksAndUsers($scope, $http);
		getAllFeedbacks($scope, $http);
	});