<?php
session_start();

if (isset($_POST['enter'])) {
	if ($_POST['uname'] != "") {
		// include('./libs/sqli-db.php');
		require('./libs/database.php');
		$uname = $_POST['uname'];
		$phone = $_POST['phone'];
		$email = $_POST['email'];

		$_SESSION['name'] = $uname;
		$curr_date = date('Y-m-d H:i:s');
		$sql2 = "INSERT INTO `chat_id` (customer_id, cust_phone, cust_email, date, status) VALUES ('$uname','$phone','$email','$curr_date','NEW')";
		$conn->query($sql2);
		$sql3 = "SELECT * FROM `chat_id` WHERE `customer_id` = '" . $uname . "' AND `cust_phone` = '" . $phone . "' AND `cust_email` = '" . $email . "' AND `status` = 'NEW' ORDER BY id DESC LIMIT 1";
		$result3 = $conn->query($sql3);
		$row3 = ($result3->fetch_assoc());
		$_SESSION['chat_id'] = $row3['id']; //Set Session chat ID
		$_SESSION['close_chat_id'] = '';
		//echo '<span class="error">Invalid User ID or Password</span>';		
	} else {
		session_start();
		$_SESSION['name'] = '';
		$_SESSION['chat_id'] = '';
		$_SESSION['close_chat_id'] = '';
		session_destroy();
		echo '<span class="error">Please type in a name</span>';
	}
}

function loginForm()
{
	echo '
	<div id="loginform">
      <p>Please enter your details to continue!</p>
      <form action="web-chat.php" method="post">
		<div style = "width: 100%;">
		<div style = "width: 100%;">
			<div class="logindiv">
				<label for="name">Full Name: </label>
				<input class="loginput" type="text" name="uname" id="uname" />
			</div>
			<div class="logindiv">
				<label for="phone">Mobile Number: </label>
				<input class="loginput" type="text" name="phone" id="phone" />
			</div>
			<div class="logindiv">
				<label for="email">Email: </label>
				<input class="loginput" type="text" name="email" id="email" />
			</div>
		</div>
		<div style = "width: 100%;">
			<input type="submit" name="enter" id="enter" value="Enter" />
		</div>
		</div>
      </form>
    </div>
	';
}
if (isset($_GET['endchat'])) {
	session_start();
	include('./libs/sqli-db.php');
	$chat_id = $_SESSION['chat_id'];
	$sql = "UPDATE `chat_id` SET `status` = 'CLOSE' WHERE `id` = '" . $chat_id . "'";
	$conn->query($sql);

	$close_sms = "<span class=\"left-info\">User <b class=\"user-name-left\">" . $_SESSION['name'] . " </b> has left the chat session.</span><br>";
	//$close_sms = urlencode($close_sms);
	$now_time = date('Y-m-d H:i:s');
	$sql2 = "INSERT INTO `chat_customer` (`date`,`chat_id`,`user`,`message`) VALUES ('$now_time','$chat_id','System','$close_sms')";
	$conn->query($sql2);
	$_SESSION['close_chat_id'] = $_SESSION['chat_id'];
	$_SESSION['chat_id'] = '';
}
if (isset($_GET['logout'])) {
	session_start();
	$_SESSION['name'] = '';
	$_SESSION['chat_id'] = '';
	$_SESSION['close_chat_id'] = '';
	session_destroy();
	header("Location: web-chat.php"); //Redirect the user
}
?>
<script type="text/javascript">
function logoutAction() {
    window.location = 'web-chat.php?logout=true';
};
</script>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />

    <title>Customer Chat Application</title>
    <meta name="description" content="Customer Chat Application" />
    <link rel="stylesheet" href="./css/style-cust.css" />
</head>

<body>
    <?php
	if (!isset($_SESSION['name'])) {
		loginForm();
	} else {
	?>
    <div id="wrapper">
        <div id="menu">
            <p class="welcome">Welcome, <b><?php echo $_SESSION['name']; ?></b></p>
            <!--<p class="welcome">Welcome, <b><?php echo $_SESSION['name'] . "--" . $_SESSION['chat_id'] . "--" . $_SESSION['close_chat_id']; ?></b></p>-->
            <p class="logout"><a id="exit" href="#">Exit Chat</a></p>
            <input type="hidden" name='chat_id' id="chat_id" value="<?php echo $_SESSION['chat_id']; ?>">
            <input type="hidden" name='user_fullname' id="user_fullname" value="<?php echo $_SESSION['name']; ?>">
        </div>

        <div id="chatbox">
            <?php
				/*if(file_exists("log.php") && filesize("log.php") > 0){
						
						$contents = file_get_contents("log.php");
						echo $contents;
					}*/
				?>
        </div>
        <?php
			if ($_SESSION['chat_id'] != '') {
			?>
        <form name="message" action="">
            <input name="usermsg" type="text" id="usermsg" />
            <input name="submitmsg" type="submit" id="submitmsg" value="Send" />
        </form>
        <?php
			}
			?>
    </div>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
    // jQuery Document
    $(document).ready(function() {
        setInterval(loadLog, 2500);
        //If user wants to end session
        $("#exit").click(function() {
            var exit = confirm("Are you sure you want to end the session?");
            if (exit == true) {
                window.location = 'web-chat.php?endchat=true';
            }
        });
        $("#back_to_main").click(function() {
            window.location = 'web-chat.php?logout=true';
        });
        $("#submitmsg").click(function() {
            var clientmsg = $("#usermsg").val();
            var chat_id = $("#chat_id").val();
            var user_fullname = $("#user_fullname").val();
            //alert(clientmsg+'--'+chat_id+'--'+user_fullname);
            $.post("post-web.php", {
                text: clientmsg,
                chat_id: chat_id,
                user_fullname: user_fullname
            });
            $("#usermsg").val("");
            return false;
        });

        function loadLog() {

            var my_chat_id = "<?php echo $_SESSION['chat_id']; ?>";
            var my_close_chat_id = "<?php echo $_SESSION['close_chat_id']; ?>";
            //alert(my_chat_id);
            if (my_close_chat_id != '') {
                $("#usermsg").attr("hidden", true);
                $("#submitmsg").attr("hidden", true);
                $(".logout").html("<a id='back_to_main' onclick='logoutAction()' href='#'>Back To Main</a>");
            }

            var oldscrollHeight = $("#chatbox")[0].scrollHeight - 20; //Scroll height before the request
            $.ajax({
                url: "log.php",
                cache: false,
                success: function(html) {
                    $("#chatbox").html(html); //Insert chat log into the #chatbox div	

                    //Auto-scroll			
                    var newscrollHeight = $("#chatbox")[0].scrollHeight -
                        20; //Scroll height after the request
                    if (newscrollHeight > oldscrollHeight) {
                        $("#chatbox").animate({
                            scrollTop: newscrollHeight
                        }, 'normal'); //Autoscroll to bottom of div
                    }
                },
            });
        }
    });
    </script>
    <?php
	}
	?>
</body>

</html>