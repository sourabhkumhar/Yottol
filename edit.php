<?php
// Include database connection file
include 'connect.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Adding bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <!-- Adding Font Awsomme icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Edit Data</title>
</head>

<body>
    <div class="container-fluid table-responsive">

        <?php

        // table header
        echo "<form action='index.php' method='POST'>
            <table class='table table-bordered' style='white-space: nowrap;'>
            
            <tr class='table-dark'>";

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

        if (isset($_GET['eid'])) {

            $sql = "SELECT * FROM `fund_commissions` WHERE `ISIN` = '" . $_GET['eid'] . "'";
            $result = mysqli_query($conn, $sql);

            if (!$result) {
                echo "<script>alert('No Data Available');
                          history.go(-1);</script> ";
            }

            $numRow = mysqli_num_rows($result);
            $numCol = mysqli_num_fields($result);

            if (!$numRow) {
                echo "<script>alert('No Data Available');
                          history.go(-1);</script> ";
            }

            $row = mysqli_fetch_array($result);

            // Editable Row Data
            echo "
                    <tr>
                        <td><input type='text' name='ISIN' maxlength='12' value='" . $row[0] . "' readonly></td>
                        <td><input type='text' name='Fund_Name' maxlength='100' value='" . $row[1] . "' required></td>";

            foreach ($fields as $key => $value) {
                if ($key < 2) {
                    continue;
                }
                echo "<td><input type='number' class='w-100' name='" . $value . "' value='" . $row[$key] . "' required></td>";
            }

            echo "</tr>";
        }

        echo "</table>";
        ?>

    </div>

    <?php
    // Submit and Reset Buttons
    echo "
        <button type='submit' class='btn btn-success my-3 ms-3'>Submit</button>
        <button type='reset' class='btn btn-secondary my-3 ms-2'>Reset</button>
    </form>";
    ?>

    <!-- Home Button -->
    <a href="index.php"><button class='btn btn-primary my-3 mx-4'><i class='fa fa-home'></i> Home</button></a>
</body>

</html>