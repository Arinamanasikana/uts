<?php
 include "db.php";
 if(isset($_GET['Id']))
 {
 $Id=$_GET['Id'];
 $q=mysqli_query($con,"delete from `data` where `Id`='$Id'");
 if($q)
 echo "success";
 else
 echo "error";
 }
 ?>
