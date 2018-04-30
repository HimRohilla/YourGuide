
var app = angular.module('suggesTourApp', []);

function getAllDestinationsDetails($scope, $http, tag_ids) {
	console.log(tag_ids);
	$("#content").hide();
	$("#instructionsDiv").hide();
	$("#loaderHolder").show();
	if($scope.cityName == "" || $scope.cityName === undefined) {
		window.alert("City name is mandatory");
		return;
	}
	else if($scope.numDays == "" || $scope.numDays === undefined) {
		window.alert("Number of days is mandatory");
		return;		
	}
	var radius = $scope.radius*1000;
	// get the proper address
	url = "https://maps.googleapis.com/maps/api/geocode/json?address="+$scope.cityName+"&key=AIzaSyCSubKz2ZWNFdsWQXk8c5QBMCl4FeenxLQ";
	$http({
		method : "GET",
		url : url
	}).then(function getCityLocation(response) {
		$scope.lat = response['data']['results'][0]['geometry']['location']['lat'];
		$scope.lng = response['data']['results'][0]['geometry']['location']['lng'];
		anotherurl = "https://maps.googleapis.com/maps/api/geocode/json?latlng="+$scope.lat +"," + $scope.lng+"&sensor=true&key=AIzaSyCSubKz2ZWNFdsWQXk8c5QBMCl4FeenxLQ";
		$http({
			method : "GET",
			url : anotherurl
		}).then(function getCityLocation(response) {
			address = response['data']['results'][0]['formatted_address'];
		});				
	});
	// console.log($scope.lat);
	google.maps.event.addDomListener(window, 'load', initialize({lat: parseFloat($scope.lat), lng: parseFloat($scope.lng)}));
	$http({
		method : "POST",
		url : "../rest_calls/User/getPlannedTour.php",
		headers: {'Content-Type': 'application/x-www-form-urlencoded'},			
		data: $.param({
			tags: JSON.stringify(tag_ids),
			lat: $scope.lat,
			lng: $scope.lng,
			radius: radius,
			days: $scope.numDays
			// city: $scope.cityName
		})
	}).then(function getDestinationSuccess(response) {
		console.log(response['data']);
		if(response['data']['status']) {
			$("#content").show();
			$("#loaderHolder").hide();
			tour_details = response['data']['tour_details'];
			$scope.tour = [];
			// $scope.latLngArr = [];
			
			for(var i = 0; i < tour_details.length; i++) {
				var dispPlaces = "";
				for(var j = 0; j < tour_details[i].length; j++) {
					dispPlaces += "<span>"+(j+1)+". "+tour_details[i][j].name;
					if(tour_details[i][j].address != "") {
						dispPlaces += " (" + tour_details[i][j].address + ", " + tour_details[i][j].city + ", " + tour_details[i][j].country + ")";
					}
					dispPlaces += "</span><br>";
					addMarker({lat: parseFloat(tour_details[i][j].lat), lng: parseFloat(tour_details[i][j].lng)}, mapObj, tour_details[i][j].name);
				}
				// console.log(dispPlaces);
				$scope.tour.push(dispPlaces);
			}
			console.log($scope.tour);
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

app.controller('suggesTourCtrl', function($scope, $http) {
	$scope.radius = 20;
	// getLocation($scope, $http);
	$scope.planTour = function() {
		// clear all checkboxes
		var inputs = $(".checkboxInputs");
		var tag_ids = [];
		for(var i = 0; i < inputs.length; i++) {
			if(inputs[i].checked) {
				tag_ids.push(inputs[i].value);
			}
		}
		getAllDestinationsDetails($scope, $http, tag_ids);		
	}
});
app.filter('to_trusted', ['$sce', function ($sce) {
    return function(text) {
        return $sce.trustAsHtml(text);
    };
}]);