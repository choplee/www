
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>


<?php
		$topicsPOSTID = $_POST['topicID'];
		$con=mysqli_connect("localhost","root",'',"test");

		// Check connection
		//if (mysqli_connect_errno($con))
		 // {
		  //echo "Failed to connect to MySQL: " . mysqli_connect_error();
		  //} 
		 
		 $result = mysqli_query($con,"SELECT 
										description, url, createdBy, dateCreated,
										upVotes, downVotes, brokenFlag, inactive, topicID
										FROM links
										WHERE topicID=$topicsPOSTID
										ORDER BY upVotes");

		 if($result === FALSE) {
			echo "false";
			echo mysql_error();
			//die(mysql_error()); // TODO: better error handling
		}
		else{
			while($row = mysqli_fetch_array($result)){
			  echo "<table style='margin:0px auto; width:800px' class='topicsDisplayTable2'>";
			  echo "<tr>";
			  echo "<td>";
			  //url + description
			  echo "<a href='";
			  echo $row['url'];
			  echo "' target='_blank'>";
			  echo $row['description'];
			  echo "</a>";
			  //topic
			  echo " - posted by";
			  echo $row['createdBy'];
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

		



