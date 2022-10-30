<!-- start: Header -->

<?php include('header.php'); ?>



<!-- end : Header -->

<div class="container-fluid-full">
    <div class="row-fluid">

        <!-- start: Main Menu -->
        <?php include('menu.php'); ?>
        <!-- end: Main Menu -->
        <?php echo "after menu"; ?>
        <noscript>
            <div class="alert alert-block span10">
                <h4 class="alert-heading">Warning!</h4>
                <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                    enabled to use this site.</p>
            </div>
        </noscript>

        <!-- start: Content -->
        <div id="content" class="span10">

            <?php //include('breadcrumb.php');
            ?>

            <!-- start : main content section-->
            <?php
            // if ($_GET['type'] == 'cust') {
            //     include_once 'home-cust.php';
            // } else {
            //     include_once 'home.php';
            // }
            // include_once 'home.php';
            ?>
            <!-- end : main content section-->


        </div>
        <!--/.fluid-container-->

        <!-- end: Content -->
    </div>
    <!--/#content.span10-->
</div>
<!--/fluid-row-->

<script>
$(document).ready(function() {
    setInterval(function() {
        loadNotificationCounter()
    }, 3000);

    function loadNotificationCounter() {
        $("#myULEx").load(location.href + " #myULEx");
        $.ajax({
            url: 'notification-search-counter.php',
            type: 'post',
            //data:{
            //received_by:received_by
            //},
            success: (result, status, http) => {
                if (status === 'success') {
                    //console.log("Hello world!");
                    if (result != '') {
                        //$('#chatbox').html(chatbox+result);
                        //console.log(result);
                        const useArray = result.split("_");
                        let arrlength = useArray.length;
                        arrlength = arrlength - 1;
                        document.title = "SMS from " + useArray[arrlength];
                        while (arrlength > -1) {
                            const badgeelement = document.getElementById("cc_" + useArray[
                                arrlength]);
                            if (!badgeelement) {
                                const para = document.createElement("span");
                                const node = document.createTextNode("1");
                                para.appendChild(node);
                                para.setAttribute("class", "badge");
                                para.setAttribute("id", "cc_" + useArray[arrlength]);
                                para.setAttribute("style", "background-color:red;");
                                const element = document.getElementById("aa_" + useArray[
                                    arrlength]);
                                element.appendChild(para);

                                var audio = new Audio('new_sms_tone.mp3');
                                audio.play();
                            }
                            //$('#'+useArray[arrlength]).html(result);
                            arrlength = arrlength - 1;
                        }
                        console.log(useArray[0]);
                    }
                }
            }
        });
    }


});

function changeUserStatus(ag_status) {

    var now_user = "<?php echo $_SESSION['userLiveChat']; ?>";
    //alert(now_user);
    $.ajax({
        url: 'agent-activation.php',
        type: 'post',
        data: {
            action: "active_status",
            user: now_user,
            status: ag_status
        },
        success: (result, status, http) => {
            if (status === 'success') {
                if (ag_status === 'YES') {
                    $("#user_status_view").html(
                        "<i class=\"fa fa-circle\" style=\"color: green;\"></i> Online");
                } else if (ag_status === 'NO') {
                    $("#user_status_view").html(
                        "<i class=\"fa fa-circle\" style=\"color: gray;\"></i> Offline");
                }
            }
        }
    });
}
</script>
<?php include('footer.php'); ?>