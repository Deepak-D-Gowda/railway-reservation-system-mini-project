<?php
        $con = mysqli_connect('localhost','root','','registers');
        if(mysqli_connect_error()){
            die("Failed to connect with MySql: ".mysqli_connect_error());
        }
        else{
            $p_name1=$_POST['p_name1'];
            $p_gender1=$_POST['p_gender1'];
            $p_age1=$_POST['p_age1'];
            $p_address1=$_POST['p_address1'];
            $p_name2=$_POST['p_name2'];
            $p_gender2=$_POST['p_gender2'];
            $p_age2=$_POST['p_age2'];
            $p_address2=$_POST['p_address2'];
            $p_name3=$_POST['p_name3'];
            $p_gender3=$_POST['p_gender3'];
            $p_age3=$_POST['p_age3'];
            $p_address3=$_POST['p_address3'];
            $p_name4=$_POST['p_name4'];
            $p_gender4=$_POST['p_gender4'];
            $p_age4=$_POST['p_age4'];
            $p_address4=$_POST['p_address4'];
        

           
    $sql="INSERT INTO pdetails"."(p_name1,p_gender1,p_age1,p_address1,p_name2,p_gender2,p_age2,p_address2,p_name3,p_gender3,p_age3,p_address3,p_name4,p_gender4,p_age4,p_address4)"."VALUES"."('$p_name1','$p_gender1','$p_age1','$p_address1','$p_name2','$p_gender2','$p_age2','$p_address2','$p_name3','$p_gender3','$p_age3','$p_address3','$p_name4','$p_gender4','$p_age4','$p_address4')";
   
           
  
    if (mysqli_query($con, $sql)) {
        header('Location:payment.html');
            }
            else {
                echo "Error: " . $sql . ":-" . mysqli_error($con);
            }
            mysqli_close($con);

        }
?>