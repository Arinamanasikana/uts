<?php
 include "db.php";
 if(isset($_POST['insert']))
 {
 $nama=$_POST['nama'];
 $alamat=$_POST['alamat'];
 $asal_sekolah=$_POST['asal_sekolah'];
 $jenis_kelamin=$_POST['jenis_kelamin'];
 $judul_buku=$_POST['judul_buku'];
 $penulis=$_POST['penulis'];
 $q=mysqli_query($con,"INSERT INTO `data` (`nama`,`alamat`,`asal_sekolah`,`jenis_kelamin`,`judul_buku`,`penulis`) VALUES ('$nama','$alamat','$asal_sekolah','$jenis_kelamin','$judul_buku','$penulis')");
 if($q)
  echo "success";
 else
  echo "error";
 }
 ?>
