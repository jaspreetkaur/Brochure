<?php
$database    = 'b';
$dbHost      = 'localhost';
$dbUser      = 'root';
$dbPass      = 'q';
$connection  = mysql_connect ($dbHost, $dbUser, $dbPass);
mysql_select_db ($database, $connection);

$org= mysql_query("SELECT name, address, history, title from tcc_organisation");
while($or = mysql_fetch_array($org))
{
echo "<center>"."<b>".strtoupper($or['title'])."</b>"."</center>"."<br/>";
echo "<b>".$or['name']."</b>"."<br/>"; 
echo strtoupper($or['address'])."<br/>"."<br/>"; 


$cer= mysql_query("SELECT status from tcc_certification ");
while($c1 = mysql_fetch_array($cer))
{
echo "<b>".$c1['status']."</b>"."<br/>";
}
echo "<br/>";
echo "BRIEF HISTORY OF THE INSTITUTE"."<br/>"; 
echo $or['history']."<br/>";
}
echo "<br/>";

$grad= mysql_query("SELECT id, name from tcc_gcourses");
echo "<b>"."UNDER GRADUATE COURSES"."</b>"."<br/>";
while($gra = mysql_fetch_array($grad))
{
echo $gra['id'].". ".$gra['name']."<br/>";
} 
echo "<br/>";

$pgrad= mysql_query("SELECT id, name from tcc_pgcourses");
echo "<b>"."Following Postgraduate Courses are running in different departments:"."</b>"."<br/>";
while($pg = mysql_fetch_array($pgrad))
{
$pgid= $pg['id'];
echo $pg['id'].". ".$pg['name']."<br/>";

$courses= mysql_query("SELECT id, name, pg_id from tcc_courses where pg_id= '$pgid'");
while($cor = mysql_fetch_array($courses))
{

echo $cor['name']."<br/>";
} 
echo "<br/>";
}
$dep= mysql_query("SELECT id, name, about, address, about, url from tcc_departments");
while($row = mysql_fetch_array($dep))
{
$depid= $row['id'];
$name = strtoupper($row['name']);
echo "<br/>";
echo "<b>".$name."</b>"."<br/>"; 
echo $row['url']."<br/>"."<br/>"; 
echo $row['about']."<br/>"; 

$lab= mysql_query("SELECT DISTINCT tcc_labs.lab, tcc_labs.id from tcc_labs, tcc_departments WHERE $depid= tcc_labs.department_id");

echo "<b>"."Labs"."</b>"."<br/>";

while($rows = mysql_fetch_array($lab))
{
$lid= $rows['id'];
echo "<br/><i>".$rows['lab']."</i>";
echo "<br/>";

$test= mysql_query("SELECT DISTINCT tcc_tests.name, tcc_tests.id from tcc_tests, tcc_labs, tcc_departments where $depid= tcc_labs.department_id and $lid= tcc_tests.lab_id");
while($rows = mysql_fetch_array($test))
{
$tid= $rows['id'];
echo $rows['name'];
echo "<br/>";
$subtest= mysql_query("SELECT DISTINCT tcc_sub_tests.name from tcc_sub_tests, tcc_tests, tcc_labs, tcc_departments where $depid= tcc_labs.department_id and $lid= tcc_tests.lab_id and $tid= tcc_sub_tests.test_id");
while($rows = mysql_fetch_array($subtest))
{
echo $rows['name'];
echo "<br/>";
}
}
}
$categry= mysql_query("SELECT DISTINCT tcc_categories.name, tcc_categories.department_id, tcc_categories.code from tcc_categories where tcc_categories.department_id= $depid and department_id= '2' ");
echo "<br/><b>"."Testing Team"."</b>";
while($row = mysql_fetch_array($categry))
{
$code = $row['code'];

$cat = $row['name'];
echo "</br>"."<i>".$cat."</i>";
echo "<br/>";

$team= mysql_query("SELECT name from tcc_team where department_id= '2' and code = '$code'");

while($t2 = mysql_fetch_array($team))
{
echo $t2['name'];
echo "<br/>";
}}
$team1= mysql_query("SELECT name from tcc_team where $depid= tcc_team.department_id and department_id!= '2'");

while($t1 = mysql_fetch_array($team1))
{
echo "<br/>";
echo $t1['name'];

}
echo "<br/>";
$categries= mysql_query("SELECT DISTINCT tcc_categories.name, tcc_categories.department_id, tcc_categories.code from tcc_categories where tcc_categories.department_id= $depid and department_id= '5' ");
echo "<br/><b>"."Facilities"."</b>";
while($f = mysql_fetch_array($categries))
{
$code = $f['code'];
$cat = $f['name'];
echo "</br>"."<i>".$cat."</i>";
echo "<br/>";

$facility= mysql_query("SELECT name from tcc_facilities where department_id= '5'and code = '$code'");

while($f2 = mysql_fetch_array($facility))
{
echo $f2['name'];
echo "<br/>";
}}
$facility1= mysql_query("SELECT name from tcc_facilities where $depid= tcc_facilities.department_id and department_id!= '5'");

while($f1 = mysql_fetch_array($facility1))
{
echo "<br/>";
echo $f1['name'];

}
echo "<br/>";
$training= mysql_query("SELECT DISTINCT tcc_training.name from tcc_training, tcc_departments where $depid= tcc_training.department_id");
echo "<br/><b>"."Short Term Training"."</b>"."<br/>";
while($rows = mysql_fetch_array($training))
{
echo $rows['name'];
echo "<br/>";
}
$consltancy= mysql_query("SELECT DISTINCT name from tcc_consultancy where $depid= tcc_consultancy.department");
echo "<br/><b>"."Area of Consultancy"."</b>"."<br/>";
while($cons = mysql_fetch_array($consltancy))
{
echo $cons['name'];
echo "<br/>";
}
}
?>
