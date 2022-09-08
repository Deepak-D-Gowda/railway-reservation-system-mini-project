<?php
        $con = mysqli_connect('localhost','root','','registers');
        if(mysqli_connect_error()){
            die("Failed to connect with MySql: ".mysqli_connect_error());
        }
        else{
            $p_name=$_POST['p_name'];
            $p_age=$_POST['p_age'];
            $p_gender=$_POST['p_gender'];
            $p_mobile=$_POST['p_mobile'];
            $p_email=$_POST['p_email'];
            $p_password=$_POST['p_password'];
            $confirm=$_POST['confirm'];


            if ($p_password == $confirm) {     
    $sql="INSERT INTO users"."(p_name,p_age,p_gender,p_mobile,p_email,p_password,confirm)"."VALUES"."('$p_name','$p_age','$p_gender','$p_mobile','$p_email','$p_password','$confirm')";
           
  
    if (mysqli_query($con, $sql)) {
                header('Location:bookhere.html');
            }
            else {
                echo "Error: " . $sql . ":-" . mysqli_error($con);
            }
           
            mysqli_close($con);


        }
    }
?>