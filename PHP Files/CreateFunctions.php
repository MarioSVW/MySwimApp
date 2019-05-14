<?php
session_start();
require_once'SQLStatements.php';

function CreateRecordPage ($p_Userid, $Activityid) {
?>
<html>
<head>
<meta charset="UTF-8">
	<title>Choose Records</title>
	<link href="style.css" rel="stylesheet">
</head>
<form action="UpdateRecords.php" method ="post" > 
  <h3>W&aumlhle die Intervalle aus, die zu deinen pers&oumlnlichen Rekorden z&aumlhlen soll</h3> 
  <fieldset>
  <ul>
<?php CreateList($p_Userid, $Activityid); ?>      
 </ul>     
  </fieldset>
  <br>
  <br>
  <input type="submit" name="formSubmit" value="Die Rekorde updaten">
</form>
</html>
    
<?php  
}

function CreateList($p_Userid, $Actid) {
    $_SESSION['Userid'] = $p_Userid;
    try {
    $sql = "SELECT * FROM intervall where USERID = '".$p_Userid."' and Aktivit�tsindex = '".$Actid."'";
    foreach (getpdo()->query($sql) as $row) {
     CreateLiElements($row);
    }
    }
    catch(PDOException $e) {
        echo $e->getMessage();
    }
    $sql = null;
}

// Diese Funktion erzeugt s�mtliche List-Elemente zu den Aktivit�ten. Dazu wird das Row-Array ausgelesen ausgegeben
    function CreateLiElements($row) {
        $Array_Schwimmstil = Getswimstylearray();
// Dieses Echo-Statement erzeugt s�mtlichen HTML-Code f�r die Chechbox-Elemente in Abh�ngigkeit von dem �bergegenem SQL-Ergebnis
// Der angezeigte Text lautet beispielsweise 1 400Meter FREESTYLE (16 Bahnen) - 00:06:19:721
// In den Detail-Elementen stehen die Detaildaten zu den einzelnen Bahnen
        echo
        "<li>
        <details>
        <summary><input type='checkbox' name='Activities[]' value='".$row['Intervallindex']." ' checked/>
        ".$row['Intervallindex']. "
        ".$row['Distanz']."meter";
        CreateSwimStyleSelect($row['Intervallindex'], $Array_Schwimmstil, $row['Styleindex']);
        echo 
        "".$row['AnzahlBahnen']." Bahnen
        - ".$row['Zeit'].":".$row['Milliseconds']."   
        </summary>";
        CreateDetailElements($row['USERID'], $row['Aktivit�tsindex'], $row['Intervallindex']);
        echo "</details>
        </li>  ";
        $_SESSION['Activityid'] = $row['Aktivit�tsindex'];
        
    }

// Diese Funktion zeigt zu einem Intervall s�mtliche relevanten Intervallinformationen an, der �bergebene Parameter ist die jeweilige Intervallid und Aktivit�tsid
    function CreateDetailElements($p_Userid, $Activityid, $IntervalliD) {
        try {
            $sql = "SELECT * FROM lanes where USERID = '".$p_Userid."' and Aktivit�tsindex = '".$Activityid."' and Intervallindex = '".$IntervalliD."'";
            $Bahnl�nge = getpdo()->query("SELECT Bahnenl�nge FROM overview where USERID = '".$p_Userid."' and Activity_ID = '".$Activityid."'")->fetch();
            
            // Erzeugt einen �hnlichen Text wie: 5 25m Freistil in einer Zeit von 22:01:345, der als Ausklapptext angezeigt wird
            echo "<p>";
            foreach (getpdo()->query($sql) as $row) {
            echo "    
            ".$row['Bahnindex']. ". Bahn:
                ".$Bahnl�nge['0']."meter
                    ".GetSwimDescription($row['Styleindex'])."
                      in einer Zeit von
                        ".$row['Zeit'].":".$row['MilliSeconds']."
                            <br>";
            }
        }
        catch(PDOException $e) {
            echo $e->getMessage();
        }
        $sql = null;
    }
    
    function CreateSwimStyleSelect($p_intervallindex, $p_ArraySchwimstil, $p_Swimindex) {
        $SchwimmstilmitIntervall = "Schwimmstil".$p_intervallindex;
        echo 
        "<select name='".$SchwimmstilmitIntervall."'>
        <option value='".$p_Swimindex." '>".GetSwimDescription($p_Swimindex)." </option>";
        foreach ($p_ArraySchwimstil as $row) {
            $row[0];
            // Row[0] = Swimstyle-swimid; Row[1] = Swimstyle-swimDescription
            echo "<option value='".$row[0]." '>".$row[1]." </option>";
            
        }
        
         echo   "</select>";
    }
    
    function Getswimstylearray() {
        $Swimstyle_array = getpdo()->query("SELECT Swimid, Swim_Description FROM swimstyle")->fetchAll();
        return $Swimstyle_array;
    }
    
    function GetSwimDescription($p_Swim_key) {
        $Swim_Text = getpdo()->query("SELECT Swim_Description FROM swimstyle where Swimid = '".$p_Swim_key."'")->fetch();
        return $Swim_Text[0];
    }
    
   
  ?>
    

  

