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
User module consists of all the functionalities of the user and communicates with the DB. It contains functions that contains all the DB communication related to the user such as create user, delete user, get details and much more. These functions that are in this class are called from files in _"/rest_calls/User"_. Here i have made some rest API calls for my project that are eventually be called from AngularJs. Some of the functionalities of Users are:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(i) Login<br>**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(ii) Register<br>**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(iii) View Places<br>**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(iv) Get Venue Details<br>**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(v) Add/Delete Phobia<br>**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(vi) Edit Details<br>**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(vii) Plan Tour<br>**
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(viii) Give feedback<br>**
		Admin enters all the phobia that are allowed by the user to add in their profile.

### 2. Admin
Admin module consists of all the functionalities of the admin and communicates with the DB. It contains functions that contains all the DB communication related to the admin such as view feedbacks, view users, add phobia, and much more. These functions that are in this class are called from files in _"/rest_calls/Admin"_. Here i have made some rest API calls for my project that are eventually be called from AngularJs. Some of the funcitonalities of Admin are:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(i) Login**<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(ii) Add/Delete Phobia**<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(iii) View/Delete Feedbacks**<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(iv) Add/Delete Restrictions**<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(v) View/Delete Users**<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**(vi) Edit Details**<br>
		Admin needs to map phobia with some tags accordingly. Also, admin can add some restrictions to any number of places so that no user can see that place.

### 3. DB
DB module consists of the functions related to the DB connection and retreival. A factory function is made in the this class to get the DB connection. _PDO_ is used as an abstraction layer for DB.

### 4. Utility
Utility module consists of the general functions that are used in whole project like encrypt decrypt password, getDetails for various things and more. These functions that are in this class are called from files in _"/rest_calls/Public"_. Here i have made some rest API calls for my project that are eventually be called from AngularJs.

### 5. Tsp
Tsp module consists of all the algorithms related to the planning of tour.