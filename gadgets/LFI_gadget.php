<?php
$file_to_include = $_GET['file'];

if (isset($file_to_include)) {
    echo "<h1>'{$file_to_include}' 파일의 내용입니다:</h1>";
    echo "<hr>";

    $content = file_get_contents($file_to_include);

    echo "<pre>" . htmlspecialchars($content) . "</pre>";
} else {
    echo "<h1>파일을 지정해주세요.</h1>";
}
?>