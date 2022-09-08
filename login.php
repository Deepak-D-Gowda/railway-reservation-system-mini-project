<?php
        $conn = mysqli_connect('localhost','root','','registers');
        if(mysqli_connect_error()){
            die("Failed to connect with MySql: ".mysqli_connect_error());
        }
        else{
            $email=$_POST['email'];
            $Password=$_POST['Password'];
          
            
            $sql = "SELECT  * FROM users where p_email = '$email' and p_password = '$Password' "; 
            $sql="INSERT INTO userlogin"."(email,Password)"."VALUES"."('$email','$Password)"; 
            $result = mysqli_query($conn, "SELECT * FROM users WHERE p_email = '$email' OR p_password = '$Password'");
            $row = mysqli_fetch_assoc($result);
      if(mysqli_num_rows($result) >0){
        if($Password == $row['p_password']){
          $_SESSION["login"] = true;
          $_SESSION["user_id"] = $row["p_id"];
          header("Location:afterlogin.html ");
        }
        else{
          echo
          "<script> alert('Wrong Password'); </script>";
        }
      }
      else{
        echo
        "<script> alert('You are not registered'); </script>";
      }
    }
         
            
        
    
