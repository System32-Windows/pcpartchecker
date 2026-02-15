<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PCPartChecker</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <h1>Witaj w PCPartChecker</h1>
    <form action="checkcompat.php" method="get">
        <p>Wybierz standard</p>
        <select name="factor" id="factor">
            <option value="atx">ATX</option>
            <option value="maicroatx">Micro ATX</option>
        </select>
        <p>Wybierz CPU:</p>
        <select name="cpu" id="cpu">
            <option value="r55500">AMD Ryzen 5 5500</option>
            <option value="r77800x3d">AMD Ryzen 7 7800X3D</option>
            <option value="i514600kf">Intel Core i5-14600KF</option>
        </select>
        <p>Wybierz GPU: </p>
        <select name="gpu" id="gpu">
            <option value="rx7800xt">AMD RX 7800 XT 16GB</option>
            <option value="rx5600xt">AMD RX 5600 XT 6GB</option>
            <option value="rtx3070">NVIDIA RTX 3070</option>
            <option value="rtx5090">NVIDIA RTX 5090</option>
            <option value="arcb580">Intel ARC B580</option>
        </select>
        <br>
        <button type="submit">Sprawdź kompatybilność</button>
        <p>Uwaga: Strona nie ponosi odpowiedzialności za zakup niekompatybilnych części</p>
    </form>
</body>

</html>