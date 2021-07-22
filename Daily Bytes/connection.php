<?php

$username = "root";
$password = "";
$server = 'localhost';
$db = 'newspaper';


$con = mysqli_connect($server,$username,$password,$db);

if($con){
	//echo "Connection Successful";
	?>
	<script>
		alert('Connection Successful');
	 </script>

	<?php

}else{
	echo "no connection";
}



?>