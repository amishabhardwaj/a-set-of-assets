<!--a set of assets/WebContent/WEB-INF/UserHomepage.html-->
<!DOCTYPE html>
<html>
<head>
<title>Overdue management</title>
<style>
/* Split the screen in half */
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.split {
	height: 100%;
	width: 50%;
	position: fixed;
	z-index: 1;
	top: 5;
	overflow-x: hidden;
	padding-top: 20px;
}

/* Control the left side */
.left {
	left: 0;
	background-color: black; /*#e9eeed*/
	color: white;
}

.lefttable {
	margin-top: 35px;
	margin-left: 10px;
}

td {
	padding-left: 80px;
	padding-top: 5px;
	padding-bottom: 5px;
	padding-right: 60px;
}

/* Control the right side */
.right {
	right: 0;
	background-color: #f4f3f3;
}

/* If you want the content centered horizontally and vertically */
.centered {
	position: relative;
	top: 20%;
	left: 40%;
	transform: translate(5%, -50%);
	text-align: left;
}

/* Style the image inside the centered container, if needed */
.centered img {
	width: 150px;
	border-radius: 70%;
}

.topnav {
	overflow: hidden;
	background-color: #e9e9e9;
	z-index: 1;
}

.topnav a {
	float: left;
	display: block;
	color: black;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #000000;
	color: white;
}

.topnav input[type=text] {
	padding: 6px;
	margin-top: 8px;
	font-size: 17px;
	border: none;
}

.topnav input[type=text] {
	border: 1px solid #ccc;
}

.addassetbox {
	position: absolute;
	top: 50%;
	left: 20%;
	transform: translate(-50%, -50%);
	width: 250px;
}

.addassetbutn {
	margin-left: 105px;
}
</style>
</head>
<body>
	<div class="topnav">
		<a class="active" href="AddAssets.html">Add Assets</a> <a
			href="#OverdueAssets">Over-due Assets</a> <a href="#">Import User</a>
		<a href="#">View Reports</a>


	</div>
	</div>
	<div class="split left">
		<div class="centered">
			<img src="adminimg.jpg" alt="USER"
				style="left: 60%; width: 80px; height: 80px;">
		</div>
		<br>
		<br>
		<br>
		<br>
		<div class="left" align="left">
			<table class="lefttable">

				<tr>
					<td><ul>
							<li>Name</li>
						</ul></td>
					<td>:</td>
					<td>--</td>
				</tr>

				<tr>
					<td><ul>
							<li>Email</li>
						</ul></td>
					<td>:</td>
					<td>--</td>
				</tr>
				<tr>
					<td><ul>
							<li>Logged in at
						</ul></td>
					<td>:</td>
					<td>--</td>
				</tr>

			</table>
		</div>
	</div>
	<div class="split right">
		<br>
		<br>
		<br>
		<br>
		<br>
		<h2 style="text-shadow: 4px 4px 2px #A0A0A0" align="center">Overdue
			Asset</h2>
		<br>
		<br>
		<br>
		<form height=400, align="center">
			<h2>Search by:</h2>
			<br> <input type="radio" name="r1"> Date <br>
			<br> <input type="radio" name="r1"> Name <br> <br>
			<input type="radio" name="r1"> Category <br> <br> <input
				type="submit" value="Search" , align="center" , class="block">
			<br> <br>

		</form>
		<table border=1, width=100%, height=70>
			<tr>
				<th>Transaction Id</th>
				<th>Ban Start Date</th>
				<th>Fine paid?</th>
				<th>Ban period finished?</th>
			</tr>

		</table>

	</div>

</body>
</html>

