<html>
<head>
</head>
<body>
<?php
if(empty($_POST['sub']))
{$start=time();
$fh=fopen("createtimerecord",'w') or die("Failed to create file, check permission settings");
fwrite($fh, $start); 
fclose($fh);
}
?>
<form action='2.php' method='POST'>
Enter Your Name: <input type="text" name="name">
<input type="submit" value="submit" name="sub">
</form>
<?php
//$start=time();
$endtime=0;
$substatus=''; $flag=0;
if(isset($_POST['sub'])) 
{
	if(isset($_POST['name'])) $username=$_POST['name'];
	$endtime=time();
	$fh=fopen("createtimerecord",'r') or die("File does not exist.. I might have tampered with function call sequence ");
	$fetchrecord=fgets($fh);
	$diff=$endtime-$fetchrecord;
	echo "\n$username took ".$diff." seconds";
	fclose($fh);
	$intrecord=fopen("alluserrecords",'a') or die("DIED");
$text=<<<_END
$username : $diff

_END;
	fwrite($intrecord, $text);
	fclose($intrecord);
}
?>
