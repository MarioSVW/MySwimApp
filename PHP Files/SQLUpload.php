<?php
require 'LagenUpdate.php';
require_once 'SQLStatements.php';

// Diese Funktion liest aus der Datenbank die Aktivitätsid aus der Datenbank aus. Wenn bisher keine Aktivitäten vorhanden sind, dann ist die Id =1;
// Ansonsten ist die ID um 1 größer als die bisher höchste ID
function Overview_Getid ($Name, $Datum) {
    
    $query = getpdo()->query("SELECT MAX(Activity_ID) FROM overview")->fetch();
    If (empty ($query[0])) {
      $id =1;
    }
    else {
        $id = $query[0] + 1;
    } 
    return $id;
}
//Array[0]=Counter;Array[1]=Schwimmstil;Array[2]=Bahnanzahl;Array[3]=Distanz;Array[4]=Zeit
//Diese Funktion wird aus der DataUpload-Datei aufgerufen und prüft wie die Array_Line-weiterverarbeitet werden soll 
function DataInsert ($USERID, $Activityid, $Array, $Name, $Date, $Bahnenlaenge, $Milliseconds) {
    //Prüft ob CSV. Zeile eine Aktvitätzeile ist (Prüfen auf Nachkommastellen in erster Zahl der csv-Tabelle und fügt Aktivität in Datenbank ein
    global $Lagencheck,$LanesStringToCheckWith, $ActualLanesString;
    //Funktion GetSwimstyleKey erhält aus dem textuellen Schwimmstil der .csv einen INT:wert der in die Datenbank als Schwimmstilkey eingefügt werden kann
    
    if (ctype_digit($Array[0])) {
        $Swimstylekey= GetSwimstylekey($Array[1]);
        ActivityInsert($USERID, $Activityid, $Array[0], $Swimstylekey, $Array[2], $Array[3], $Array[4], $Milliseconds);
        //Diese Schleife prüft ob die Aktivtitätszeile eine Mixed-Aktivität ist also untersucht werden muss, ob es eine Lage ist!
        if($Array[1] == "MIXED") {
        $Lagencheck = "X"; $LagenBahnanzahl = $Array[2];
        $LanesStringToCheckWith = GetLanesStringfromActivity($LagenBahnanzahl); //Variable gegen der der aktuelle Lagenstring am Ende gepüft werden
        $ActualLanesString = ""; //Variable die nach den Daten der Csv.Datei befüllt wird. Am Ende prüfen gegen $LanesStringToCheckWith, um zu prüfen ob Aktivität eine Lagenaktivität war  
        }
        else{
        $Lagencheck = "O";       
        }
        }
    else {   
    //Wenn erste Zahl der CSV-Zeile Nachkommastelle hat, dann wird eine Zeile in Bahn eingeführt    
        $tempzahl = explode(".", $Array[0]);
        if (isset($tempzahl[1])) {
            $Swimstylekey= GetSwimstylekey($Array[1]);
            LanesInsert($USERID, $Activityid,$tempzahl[0],$tempzahl[1],$Swimstylekey,$Array[4], $Milliseconds);
            if($Lagencheck == "X"){
            $ActualLanesString = CheckActivityLagen($Array[1],$ActualLanesString); //Funktion die einen fortführenden String erzeugt nach der Art "SRBF";
            if ($ActualLanesString == $LanesStringToCheckWith) {
                UpdateActivityWithLagen ($USERID, $Activityid,$tempzahl[0]); //Funktion, die einen IntervallDatensatz mit Lagen überschreibt    
            }
            }
        }
    //Wenn erste Zahl der CSV-Zeile den Wert Summary hat(Letzte Zeile erreicht, dann wird eine Zeile in die Overview-Tabelle eingeführt 
        elseif ($Array[0] == "Summary") {
                OverviewInsert ($USERID, $Activityid, $Name, $Date, $Array[3], $Array[4], $Array[2],$Bahnenlaenge, $Milliseconds);
        }        
    }    
}

function GetSwimstylekey($Swimstyle_String) {
    switch ($Swimstyle_String) {
        case "BUTTERFLY": $SWIMID = 1; break; 
        case "BACKSTROKE": $SWIMID = 2; break;
        case "BREASTSTROKE": $SWIMID = 3; break;
        case "FREESTYLE": $SWIMID = 4; break;
        case "MIXED": $SWIMID = 5; break;
        case "LAGEN": $SWIMID = 6; break;
        case "FREESTYLE_LEGS": $SWIMID = 7; break;
        case "FREESTYLE_ARMS": $SWIMID = 8; break;
        case "FREESTYLE_ARMS_PADDLE": $SWIMID = 9; break;
        case "DRILL": $SWIMID = 10; break;
        case "PYRAMIDE": $SWIMID = 11; break;
        case "KOMBI": $SWIMID = 12; break;
        case "--": $SWIMID = 13; break;
    }
    if(isset($SWIMID)) {
        return $SWIMID;
    }
    else {
        echo "Fehler bei der Ermittlung der Swimid";
    }
}

?>