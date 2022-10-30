<?php 
if($_GET['type']=='cust'){
	$cust_name = mysql_query("SELECT * FROM `chat`.`chat_id` WHERE `id` = '".$_GET['p']."'");
	$row_cust_name = mysql_fetch_assoc($cust_name);
	$query_file_name = "Conversation With <span style=\"font-weight: bold;\">".$row_cust_name['customer_id']."</span>";
} else {
	$query_file_name = remove_dash($_GET['p']);
	if($query_file_name!=''){
		$query_file_name = "Conversation With <span style=\"font-weight: bold;\">".$query_file_name."</span>"; 
	}
}
?>

<ul class="breadcrumb">
    <li>
        <i class="icon-home"></i>
        <a href="<?php echo BASE_URL; ?>">Home</a> 
        <i class="icon-angle-right"></i>
    </li>
    <li><a href="#"><?php echo isset($query_file_name) ? $query_file_name : " "; ?>  </a></li>
	<?php
	if($_GET['type']=='cust'){
	?>
	<li style="float: right;">
        <button name="exit_chat" id="exit_chat" type="button" class="btn btn-primary"> End Chat </button>
    </li>
	<?php
	}	
	?>
</ul>