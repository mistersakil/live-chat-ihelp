<script>
    $(document).ready(function () {
        $('.realtime-agent-info').load('reports/realtime-agent-data.php');
        setInterval(function () {
            $('.realtime-agent-info').load('reports/realtime-agent-data.php');
        }, 2000);

    });
</script>
<div class="realtime-agent-info"></div>
