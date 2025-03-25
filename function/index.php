<?php
include 'connect.php';

// Pastikan data dikirim melalui metode POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Ambil data dari form
    $nama  = mysqli_real_escape_string($koneksi, $_POST["nama"]);
    $email = mysqli_real_escape_string($koneksi, $_POST["email"]);
    $tipe  = mysqli_real_escape_string($koneksi, $_POST["tipe"]);
    $pesan = mysqli_real_escape_string($koneksi, $_POST["pesan"]);

    // Query untuk menyimpan data
    $query = "INSERT INTO pertanyaan_kritik_saran (nama, email, tipe, pesan) 
              VALUES ('$nama', '$email', '$tipe', '$pesan')";

$result = mysqli_query($koneksi, $query);
if(!$result){
    die("Query Eror:".mysqli_error($koneksi));
} else {
    echo "data berhasil dimasukkan ke database";
}
header("location: ../index.html"); 
}
?> 