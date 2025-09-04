<?php
$target_url = $_GET['url'];

if (isset($target_url)) {
    echo "<h1>'{$target_url}' 주소로 요청한 결과입니다:</h1>";
    echo "<hr>";

    $response = file_get_contents($target_url);

    echo "<pre>" . htmlspecialchars($response) . "</pre>";
} else {
    echo "<h1>URL을 지정해주세요.</h1>";
}
?>