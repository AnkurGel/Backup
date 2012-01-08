<?php
if(isset($_POST['name'])) $url=$_POST['name'];
else $url="(NOT ENTERED)";
echo <<<_END
Your url is $url <br/>
<form method ="post" action="4.php">
URL: 
<input type="text" name="name"/>
<input type="submit" value="DOWNLOAD!"/>
</form>
_END;
if($url!="(NOT ENTERED)") 
file_put_contents(basename($url), file_get_contents($url));
