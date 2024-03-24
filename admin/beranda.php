admin > index yg gambarnya jadi panjang

<?php
session_start();
$userid = $_SESSION['userid'];
include '../config/koneksi.php';
if ($_SESSION['status'] != 'login') {
  echo "<script>
  alert('Anda belum Login!');
  location.href='../index.php';
  </script>";
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Website Galeri Foto</title>
  <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>

<style>
  *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  .navbar-brand{
    max-width: 1210px;
    width: 40%;
    margin: auto;
  }
  .container{
    width: 1400px;
    margin: 20px  auto;
    columns: 4;
    column-gap: 20px;
  }

  .container .box{
    width: 100%;
    margin-bottom: 10px;
    break-inside: avoid;
  }
  .container .box img{
    max-width: 100%;
    border-radius: 15px;
  }
  @media (max-width: 1200px){
    .container{
      width: calc(100% - 40px);
      columns: 3;
    }
  }
  @media (max-width: 768px){
    .container{
      columns: 2;
    }
  }
  @media (max-width: 768px){
    .container{
      columns: 1;
    }
  }
</style>

<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container">
      <a class="navbar-brand" href="index.php">Website Galeri Foto</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse mt-2" id="navbarNavAltMarkup">
        <div class="navbar-nav me-auto">
          <a href="home.php" class="nav-link">Beranda</a>
          <a href="album.php" class="nav-link">Album</a>
          <a href="foto.php" class="nav-link">Foto</a>
          <a href="profil.php" class="nav-link">Profil</a>
          <a href="beranda.php" class="nav-link">Home</a>
        </div>
        <a href="../config/aksi_logout.php" class="btn btn-outline-danger m-1">Keluar</a>
      </div>
    </div>
  </nav>

  <div class="container mt-2">
    <h3>Foto Terbaru</h3>
    <div class="row">
    <div class="box"><img src="../background1.jpg"></div>
    <div class="box"><img src="../linyi.jpg"></div>
    <div class="box"><img src="../linyi1.jpg"></div>
    <div class="box"><img src="../linyi2.jpg"></div>
    <div class="box"><img src="../linyi3.jpg"></div>
    <div class="box"><img src="../background1.jpg"></div>
    <div class="box"><img src="../linyi4.jpg"></div>
    <div class="box"><img src="../linyi1.jpg"></div>
    <div class="box"><img src="../linyi.jpg"></div>
    <div class="box"><img src="../linyi2.jpg"></div>
  </div>
  </div>
  <footer class="d-flex justify-content-center border-top mt-3 bg-light fixed-bottom">
    <p>&copy; UKK RPL 2 2024 || Febby Damanik</p>
  </footer>

  <script type="text/javascript" src="../assets/js/bootstrap.min.js"></script>
</body>

</html>
