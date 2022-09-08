<?php
$con = mysqli_connect("localhost","root","","registers");
include_once('sum.php');
$query_1="SELECT * FROM pdetails ORDER BY p_id DESC LIMIT 1";
$result_1=mysqli_query($con,$query_1);

$query="SELECT * FROM booking ORDER BY p_id DESC LIMIT 1";
$result=mysqli_query($con,$query);

$query_2="SELECT * FROM train ORDER BY t_id DESC LIMIT 1";
$result_2=mysqli_query($con,$query_2);
?>
<html>
<head>
   
</head>
<style>
*{
  margin: 0;
  padding:0;
  box-sizing: border-box;
  
}
.menubar img{
  height: 70px;
  width: 70px;
  position: relative;
  left:0;
  top: 0px;
  margin-top: 0px;
  float: left;

}
.menubar img{
  height: 50px;
  width: 50px;
  position: relative;
  left:0;
  top: 0px;
  margin-top: 0px;
  float: left;

}


.menubar{
 height: 50px;
  background-color: seashell;
  right: 200px;
  text-align: right;
  
  font-family: sans-serif;
  
  
}

.menubar ul{
  position: relative;
margin-left: 700px;
display:inline-flex;
font-size: 15px;

list-style: none;
color: black;

}
.menubar  li a{
  line-height: 40px;
  width: 120px;
  word-spacing: 3px;  
   margin:15px;
  padding:1px 4px;
  text-decoration: none;
  font-size: 15px;
  font-family:   sans-serif;
}

active,.menubar ul li :hover{
  background: rgb(252, 164, 2);
border-radius: 3px;
box-shadow: 0 3px 4px 3px rebeccapurple;
}
.covi{

  left: 460px;
  position: absolute;
  top: 4px;
  font-style: italic;
text-shadow: 2px 2px 8px #070707;
  
  }
</style>
<body>
<div class="menubar">
        <img src="logo.png" />

<ul>
    
<li><a href="home.html"><b>HOME</b></a></li>
<li><a href="about.html"><b>ABOUT</b></a></li>
<li><a href="contact.html"><b>CONTACT-US</b></a></li>



</ul>
<div class="covi">
    <h2> It's COVID-19 Please Wear Mask</h2>

     </div>
    </div>


    
    <br><br><br>
<table>
<summary>passenger Details</summary>
<table width="680" border="3" cellpadding="2" cellspacing='4'>

<t>

                    <th>Passenger name 1</th>
                    <th>passenger age</th>
                    <th>passenger gender </th>
                    <th>passenger Address</th>
                    <th>Passenger name 2</th>
                    <th>passenger age</th>
                    <th>passenger gender </th>
                    <th>passenger Address</th>
                    <th>Passenger name 3</th>
                    <th>passenger age</th>
                    <th>passenger gender </th>
                    <th>passenger Address</th>
                    <th>Passenger name 4</th>
                    <th>passenger age</th>
                    <th>passenger gender </th>
                    <th>passenger Address</th>
</t>

<?php
while($rows=mysqli_fetch_assoc($result_1))
{
    ?>
    <tr>
 
<td> <?php echo $rows['p_name1']; ?> </td>
<td> <?php echo $rows['p_age1']; ?> </td>
<td> <?php echo $rows['p_gender1']; ?> </td>
<td> <?php echo $rows['p_address1']; ?> </td>
<td> <?php echo $rows['p_name2']; ?> </td>
<td> <?php echo $rows['p_age2']; ?> </td>
<td> <?php echo $rows['p_gender2']; ?> </td>
<td> <?php echo $rows['p_address2']; ?> </td>
<td> <?php echo $rows['p_name3']; ?> </td>
<td> <?php echo $rows['p_age3']; ?> </td>
<td> <?php echo $rows['p_gender3']; ?> </td>
<td> <?php echo $rows['p_address3']; ?> </td>
<td> <?php echo $rows['p_name4']; ?> </td>
<td> <?php echo $rows['p_age4']; ?> </td>
<td> <?php echo $rows['p_gender4']; ?> </td>
<td> <?php echo $rows['p_address4']; ?> </td>



</tr>
    <?php

}
?>
</table>
<br>


******************************************************************


<br><br><br>



<table>
<summary>Departure Details</summary>
<table  width="680" border="3" cellpadding="2" cellspacing='4'>

<t>

<th>source</th>
<th>destination</th>
<th>d_date</th>
</t>

<?php
while($rows=mysqli_fetch_assoc($result))
{
    ?>
    <tr>
 
<td> <?php echo $rows['source']; ?> </td>
<td> <?php echo $rows['destination']; ?> </td>
<td> <?php echo $rows['d_date']; ?> </td>
</tr>
    <?php

}
?>
</table><br><br>

******************************************************************


<table>
<summary>Train  Details and Amount</summary>
<table width="680" border="3" cellpadding="2" cellspacing='4'>

<t>
<th>Ticket Number</th>
                    <th>Train Name</th>
                    <th>Train number</th>
                    <th>Train time</th>
                    <th>Train type</th>
</t>

<?php
while($rows=mysqli_fetch_assoc($result_2))
{
    ?>
    <tr>
    <td> <?php echo $rows['t_id']; ?> </td>
<td> <?php echo $rows['t_name']; ?> </td>
<td> <?php echo $rows['t_number']; ?> </td>
<td> <?php echo $rows['t_time']; ?> </td>
<td> <?php echo $rows['t_type']; ?> </td>
</tr>
    <?php

}
?>
</table>
******************************************************************
<div class="butt">
          <a href="home.html"></a>
          <button onclick="window.print()">Print</button>
      </div>
</body>
</html>