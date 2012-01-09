<?php
if(isset($_POST['add'])) $url=strip($_POST['add']);
else
$url='';
echo <<<_END
<html><head><title>Uploader and Grabber by AnkurGel</title>
<script type="text/javascript">
function SelectAll(id)
{
	document.getElementById(id).focus();
	document.getElementById(id).select();
}
</script>
</head>
<body>
<h1>GRABBER</h1>
<pre>
<form action="3re2.php" method="post">
<input type="text" name="add" value="Paste URL here" id="txtfld" onClick="SelectAll('txtfld');">  <input type="submit" value="BAZINGA!"/>
</form>
<form action="3re2.php" method="post" enctype='multipart/form-data'>
Select File: <input type="file" name="filename"> <input type="submit" value="Upload!">
</form>
_END;
if($_FILES)
{
	$name=$_FILES['filename']['name'];
	move_uploaded_file($_FILES['filename']['tmp_name'], "dir/$name");
	echo "UPLOADED!";
	$address="http://techgoblet.com/wp-content/new/dir/".$name;
	$add_len=strlen($address);

echo<<<_SHOW
	<input type="text" size="$add_len" value="$address" id="txt" onClick="SelectAll('txt');">
_SHOW;
}
if($url!='')
{
	file_put_contents("dir/".basename($url), file_get_contents($url));
	$address="http://techgoblet.com/wp-content/new/dir/".basename($url);
	$add_len=strlen($address);
echo <<<_MARK
	GRABBED!
<input type='text' size='$add_len' value='$address' id='txt' onClick="SelectAll('txt');">
_MARK;
}
function strip($var)
{
	$var=stripslashes($var);
	$var=htmlentities($var);
	$var=strip_tags($var);
	return $var;
}


