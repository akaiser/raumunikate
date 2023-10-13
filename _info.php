<?php
echo dirname(__FILE__);
print "<br>";
print get_current_path();
print "<br>";
phpinfo();

function get_current_path(): string
{
    $request_uri = $_SERVER["REQUEST_URI"];
    $last_index_of = strrpos($request_uri, "/");
    $path = $last_index_of === 0 ? "" : str_split($request_uri, $last_index_of)[0];
    $full_path = $_SERVER["HTTP_HOST"] . $path;
    $protocol = (isset($_SERVER["HTTPS"]) && $_SERVER["HTTPS"] === "on" ? "https" : "http");
    return "$protocol://$full_path";
}
