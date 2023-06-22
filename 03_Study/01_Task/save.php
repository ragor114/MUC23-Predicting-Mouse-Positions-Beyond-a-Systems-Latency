<?php
    if(isset($_GET['partId'])) {
        $fn = $_GET['partId'];
    } else {
        $fn = "unknown" . uniqid();
    }

    $targetPath = "uploads/" . "MT_" . $fn . ".csv";

    # copy($_POST["inpFile"], $targetPath);
    file_put_contents($targetPath, $_POST["inpFile"], FILE_APPEND);

    if(isset($_POST["mouse"])) {
        $targetPath = "uploads/" . "MOUSE_" . $fn . ".csv";
        file_put_contents($targetPath, $_POST["mouse"], FILE_APPEND);
    }

    if(isset($_POST["demographic"])) {
        $targetPath = "uploads/" . "DEMOGRAPHIC_" . $fn . ".csv";
        file_put_contents($targetPath, $_POST["demographic"]);
    }
?>