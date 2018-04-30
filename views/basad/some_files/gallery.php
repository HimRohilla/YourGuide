
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Gallery</title>
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
	<!-- gallery -->
	<div class="banner-bottom gallery">
		<div class="container">
			<div class="wthree_head_section">
				<h2 class="w3l_header">Our <span>Gallery</span></h2>
				<p>A travel agency is a private retailer or public service that provides travel and tourism related services to the public on behalf of suppliers such as activities.</p>
			</div>
			<div class="w3ls_gallery_grids">
				<div class="col-md-4 w3_agile_gallery_grid">
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/g1.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g1.jpg" alt="" class="img-responsive"/>
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Travel</h3>
									<p> Transport</p>
								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/g2.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g2.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Travel</h3>
									<p> Transport</p>
								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/g3.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g3.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Travel</h3>
									<p> Transport</p>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 w3_agile_gallery_grid">
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/g10.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g10.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Travel</h3>
									<p> Transport</p>
								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/g12.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g12.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Travel</h3>
									<p> Transport</p>
								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/g6.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g6.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Travel</h3>
									<p> Transport</p>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 w3_agile_gallery_grid">
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/g7.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g7.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Travel</h3>
									<p> Transport</p>
								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/g8.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g8.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Travel</h3>
									<p> Transport</p>
								</div>
							</div>
						</a>
					</div>
					<div class="agile_gallery_grid">
						<a title="Donec sapien massa, placerat ac sodales ac, feugiat quis est." href="images/g9.jpg">
							<div class="agile_gallery_grid1">
								<img src="images/g9.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_gallery_grid1_pos">
									<h3>Travel</h3>
									<p> Transport</p>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //gallery -->
	<!-- INCLUDE FOOTER -->
	<?php
		include_once($_SERVER['DOCUMENT_ROOT'].'/Project/views/footer.php');
	?>
	<!-- //footer -->

	<!-- bootstrap-modal-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<img src="images/1.jpg" alt=" " class="img-responsive" />
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
	$(window).load(function () {
		$(".loader").fadeOut();
	});			
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->
<!-- simpleLightbox -->
		<script src="js/simpleLightbox.js"></script>	<script>
		$('.w3_agile_gallery_grid a').simpleLightbox();
	</script>
<!-- //simpleLightbox -->

</body>
</html>