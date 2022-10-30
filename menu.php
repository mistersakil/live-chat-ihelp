<div id="sidebar-left" class="span3" style="overflow: auto;">
    <div class="nav-collapse sidebar-nav">
		<input type="text" id="myInputEx" onkeyup="customSearchByNameEx()" style="border-radius: 5px;background: #888; border: 1px #888; color: #FFFFFF; width: 95%;" placeholder="Search By Customer names..">
        <ul class="nav nav-tabs nav-stacked main-menu" id="myULEx">
			<!--
            <li>
                <a class="dropmenu" href="#"><i class="icon-cogs"></i><span class="hidden-tablet"> Dashboard</span><i class="icon-caret-down"></i></a>
                <ul>
                    <li><a id="realtime_agent" class="submenu" href="?p=realtime-agent"><i class="icon-caret-right"></i><span class="hidden-tablet">Realtime Agent</span></a></li>
                    <li><a class="submenu" href="?p=process-dashboard"><i class="icon-caret-right"></i><span class="hidden-tablet">Process Dashboard</span></a></li>
                    <li><a class="submenu" href="?p=real-time-monitoring"><i class="icon-caret-right"></i><span class="hidden-tablet">RTM</span></a></li>
                    <li><a class="submenu" href="?p=real-time-monitoring-red"><i class="icon-caret-right"></i><span class="hidden-tablet">RTM Red</span></a></li>
                    <li><a class="submenu" href="?p=real-time-monitoring-white"><i class="icon-caret-right"></i><span class="hidden-tablet">RTM White</span></a></li>
                </ul>
            </li>
            <li><a href="?p=crm"><i class="icon-certificate"></i><span class="hidden-tablet"> CRM</span></a></li>
            <li><a href="?p=recordings-old"><i class="icon-music"></i><span class="hidden-tablet"> Recording</span></a></li>
			-->

			<?php
			$cust_qry = mysql_query("SELECT * FROM `chat`.`chat_id` WHERE `agent_name` = '" . $_SESSION["userLiveChat"] . "' AND `agent_close` <> 'YES'");
			if(mysql_num_rows($cust_qry)>0){
				while($row_cust = mysql_fetch_assoc($cust_qry)){
					$result_notify2 = mysql_query("SELECT * FROM `chat`.`chat_customer_notification` WHERE chat_id='".$row_cust['id']."'");
					$row_count2 = mysql_num_rows($result_notify2);
					if($row_count2>0){
						echo "<li id=\"".$row_cust['id']."\"><a href=\"?p=".$row_cust['id']."&type=cust\" id=\"aa_".$row_cust['id']."\"><span><img src=\"./img/gallery/customer-icon.png\" alt=\"Agent to Agent Chat\" width=\"40\" height=\"45\"></span>";
						echo "<span class=\"hidden-tablet\">". $row_cust['customer_id']."</span><span class=\"badge\" id=\"cc_".$row_list['id']."\" style=\"background: red;\">".$row_count2."</span></a></li>";
					}else {
						echo "<li id=\"".$row_cust['id']."\"><a href=\"?p=".$row_cust['id']."&type=cust\" id=\"aa_".$row_cust['id']."\"><span><img src=\"./img/gallery/customer-icon.png\" alt=\"Agent to Agent Chat\" width=\"40\" height=\"45\"></span>";
						echo "<span class=\"hidden-tablet\">". $row_cust['customer_id']."</span></a></li>";
					}
				}
			} else {
				echo "<li id=\"no_id\"><a href=\"#\" id=\"aa_no_id\"><span></span>";
				echo "<span class=\"hidden-tablet\">No active customer</span></a></li>";	
			}		
			?>
		</ul>
		<input type="text" id="myInputIn" onkeyup="customSearchByNameIn()" style="border-radius: 5px;background: #888; border: 1px #888; color: #FFFFFF; width: 95%;" placeholder="Search By Agent names..">
		<ul class="nav nav-tabs nav-stacked main-menu" id="myULIn">
			<?php
			$user_list = array();
			$ul_qry = mysql_query("SELECT * FROM `vicidial_live_agents`");
			while($row_ul = mysql_fetch_assoc($ul_qry)){
				array_push($user_list,$row_ul['user']);
			}
			//var_dump($user_list);
			$result_qry = mysql_query("SELECT * FROM `vicidial_users` WHERE user_group='" . $_SESSION['userGroupLiveChat'] . "' and user <> '" . $_SESSION["userLiveChat"] . "'");
			//$result_qry = mysql_query("SELECT * FROM vicidial_users");			
			while($row_list = mysql_fetch_assoc($result_qry)){
				if (in_array($row_list['user'], $user_list)){
					$agent_icon = "agent-icon-online.png";
				} else {
					$agent_icon = "agent-icon-offline.png";
				}
				$result_notify = mysql_query("SELECT * FROM `chat`.`internal_conversation_notification` WHERE received_by='" . $_SESSION['userLiveChat'] . "' and send_by = '".$row_list['user']."'");
				$row_count = mysql_num_rows($result_notify);
				if($row_count>0){
					echo "<li id=\"".$row_list['user']."\"><a href=\"?p=".$row_list['user']."\" id=\"aa_".$row_list['user']."\"><span><img src=\"./img/gallery/".$agent_icon."\" alt=\"Agent to Agent Chat\" width=\"40\" height=\"45\"></span>";
					echo "<span class=\"hidden-tablet\">". $row_list['full_name']."</span><span class=\"badge\" id=\"cc_".$row_list['user']."\" style=\"background: red;\">".$row_count."</span></a></li>";
				} else {
					echo "<li id=\"".$row_list['user']."\"><a href=\"?p=".$row_list['user']."\" id=\"aa_".$row_list['user']."\"><span><img src=\"./img/gallery/".$agent_icon."\" alt=\"Agent to Agent Chat\" width=\"40\" height=\"45\"></span>";
					echo "<span class=\"hidden-tablet\">". $row_list['full_name']."</span></a></li>";
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