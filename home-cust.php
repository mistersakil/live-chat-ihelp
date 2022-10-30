<div class="realtime-agent-info">
    <div id="wrapper">
        <div id="chatbox">
            <?php
			$chat_id = $_GET['p'];
			$send_by = $_SESSION["userLiveChat"];
			$check_agent = $conn->query("SELECT * FROM `chat`.`chat_id` WHERE id = '" . $chat_id . "' AND `agent_name` = '" . $send_by . "'");
			if (($check_agent->num_rows) > 0) {
				$conn->query("DELETE FROM `chat`.`chat_customer_notification` WHERE chat_id = '" . $chat_id . "'");
				$result_msglist_count = $conn->query("SELECT count(*) as totmsg FROM `chat`.`chat_customer` WHERE chat_id = '" . $chat_id . "'");
				$row_count = ($result_msglist_count->fetch_assoc());
				$total_message = $row_count['totmsg'];
				if ($total_message < 50) {
					$total_message = 0;
				} else {
					$total_message = $total_message - 50;
				}
				$result_msglist = $conn->query("SELECT * FROM `chat`.`chat_customer` WHERE chat_id = '" . $chat_id . "' ORDER BY `id` ASC LIMIT $total_message, 50");
				while ($row_msglist = ($result_msglist->fetch_assoc())) {
					if ($send_by == $row_msglist['user']) {
						echo "<div class='msgln' style='text-align: right;'>";
						echo $row_msglist['message'] . "&nbsp;&nbsp;&nbsp;&nbsp;<b class='user-name' style='background: green;'>" . $row_msglist['user'] . "</b><br>";
						echo "<span class='chat-time'>" . $row_msglist['date'] . "</span>";
						echo "</div>";
					} else {
						echo "<div class='msgln'>";
						echo "<b class='user-name'>" . $row_msglist['user'] . "</b>" . $row_msglist['message'] . "<br>";
						echo "<span class='chat-time'>" . $row_msglist['date'] . "</span>";
						echo "</div>";
					}
				}
			} else {
				echo "<div class='msgln'>";
				echo "<b class='user-name'>System</b>You are not authorized to view this page<br>";
				echo "<span class='chat-time'>" . date('Y-m-d H:i:s') . "</span>";
				echo "</div>";
			}
			?>
        </div>

        <form name="message" id="message" action="">
            <input type="hidden" name='send_by' id="send_by" value="<?php echo $send_by; ?>">
            <input type="hidden" name='chat_id' id="chat_id" value="<?php echo $chat_id; ?>">
            <input type="hidden" name='total_message' id="total_message" value="<?php echo $total_message; ?>">
            <input name="usermsg" type="text" id="usermsg" />
            <input name="submitmsg" type="button" id="submitmsg" value="Send" />
        </form>
    </div>
</div>
<script>
var input = document.getElementById("usermsg");
input.addEventListener("keypress", function(event) {
    if (event.key === "Enter") {
        event.preventDefault();
        document.getElementById("submitmsg").click();
    }
});
$("#chatbox").scroll(function() {
    //var scrollBottom = $("#chatbox").scrollTop() + $("#chatbox").height();
    var scrollBottom = $("#chatbox").scrollTop();
    if (scrollBottom < 2) {
        var chatbox = $("#chatbox").html();
        var send_by = $("#send_by").val();
        var chat_id = $("#chat_id").val();
        var total_message = $("#total_message").val();
        var new_limit = parseInt(total_message) - 50;
        //alert(scrollBottom);
        $.ajax({
            url: 'load-more-data-cust.php',
            type: 'post',
            data: {
                total_message: total_message,
                send_by: send_by,
                chat_id: chat_id
            },
            success: (result, status, http) => {
                if (status === 'success') {
                    if (result != '') {
                        console.log(new_limit + '--' + scrollBottom);
                        $('#chatbox').html(result + chatbox);
                        $("#total_message").val(new_limit);
                        //element.scrollTop = element.scrollHeight;
                    }
                }
            }
        });
    }

});
$("#submitmsg").click(function() {
    //alert("clicked");
    var clientmsg = $("#usermsg").val();
    var send_by = $("#send_by").val();
    var chat_id = $("#chat_id").val();
    var chatbox = $("#chatbox").html();
    var element = document.getElementById("chatbox");

    $.ajax({
        url: 'post-cust.php',
        type: 'post',
        data: {
            text: clientmsg,
            send_by: send_by,
            chat_id: chat_id
        },
        success: (result, status, http) => {
            if (status === 'success') {
                $("#usermsg").val("");
                $('#chatbox').html(chatbox + result);
                element.scrollTop = element.scrollHeight;
            }
        }
    });
});
$("#exit_chat").click(function() {
    var send_by = $("#send_by").val();
    var chat_id = $("#chat_id").val();
    var exit = confirm("Are you sure you want to end the session?");
    if (exit == true) {
        $.ajax({
            url: 'end-chat.php',
            type: 'post',
            data: {
                send_by: send_by,
                chat_id: chat_id
            },
            success: (result, status, http) => {
                if (status === 'success') {
                    window.location = "./";
                }
            }
        });
    }

});
$(document).ready(function() {
    var element = document.getElementById("chatbox");
    element.scrollTop = element.scrollHeight;

    var send_by_note = $("#send_by").val();
    var received_by_id = $("#chat_id").val();

    if (received_by_id != '' && send_by_note != '') {

        const element = document.getElementById("cc_" + received_by_id);
        if (element) {
            element.remove();
        }
        setInterval(function() {
            loadNotification()
        }, 1000);

    }

    function loadNotification() {
        //console.log("Hello world!");
        var send_by = $("#send_by").val();
        var chat_id = $("#chat_id").val();
        var chatbox = $("#chatbox").html();
        var element = document.getElementById("chatbox");
        $.ajax({
            url: 'notification-search-cust.php',
            type: 'post',
            data: {
                send_by: send_by,
                chat_id: chat_id
            },
            success: (result, status, http) => {
                if (status === 'success') {
                    if (result != '') {
                        $('#chatbox').html(chatbox + result);
                        //element.scrollTop = element.scrollHeight;
                        var audio = new Audio('new_sms_tone.mp3');
                        audio.play();
                    }
                }
            }
        });
    }
});
</script>