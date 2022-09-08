<?php
        $con = mysqli_connect('localhost','root','','registers');
        if(mysqli_connect_error()){
            die("Failed to connect with MySql: ".mysqli_connect_error());
        }
        else{
            $card_num=$_POST['card_num'];
            $card_holder=$_POST['card_holder'];
            $card_enquiry=$_POST['card_enquiry'];
            $cvv_num=$_POST['cvv_num'];
        

           
    $sql="INSERT INTO payment"."(card_num,card_holder,card_enquiry,cvv_num)"."VALUES"."('$card_num','$card_holder','$card_enquiry','$cvv_num')";
           
  
    if (mysqli_query($con, $sql)) {
        header('Location:sum.php');
            }
            else {
                echo "Error: " . $sql . ":-" . mysqli_error($con);
            }
            mysqli_close($con);

        }
?>