<?php session_start(); ?>
<?php include_once 'libs/database.php'; ?>
<?php include_once 'libs/const.php'; ?>
<?php

$message = "";
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (!empty($_POST["username"]) && !empty($_POST["password"])) {
        $user = $_POST["username"];
        $password = $_POST["password"];
        $result = mysql_query("SELECT * FROM vicidial_users WHERE user='" . $user . "' and pass = '" . $password . "'");
        $row = mysql_fetch_array($result);
        if (is_array($row)) {
            $_SESSION["user_idLiveChat"] = $row['user_id'];
            $_SESSION["userLiveChat"] = $row['user'];
            $_SESSION["passLiveChat"] = $row['pass'];
            $_SESSION["userGroupLiveChat"] = $row['user_group'];
            $_SESSION['isLoggedLiveChat'] = TRUE;
        }
    } else {
        $message = "Invalid Username or Password!";
    }
}
//For agent panel request
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (!empty($_GET["user"])) {
        $user_pass = base64_decode($_GET["user"]);
        $pos_loc = strpos($user_pass, "|");
        $tot_len = strlen($user_pass);
        $user = substr($user_pass, 0, $pos_loc);
        $password = substr($user_pass, $pos_loc + 1, $tot_len - $pos_loc);
        $result = mysql_query("SELECT * FROM vicidial_users WHERE user='" . $user . "' and pass = '" . $password . "'");
        $row = mysql_fetch_array($result);
        if (is_array($row)) {
            $_SESSION["user_idLiveChat"] = $row['user_id'];
            $_SESSION["userLiveChat"] = $row['user'];
            $_SESSION["passLiveChat"] = $row['pass'];
            $_SESSION["userGroupLiveChat"] = $row['user_group'];
            $_SESSION['isLoggedLiveChat'] = TRUE;
        }
    } else {
        //$message = "Invalid Username or Password!";
    }
}

if (isset($_SESSION["userLiveChat"])) {
    //header("Location:" . BASE_URL);
    $result = mysql_query("SELECT * FROM `chat`.`internal_conversation` WHERE send_by='" . $_SESSION["userLiveChat"] . "' OR received_by = '" . $_SESSION["userLiveChat"] . "' ORDER BY `id` DESC LIMIT 1");
    $row = mysql_fetch_array($result);
    if (is_array($row)) {
        if ($row['send_by'] != $_SESSION["userLiveChat"]) {
            header("Location: ./?p=" . $row['send_by']);
        } else {
            header("Location: ./?p=" . $row['received_by']);
        }
    } else {
        header("Location: ./");
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <!-- start: Meta -->
    <meta charset="utf-8">
    <title>Conversation Login - EC</title>
    <meta name="description" content="Bootstrap Metro Dashboard">
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
    <link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
    <link
        href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext'
        rel='stylesheet' type='text/css'>
    <!-- end: CSS -->


    <!-- start: Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico">
    <!-- end: Favicon -->

    <style type="text/css">
    body {
        background: url(img/bg-login.jpg) !important;
    }
    </style>



</head>

<body>
    <div class="container-fluid-full">
        <div class="row-fluid">

            <div class="row-fluid">
                <div class="login-box">
                    <div class="icons">
                        <a href="index.html"><i class="halflings-icon home"></i></a>
                        <a href="#"><i class="halflings-icon cog"></i></a>
                    </div>
                    <h2>Login to your account</h2>
                    <form class="form-horizontal" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                        <fieldset>

                            <div class="input-prepend" title="Username">
                                <span class="add-on"><i class="halflings-icon user"></i></span>
                                <input class="input-large span10" name="username" id="username" type="text"
                                    placeholder="type username" autofocus />
                            </div>
                            <div class="clearfix"></div>

                            <div class="input-prepend" title="Password">
                                <span class="add-on"><i class="halflings-icon lock"></i></span>
                                <input class="input-large span10" name="password" id="password" type="password"
                                    placeholder="type password" />
                            </div>
                            <div class="clearfix"></div>
                            <?php if (!empty($message)) : ?>
                            <div class="box-content alerts">
                                <div class="alert alert-error">
                                    <button type="button" class="close" data-dismiss="alert">x</button>
                                    <strong><?php echo $message; ?></strong>
                                </div>

                            </div>
                            <?php endif; ?>


                            <div class="button-login">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                            <div class="clearfix"></div>
                    </form>

                </div>
                <!--/span-->
            </div>
            <!--/row-->


        </div>
        <!--/.fluid-container-->

    </div>
    <!--/fluid-row-->
    <div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <ul class="list-inline item-details">
                <li><a href="http://themifycloud.com">Admin templates</a></li>
                <li><a href="http://themescloud.org">Bootstrap themes</a></li>
            </ul>
        </div>
    </div>
    <!-- start: JavaScript-->

    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/jquery-migrate-1.0.0.min.js"></script>

    <script src="js/jquery-ui-1.10.0.custom.min.js"></script>

    <script src="js/jquery.ui.touch-punch.js"></script>

    <script src="js/modernizr.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <script src="js/jquery.cookie.js"></script>

    <script src='js/fullcalendar.min.js'></script>

    <script src='js/jquery.dataTables.min.js'></script>

    <script src="js/excanvas.js"></script>
    <script src="js/jquery.flot.js"></script>
    <script src="js/jquery.flot.pie.js"></script>
    <script src="js/jquery.flot.stack.js"></script>
    <script src="js/jquery.flot.resize.min.js"></script>

    <script src="js/jquery.chosen.min.js"></script>

    <script src="js/jquery.uniform.min.js"></script>

    <script src="js/jquery.cleditor.min.js"></script>

    <script src="js/jquery.noty.js"></script>

    <script src="js/jquery.elfinder.min.js"></script>

    <script src="js/jquery.raty.min.js"></script>

    <script src="js/jquery.iphone.toggle.js"></script>

    <script src="js/jquery.uploadify-3.1.min.js"></script>

    <script src="js/jquery.gritter.min.js"></script>

    <script src="js/jquery.imagesloaded.js"></script>

    <script src="js/jquery.masonry.min.js"></script>

    <script src="js/jquery.knob.modified.js"></script>

    <script src="js/jquery.sparkline.min.js"></script>

    <script src="js/counter.js"></script>

    <script src="js/retina.js"></script>

    <script src="js/custom.js"></script>
    <!-- end: JavaScript-->

</body>

</html>