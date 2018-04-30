
	var app = angular.module('dashboardApp', []);

	function returnNumDays(numDays) {
		if(numDays != undefined) {
			var days = numDays.replace( /^\D+/g, '');
			days = days.split("").reverse().join("");
			days = days.replace( /^\D+/g, '');
			return days;
		}
	}

	function getAllDestinationsDetails($scope, $http, tag_ids) {
		$("#loaderHolder").show();
		$("#content").hide();
		var radius = $scope.radius*1000;
		if($scope.cityName != undefined && $scope.cityName != "") {
			// get the proper address
			url = "https://maps.googleapis.com/maps/api/geocode/json?address="+$scope.cityName+"&key=AIzaSyCSubKz2ZWNFdsWQXk8c5QBMCl4FeenxLQ";
			// $lat = $apiArr['results'][0]['geometry']['location']['lat'];
			// $lng = $apiArr['results'][0]['geometry']['location']['lng'];
			$http({
				method : "GET",
				url : url
			}).then(function getCityLocation(response) {
				lat = response['data']['results'][0]['geometry']['location']['lat'];
				lng = response['data']['results'][0]['geometry']['location']['lng'];
				anotherurl = "https://maps.googleapis.com/maps/api/geocode/json?latlng="+lat +"," + lng+"&sensor=true&key=AIzaSyCSubKz2ZWNFdsWQXk8c5QBMCl4FeenxLQ";
				$http({
					method : "GET",
					url : anotherurl
				}).then(function getCityLocation(response) {
					address = response['data']['results'][0]['formatted_address'];
					console.log(address);
					$("#visitSummaryId").html('<b><u>Distance from: </u></b>' + address);
				});				
			});
		}
		else {
			$("#visitSummaryId").html("");
		}
		console.log($scope.lat + "," + $scope.lng);
		$http({
			method : "POST",
			url : "../rest_calls/User/getAllDestinations.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},			
			data: $.param({
				tags: JSON.stringify(tag_ids),
				lat: $scope.lat,
				lng: $scope.lng,
				radius: radius,
				city: $scope.cityName
			})
		}).then(function getDestinationSuccess(response) {
			console.log(response['data']);
			if(response['data']['status']) {
				$("#loaderHolder").hide();
				$("#content").show();
				$scope.destination_details = response['data']['destination_details'];
				for(var i = 0; i < $scope.destination_details.length; i++) {
					ret = "";
					rating = $scope.destination_details[i].rating/2;
					while(rating > 0) {
					    if(rating >= 1) {
					        ret += '<i class="fa fa-star" aria-hidden="true" style="color: gold;font-size:25px;"></i>';
					        rating -= 1;
					    } else {
					        ret += '<i class="fa fa-star-half-o" aria-hidden="true" style="color: gold;font-size:25px;"></i>';
					        rating = 0;
					    }
					}
					$scope.destination_details[i].rating = ret;
				}
			}
			else {
				$.toaster({ priority : 'warning', title : '', message : response['data']['message']});
			}
		}, function getDestiantionFailure(response) {
			$.toaster({ priority : 'danger', title : '', message : "Some error occured in retreival"});
		});
	}

	function getAllMatchedPlaces($scope, $http) {
		$("#loaderHolder").show();
		$("#content").hide();
		$http({
			method : "POST",
			url : "../rest_calls/User/getAllMatchedPlaces.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: $.param({
				city: $scope.cityName,
				place: $scope.placeName
			})
		}).then(function getDestinationSuccess(response) {
			console.log(response)
			if(response['data']['status']) {
				$("#loaderHolder").hide();
				$("#content").show();
				$scope.destination_details = response['data']['destination_details'];
			}
			else {
				$.toaster({ priority : 'warning', title : '', message : response['data']['message']});
			}
		}, function getDestiantionFailure(response) {
			$.toaster({ priority : 'danger', title : '', message : "Some error occured in retreival"});
		});
	}

	function getNamesHelper($scope, $http) {
		$http({
			method : "POST",
			url : "../rest_calls/User/getNamesSuggestion.php",
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			data: $.param({
				city: $scope.cityName,
				place: $scope.placeName
			})
		}).then(function getDestinationSuccess(response) {
			if(response['data']['status']) {
				$scope.names_details = response['data']['names_details'];
				// console.log($scope.names_details);
			}
			else {
				$.toaster({ priority : 'warning', title : '', message : response['data']['message']});
			}
		}, function getDestiantionFailure(response) {
			$.toaster({ priority : 'danger', title : '', message : "Some error occured in retreival"});
		});
	}

	function getLocation($scope, $http) {
		var watchID = navigator.geolocation.getCurrentPosition(function(position) {
			$scope.lat = position.coords.latitude;
			$scope.lng = position.coords.longitude;
			getAllDestinationsDetails($scope, $http, []);
		});
		// $scope.lat = 25.4920;
		// $scope.lng = 81.8639;
		// //delhi
		// $scope.lat = 28.70;
		// $scope.lng = 77.10;
	}

	function getLocation($scope, $http) {
		var watchID = navigator.geolocation.getCurrentPosition(function(position) {
			$scope.lat = position.coords.latitude;
			$scope.lng = position.coords.longitude;
			getAllDestinationsDetails($scope, $http, []);
		});
		// $scope.lat = 25.4920;
		// $scope.lng = 81.8639;
		// //delhi
		// $scope.lat = 28.70;
		// $scope.lng = 77.10;
	}



	app.controller('dashboardCtrl', function($scope, $http) {
		$scope.radius = 20;
		getLocation($scope, $http);
		$scope.applyFilters = function() {
			var inputs = $(".checkboxInputs");
			var tag_ids = [];
			for(var i = 0; i < inputs.length; i++) {
				if(inputs[i].checked) {
					tag_ids.push(inputs[i].value);
				}
			}
			$scope.placeName = "";
			getAllDestinationsDetails($scope, $http, tag_ids);
		}
		$scope.getNames = function() {
			if($scope.cityName == undefined || $scope.cityName == "") {
				$.toaster({ priority : 'warning', title : '', message : "Enter city first to get results"});
			}
			else {
				getNamesHelper($scope, $http);
			}
			
		}
		$scope.applyCity = function() {
			// clear all checkboxes
			var inputs =  $(".checkboxInputs");
			for(var i = 0; i < inputs.length; i++) {
				if(inputs[i].checked) {
					inputs[i].checked = false;
				}
			}
			if($scope.placeName == "" || $scope.placeName == undefined)	// means get all places in a city
				getAllDestinationsDetails($scope, $http, [])
			else {
				$("#visitSummaryId").html("");
				getAllMatchedPlaces($scope, $http);
			}
		}
	});
	app.filter('to_trusted', ['$sce', function ($sce) {
	    return function(text) {
	        return $sce.trustAsHtml(text);
	    };
	}]);