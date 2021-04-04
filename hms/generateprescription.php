<?php
$mysql_hostname = "localhost";
$mysql_user = "root";
$mysql_password = "";
$mysql_database = "hms";
$bd = mysql_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Could not connect database");
$conn= mysql_select_db($mysql_database, $bd);


$id = $_POST['id']; 
$medicine = $_POST['medicine'];
$diagnosis = $_POST['diagnosis'];
$instructions = $_POST['instructions'];
$doc_name = $_POST['doc_name'];

$query ="insert into prescription values('$id','$medicine','$diagnosis','$instructions','$doc_name')";
$res=@mysql_query($query)or die(mysql_error());
if(! $conn )
{
  die('Could not connect: ' . mysql_error());
}
$id = $_POST['id']; 

$sql="SELECT * FROM users WHERE id='$id'";


$retval = mysql_query( $sql, $conn );
if(! $retval )
{
  die('Could not get data: ' . mysql_error());
}
while($row = mysql_fetch_array($retval, MYSQL_ASSOC))
{
	echo "<big><b>PRESCRIPTION : </b></big><br><br><br>";
	echo "DOCTOR NAME : $doc_name<br>"; 
	echo "<b>Patient Details : </b><br>";
    echo "PATIENT ID : {$row['id']}  <br><br> ".
         "NAME 		 : {$row['name']} <br><br> ".
         "Addres	 : {$row['address']} <br><br> ".
         "GENDER	 : {$row['gender']} <br><br> ".
         "EMAIL	     : {$row['email']} <br><br> ".
        
         "--------------------------------<br>";
} 
echo "MEDICINE : $medicine <br><br>".
	 "DIAGNOSIS : $diagnosis <br><br>".	
	 "ADDITIONAL INSTRUCTIONS : $instructions <br><br>".
	     "--------------------------------<br>";	
mysql_close($conn);

?>
<html>
<input type="button" onclick="window.print();" value="Print Prescription"/><br><br>
<a href="home.html"><b>HOME</b></a>
</html>
