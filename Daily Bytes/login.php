<?php

  $link = mysqli_connect("localhost", "root", "", "newspaper");
 
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
	}
	$username = $_POST['uname'];
  	$password = $_POST['pass'];

        $username = stripcslashes($username);  
        $password = stripcslashes($password);  
        $username = mysqli_real_escape_string($link, $username);  
        $password = mysqli_real_escape_string($link, $password);  

	mysqli_connect("localhost", "root", "", "newspaper"); //mysql_connect:- Open a connection to a MySQL server
	mysqli_select_db($link,"newspaper");
		
	$sql= "select * from signup where username= '$username' and password='$password'";


 $result = mysqli_query($link, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){  
            echo "<h1><center> Login successful </center></h1>"; 
            header("location: homepage.html"); 
        }  
        else{  
            echo "<h1> Login failed. Invalid username or password.</h1>";  
            header("location: invalid.html");
        }     

         $link->close();
?>