
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
<link rel="stylesheet" type="text/css" href="C:\wamp\www\css-social-buttons-master\css\zocial.css">
</head>

<!--$mysql_host = "mysql6.000webhost.com";
$mysql_database = "a4416411_test";
$mysql_user = "a4416411_root";
$mysql_password = "4BqarB2j!";-->

<table style="margin:0px auto; width:1100px"  class="headerTable">
<tr>
<td><img src="images2/redBlackCat12WithText.png" alt="Red Black Cat" width="190.668" height="46.68" align="center"></td>
<td>
<nav>
	<ul>
		<li><a href="subjects.php">Subjects </a>
			<ul>
				<li><a href="#">algorithms and data structures</a></li>	
				<li><a href="#">automata theory</a></li>
				<li><a href="#">calculus 1 (differential)</a></li>	
				<li><a href="#">calculus 2 (integral)</a></li>
				<li><a href="#">computer architecture</a></li>
				<li><a href="#">digital logic</a></li>
				<li><a href="#">discrete mathematics</a></li>
				<li><a href="#">introductory programming</a></li>
				<li><a href="#">linear algebra</a></li>
				<li><a href="#">machine learning</a></li>
				<li><a href="#">object oriented programming</a></li>
				<li><a href="#">operating system concepts</a></li>	
				<li><a href="#">organization of programming languages</a></li>
				<li><a href="#">physics mechanics and heat</a></li>
				<li><a href="#">physics electromagnetism and waves</a></li>
				<li><a href="#">probability and statistics</a></li>
				<li><a href="#">software engineering</a></li>
			</ul>
		</li>
		<li><a href="topics.php">Topics</a>
		</li>
		<li><a href="#">New + Popular</a>
		</li>
		<li><a href="about.html">About</a>
		</li>
		<li><a href="#">Sign in</a>
		</li>
		<li><a href='#' class='zocial icon twitter'></a><a href='#' class='zocial icon google'></a><a href='#' class='zocial icon facebook'></a>
		</li>
	</ul>
</nav>
</td>

</tr>
</table>

<!--<hr size=".5" align="top" color="#4b545f">-->
<br>
<br>
	<?php	
		echo "<table style='margin:0px auto; width:1020px' class='introDisplayTable'>";
		echo "<tr>";
		echo "<td>";
		echo "A collection of resources for computer science and software engineering students";
		echo "</td>";
		echo "</tr>";
		echo "</table>";
	?>
<br>
<br>
	<?php
		echo "<table style='margin:0px auto; width:1020px' class='introDisplayTable'>";
		echo "<tr>";
		echo "<td>";
		echo "<form action=''>";
		echo "Search topics: <input type='text' name='fsearch'";
		echo "<input type='submit' value='' size='78'> <button type='button'>search</button></form>";
		echo "</td>";
		echo "</tr>";
		echo "<tr>";
		echo "<td>";
		echo "<a href='topicslist.php'>full topic list</a>";
		echo "</td>";
		echo "</tr>";
		echo "</table>";
	?>

<br>
<br>
	<?php
	// Create connection
		$con=mysqli_connect("localhost","root",'',"test");

		// Check connection
		//if (mysqli_connect_errno($con))
		 // {
		  //echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  //} 
		 
		 $result = mysqli_query($con,"SELECT 
										links.description, links.topicID, 
										links.url, links.dateCreated,
										topics.topic
										FROM links
										JOIN topics on (links.topicID = topics.id)
										ORDER BY links.dateCreated DESC LIMIT 5");
										//ORDER BY amount DESC LIMIT 5
		 if($result === FALSE) {
			echo "false";
			echo mysql_error();
			//die(mysql_error()); // TODO: better error handling
		}
		else{
			echo "<table style='margin:0px auto; width:1020px' class='topicsDisplayTableHeader'>";
			echo "<tr>";
			echo "<td>";
			echo "Newest Links";
			echo "</td>";
			echo "</tr>";
			echo "</table>";
			echo "<br>";
			while($row = mysqli_fetch_array($result)){
			  echo "<table style='margin:0px auto; width:1000px' class='topicsDisplayTable2'>";
			  echo "<tr>";
			  echo "<td>";
			  //url + description
			  echo "<a href='";
			  echo $row['url'];
			  echo "' target='_blank'>";
			  echo $row['description'];
			  echo "</a>";
			  //topic
			  echo " - posted under ";
			  echo $row['topic'];
			  //time and date stamp
			  echo " at ";
			  echo $row['dateCreated'];
			  echo "</td>";
			  echo "</tr>";
			  echo "</table>";
			  echo "<br>";
			}

		mysqli_close($con);
		}
	?>
<br>
<br>
	<?php
		echo "<table style='margin:0px auto; width:1020px' class='topicsDisplayTableHeader'>";
		echo "<tr>";
		echo "<td>";
		echo "Top 3 Most Popular Subjects";
		echo "<br><br>";
		echo "<a href='subjects.php'>full subjects list</a>";
		echo "</td>";
		echo "</tr>";
		echo "</table>";
		echo "<br>";
		// Create connection
		$con=mysqli_connect("localhost","root",'',"test");

		// Check connection
		//if (mysqli_connect_errno($con))
		 // {
		  //echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  //} 
		 
		 $result = mysqli_query($con,"SELECT *
										FROM subjects
										ORDER BY subject DESC LIMIT 3");
										//ORDER BY amount DESC LIMIT 5
		 if($result === FALSE) {
			echo "false";
			echo mysql_error();
			//die(mysql_error()); // TODO: better error handling
		}
		else{
		
//		<td align = "center"><img src="images2/helloWorld!.png" alt="introductory programming" width="100" height="100" valign = "top"><br><font face="tahoma" color="black" valign="bottom">introductory programming</font></td>
			echo "<table style='margin:0px auto; width:800px' class='topicsDisplayTable'>";
			while($row = mysqli_fetch_array($result)){
			  
			  //echo "<tr>";
			  echo "<td>";

			  echo "<img src='";
			  echo $row['imageFile'];
			  echo "' width='150' height='150'";
			  echo "><br>";
			  //echo "<font valign='center' halign='left'>";
			  //image file
			  echo $row['subject'];
			  //echo "<br>";
			  echo "</td>";
			  //echo "</tr>";
			  
			}
			echo "</table>";
		mysqli_close($con);
		}
	?>
<br>
<br>




<script>
jQuery( 'div.menu a' )
    .click(function() {
    	do_the_click( this.href );
    	return false;
    });

// play the funky music white boy
function do_the_click( url )
{
    alert( url );
}
</script>

<!--
/* @license
 * MyFonts Webfont Build ID 2646748, 2013-09-18T16:14:47-0400
 * 
 * The fonts listed in this notice are subject to the End User License
 * Agreement(s) entered into by the website owner. All other parties are 
 * explicitly restricted from using the Licensed Webfonts(s).
 * 
 * You may obtain a valid license at the URLs below.
 * 
 * Webfont: Museo Sans 500 by exljbris
 * URL: http://www.myfonts.com/fonts/exljbris/museo-sans/500/
 * Copyright: Copyright (c) 2008 by Jos Buivenga. All rights reserved.
 * Licensed pageviews: Unlimited
 * 
 * 
 * License: http://www.myfonts.com/viewlicense?type=web&buildid=2646748
 * 
 * © 2013 MyFonts Inc
*/

-->
<link rel="stylesheet" type="text/css" href="roboto.css">
<link rel="stylesheet" type="text/css" href="ffforward.css">
<link rel="stylesheet" type="text/css" href="MyFontsWebfontsKit.css">

		



