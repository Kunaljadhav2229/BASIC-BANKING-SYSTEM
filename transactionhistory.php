

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History</title>
    <link rel="shortcut icon" type="image/png" href="360_F_224879540_Qxao1D5nOdBQ8SpjLCohw0FFikIICQlS.jpg">
    <link rel="stylesheet" href="css/transactionhistory.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/createuser.css">
   
    <nav id="navbar">
      <ul>
          <li class="item"><a href="index.php">Home</a></li>
      </ul>
    </nav> 


    
</head>
<body>
     
	<div class="container">
   
        <h1 style="text-align:center;margin-bottom:15%;background: rgb(255, 252, 247,0.3);">Transaction History</h1>
        
       <br>
       <div class="table-responsive-sm">
    <table class="table table-hover table-striped table-condensed table-bordered">
        <thead>
            <tr>
                <th class="text-center">S.No.</th>
                <th class="text-center">Sender</th>
                <th class="text-center">Receiver</th>
                <th class="text-center">Amount</th>
                <th class="text-center">Date & Time</th>
            </tr>
        </thead>
        <tbody>
        <?php

            include 'config.php';

            $sql ="select * from transaction";

            $query =mysqli_query($conn, $sql);

            while($rows = mysqli_fetch_assoc($query))
            {
        ?>

            <tr>
            <td class="py-2"><?php echo $rows['sno']; ?></td>
            <td class="py-2"><?php echo $rows['sender']; ?></td>
            <td class="py-2"><?php echo $rows['receiver']; ?></td>
            <td class="py-2"><?php echo $rows['balance']; ?> </td>
            <td class="py-2"><?php echo $rows['datetime']; ?> </td>
                
        <?php
            }

        ?>
        </tbody>
    </table>
    </div>
    </div>
</body>
</html>
