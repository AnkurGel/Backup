<?php
$username="ankur";
$password="bazinga";
if(isset($_SERVER['PHP_AUTH_USER']) && isset($_SERVER['PHP_AUTH_PW']))
{
	if($_SERVER['PHP_AUTH_USER']==$username&&$_SERVER['PHP_AUTH_PW']==$password)
		echo "You are logged in";
	else die ("Invalid username/password combination. Confirm with Ankur Goel");
}
else
{
	header('WWW-Authenticate: Basic realm="Resticed Section"');
	header('HTTP/1.0 401 Unauthorized');
	die("Please enter username and password");
}

$f=$c="";
if(isset($_POST['f'])) $f=sanitizeString($_POST['f']);
if(isset($_POST['c'])) $c=sanitizeString($_POST['c']);
if($f!='')
{
	$c=intval((5/9)*($f-32));
	$out="$f Fahrenheit equal to $c Celcius";
}
elseif($c!='')
{
	$f=intval((9/5)*$c+32);
	$out="$c Celcius equals to $f Fahrenheit";
}
else $out = "";
echo <<<_END
<html><head><title>Temperature Convertor</title>
</head><body><pre>
Enter either Fahrenheit or Celsius and click on Covert
<b>$out</b>
<form method="post" action="tem.php">
Fahrenheit <input type="text" name="f" size="7"/>
Celcius    <input type="text" name="c" size="7"/>
<input type="submit" value="Convert"/>
</form></pre>
<br/>By <font color="red" align=right><b>AnkurGel</body></html>
_END;
function sanitizeString($var)
{
	$var=stripslashes($var);
	$var=strip_tags($var);
	$var=htmlentities($var);
	return $var;
}
?>
