<?php
 
  include 'connection.php';

  $q="select * from transaction";
  $result=mysqli_query($con,$q);
  $row_count=mysqli_num_rows($result);
  
?>


<!DOCTYPE HTML>
<html lang="en">
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
		<title>TRANSACTION HISTORY</title>
		 <link rel="stylesheet" href="customers.css">
		 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	</head>
<body>
	

<div class="navbar">
  <div class="logo">
    <img src="logo.png" id="logoimg" height="60px" width="70px">
  </div>

<ul id="navlist">
  
  <li class="navlist"><a href="index.php"><i  aria-hidden='true'></i>Home</a></li>
   <li class="navlist"><a href="customers.php"><i  aria-hidden="true"></i> View Customers</a></li>
   <li class="navlist"><a href="transfer.php"><i  aria-hidden='true'></i>Payment Transfer</a></li>
    <li class="navlist"><a class="active" href="transactionhistory.php"><i  aria-hidden='true'></i>Transaction History</a></li>

</ul>
</div>
</body>

<div>
    
 <h1 class="title" style="color:white"> User Transaction History</h1>
 
 <h4 class="text"> Below are the User Transaction History Details </h4>

 </div>
 <br>
 <br>
 <br>

<table style="font-family: serif;color: black;">
  <thead style="font-weight: bold;">
    <th>SENDER NAME</th>
    <th>RECEIVER NAME</th>
    <th>AMOUNT</th> 
  </thead>
  <tbody>
    <tr align = center>
        <?php  
      while($row=mysqli_fetch_array($result)){
        ?>
  <td><?php echo  $row["sender"]; ?></td>
  <td><?php echo  $row["receiver"]; ?></td>
  <td><?php echo  $row["amount"]; ?></td>
  <tr align = center>
  <?php }
  ?>
  </tr>
  </tbody>
  </table>
  
    <footer>
  <p>Developed by Saloni</p>

</footer>
</body>
</html>

