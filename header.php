<?php
session_start();
?>
<?php
if (file_exists('libs/database.php')) {
    require_once 'libs/database.php';
}
if (file_exists('libs/const.php')) {
    require_once 'libs/const.php';
}
if (file_exists('libs/functions.php')) {
    require_once 'libs/functions.php';
}


if (isset($_SESSION['isLoggedLiveChat']) !== TRUE) {
    header('location:login.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- start: Meta -->
    <meta charset="utf-8">
    <title>
        <?php
        if (isset($title))
            echo "$title - EC";
        else
            echo 'Live Chat - EC';
        ?>
    </title>
    <meta name="description" content="Live Chat">
    <meta name="author" content="Dennis Ji">
    <meta name="keyword"
        content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <!-- end: Meta -->

    <!-- start: Mobile Specific -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- end: Mobile Specific -->

    <!-- start: CSS -->
    <link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
    <link id="base-style" href="css/style.css" rel="stylesheet">
    <link id="base-style" href="css/custom.css" rel="stylesheet">
    <link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
    <link
        href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
        rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- end: CSS -->
    <!-- start: jquery -->
    <script src="js/jquery-1.9.1.min.js"></script>
    <!-- end: jquery -->


    <!-- start: Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- end: Favicon -->




</head>

<body>
    <!-- start: Header -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse"
                    data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <?php
                //var_dump('<pre>',$_SERVER,"</pre>");
                $path_info = pathinfo($_SERVER['PHP_SELF']);

                ?>

                <a class="brand" href="<?php echo 'http://' . $_SERVER['HTTP_HOST'] . $path_info['dirname']; ?>">
                    <!--<img src="../wallboard/img/image_2022_08_08T07_35_18_363Z.png" alt="logo" class="img-responsive mainLogo" style="height: 35%; width: 35%">-->
                    <img src="./img/logo-white.png" alt="logo" class="img-responsive mainLogo"
                        style="height: 45%; width: 45%; padding-top: 7px;">
                </a>



                <!-- start: Header Menu -->
                <div class="nav-no-collapse header-nav">
                    <div class="dashboard-state-list">
                    </div>

                    <ul class="nav pull-right">

                        <!-- start: User Dropdown -->
                        <li class="dropdown">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="icon-user"></i> <?php echo ucwords($_SESSION['userLiveChat']); ?>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu phone_add_function">
                                <li><a href="logout.php"><i class="icon-signout"></i> Logout</a></li>
                                <li><a href="?p=add-phone"><i class="icon-phone"></i> Admin Phone</a></li>
                                <li><a href="?p=password-change"><i class="icon-lock"></i> Change Password</a></li>

                            </ul>
                        </li>
                        <!-- end: User Dropdown -->
                    </ul>

                    <ul class="nav pull-right">
                        <li class="dropdown">
                            <?php
                            $sql = "SELECT * FROM `agent_status` WHERE `agent_id` = '" . $_SESSION['userLiveChat'] . "'";

                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                $row = $result->fetch_assoc();

                                if ($row['status'] == '1') {
                                    $view_status = "<i class=\"fa fa-circle\" style=\"color: green;\"></i> Online";
                                }
                            } else {
                                $view_status = "<i class=\"fa fa-circle\" style=\"color: gray;\"></i> Offline";
                            }
                            ?>
                            <a class="btn dropdown-toggle" data-toggle="dropdown" id="user_status_view" href="#">
                                <?php echo $view_status; ?>
                            </a>
                            <ul class="dropdown-menu phone_add_function">
                                <li onclick="changeUserStatus('YES')">
                                    <a href="#">
                                        <i class="fa fa-circle" style="color: green;"></i>
                                        Online
                                    </a>
                                </li>
                                <li onclick="changeUserStatus('NO')">
                                    <a href="#">
                                        <i class="fa fa-circle" style="color: gray;"></i>
                                        Offline
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>

                </div>
                <!-- end: Header Menu -->

            </div>
        </div>
    </div>