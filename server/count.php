<?php require_once 'connect_db.php'; ?>



<?php
    if(!empty($_POST)) {
        if (!empty($_POST['domain']) && !empty($_POST['ip']) && !empty($_POST['date'])) {
            $domain = htmlspecialchars(trim($_POST['domain'], ' ')) ;
            $ip = htmlspecialchars(trim($_POST['ip'], ' ')) ;
            $date = htmlspecialchars(trim($_POST['date'], ' ')) ;

        if ($db) {
            // INSERT DATA
            $query = "INSERT INTO `counterData` (`domain`, `ip`, `date`) VALUES('$domain', '$ip', '$date')";

            if(!mysqli_query($db, $query)){
                echo 'Запись пользователя неудалась!' . mysqli_error($db);
            } else {
                echo 'Пользователь записан в базу!';
            }
        }   
    }
}
    