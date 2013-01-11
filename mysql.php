<?php

include("db.php");
include("raiSED.php");
$file=fopen('b.tex','w');

$org= mysql_query("SELECT name, address, history, title from tcc_organisation");
while($or = mysql_fetch_array($org))
{
$org_t = $or['title'];
fwrite($file,'\bf{'.$org_t.'}'."\\\\"."\n");
$org_name= $or['name'];
$org_add= $or['address'];

$cer= mysql_query("SELECT status from tcc_certification ");
while($c1 = mysql_fetch_array($cer))
{
$c_status= $c1['status'];
}
fwrite($file,'\textcolor{red}{\large BRIEF HISTORY OF THE INSTITUTE}'."\\\\"."\n");
$org_his= $or['history'] ;
fwrite($file,'\bf{'.$org_his.'}'."\\\\"."\n");
}

$grad= mysql_query("SELECT id, name from tcc_gcourses");
fwrite($file,'\textcolor{red}{\bf\large{UNDER GRADUATE COURSES}}'."\\\\"."\n");
fwrite($file,'\begin{tabular}{|l|}'."\n");
fwrite($file,'\hline'."\n");
while($gra = mysql_fetch_array($grad))
{
$u_id= $gra['id'];
$u_name= $gra['name'];
fwrite($file,''.$u_id.''.". ".$u_name."\\\\ \hline"."\n");
} 
fwrite($file,'\end{tabular}'."\\\\"."\n");
fwrite($file,"Following Posgraduate Courses are running in different departments: \\\\"."\n");
$pgrad= mysql_query("SELECT id, name from tcc_pgcourses");
fwrite($file,'\begin{tabular}{|p{0.25in}|p{0.4in}|p{0.4in}|p{0.6in}|p{0.6in}|p{0.6in}|p{0.25in}|p{0.25in}|}'."\n");
fwrite($file,'\hline'."\n");
fwrite($file,"S.No.");
while($pg = mysql_fetch_array($pgrad))
{
$pgid= $pg['id'];
$pgname= $pg['name'];
fwrite($file," & ".''.$pgname.'');
}
fwrite($file,"\\\\ \hline"."\n");
fwrite($file,'\end{tabular}'."\n");
$courses= mysql_query("SELECT id, name, pg_id from tcc_courses where pg_id= '$pgid'");
while($cor = mysql_fetch_array($courses))
{
$corses= $cor['name'];
} 


$dep= mysql_query("SELECT id, name, about, address, about, url from tcc_departments");

