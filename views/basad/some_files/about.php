
<!DOCTYPE html>
<html lang="en">
<head>
	<title>About</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Travel Agency Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function() {
			setTimeout(hideURLbar, 0);
		}, false);
		function hideURLbar(){
			window.scrollTo(0,1);
		}
	</script>	
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet"> 
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
</head>
<body>
	<div class="loader"></div>
	<!-- INCLUDE HEADER -->
	<?php
		include_once($_SERVER['DOCUMENT_ROOT'].'/Project/config/DB.php');
		include_once($_SERVER['DOCUMENT_ROOT'].'/Project/objects/User.php');
		$db = new DB();
		$conn = $db->getConnection();
		$user = new User($conn);
		if($user->authenticate()) {
			if(!$_SESSION['isLoggedIn']['is_admin'])
				include_once($_SERVER['DOCUMENT_ROOT'].'/Project/views/header_login.php');
			else
				include_once($_SERVER['DOCUMENT_ROOT'].'/Project/views/header_admin.php');
		}
		else
			include_once($_SERVER['DOCUMENT_ROOT'].'/Project/views/header.php');
		include_once($_SERVER['DOCUMENT_ROOT'].'/Project/config/Constants.php');
		$image_base_url = HTTP.HOST.'/Project/rest_calls/Public/getImage.php';
	?>
	<div class="banner-1">
	</div>
	<!-- //banner -->
	<!-- about -->
	<!-- main-textgrids -->
	<div class="main-textgrids">
		<div class="container">
			<div class="wthree_head_section">
				<h3 class="w3l_header">About <span>Us</span></h3>
				<p>A travel agency is a private retailer or public service that provides travel and tourism related services to the public on behalf of suppliers such as activities.</p>
			</div>
			<div class="ab-agile">
				<div class="col-md-5 ab-pic">
					<img src="images/g1.jpg" alt=" " />
				</div>
				<div class="col-md-7 ab-text">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu erat lacus, vel congue mauris. Fusce velit justo, faucibus eu sagittis ac, gravida quis tortor. Suspendisse non urna mi, quis tincidunt eros. Nullam tellus turpis, fringilla sit amet congue ut, luctus a nulla. Donec sit amet sapien neque, id ullamcorper diam. Nulla facilisi. Pellentesque pellentesque arcu a elit congue lacinia.</p>
					<ul class="ab">
						<li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-angle-right" aria-hidden="true"></i> Lorem ipsum dolor sit amet,consectetur adipiscing elit</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-angle-right" aria-hidden="true"></i> Pellentesque eu erat lacus,consectetur adipiscing elit</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-angle-right" aria-hidden="true"></i> Lorem ipsum dolor sit amet,consectetur adipiscing elit</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-angle-right" aria-hidden="true"></i> Lorem ipsum dolor sit amet,consectetur adipiscing elit</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="statements">
				<div class="col-md-7 mission">
					<h4>Aenean quis faucibus libero</h4>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eu erat lacus, vel congue mauris. Fusce velit justo, faucibus eu sagittis ac, gravida quis tortor. Suspendisse non urna mi, quis tincidunt eros. Nullam tellus turpis, fringilla sit amet congue ut, luctus a nulla. Donec sit amet sapien neque, id ullamcorper diam. Nulla facilisi. Pellentesque pellentesque arcu a elit congue lacinia.</p>
					<ul class="ab">
						<li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-angle-right" aria-hidden="true"></i> Lorem ipsum dolor sit amet,consectetur adipiscing elit</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-angle-right" aria-hidden="true"></i> Pellentesque eu erat lacus,consectetur adipiscing elit</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-angle-right" aria-hidden="true"></i> Lorem ipsum dolor sit amet,consectetur adipiscing elit</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal"><i class="fa fa-angle-right" aria-hidden="true"></i> Lorem ipsum dolor sit amet,consectetur adipiscing elit</a></li>
					</ul>
				</div>
				<div class="col-md-5 facts">
					<img src="images/g4.jpg" alt=" " />		
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //main-textgrids -->
	<!-- different -->
	<div class="different">
		<div class="container">
			<div class="wthree_head_section">
				<h3 class="w3l_header hrm">Why We are <span class="hrm">Different</span></h3>
				<p class="hrm">A travel agency is a private retailer or public service that provides travel and tourism related services to the public on behalf of suppliers such as activities.</p>
			</div>
			<div class="w3agile-different-info">
				<p>Cras vehicula massa id ipsum venenatis, non convallis libero pellentesque. Sed tristique massa et mattis mattis. Nunc euismod consequat ex, eu tincidunt justo malesuada vitae. Sed auctor diam quis nulla hendrerit porta. Quisque venenatis, tortor quis tristique congue, lorem lectus elementum augue, in laoreet lorem justo lacinia velit. Phasellus tempus luctus velit, eu fermentum arcu porttitor sit amet. Suspendisse id efficitur sem. Donec laoreet ante at facilisis dictum. Donec sodales porta orci sed porta. Vivamus est enim, pharetra sit amet placerat ut, eleifend quis purus. Sed elementum tortor erat, placerat rutrum augue facilisis vel. Morbi feugiat tortor erat, nec gravida mauris egestas tincidunt. Sed vitae dignissim sapien.</p>
				<div class="w3agile-button">
					<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
				</div>
			</div>
		</div>
	</div>
	<!-- //different -->
	<!-- team -->
	<div class="team">
		<div class="container">
			<div class="wthree_head_section">
				<h2 class="w3l_header">Our <span>Agents</span></h2>
				<p>A travel agency is a private retailer or public service that provides travel and tourism related services to the public on behalf of suppliers such as activities.</p>
			</div>
			<div class="agileinfo-team-grids">
				<div class="col-md-3 wthree-team-grid">
					<img src="images/t1.jpg" alt="">
					<div class="wthree-team-grid-info">
						<h4>Mary Jane</h4>
						<p>Vestibulum</p>
						<div class="team-social-grids">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 wthree-team-grid">
					<img src="images/t2.jpg" alt="">
					<div class="wthree-team-grid-info">
						<h4>Peter Parke</h4>
						<p>Vestibulum</p>
						<div class="team-social-grids">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 wthree-team-grid">
					<img src="images/t3.jpg" alt="">
					<div class="wthree-team-grid-info">
						<h4>Jennifer Watson</h4>
						<p>Vestibulum</p>
						<div class="team-social-grids">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-3 wthree-team-grid">
					<img src="images/t4.jpg" alt="">
					<div class="wthree-team-grid-info">
						<h4>Steven Wilson</h4>
						<p>Vestibulum</p>
						<div class="team-social-grids">
							<ul>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //team -->
	<!-- //about -->
	<!-- INCLUDE FOOTER -->
	<?php
		include_once($_SERVER['DOCUMENT_ROOT'].'/Project/views/footer.php');
	?>
	<!-- bootstrap-modal-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Travel Agency
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<div class="modal-body">
					<img src="images/1.jpg" alt=" " class="img-responsive" />
					<p>Ut enim ad minima veniam, quis nostrum 
						exercitationem ullam corporis suscipit laboriosam, 
						nisi ut aliquid ex ea commodi consequatur? Quis autem 
						vel eum iure reprehenderit qui in ea voluptate velit 
						esse quam nihil molestiae consequatur, vel illum qui 
						dolorem eum fugiat quo voluptas nulla pariatur.
						<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
						esse quam nihil molestiae consequatur.</i>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- //bootstrap-modal-pop-up --> 
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js -->
	<!-- //here starts scrolling icon -->
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling script -->
	<script type="text/javascript">
		$(window).load(function () {
			$(".loader").fadeOut();
		})		
		$(document).ready(function() {
			$(window).on("scroll", function() {
			    if($(window).scrollTop() > 50) {
			        $(".top-bar").addClass("active");
			    } else {
			        //remove the background property so it comes transparent again (defined in your css)
			       $(".top-bar").removeClass("active");
			    }
			});	
			$().UItoTop({ easingType: 'easeOutQuart' });				
		});
	</script>
	<!-- //here ends scrolling script -->
	<!-- //here ends scrolling icon -->

	<!-- scrolling script -->
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script> 
	<!-- //scrolling script -->
</body>
</html>