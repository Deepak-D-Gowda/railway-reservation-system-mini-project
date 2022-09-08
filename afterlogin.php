<?php
        $con = mysqli_connect('localhost','root','','registers');
        if(mysqli_connect_error()){
            die("Failed to connect with MySql: ".mysqli_connect_error());
        }
        else{
            $source=$_POST['source'];
            $destination=$_POST['destination'];
            $d_date=$_POST['d_date'];
        

           
    $sql="INSERT INTO booking"."(source,destination,d_date)"."VALUES"."('$source','$destination','$d_date')";
           
  
    if (mysqli_query($con, $sql)) {
        header('Location:aftersearching.html');
            }
            else {
                echo "Error: " . $sql . ":-" . mysqli_error($con);
            }
            mysqli_close($con);

        }
?>