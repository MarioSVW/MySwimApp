<?php
function getpdo () {
    $pdo = new PDO('mysql:host=localhost;dbname=swim_project', 'root', '');
    return $pdo;
}

function OverviewInsert ($USERID, $Activityid, $NameofActivity, $Recordeddate, $Distance, $WholeTime, $NumberofLanes, $LanesLength, $MilliSeconds) {
    
    $statement = getpdo()->prepare("INSERT INTO Overview (USERID, Activity_ID, Bezeichnung, Aufgenommen_am, Distanz, Gesamtzeit, AnzahlBahnen, Bahnenlänge, Time_milliSeconds) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $statement->execute(array($USERID, $Activityid, $NameofActivity, $Recordeddate, $Distance, $WholeTime, $NumberofLanes, $LanesLength, $MilliSeconds));
}

//Diese Funktion fügt die einzelnen Aktivitätsabschnitte in die Datenbank ein (In die Tabelle Intervalle)
function ActivityInsert ($USERID, $Activityid, $Intervallid, $SwimType, $NumberofLanes, $Distance, $Time, $Milliseconds) {
    try {
        $query = getpdo()->prepare("INSERT INTO intervall (USERID, Aktivitätsindex, Intervallindex, Styleindex, AnzahlBahnen, Distanz, Zeit, Milliseconds) VALUES (:0, :1, :2, :3, :4, :5, :6, :7)");
        $a = array (':0' => $USERID,
            ':1' => $Activityid,
            ':2' => $Intervallid,
            ':3' => $SwimType,
            ':4' => $NumberofLanes,
            ':5' => $Distance,
            ':6' => $Time,
            ':7' => $Milliseconds);
        
        if ($query->execute($a)) {
            // Query succeeded.
        } else {
            // Query failed.
            echo $query->errorCode();
        }
    }
    catch(PDOException $e) {
        echo $e->getMessage();
    }
    $query = null;
}

//Diese Funktion fügt die einzelnen geschwommenen Bahnen in die Datenbank ein
function LanesInsert ($USERID,$Activityid,$Intervallid,$Lanesid,$SwimType,$Time, $Milliseconds) {
    try {
        $query = getpdo()->prepare("INSERT INTO lanes (USERID, Aktivitätsindex, Intervallindex, Bahnindex, Styleindex, Zeit, MilliSeconds) VALUES (:0, :1, :2, :3, :4, :5, :6)");
        $a = array (':0' => $USERID,
            ':1' => $Activityid,
            ':2' => $Intervallid,
            ':3' => $Lanesid,
            ':4' => $SwimType,
            ':5' => $Time,
            ':6' => $Milliseconds);
        
        if ($query->execute($a)) {
            // Query succeeded.
        } else {
            // Query failed.
            echo $query->errorCode();
        }
    }
    catch(PDOException $e) {
        echo $e->getMessage();
    }
    $query = null;
}

// Diese Funktion überschreibt in der Tabelle Intervall dem Schwimmstil MIXED mit dem Schwimmstil Lagen
function UpdateActivityWithLagen ($para_Userid, $para_Activityid,$para_Intervallid) {
    
    $sql = "UPDATE intervall SET Styleindex=? WHERE USERID=? Aktivitätsindex=? and Intervallindex=?";
    $statement= getpdo()->prepare($sql);
    $statement->execute(["06", $para_Userid, $para_Activityid, $para_Intervallid]);
}
?>