<div class="realtime-agent-info">
    <div id="wrapper">
        <div id="chatbox">
            <?php
			$received_by = $_GET['p'];
			$send_by = $_SESSION["userLiveChat"];
			$conn->query("DELETE FROM `internal_conversation_notification` WHERE send_by = '" . $received_by . "' AND received_by = '" . $received_by . "'");
			$result_msglist_count = $conn->query("SELECT count(*) as totmsg FROM `internal_conversation` WHERE send_by IN ('" . $received_by . "','" . $send_by . "') and received_by IN ('" . $received_by . "','" . $send_by . "')");
			$row_count = ($result_msglist_count->fetch_assoc());
			$total_message = $row_count['totmsg'];
			if ($total_message < 50) {
				$total_message = 0;
			} else {
				$total_message = $total_message - 50;
			}
			$result_msglist = $conn->query("SELECT * FROM `internal_conversation` WHERE send_by IN ('" . $received_by . "','" . $send_by . "') and received_by IN ('" . $received_by . "','" . $send_by . "') ORDER BY `id` ASC LIMIT $total_message, 50");
			while ($row_msglist = ($result_msglist->fetch_assoc())) {
				if ($send_by == $row_msglist['send_by']) {
					echo "<div class='msgln' style='text-align: right;'>";
					echo $row_msglist['coversation_sms'] . "&nbsp;&nbsp;&nbsp;&nbsp;<b class='user-name' style='background: green;'>" . $row_msglist['send_by'] . "</b><br>";
					echo "<span class='chat-time'>" . $row_msglist['create_time'] . "</span>";
					echo "</div>";
				} else {
					echo "<div class='msgln'>";
					echo "<b class='user-name'>" . $row_msglist['send_by'] . "</b>" . $row_msglist['coversation_sms'] . "<br>";
					echo "<span class='chat-time'>" . $row_msglist['create_time'] . "</span>";
					echo "</div>";
				}
			}
			?>
        </div>

        <form name="message" id="message" action="">
            <input type="hidden" name='send_by' id="send_by" value="<?php echo $send_by; ?>">
            <input type="hidden" name='received_by' id="received_by" value="<?php echo $received_by; ?>">
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
        var received_by = $("#received_by").val();
        var total_message = $("#total_message").val();
        var new_limit = parseInt(total_message) - 50;
        //alert(scrollBottom);
        $.ajax({
            url: 'load-more-data.php',
            type: 'post',
            data: {
                total_message: total_message,
                send_by: send_by,
                received_by: received_by
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
    var received_by = $("#received_by").val();
    var chatbox = $("#chatbox").html();
    var element = document.getElementById("chatbox");

    $.ajax({
        url: 'post.php',
        type: 'post',
        data: {
            text: clientmsg,
            send_by: send_by,
            received_by: received_by
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
$(document).ready(function() {
    var element = document.getElementById("chatbox");
    element.scrollTop = element.scrollHeight;

    var send_by_note = $("#send_by").val();
    var received_by_note = $("#received_by").val();

    if (received_by_note != '' && send_by_note != '') {

        const element = document.getElementById("cc_" + received_by_note);
        if (element) {
            element.remove();
        }
        setTimeout(function() {
            setInterval(function() {
                loadNotification()
            }, 1000);
        }, 2000);


    }

    function loadNotification() {
        //console.log("Hello world!");
        var send_by = $("#send_by").val();
        var received_by = $("#received_by").val();
        var chatbox = $("#chatbox").html();
        var element = document.getElementById("chatbox");
        $.ajax({
            url: 'notification-search.php',
            type: 'post',
            data: {
                send_by: send_by,
                received_by: received_by
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