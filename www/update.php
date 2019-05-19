<?php
 include "db.php";
 if(isset($_POST['update']))
 {
 $Id=$_POST['Id'];
 $nama=$_POST['nama'];
 $judul_buku=$_POST['judul_buku'];
 $penulis=$_POST['penulis'];
 $q=mysqli_query($con,"UPDATE `data` SET `nama`='$nama',`judul_buku`='$judul_buku',`penulis`='$penulis' where `Id`='$Id'");
 if($q)
 echo "success";
 else
 echo "error";
 }
 ?>
