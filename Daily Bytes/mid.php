<?php
	$uname = $_POST['usname'];

	 $link = mysqli_connect("localhost", "root", "", "newspaper");
 
	// Check connection
	if($link === false)
	{
    die("ERROR: Could not connect. " . mysqli_connect_error());
	}

	$sql = "SELECT * FROM signup WHERE username= '$uname'";
	$result = $link->query($sql);

	if($result->num_rows>0)
	{

		$sql = "UPDATE signup SET midday =('subscribed') WHERE username = '$uname'";
  
	    if(mysqli_query($link,$sql))
		   {   
   	       	echo "Data Inserted";
   	       		header("location:ss.html");
         }	
     }
    else
    {
		echo "<h1> Enter Valid username.</h1>";
   		echo "data not inserted";
   		header("location:iu.html");

      }

      $link->close();

?>