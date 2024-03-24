<?php
session_start();
include '../config/koneksi.php';
if ($_SESSION['status'] != 'login') {
  echo "<script>
  alert('Anda belum Login');
  location.href='../index.php';
  </script>";
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Website Galeri Foto</title>
  <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
</head>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Monserrat:wght@300;400;500;600;700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Monserrat', sans-serif;
}

body {
  background-color: #c9d6ff;
  background: linear-gradient(to right, #e2e2e2, #c9d6ff);
  /* display: flex; */
  align-items: center;
  justify-content: center;
  flex-direction: column;
  height: 100vh;
}
.btn{
  float: right;
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
      </div>
      
      <a href="../config/aksi_logout.php" class="btn btn-outline-danger m-1">Keluar</a>
    </div>
  </div>
</nav>   

<div class="container">
    <div class="row">
      <div class="col-md-11">
        <div class="card mt-2">
          <div class="card-header">Tambah Foto</div>
          <div class="card-body">
          <form action="../config/aksi_foto.php" method="POST" enctype="multipart/form-data">
            <label class="form-label">Nama User</label>
          <input type="text" name="username" class="form-control" value="<?php echo $_SESSION['username'] ?>" readonly="readonly">
              <label class="form-label">Judul Foto</label>
              <input type="text" name="judulfoto" class="form-control" required>
              <label class="form-label">Deskripsi</label>
              <textarea class="form-control" name="deskripsifoto" required></textarea>
              <label class="form-label">Album</label>
              <select class="form-control" name="albumid" required>
                <?php
                $userid = $_SESSION['userid'];
                $sql_album = mysqli_query($koneksi, "SELECT * FROM album WHERE userid='$userid'");
                while ($data_album = mysqli_fetch_array($sql_album)) { ?>
                  <option value="<?php echo $data_album['albumid'] ?>"><?php echo $data_album['namaalbum'] ?></option>
                <?php } ?>
              </select>
              <label class="form-label">File</label>
              <input type="file" class="from-control" name="lokasifile" required>
              <button type="submit" class="btn bg-danger mt-2" name="tambah">Tambah Data</button>
            </form>
          </div>
        </div>
      </div>

      <p><a href="foto.php" button type="submit" name="edit" class="btn">Kembali</a></p>

        <footer class="d-flex justify-content-center border-top mt-3 bg-light fixed-bottom">
   <p>&copy; UKK RPL 2024 | Febby Damanik</p>
</footer>
</div>

<script type="text/javascript" src="../assets/js/bootstrap.min.js"></script>
</body>
</html>