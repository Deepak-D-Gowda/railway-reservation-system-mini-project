<?php
        $con = mysqli_connect('localhost','root','','registers');
        if(mysqli_connect_error()){
            die("Failed to connect with MySql: ".mysqli_connect_error());
        }
        else{
            $t_name=$_POST['t_name'];
            $t_number=$_POST['t_number'];
            $t_time=$_POST['t_time'];
            $t_type=$_POST['t_type'];

           
    $sql="INSERT INTO train"."(t_name,t_number,t_time,t_type)"."VALUES"."('$t_name','$t_number','$t_time','$t_type')";
           
  
    if (mysqli_query($con, $sql)) {
        header('Location:book.html');
            }
            else {
                echo "Error: " . $sql . ":-" . mysqli_error($con);
            }
            mysqli_close($con);

        }
?>