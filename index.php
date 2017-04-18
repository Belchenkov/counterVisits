<?php require_once 'server/count.php'; ?>

<?php
    // SELECT DATA
    $query = "SELECT `domain`, `ip`, `date` FROM `counterData`";
    $data = mysqli_query($db, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Счетчик посетителей</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
</head>
<body>
    <div class="container">
        <h2 class="alert alert-info text-center">Учет посетителей</h2>
        <?php while($row = mysqli_fetch_assoc($data)) : ?>
            <div class="panel panel-default">
                <div class="panel-heading" style="background: #435343; color: white">
                    <h3 class="panel-title">Имя домена: <?= $row['domain']; ?></h3>
                </div>
                <div class="panel-body">
                <h4>IP пользователя: <?= $row['ip']; ?></h4>
                <h4>Время посещения: <?= $row['date']; ?></h4>
                </div>
            </div>
        <?php endwhile; ?>
    </div>
<!-- SCRIPTS -->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/main.js"></script>
</body>
</html>