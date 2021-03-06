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
    $i = 1; //Loop-Counter f�r erste Schleife
    $h = 1; //Loop-Counter f�r zweite Schleife
    if ($Bahnanzahl >= 4) {
    while ($i <= 4) {
        if ($i == 1) {
            while ($h <= $LanesPerSwimPosition) {
                $LanesString = $LanesString . "S"; //F�gt den Buchstaben S f�r Schmetterling so oft wie die Lage in der Lagenaktivit�t vorkam an den String an
                $h++;
            }
            $h = 1; //Loop-Counter f�r weitere Schleife wird wieder zur�ckgesetzt
            }
        elseif ($i == 2) {
            while ($h <= $LanesPerSwimPosition) {
                $LanesString = $LanesString . "R"; //F�gt den Buchstaben B f�r R�cken so oft wie die Lage in der Lagenaktivit�t vorkam an den String an
                $h++;
                        }
            $h = 1; //Loop-Counter f�r weitere Schleife wird wieder zur�ckgesetzt
                }
        elseif ($i == 3) {
            while ($h <= $LanesPerSwimPosition) {
                $LanesString = $LanesString . "B"; //F�gt den Buchstaben B f�r Brust so oft wie die Lage in der Lagenaktivit�t vorkam an den String an
                $h++;
            }
            $h = 1; //Loop-Counter f�r weitere Schleife wird wieder zur�ckgesetzt
            }
        elseif ($i == 4) {
            while ($h <= $LanesPerSwimPosition) {
                $LanesString = $LanesString . "F"; //F�gt den Buchstaben F f�r Freistil so oft wie die Lage in der Lagenaktivit�t vorkam an den String an
                $h++;
            }
            $h = 1; //Loop-Counter f�r weitere Schleife wird wieder zur�ckgesetzt
            }
            $i++;
        }
    }
    else {
        $LanesString = "X";
    }
        return $LanesString; //Der String enth�lt jede Lage entsprechend der Bahnanzahl Beispiel f�r 12 Bahnen der Lage: "SSSRRRBBBFFF";                            
}


?>