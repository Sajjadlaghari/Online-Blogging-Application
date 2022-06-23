<?php 
  
   mysqli_report(false);
   $conn=mysqli_connect('localhost','root','','16716_sajjad_ali');
   if(mysqli_connect_errno())
   {
   	 echo "Error".mysqli_connect_error()."Error No". mysqli_connect_errno();
   }
 ?>