<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: pink; /* Set a light background color */
	margin: 0;
	padding: 0;
}

.header {
	background-color: pink; /* Set a header background color */
	text-align: center;
	padding: 20px;
}

.container {
	background-color: #fff; /* Set a container background color */
	width: 80%;
	margin: 0 auto;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	/* Add a box shadow for depth */
}

.collapsible {
	background-color: pink;
	color: black;
	cursor: pointer;
	padding: 18px;
	width: 100%;
	border: none;
	text-align: left;
	outline: none;
	font-size: 15px;
}

.active, .collapsible:hover {
	background-color: pink;
}

.content {
	padding: 0 18px;
	display: none;
	overflow: hidden;
	background-color: white;
}

.question-box {
	background-color: pink; /* Set a background color for question boxes */
	border: 1px solid #ddd;
	border-radius: 5px;
	padding: 10px;
	text-align: center;
	margin: 10px auto;
	cursor: pointer;
}

.button-container {
	text-align: center;
	margin-top: 20px;
}

button {
	background-color: blue; /* Set a button background color */
	color: white;
	padding: 10px 20px;
	border: none;
	cursor: pointer;
	border-radius: 5px;
	font-size: 16px;
}

button:hover {
	background-color: #0056b3; /* Darker background color on hover */
}
</style>
</head>
<body>

	<div class="header">
		<h2>LOCATION TRACKER</h2>
	</div>

	<div class="container">
		<!-- Add a statement about how the Location Tracker works -->
		<div class="how-it-works">
			<p>Questions about our project? Go ahead and get the answers :)</p>
		</div>

		<button type="button" class="collapsible">What is this
			project about?</button>
		<div class="content">
			<p>Our project is on the Location Tracker, this is an application
				that uses GPS technology to accurately determine the geographical
				location of a person, vehicle, or asset in real-time. It allows
				users to track movements, monitor routes.</p>
		</div>



		<button type="button" class="collapsible">What are the uses
			of this project?</button>
		<div class="content">
			<p>You can use an online location tracker to keep informed of the
				precise location of family members remotely and in real time. Mobile
				location sharing apps also help you: See a family member's previous
				routes and whereabouts through their device's location history.</p>
		</div>
	</div>
	<!-- "Do you want to see your location?" question box -->
	<div class="question-box">
		<h1>Check where you are at right now!!!</h1>
		<div class="button-container" id="location-button">
			<!-- Button is initially hidden -->
			<a href="https://www.google.com/maps"><button
					style="background-color: black;">Check Out Your Location</button></a>
		</div>
	</div>

	<!-- Go Back button in a separate section -->
	<div class="button-container">
		<a href="home.jsp"><button style="background-color: black;">Back</button></a>
	</div>

	<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}

// Add a click event listener to the question box
document.getElementById("location-button").addEventListener("click", function() {
  var button = document.getElementById("location-button");
  var locationLink = button.querySelector("a");

  // Toggle the visibility of the button
  locationLink.style.display = locationLink.style.display === "none" ? "block" : "none";
});
</script>

</body>
</html>
