<?php

function CheckActivityLagen($LaneSchwimmstil,$LocalLanesString) {
    Switch ($LaneSchwimmstil) {
        case "BUTTERFLY": $LocalLanesString = $LocalLanesString . "S"; break;
        case "BACKSTROKE": $LocalLanesString = $LocalLanesString . "R"; break;
        case "BREASTSTROKE": $LocalLanesString = $LocalLanesString . "B"; break;
        case "FREESTYLE"; $LocalLanesString = $LocalLanesString . "F"; break;
    }
    return $LocalLanesString;
}

function GetLanesStringfromActivity($Bahnanzahl) {
    $LanesPerSwimPosition = $Bahnanzahl / 4;
    $LanesString = "";
    $i = 1; //Loop-Counter für erste Schleife
    $h = 1; //Loop-Counter für zweite Schleife
    if ($Bahnanzahl >= 4) {
    while ($i <= 4) {
        if ($i == 1) {
            while ($h <= $LanesPerSwimPosition) {
                $LanesString = $LanesString . "S"; //Fügt den Buchstaben S für Schmetterling so oft wie die Lage in der Lagenaktivität vorkam an den String an
                $h++;
            }
            $h = 1; //Loop-Counter für weitere Schleife wird wieder zurückgesetzt
            }
        elseif ($i == 2) {
            while ($h <= $LanesPerSwimPosition) {
                $LanesString = $LanesString . "R"; //Fügt den Buchstaben B für Rücken so oft wie die Lage in der Lagenaktivität vorkam an den String an
                $h++;
                        }
            $h = 1; //Loop-Counter für weitere Schleife wird wieder zurückgesetzt
                }
        elseif ($i == 3) {
            while ($h <= $LanesPerSwimPosition) {
                $LanesString = $LanesString . "B"; //Fügt den Buchstaben B für Brust so oft wie die Lage in der Lagenaktivität vorkam an den String an
                $h++;
            }
            $h = 1; //Loop-Counter für weitere Schleife wird wieder zurückgesetzt
            }
        elseif ($i == 4) {
            while ($h <= $LanesPerSwimPosition) {
                $LanesString = $LanesString . "F"; //Fügt den Buchstaben F für Freistil so oft wie die Lage in der Lagenaktivität vorkam an den String an
                $h++;
            }
            $h = 1; //Loop-Counter für weitere Schleife wird wieder zurückgesetzt
            }
            $i++;
        }
    }
    else {
        $LanesString = "X";
    }
        return $LanesString; //Der String enthält jede Lage entsprechend der Bahnanzahl Beispiel für 12 Bahnen der Lage: "SSSRRRBBBFFF";                            
}


?>