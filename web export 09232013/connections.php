<?php
// Create connection
$con=mysqli_connect("localhost","root",'',"test");

// Check connection
//if (mysqli_connect_errno($con))
 // {
  //echo "Failed to connect to MySQL: " . mysqli_connect_error();
  //}
 
 $result = mysqli_query($con,"SELECT topic FROM topics ORDER BY topic");

 if($result === FALSE) {
	echo "false";
	echo mysql_error();
    //die(mysql_error()); // TODO: better error handling
}
else{
	while($row = mysqli_fetch_array($result))
	  {
	  echo $row['topic'];
	  echo "<br>";
	  }

mysqli_close($con);
}
?>