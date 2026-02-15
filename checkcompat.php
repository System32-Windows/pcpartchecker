<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wyniki - PCPartChecker</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <h1>Wyniki:</h1>
    <div id="wyniki">
        <?php
        $conn = mysqli_connect("127.0.0.1", "root", "", "pcpartchooser");
        $cpu = $_GET["cpu"];
        $gpu = $_GET["gpu"];
        $gpupower = null;
        $cpupower = null;
        $gpudisp = "";
        $cpudisp = "";
        $cpuurl = "";
        $gpuurl = "";
        $gpufactor = "";
        $factor = $_GET["factor"];
        $sql = "SELECT name,disp,power,url,factor FROM gpu";
        // Execute the SQL query
        $result = mysqli_query($conn, $sql);

        // Process the result set
        if (mysqli_num_rows($result) > 0) {
            // Output data of each row
            while ($row = mysqli_fetch_assoc($result)) {
                if ($row["name"] == $gpu) {
                    $gpupower = $row["power"];
                    $gpudisp = $row["disp"];
                    $gpuurl = $row["url"];
                    $gpufactor = $row["factor"];
                };
            }
        } else {
            echo "0 results";
        }

        $sql2 = "SELECT name,disp,power,url,socket FROM cpu";
        // Execute the SQL query
        $result2 = mysqli_query($conn, $sql2);

        // Process the result set
        if (mysqli_num_rows($result2) > 0) {
            // Output data of each row
            while ($row = mysqli_fetch_assoc($result2)) {
                if ($row["name"] == $cpu) {
                    $cpupower = $row["power"];
                    $cpudisp = $row["disp"];
                    $cpuurl = $row["url"];
                    $socket = $row["socket"];
                };
            }
        } else {
            echo "0 results";
        }

        if ($cpupower == $gpupower or ($cpupower - $gpupower) == 1 or ($gpupower - $cpupower) == 1) {
            if ($factor == $gpufactor or $gpufactor == "microatx") {
                echo "<h1 style='color:lime;'>Części kompatybilne</h1>";
                echo "<a href='{$cpuurl}' target='_blank'>Kup procesor {$cpudisp}</a>";
                echo "<br>";
                echo "<a href='{$gpuurl}' target='_blank'>Kup kartę graficzną {$gpudisp}</a>";
                echo "<br>";
                if ($gpufactor == "microatx") {
                    echo "<a href='https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/plyty-glowne/gniazdo-procesora_socket-{$socket}' target='_blank'>Zalecane płyty główne</a>";
                } else {
                    echo "<a href='https://www.mediaexpert.pl/komputery-i-tablety/podzespoly-komputerowe/plyty-glowne/standard-plyty-glownej_{$factor}/gniazdo-procesora_socket-{$socket}' target='_blank'>Zalecane płyty główne</a>";
                }
                echo '<p>Linki przekierowują do strony <a href="https://mediaexpert.pl">mediaexpert.pl</a></p>';
            } else {
                echo "<h1 style='color:orange;'>Wybierz standard ATX lub wybierz mniejszą kartę graficzną.</h1>";
            }
        } else {
            if ($cpupower > $gpupower) {
                echo "<h2>Części: {$cpudisp} oraz {$gpudisp} </h2><h1 style='color:red;'>mogą powodować niestabilność. Wybierz lepszą kartę graficzną.</h1>";
            } else {
                echo "<h2>Części: {$cpudisp} oraz {$gpudisp} </h2><h1 style='color:red;'>mogą powodować niestabilność. Wybierz lepszy procesor.</h1>";
            }
        }

        mysqli_close($conn);

        ?>

    </div>
    <br>
    <h2><a href="index.php">Wróć na stronę PCPartChecker</a></h2>
</body>

</html>