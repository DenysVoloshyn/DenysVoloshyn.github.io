<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
        <form method="POST">
        <input type="number" name="punkty" id="">
        </form>
        <?php
        $punkty=$_POST['punkty'];
        if($punkty >= 0 && $punkty<=1){
            echo "Twoja ocena 1";
        }
        elseif($punkty >=2 && $punkty <=3)
        {
            echo "ocena 2";
        }
        elseif($punkty == 4 )
        {
            echo "ocena 3";
        }
        elseif($punkty ==5 )
        {
            echo "ocena 4";
        }
        elseif($punkty >=6 && $punkty <=7)
        {
            echo "ocena 5";
        }
        elseif($punkty == 8 )
        {
            echo "ocena 6";
        }
        else
        echo "Błąd punktowy"

        ?>
</body>
</html>