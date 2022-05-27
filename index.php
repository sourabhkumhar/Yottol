<?php
// Include database connection file
include 'connect.php';

// Handle delete request
if (isset($_GET['del'])) {
    $sql = "DELETE FROM `fund_commissions` WHERE `ISIN` = '" . $_GET['del'] . "'";
    $result = mysqli_query($conn, $sql);

    if (!$result) {
        echo "<script>alert('Delete Unsuccessful! Try Again!!');
                      history.go(-1);</script> ";
    } else {
        echo "<script>alert('Delete Successfully!');
            location.href = 'index.php';</script> ";
    }
}

// Handle Update data request and submit in database
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $isin = $_POST['ISIN'];

    // Check empty or not
    if (empty($isin)) {
        echo "<script>alert('ISIN is empty');
            history.go(-1);</script> ";
    } else {
        $sqlCol = "SHOW COLUMNS FROM `fund_commissions`";
        $resultCol = mysqli_query($conn, $sqlCol);

        // Updating
        $sql = "UPDATE `fund_commissions` SET ";

        while ($record = mysqli_fetch_array($resultCol)) {
            $updateFields[] = $record['0'];
        }

        foreach ($updateFields as $key => $value) {
            if ($key == 0) {
                continue;
            }

            $data[$key] = $_POST[$value];
            $sql = $sql . " `$value` = '$data[$key]',";
        }

        $sql = substr($sql, 0, -1) . " WHERE `ISIN` = '$isin'";
        $result = mysqli_query($conn, $sql);

        if (!$result) {
            echo "<script>alert('Error in Updating');
                history.go(-1);</script> ";
        } else {
            echo "<script> alert('$isin is Successfully Udpated!!')</script>";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Adding bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <!-- Adding font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Yottol</title>
</head>

<body>
    <div class="container-fluid table-responsive" style="font-size: 13px;">

        <?php

        // Table header
        echo "<table class='table table-bordered' style='white-space: nowrap;'>
            
            <tr class='table-dark'>
                <th>Edit</th>
                <th>Delete</th>
                <th>S.No.</th>";

        // populate column names from sql table
        $sql = "SHOW COLUMNS FROM `fund_commissions`";
        $result = mysqli_query($conn, $sql);

        while ($record = mysqli_fetch_array($result)) {
            $fields[] = $record['0'];
        }
        foreach ($fields as $value) {

            echo "<th>" . $value . "</th>";
        }
        echo " </tr>";

        // Populate data from sql table
        $sql = "SELECT * FROM `fund_commissions`";
        $result = mysqli_query($conn, $sql);

        if ($result) {

            $sno = 1;

            $numRow = mysqli_num_rows($result);
            $numCol = mysqli_num_fields($result);

            while ($row = mysqli_fetch_array($result)) {

                echo "<tr>   
                <td align='center'><a href='edit.php?action=edit&eid=" . $row[0] . "'><i class='fa fa-pencil' style='font-size:24px;color:black;'></i></a></td>
                
                <td align='center'><a href='index.php?del=" . $row[0] . "'><i onclick='confirm(`Are you sure!`)' class='fa fa-times' style='font-size:30px;color:red;'></i></td>";

                echo "<td align='center'>" . $sno . "</td>";

                for ($j = 0; $j < $numCol; $j++) {
                    echo "<td>" . $row[$j] . "</td>";
                }
                $sno += 1;

                echo "</tr>";
            }
        } else {
            echo "0 results";
        }
        echo "</table>";
        ?>

    </div>

</body>

</html>