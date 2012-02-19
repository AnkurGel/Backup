<?php
$name='';$email='';$phone='';$roll='';$gender='';$look_for='';
if(isset($_POST['formSubmit']))
{
	$msg='';
	if(empty($_POST['name'])) $msg.="<li>Name missing</li>";
	else
		$name=funcallot($_POST['name']);
	if(empty($_POST['email'])) $msg.="<li>Email-ID missing</li>";
	else
		$email=funcallot($_POST['email']);
	if(empty($_POST['phone'])) $msg.="<li>Contact Number Missing</li>";
	else
		 $phone=funcallot($_POST['phone']);
	if(empty($_POST['roll'])) $msg.="<li>Enrollment Number missing</li>";
	else
		$roll=funcallot($_POST['roll']);
	if(empty($_POST['gender'])) $msg.='<li>Your gender is missing. Please mark it first</li>';
	else
		$gender = funcallot($_POST['gender']);
	if(empty($msg))
	{
		$db=mysql_connect("localhost","all","passwd");
		if(!$db) die("Error connecting to MySQL database.");
		mysql_select_db("temp",$db);
		$query="INSERT INTO cse (name,email,phone,roll,gender) values(".Q($name).",".Q($email).",".Q($phone).",".Q($roll).",".Q($gender).")";
		$result=mysql_query($query);
		if(!$result) die("Couldn't query".mysql_error());
		header("Location: thank-you.html");
		exit();
	}
}

function funcallot($value)
{

	$value=stripslashes($value);
	$value=strip_tags($value);
	$value=htmlentities($value);
	return $value;
}
function Q($value)
{
	if(get_magic_quotes_gpc())
		$value=stripslashes($value);
	$value="'".mysql_real_escape_string($value)."'";
	return ($value);
}

?>

<html>
<head>
<title>CSE RECORD</title>
<body>
<?php
	if(!empty($msg))
{
	echo ("<p>There was an error with your form:</p>\n");
	echo ("<ul>".$msg."</ul>\n");
}
?>

<form action='cse2.php' method="POST">
<p>
Enter your profile:
<pre>
Name: 		<input type="text" name="name" value="<?=$name;?>"/>
Email ID: 	<input type="text" name="email" value="<?=$email;?>"/>
Phone number: 	<input type="text" name="phone" value="<?=$phone;?>"/>
Enrollment No: 	<input type="text" name="roll" value="<?=$roll;?>"/>
Gender: 	<select name="gender"><option value="">Select..</option><option value="M"<? if($gender=='M') echo (" selected=\"selected\"");?>>Male</option><option value="F" <? if($gender=='F') echo (" selected=\"selected\"");?>>Female</option></select>

<input type="submit" value="Submit" name='formSubmit'>
</pre></p>
</form>
<form action='cse2.php' method="POST">
Enter roll number to view details:  <input type="text" name="look_for" value="<?=$look_for;?>">
<br/>
<input type="submit" name="form2">
<?php
if(isset($_POST['form2']))
{
	$look_for=funcallot($_POST['look_for']);
	$db=mysql_connect("localhost","all","passwd"); if(!$db) die ("Unable to connect to MySql database ".mysql_error());
	mysql_select_db('temp',$db);
	$query="SELECT * FROM cse WHERE roll='$look_for'";
	$result=mysql_query($query);
	if(!$result) die ("Unable to query : ".mysql_error());
	$no_of_records=mysql_num_rows($result);
	if($no_of_records==0)  //to-check-if-records-exists-or-not
		echo "Record with specified enrollment number doesn't exist!";
	else
	{
	$row=mysql_fetch_row($result);
	echo "<pre>";
	echo "Name 	: 	$row[0] <br/>";
	echo "Email	:	$row[1] <br/>";
	echo "Phone	:	$row[2] <br/>";
	echo "Roll_No	: 	$row[3] <br/>";
	$gen=($row[4]=='M')?'Male':'Female';
	echo "Gender	: 	$gen <br/>";
	echo "</pre>";
	}
}
?>
</body>
</html>
