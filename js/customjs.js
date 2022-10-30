
/***** Recording section - ajax ******/

function findOptions(str, server_ip) {

    xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            //alert(xmlhttp.responseText);
            document.getElementById("result_by_request_type").innerHTML = xmlhttp.responseText;
        }
    }

    xmlhttp.open("GET", "reports/recording-agent-list.php?search_by=" + str + "&server_ip=" + server_ip, true);
    xmlhttp.send();
}

function selectServer(server) {
    document.querySelector('#ip_on_change').value = server;
}

//Recording Result 

function recordingResult(e) {
    e.preventDefault();
    let date_start = document.querySelector('#startdate').value;
    let date_end = document.querySelector('#enddate').value;
    let search_key = document.querySelector('#search_key');
    let server_ip = document.querySelector('#select_server_ip').value;
    let search_by = document.querySelector('#search_by').value;

    let param = "date_start=" + date_start + "&date_end=" + date_end + "&search_key=" + search_key + "&server_ip=" + server_ip + "&search_by=" + search_by;
    
    xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
            //alert(xmlhttp.responseText);
            document.getElementById("recording_results").innerHTML = xmlhttp.responseText;
        }
    }

    xmlhttp.open("GET", "reports/recordings-result.php?"+param, true);
    xmlhttp.send();


}
function pagination(e){
let pagi = document.querySelector('#pagination_id');
alert(pagi);
}



/**** barge in and listen  functin  ******/
function ListenBarge(e, str1, str2, str3) {
//    alert(str1+ ' '+str2+str3);
    e.preventDefault();
    if (window.XMLHttpRequest)
    {
        xmlhttp = new XMLHttpRequest();
    } else
    {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange = function ()
    {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            //document.getElementById("home_reload_data_container").innerHTML=xmlhttp.responseText;
            alert("send Success");
        }
    }
    xmlhttp.open("GET", "barge/barge_in.php?session_id=" + str1 + "&server_ip=" + str2 + "&name=" + str3, true);
    xmlhttp.send();
}

//set phone session data

