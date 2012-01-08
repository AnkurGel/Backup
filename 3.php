<?php
if(isset($_POST['add'])) $url=$_POST['add'];
else
$url="no";

echo <<<_END
<html><head>
<script type="text/javascript">
function SelectAll(id)
{
	    document.getElementById(id).focus();
	        document.getElementById(id).select();
}
</script>
<script type="text/javascript" src="jquery.zclip.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script>
$(document).ready(function(){

		    $('a#copy-description').zclip({
			            path:'ZeroClipboard.swf',
				            copy:$('p#description').text()
					        });

		        // The link with ID "copy-description" will copy
		        // the text of the paragraph with ID "description"


		        $('a#copy-dynamic').zclip({
				        path:'ZeroClipboard.swf',
					        copy:function(){return $('input#dynamic').val();}
						    });

			    // The link with ID "copy-dynamic" will copy the current value
			    // of a dynamically changing input with the ID "dynamic"

			});
</script>
</head>
<form method="post" action="3.php"/>
<input type="text" name="add" value="Paste URL here" id="txtfld" onClick="SelectAll('txtfld');"  > <input type="submit" value="BAZINGA!"/>
</form>
_END;
if($url!='no')
{
	    file_put_contents(basename($url), file_get_contents($url));
echo <<<_DEL
<span id='copytext' style="height:150; width:162; background-color:pink"> 
_DEL;
echo "www.techgoblet.com/wp-content/new/".basename($url);
echo <<<_DEL2
	</span>
	<br/>
<textarea id="description">Enter text here and click below to copy</textarea><br/>
<a href="" id="copy-description">Click here to copy!</a>
_DEL2;
}
?>
