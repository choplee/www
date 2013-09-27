
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<table style="margin:0px auto; width:1100px"  class="headerTable">
<tr>
<td><a href="index.php"</a><img src="images2/redBlackCat12WithText.png" alt="Red Black Cat" width="190.668" height="46.68" align="center" ></td>
<td>
<nav>
	<ul>
		<li><a href="#">Subjects </a>
			<!--<ul>
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
			</ul>-->
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
		echo "<table style='margin:0px auto; width:1020px' class='topicsDisplayTableHeader'>";
		echo "<tr>";
		echo "<td>";
		echo "Subjects";
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
										ORDER BY subject");
										//ORDER BY amount DESC LIMIT 5
		 if($result === FALSE) {
			echo "false";
			echo mysql_error();
			//die(mysql_error()); // TODO: better error handling
		}
		else{
		
//		<td align = "center"><img src="images2/helloWorld!.png" alt="introductory programming" width="100" height="100" valign = "top"><br><font face="tahoma" color="black" valign="bottom">introductory programming</font></td>
			echo "<table style='margin:0px auto; width:800px' class='topicsDisplayTable'>";
			$imageCounter = 0;
			while($row = mysqli_fetch_array($result)){
			  
			  if ($imageCounter % 3 == 0){
				echo "<tr>";
			  }
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
			  if (($imageCounter+1) % 3 == 0){
				echo "</tr>";
			  }
			  $imageCounter++;
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
<link rel="stylesheet" type="text/css" href="MyFontsWebfontsKit.css">

		



