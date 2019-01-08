<body>
	<jsp:include page="../command/validate.jsp"></jsp:include>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('assets/img/bg-03.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<form action="assets/command/auth.jsp" class="login100-form validate-form" method="post">
					<span class="login100-form-title p-b-49">
						Login Portal<br />
					</span>
				<!--Email Settings-->
					<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="username" placeholder="Type your username">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>
				<!--Password Settings-->
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="Type your password">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div><br />
				<!-- Status Settings -->
					<div data-validate="Status is required">
						<span class="label-input100">Position</span><br />
							<h6>
							<select name="status">
								<option value="employee">Employee</option>
								<option value="admin">Admin</option>
								<option value="manager">Manager</option>
							</select>
							</h6>
						<span class="focus-input100"></span>
					</div>
				<!--F_Password Settings-->
					<div class="text-right p-t-8 p-b-31">
						<a href="#">
							Forgot password?
						</a>
					</div>
				<!--Login Button Settings-->
					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Login
							</button>
						</div>
					</div>
				</form>
		<!--Sign up Settings
			<br /><br />
			<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;" id="button">
				Sign Up
			</button>
				<div id="id01" class="modal">
				 	<form class="modal-content animate" action="assets/command/register.jsp" method="post">
				 		<div class="imgcontainer p-b-10 p-l-10">Register</div>
						<div class="container-2">
							<label>Username:</label><br />
							<input type="text" placeholder="Enter your username" name="username" required style="padding-left: 10px;"><br /><br />
							<label>Password:</label><br />
							<input type="password" placeholder="Enter your password" name="password" required style="padding-left: 10px;"><br /><br />
							<label>Repeat Password:</label><br />
							<input type="password" placeholder="Repeat your password" name="cpassword" required style="padding-left: 10px;"><br /><br />
							<label>Email:</label><br />
							<input type="email" placeholder="Enter your email" name="email" required style="padding-left: 10px;"><br /><br />
						<div class="center-class">
							<button type="submit" class="container-3">Create Account</button>
						</div>

						</div>
					</form>
				</div>-->
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>
	<!--==============================================================-->
	<script src="assets/js/modal.js"></script>
	<script src="assets/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="assets/vendor/animsition/js/animsition.min.js"></script>
	<script src="assets/vendor/bootstrap/js/popper.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/select2/select2.min.js"></script>
	<script src="assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="assets/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="assets/vendor/countdowntime/countdowntime.js"></script>
	<script src="assets/js/main.js"></script>
	<!--==============================================================-->
</body>