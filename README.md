# Your Guide
Your Guide(YG) is a tourist guide that helps you in planning your tour. A user can easily look into places of the city in which he is visiting.<br>
If you are planning to visit any city or place then this is the one stop solution for your search. Here you can plan your trip based on your interest and can easily search any place/venue. The project is based on MVC framework and uses multiple APIs for the proper working of the integrated system.<br>

### Technologies Used
1. PHP 5
2. Bootstrap 3
3. AngularJS
4. Jquery
5. REST
6. MVC
7. MySql
8. Foursquare API()
9. Distance Matrix API
10. Maps API

### Pre-requisites
1. XAMPP/WAMPP Server
2. Browser (works best in chrome)
3. Text editor
4. Internet connection (for api calls)

Having all these 4 requirements one can easily clone/download the project and run it. Also, having knowledge of all those 10 technologies one can easily edit the contents of the project and/or add some functionalities as desired.<br>
With all these there are some modules in our system.

## Modules
### 1. User
		User module consists of all the functionalities of the user and communicates with the DB. It contains functions that contains all the DB communication related to the user such as create user, delete user, get details and much more. These functions that are in this class are called from files in _"/rest_calls/User"_. Here i have made some rest API calls for my project that are eventually be called from AngularJs. Some of the functionalities of Users are:
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(i) Login
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(ii) Register
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(iii) View Places
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(iv) Get Venue Details
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(v) Add/Delete Phobia
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(vi) Edit Details
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(vii) Plan Tour
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(viii) Give feedback
		Admin enters all the phobia that are allowed by the user to add in their profile.

### 2. Admin
		Admin module consists of all the functionalities of the admin and communicates with the DB. It contains functions that contains all the DB communication related to the admin such as view feedbacks, view users, add phobia, and much more. These functions that are in this class are called from files in _"/rest_calls/Admin"_. Here i have made some rest API calls for my project that are eventually be called from AngularJs. Some of the funcitonalities of Admin are:
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(i) Login
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(ii) Add/Delete Phobia
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(iii) View/Delete Feedbacks
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(iv) Add/Delete Restrictions
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(v) View/Delete Users
&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;&nsbp;(vi) Edit Details
		Admin needs to map phobia with some tags accordingly. Also, admin can add some restrictions to any number of places so that no user can see that place.

### 3. DB
		DB module consists of the functions related to the DB connection and retreival. A factory function is made in the this class to get the DB connection. _PDO_ is used as an abstraction layer for DB.

### 4. Utility
		Utility module consists of the general functions that are used in whole project like encrypt decrypt password, getDetails for various things and more. These functions that are in this class are called from files in _"/rest_calls/Public"_. Here i have made some rest API calls for my project that are eventually be called from AngularJs.

### 5. Tsp
		Tsp module consists of all the algorithms related to the planning of tour.