<?php
 include "db.php";
 if(isset($_POST['insert']))
 {
 $nama=$_POST['nama'];
 $judul_buku=$_POST['judul_buku'];
 $penulis=$_POST['penulis'];
 $q=mysqli_query($con,"INSERT INTO `data` (`nama`,`judul_buku`,`penulis`) VALUES ('$nama','$judul_buku','$penulis')");
 if($q)
  echo "success";
 else
  echo "error";
 }
 ?>
