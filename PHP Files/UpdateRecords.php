<?php
session_start();
require 'SQLUpload.php';
require_once 'SQLStatements.php';
UpdateSwimStyle();
UpdateRecords();

function UpdateRecords () {
$counter = 0;
if(isset($_POST['Activities'])) {
    foreach($_POST['Activities'] as $string) {
$counter = $counter + 1;


$sql = "UPDATE intervall SET Rekord='X' WHERE USERID = ? and  Aktivitätsindex = ? and Intervallindex = ?";
$statement= getpdo()->prepare($sql);
$statement->execute(array($_SESSION['Userid'], $_SESSION['Activityid'], $string));
}

echo "Es wurden ".$counter." Datens&aumltze als Rekorde gekennzeichnet";

}
else {
    echo "Du hast keine Rekorde gekennzeichnet";
}
}

function UpdateSwimStyle() {
    $loopcounter = 1;
    $Schwimmstilandloopcounter = "Schwimmstil".$loopcounter;
    while(isset($_POST[$Schwimmstilandloopcounter])) {
        $data = [
            'Styleid' => $_POST[$Schwimmstilandloopcounter],
            'Userid' => $_SESSION['Userid'],
            'Actid' => $_SESSION['Activityid'],
            'Intervallid' => $loopcounter,
        ];
        
                $sql = "UPDATE intervall SET Styleindex=:Styleid WHERE USERID=:Userid and Aktivitätsindex=:Actid and Intervallindex=:Intervallid";
                $statement= getpdo()->prepare($sql);
                $statement->execute($data);
                $loopcounter++;
                $Schwimmstilandloopcounter = "Schwimmstil".$loopcounter;           
        }
        
    }
 

    
session_destroy();
?>