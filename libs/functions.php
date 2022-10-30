<?php
// require_once './database.php';
//remove dash

function remove_dash($query_string)
{
    $query_string = str_replace('-', ' ', $query_string);
    $query_string = str_replace('_', ' ', $query_string);
    return ucwords($query_string);
}


//select data

function select($sql, $con)
{
    $query = $con->query($sql);
    return $query;
}

// date formate

function date_ymd($date)
{
    return date_format(date_create($date), "Y/m/d");
}