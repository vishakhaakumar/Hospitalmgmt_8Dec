
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Patient  | Book Appointment</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
		
	</head>
	<body style="background-image:url(https://www.elegantthemes.com/blog/wp-content/uploads/2013/09/bg-9-full.jpg)">
		<div id="app">		
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">Patient | Book Appointment</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>User</span>
									</li>
									<li class="active">
										<span>Book Appointment</span>									
									</li>
									
									
								</ol>
								
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-md-12">
									
									<div class="row margin-top-30">
										<div class="col-lg-8 col-md-12">
											<div class="panel panel-white">
												<div class="panel-heading">
													<h5 class="panel-title">Book Appointment</h5>
												</div>
												<div class="panel-body">
													<form method="post" action="successbapn.jsp?pname=Ajax">
													
<div class="form-group">
															<label for="DoctorSpecialization">
																Doctor Specialization
															</label>
							<select name="dspec" class="form-control" required="required">
																<option value="">Select Specialization</option>
																<option value="Brain surgery">Brain surgery</option>
																<option value="Heart surgery">Heart surgery</option>
																<option value="Plastic surgery">Plastic surgery</option>
																<option value="Cancer treatment">Cancer treatment</option>																
																<option value="Basic treatment">Basic treatment</option>
															</select>
														</div>

														<div class="form-group">
															<label for="doctor">
																Doctors
															</label>
						<select name="dname" class="form-control" required="required">
							
						<option value="">Select Doctor</option>
						<option value="Joe">Joe</option>
						<option value="Kevin">Kevin</option>
						<option value="Jade">Jade</option>
						<option value="James">James</option>
						<option value="Charles">Charles</option>
						<option value="Sarah">Sarah</option>					
						</select>
														</div>

														
<div class="form-group">
						<label for="AppointmentDate">
							Date
						</label>
								<select name="date" required="required" data-date-format="yyyy-mm-dd" class="form-control">
																
						<option value="">Select an available date</option>
						<option value="2021-12-15">2021-12-15</option>
						<option value="2021-12-17">2021-12-17</option>
						<option value="2021-12-18">2021-12-18</option>
						<option value="2021-12-21">2021-12-21</option>
						<option value="2021-12-22">2021-12-22</option>
						<option value="2021-12-24">2021-12-24</option>					
						</select>															
																
		</div>
														
<div class="form-group">
							<label for="Appointmenttime">														
														Time													
															</label>
				<select name="time" required="required" id="timepicker1" class="form-control">
																
						<option value="">Select an available time slot</option>
						<option value="10:30:00">10:30:00</option>
						<option value="10:45:00">10:45:00</option>
						<option value="11:30:00">11:30:00</option>
						<option value="12:45:00">12:45:00</option>
						<option value="15:30:00">15:30:00</option>
						<option value="16:15:00">16:15:00</option>					
						</select>	
														</div>														
														
														<button type="submit" name="submit" class="btn btn-o btn-primary">
															Submit
														</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	
	</body>
</html>
