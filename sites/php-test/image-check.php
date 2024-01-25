<?php
$imagick = new Imagick();
$imagick->newImage(100, 100, 'red');
$imagick->setImageFormat('png');
header('Content-Type: image/png');
echo $imagick->getImageBlob();
?>
