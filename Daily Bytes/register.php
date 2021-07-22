<?php 


  $f_name = $_POST['fname'];
  $l_name = $_POST['lname'];
  $email_a = $_POST['email'];
  $phone_a = $_POST['phone'];
  $address_a = $_POST['address'];
  $uname_a = $_POST['uname'];
  $password_a = $_POST['password'];

  $link = mysqli_connect("localhost", "root", "", "newspaper");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}


  $sql = "INSERT INTO signup(first_name, last_name, email, phone, address, username, password) 
  VALUES('$f_name','$l_name','$email_a','$phone_a','$address_a','$uname_a','$password_a')";

    if(mysqli_query($link,$sql)){
      
          echo "data inserted properly";
          header("location: homepage.html"); 
       
            ?>
            <script type="text/javascript">
              
            </script>
            <?php
            }
            else{
     
           
         echo "data not inserted";
        
        
                 }

           mysqli_close($link);


 ?>