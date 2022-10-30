<div id="sidebar-left" class="span3" style="overflow: auto;">
    <div class="nav-collapse sidebar-nav">
        <input type="text" id="myInputEx" onkeyup="customSearchByNameEx()"
            style="border-radius: 5px;background: #888; border: 1px #888; color: #FFFFFF; width: 95%;"
            placeholder="Search By Customer names..">
        <ul class="nav nav-tabs nav-stacked main-menu" id="myULEx">

            <?php
			$cust_qry = $conn->query("SELECT * FROM `chat_id` WHERE `agent_name` = '" . $_SESSION["userLiveChat"] . "' AND `agent_close` <> 'YES'");
			if ($cust_qry->num_rows > 0) {
				while ($row_cust = $cust_qry->fetch_assoc()) {
					$result_notify2 = $conn->query("SELECT * FROM `chat_customer_notification` WHERE chat_id='" . $row_cust['id'] . "'");
					$row_count2 = $result_notify2->num_rows;
					if ($row_count2 > 0) {
						echo "<li id=\"" . $row_cust['id'] . "\"><a href=\"?p=" . $row_cust['id'] . "&type=cust\" id=\"aa_" . $row_cust['id'] . "\"><span><img src=\"./img/gallery/customer-icon.png\" alt=\"Agent to Agent Chat\" width=\"40\" height=\"45\"></span>";
						echo "<span class=\"hidden-tablet\">" . $row_cust['customer_id'] . "</span><span class=\"badge\" id=\"cc_" . $row_list['id'] . "\" style=\"background: red;\">" . $row_count2 . "</span></a></li>";
					} else {
						echo "<li id=\"" . $row_cust['id'] . "\"><a href=\"?p=" . $row_cust['id'] . "&type=cust\" id=\"aa_" . $row_cust['id'] . "\"><span><img src=\"./img/gallery/customer-icon.png\" alt=\"Agent to Agent Chat\" width=\"40\" height=\"45\"></span>";
						echo "<span class=\"hidden-tablet\">" . $row_cust['customer_id'] . "</span></a></li>";
					}
				}
			} else {
				echo "<li id=\"no_id\"><a href=\"#\" id=\"aa_no_id\"><span></span>";
				echo "<span class=\"hidden-tablet\">No active customer</span></a></li>";
			}
			?>
        </ul>
        <input type="text" id="myInputIn" onkeyup="customSearchByNameIn()"
            style="border-radius: 5px;background: #888; border: 1px #888; color: #FFFFFF; width: 95%;"
            placeholder="Search By Agent names..">
        <ul class="nav nav-tabs nav-stacked main-menu" id="myULIn">
            <?php
			$user_list = array();
			$sql = "SELECT * FROM `vicidial_live_agents`";
			$ul_qry = $conn->query($sql);
			while ($row_ul = $ul_qry->fetch_assoc()) {
				array_push($user_list, $row_ul['user']);
			}
			$result_qry = $conn->query("SELECT * FROM `vicidial_users` WHERE user_group='" . $_SESSION['userGroupLiveChat'] . "' and user <> '" . $_SESSION["userLiveChat"] . "'");

			while ($row_list = $result_qry->fetch_assoc()) {
				if (in_array($row_list['user'], $user_list)) {
					$agent_icon = "agent-icon-online.png";
				} else {
					$agent_icon = "agent-icon-offline.png";
				}
				$result_notify = $conn->query("SELECT * FROM `internal_conversation_notification` WHERE received_by='" . $_SESSION['userLiveChat'] . "' and send_by = '" . $row_list['user'] . "'");
				$row_count = ($result_notify->num_rows);
				if ($row_count > 0) {
					echo "<li id=\"" . $row_list['user'] . "\"><a href=\"?p=" . $row_list['user'] . "\" id=\"aa_" . $row_list['user'] . "\"><span><img src=\"./img/gallery/" . $agent_icon . "\" alt=\"Agent to Agent Chat\" width=\"40\" height=\"45\"></span>";
					echo "<span class=\"hidden-tablet\">" . $row_list['full_name'] . "</span><span class=\"badge\" id=\"cc_" . $row_list['user'] . "\" style=\"background: red;\">" . $row_count . "</span></a></li>";
				} else {
					echo "<li id=\"" . $row_list['user'] . "\"><a href=\"?p=" . $row_list['user'] . "\" id=\"aa_" . $row_list['user'] . "\"><span><img src=\"./img/gallery/" . $agent_icon . "\" alt=\"Agent to Agent Chat\" width=\"40\" height=\"45\"></span>";
					echo "<span class=\"hidden-tablet\">" . $row_list['full_name'] . "</span></a></li>";
				}
			}
			?>
        </ul>
    </div>

</div>

<script>
function customSearchByNameEx() {
    // Declare variables
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('myInputEx');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myULEx");
    li = ul.getElementsByTagName('li');

    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}

function customSearchByNameIn() {
    // Declare variables
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById('myInputIn');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myULIn");
    li = ul.getElementsByTagName('li');

    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
</script>