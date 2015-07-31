<?php

include_once './connection.php';
$row_array = array();
$string_query = "SELECT s.state as state ,c.city as city , s.id as state_id , c.id as city_id from `tbl_state` as s Inner Join `tbl_city` as c On s.id = c.state_id";
$result = mysql_query($string_query);
if ($result) {
    $array_state = array();
    $array = array();
    $array_result = array();
    $array_state2 = array();
    $array_city = array();
    $i = 0;
    $j = 0;
    $k = 0;
    while ($rows = mysql_fetch_assoc($result)) {
        $array_state_temp[$i] = $rows["state_id"];
        if ($i == 0) {
            $array_state["name"] = $rows["state"];
            $array_state["id"] = $rows["state_id"];
            $array_city1["name"] = $rows["city"];
            $array_city1["id"] = $rows["city_id"];
            $array_state["city"][] = $array_city1;
            array_push($array, $array_state);
            $j++;
            $k++;
        } else {
            if ($rows["state_id"] == $array_state_temp[$i - 1]) {
                $array_city1["name"] = $rows["city"];
                $array_city1["id"] = $rows["city_id"];
                $array[$j - 1]["city"][$k] = $array_city1;
                $k++;
            } else {
                $k = 1;
                unset($array_state2["city"]);
                $array_state2["name"] = $rows["state"];
                $array_state2["id"] = $rows["state_id"];
                $array_city2["name"] = $rows["city"];
                $array_city2["id"] = $rows["city_id"];
                $array_state2["city"][] = $array_city2;
                array_push($array, $array_state2);
                $j++;
            }
        }
        $i++;
    }
    echo json_encode($array);
    exit;
}