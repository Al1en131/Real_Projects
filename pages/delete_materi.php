<?php
// include database connection file
include_once("../database/config.php");


$id_materi = $_GET['id_materi'];

// Delete user row from table based on given id
$result = mysqli_query($koneksi, "DELETE FROM materi_kursus WHERE id_materi=$id_materi");

// After delete redirect to Home, so that latest user list will be displayed.
header("Location:materi.php");
?>