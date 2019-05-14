<?php
function getpdo () {
    $pdo = new PDO('mysql:host=localhost;dbname=swim_project', 'root', '');
    return $pdo;
}

$heroes = array();
$p_Userid = $_GET['activityid'];


try {
$sql = "SELECT * FROM overview where USERID = '".$p_Userid."'";
foreach (getpdo()->query($sql) as $row) {
    $temp = [
        'id'=>$row['Activity_ID'],
        'Bezeichnung'=>$row['Bezeichnung'],
        'Distanz'=>$row['Distanz'],
    ];
    array_push($heroes, $temp);
}
}
catch(PDOException $e) {
    echo $e->getMessage();
}
$sql = null;
rsort($heroes);
$myJSON = json_encode($heroes);

echo $myJSON;


?>