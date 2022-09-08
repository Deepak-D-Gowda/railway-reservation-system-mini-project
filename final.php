<?php
$con = mysqli_connect("localhost","root","","registers");
//Fetch sender details
$sql = "SELECT p_id,p_name1,p_age1,p_gender1,p_address1,p_name2,p_age2,p_gender2,p_address2,p_name3,p_age3,p_gender3,p_address3,p_name4,p_age4,p_gender4,p_address4    FROM pdetails ORDER BY pdetails DESC LIMIT 1";
$mysqli_records = mysqli_query($con,$sql);
//Fetch reciever details
$sql_1 = "SELECT source,destination, FROM booking ORDER BY booking DESC LIMIT 1";
$records_1 = mysqli_query($con,$sql_1);
//Fetch courier details
$sql_2 = "SELECT t_name,t_number,t_time,t_type FROM train  ORDER BY train desc LIMIT 1";
$records_2 = mysqli_query($con,$sql_2);
//fetch the amount 


?>

    <section>
        <h1>
          Confirm the  details.
        </h1>
        <details>
          <summary>passenger Details</summary>
          <table width="680" border="2" cellpadding="2" cellspacing='2'>
            <thead>
                <tr>
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
                    
                </tr>
            </thead>
            <tbody>
                    <tr>
                    <?php
                        while ($course = mysqli_fetch_assoc($mysqli_records)){
                          echo "<tr>";
                          echo "<td>".$course['p_name1']."</td>";
                          echo "<td>".$course['p_age1']."</td>";
                          echo "<td>".$course['p_gender1']."</td>";
                          echo "<td>".$course['p_address1']."</td>";
                          echo "<td>".$course['p_name2']."</td>";
                          echo "<td>".$course['p_age2']."</td>";
                          echo "<td>".$course['p_gender2']."</td>";
                          echo "<td>".$course['p_address2']."</td>";
                          echo "<td>".$course['p_name3']."</td>";
                          echo "<td>".$course['p_age3']."</td>";
                          echo "<td>".$course['p_gender3']."</td>";
                          echo "<td>".$course['p_address3']."</td>";
                          echo "<td>".$course['p_name4']."</td>";
                          echo "<td>".$course['p_age4']."</td>";
                          echo "<td>".$course['p_gender4']."</td>";
                          echo "<td>".$course['p_address4']."</td>";
                          echo "</tr>";
                        }
                    ?>
                    <tr>
                      </tbody>
        </table>
        </details>
        <details>
          <summary>Source and Destination  Details</summary>
          <table width="680" border="2" cellpadding="2" cellspacing='2'>
            <thead>
                <tr>
                    <th>source</th>
                    <th>Destination</th>
                   
                </tr>
            </thead>
            <tbody>
                    <tr>
                    <?php
                        while ($course = mysqli_fetch_assoc($records_1)){
                          echo "<tr>";
                          echo "<td>".$course['source']."</td>";
                          echo "<td>".$course['destination']."</td>";
                          
                          echo "</tr>";
                        }
                    ?>
                    <tr>
                      </tbody>
        </table>
        </details>
        <details>
          <summary>train Details</summary>
          <table width="800" border="1" cellpadding="2" cellspacing='2'>
            <thead>
                <tr>
                    <th>Train Name</th>
                    <th>Train number</th>
                    <th>Train time</th>
                    <th>Train type</th>
                    
                  
                </tr>
            </thead>
            <tbody>
                    <tr>
                    <?php
                        while ($course = mysqli_fetch_assoc($records_2)){
                          echo "<tr>";
                          echo "<td>".$course['t_name']."</td>";
                          echo "<td>".$course['t_number']."</td>";
                          echo "<td>".$course['t_time']."</td>";
                          echo "<td>".$course['t_type']."</td>";
                         
                          echo "</tr>";
                        }
                    ?>
                    <tr>
                      </tbody>
        </table>
        </details>
       
        <div class="butt">
          <a href="home.html">Place the Courier</a>
          <button onclick="window.print()">Print</button>
      </div>
        
      </section>
    
</body>
</html>