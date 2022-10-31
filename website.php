<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Client website</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        list-style-type: none;
    }

    body {

        background-color: #ddd;
        text-align: center;
        width: 100%;
        height: 100vh;
        display: flex;
        align-items: flex-start;
        justify-content: center;
        font-size: 40px;
        color: darkcyan;

    }
    </style>
</head>

<body>
    <h1 id="heading">This is a client website</h1>

    <script>
    async function fetchLiveChat() {
        let getIconApi = await fetch('./api/v1/get_icon.php');
        let getResponseText = await getIconApi.text();
        const div = document.createElement("div");
        div.innerHTML = getResponseText;
        document.body.prepend(div);
    }
    fetchLiveChat();

    window.onload = function() {
        let chatLogo = document.querySelector('.logo');
        let iHelpConversation = document.querySelector('#iHelpConversation');
        chatLogo.addEventListener('click', function() {
            displayToggle(iHelpConversation);
        });

    }

    /**
     * Display toggle
     * @param {element} DomElement
     * @return void
     */
    function displayToggle(element = null) {
        let displayType = element.getAttribute('data-display');
        if (displayType == 'hidden') {
            element.style.display = 'block';
            element.setAttribute("data-display", "visible");
        } else {
            element.style.display = 'none';
            element.setAttribute("data-display", "hidden");
        }
    }
    </script>

</body>



</html>