<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v3 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />

		<link href="https://fonts.googleapis.com/css?family=Work+Sans:200,400&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet"href="{{ asset('css/nav.css') }}">
		<link rel="stylesheet" href="{{ asset('css/style.css') }}">

	</head>

	<body>
		@include('components.navbar')


		<div class="wrapper" style="background-image: url('images/bg-registration-form-3.jpg');">
			<div class="inner">
				<form action="{{route('register')}}" method="POST">
					@csrf
					<h3>Registration Form</h3>
					<div class="form-group">
						<div class="form-wrapper">
							<label for="">Username:</label>
							<div class="form-holder">
								<i class="zmdi zmdi-account-o"></i>
								<input type="text" class="form-control"name="name">
							</div>
							@error('name')
							<div class="alert alert-danger">{{ $message }}</div>
							@enderror
						</div>
						<div class="form-wrapper">
							<label for="">Email:</label>
							<div class="form-holder">
								<i style="font-style: normal; font-size: 15px;">@</i>
								<input type="email" class="form-control" name="email">
							</div>
						</div>
						@error('email')
						<div class="alert alert-danger">{{ $message }}</div>
						@enderror
					</div>
					<div class="form-group">
						<div class="form-wrapper">
							<label for="">Password:</label>
							<div class="form-holder">
								<i class="zmdi zmdi-lock-outline"></i>
								<input type="password" class="form-control" placeholder="********" name="password">
							</div>
							@error('password')
							<div class="alert alert-danger">{{ $message }}</div>
							@enderror
						</div>
						<div class="form-wrapper">
							<label for="">Repeat Password:</label>
							<div class="form-holder">
								<i class="zmdi zmdi-lock-outline"></i>
								<input type="password" class="form-control" placeholder="********" name="confirm-password">
							</div>
						</div>
						@error('confirm-password')
						<div class="alert alert-danger">{{ $message }}</div>
						@enderror
					</div>
		 
					<div class="form-end">
						<div class="checkbox">
							<label>
								<input type="checkbox"> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.
								<span class="checkmark"></span>
							</label>
						</div>
						<div class="button-holder">
							<button type="submit" >Register Now</button>
						</div>
						
					</div>
				</form>
			</div>
		</div>
		@include('components.footer')

	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>