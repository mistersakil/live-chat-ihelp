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
        font-size: 10px;
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
        let iHelpChatWriteYourMessage = document.querySelector('#iHelpChatWriteYourMessage');
        let iHelpLiveChatContainer = document.querySelector('#iHelpLiveChatContainer');

        function putCustomerMessageToConversationContainer() {
            /* Get conversation container */
            let iHelpChatConversationDetails = document.querySelector('#iHelpChatConversationDetails');
            /* creating new div element */
            let createDiv = document.createElement('div');
            createDiv.style.backgroundColor = "white";
            createDiv.style.padding = "5px";
            createDiv.style.height = "auto";
            createDiv.style.borderRadius = "10px";
            /* creating new p elements */
            let createP = document.createElement('p');
            let createPText = document.createElement('p');
            createP.style.fontSize = "16px";
            createP.style.fontStyle = "italic";
            createP.style.fontWeight = "700";
            createP.innerHTML = "Mister Kiron";
            createDiv.insertAdjacentHTML('afterbegin', createP.outerHTML);

            console.log(iHelpChatWriteYourMessage.value);
            let perseMessage = iHelpChatWriteYourMessage.value.replace(/<[^>]+>/g, '');
            console.log(perseMessage);
            if (perseMessage.length > 0) {
                createPText.innerHTML = perseMessage;
                /** Generate final chat text */
                createDiv.insertAdjacentHTML('beforeend', createPText.outerHTML);
                /** Append final text to container */
                iHelpChatConversationDetails.append(createDiv);
                /** Scroll to top */
                iHelpChatConversationDetails.scrollTop = iHelpChatConversationDetails.scrollHeight;
            } else {
                alert('invalid content');
            }


            /* Reset write your message input field */
            iHelpChatWriteYourMessage.value = "";
        }

        /** Display iHelpLiveChatContainer on logo click */
        document.querySelector('.logo').addEventListener('click', function() {
            displayToggler(iHelpLiveChatContainer);
        });

        /* Show conversation panel after register */
        document.querySelector('#iHelpChatRegistrationBtn').onclick = function() {
            let iHelpChatRegistrationForm = document.querySelector('#iHelpChatRegistrationForm');
            displayToggler(iHelpChatRegistrationForm);
        }

        /* Send customer text to support center on btn click */
        document.querySelector('#iHelpChatSendTextBtn').onclick = function() {
            putCustomerMessageToConversationContainer();
        }

        /**
         * get caret
         */
        function getCaret(el) {
            if (el.selectionStart) {
                return el.selectionStart;
            } else if (document.selection) {
                el.focus();
                var r = document.selection.createRange();
                if (r == null) {
                    return 0;
                }
                var re = el.createTextRange(),
                    rc = re.duplicate();
                re.moveToBookmark(r.getBookmark());
                rc.setEndPoint('EndToStart', re);
                return rc.text.length;
            }
            return 0;
        }

        /* Send customer text to support center on enter key press */
        iHelpChatWriteYourMessage.addEventListener('keydown', function(e) {

            if (e.keyCode === 13) {
                var content = this.value;
                var caret = getCaret(this);
                if (e.ctrlKey) {
                    this.value = content.substring(0, caret - 1) + "\n" + content.substring(caret, content
                        .length);
                    event.stopPropagation();
                } else {
                    e.preventDefault();
                    putCustomerMessageToConversationContainer();
                }
            }
        });
    }

    /**
     * Display toggler
     * @param {element} DomElement
     * @return void
     */
    function displayToggler(element = null) {
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