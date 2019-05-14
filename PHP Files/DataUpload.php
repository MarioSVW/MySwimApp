<?php
require 'SQLUpload.php';
require 'CreateFunctions.php';

//Datendeklarationen des Dateipfades
$Filename_str= $_FILES['Filename']['name'];
$Datapath_str= "C:\Users\Mario\Desktop\MeineSchwimmdaten\\";
$CompletePath_str = $Datapath_str.$Filename_str;


$Overallid = Overview_Getid($_POST['Inputname'], $_POST['Inputdate']);
$USERID = 1;
$Counter = 0;
$file = fopen($CompletePath_str, "r");
while (($line = fgetcsv($file)) !== FALSE) {
    //$line is an array of the csv elements
    //$Line-Aufbau(Indexzahl,Schwimmzug,Bahnen,Distanz,Zeit,Ø Pace,Beste Pace,Ø SWOLF-Wert,Ø Herzfrequenz,Max. 
    //HF,Züge insgesamt,Ø Anzahl von Zügen,Kalorien
   if ($Counter > 0) {
   $TimeGetrennt = explode(".", $line [4]);
   DataInsert($USERID, $Overallid, $line, $_POST['Inputname'], $_POST['Inputdate'], $_POST['Auswahl'], $TimeGetrennt[1]);
   }
   $Counter= $Counter + 1;
   $line = null;
   
}
//Ruft die Seite zum Best�tigen, der Rekord-Werte auf!
CreateRecordPage($USERID, $Overallid);

fclose($file);
$Counter = null;
?>

