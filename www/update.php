<?php
 include "db.php";
 if(isset($_POST['update']))
 {
 $Id=$_POST['Id'];
 $nama=$_POST['nama'];
 $alamat=$_POST['alamat'];
 $asal_sekolah=$_POST['asal_sekolah'];
 $jenis_kelamin=$_POST['jenis_kelamin'];
 $judul_buku=$_POST['judul_buku'];
 $penulis=$_POST['penulis'];
 $q=mysqli_query($con,"UPDATE `data` SET `nama`='$nama',`alamat`='$alamat',`asal_sekolah`='$asal_sekolah',`jenis_kelamin`='$jenis_kelamin',`judul_buku`='$judul_buku',`penulis`='$penulis' where `Id`='$Id'");
 if($q)
 echo "success";
 else
 echo "error";
 }
 ?>