while($row = mysql_fetch_array($dep))
{
$depid= $row['id'];
$name = strtoupper($row['name']);
$durl = $row['url'];
$about= $row['about'];
fwrite($file,'\textcolor{red}{'.'\bf{\Large '.$name.'}}'."\\\\"."\n");
if($depid=="1")
{
fwrite($file,'\bf{'.$about.'}'."\\\\"."\n");
}
else
{
}

$lab= mysql_query("SELECT DISTINCT tcc_labs.lab, tcc_labs.id from tcc_labs, tcc_departments WHERE $depid= tcc_labs.department_id");
$lid= mysql_query("SELECT DISTINCT department_id from tcc_labs WHERE tcc_labs.department_id= $depid");
while($l = mysql_fetch_array($lid))
{
$c= $l['department_id'];
if (count($c)== "0")
{
fwrite($file,'" "');
}
else
{
fwrite($file,'\textcolor{green}{\bf \large LABORATORIES}'."\\\\"."\n");
}
 }

while($rows = mysql_fetch_array($lab))
{
$lid= $rows['id'];
$l_name= $rows['lab'];
fwrite($file,'\textcolor{blue}{'.$l_name.'}'."\\\\"."\n");


$test= mysql_query("SELECT DISTINCT tcc_tests.name, tcc_tests.id from tcc_tests, tcc_labs, tcc_departments where $depid= tcc_labs.department_id and $lid= tcc_tests.lab_id");
 while($rows = mysql_fetch_array($test))
 {
 $tid= $rows['id'];
 $t_name= $rows['name'];
 fwrite($file,'\large '.$t_name."\\\\"."\n");
 $subtest= mysql_query("SELECT DISTINCT tcc_sub_tests.name from tcc_sub_tests, tcc_tests, tcc_labs, tcc_departments where $depid=       tcc_labs.department_id and $lid= tcc_tests.lab_id and $tid= tcc_sub_tests.test_id");
  while($rows = mysql_fetch_array($subtest))
  {
  $st_name= $rows['name'];
  fwrite($file,''.$st_name.''."\\\\"."\n");
  }
 }
}
$categry= mysql_query("SELECT DISTINCT tcc_categories.name, tcc_categories.department_id, tcc_categories.code from tcc_categories where tcc_categories.department_id= $depid and department_id= '2' ");
$teamid= mysql_query("SELECT DISTINCT department_id from tcc_team WHERE tcc_team.department_id= $depid");
while($tt = mysql_fetch_array($teamid))
{
$d= $tt['department_id'];
if (count($d)== "0")
{
fwrite($file,'" "');
}
else
{
fwrite($file,'\textcolor{green}{\bf\large TESTING TEAM}'.'\\\\'."\n");
}
 }

while($row = mysql_fetch_array($categry))
{
$code = $row['code'];

$cat = $row['name'];
fwrite($file,'\emph{'.$cat.'}'."\\\\"."\n");

$team= mysql_query("SELECT name from tcc_team where department_id= '2' and code = '$code'");

while($t2 = mysql_fetch_array($team))
{
$team_name= $t2['name'] ;
fwrite($file,''.$team_name.''."\\\\"."\n");
}}
$team1= mysql_query("SELECT name from tcc_team where $depid= tcc_team.department_id and department_id!= '2'");

while($t1 = mysql_fetch_array($team1))
{
$team1_name= $t1['name'];
fwrite($file,''.$team1_name.''."\\\\"."\n");

}
$categries= mysql_query("SELECT DISTINCT tcc_categories.name, tcc_categories.department_id, tcc_categories.code from tcc_categories where tcc_categories.department_id= $depid and department_id= '5' ");
$facilityid= mysql_query("SELECT DISTINCT department_id from tcc_facilities WHERE tcc_facilities.department_id= $depid");
while($ff = mysql_fetch_array($facilityid))
{
$e= $ff['department_id'];
if (count($e)== "0")
{
fwrite($file,'" "');
}
else
{
fwrite($file,'\textcolor{green}{\bf FACILITIES}'.'\\\\'."\n");
}
 }
while($f = mysql_fetch_array($categries))
{
$code = $f['code'];
$cat = $f['name'];
fwrite($file,'\emph{'.$cat.'}'."\\\\"."\n");

$facility= mysql_query("SELECT name from tcc_facilities where department_id= '5'and code = '$code'");

while($f2 = mysql_fetch_array($facility))
{
$fac_name= $f2['name'];
fwrite($file,''.$fac_name.''."\\\\"."\n");
}}
$facility1= mysql_query("SELECT name from tcc_facilities where $depid= tcc_facilities.department_id and department_id!= '5'");

while($f1 = mysql_fetch_array($facility1))
{
$fac1_name= $f1['name'];
fwrite($file,''.$fac1_name.''."\\\\"."\n");
}
$training= mysql_query("SELECT DISTINCT tcc_training.name from tcc_training, tcc_departments where $depid= tcc_training.department_id");
$trainid= mysql_query("SELECT DISTINCT department_id from tcc_training WHERE tcc_training.department_id= $depid");
while($train = mysql_fetch_array($trainid))
{
$f= $train['department_id'];
if (count($f)== "0")
{
fwrite($file,'" "');
}
else
{
fwrite($file,'\textcolor{green}{\bf SHORT TERM TRAINING}'.'\\\\'."\n");
}
 }

while($rows = mysql_fetch_array($training))
{
$training_name= $rows['name'];
fwrite($file,''.$training_name.''."\\\\"."\n");
}
$consltancy= mysql_query("SELECT DISTINCT name from tcc_consultancy where $depid= tcc_consultancy.department");
$areaid= mysql_query("SELECT DISTINCT department from tcc_consultancy WHERE tcc_consultancy.department= $depid");
while($area = mysql_fetch_array($areaid))
{
$a= $area['department'];
if (count($a)== "0")
{
fwrite($file,'" "');
}
else
{
fwrite($file,'\textcolor{green}{\bf AREA OF CONSULTANCY}'.'\\\\'."\n");
}
 }
while($cons = mysql_fetch_array($consltancy))
{
$consultancy_name= $cons['name'];
fwrite($file,''.$consultancy_name.''."\\\\"."\n");
}

}
fclose($file);
?>
