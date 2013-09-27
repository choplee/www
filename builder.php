
<head>
<link rel="stylesheet" type="text/css" href="styles.css">
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
		<li><a href="builder.php">[Build MySQL]</a>
		</li>
	</ul>
</nav>
</td>

</tr>
</table>

<br>
<br>
	<?php
	// Create connection
		$con=mysqli_connect("","","","");

		$command = "mysql -u{$vals['a4416411_root']} -p{$vals['4BqarB2j!']} "
		 . "-h {$vals['mysql6.000webhost.com']} -D {$vals['a4416411_test']} < {$script_path}";

		$output = shell_exec($command . '/SQL Scripts/Schema.TestSchema.sql');
	?>
<br>
<br>

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

		



