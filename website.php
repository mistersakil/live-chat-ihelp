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
    /** Operations after window load */
    window.onload = function() {
        /* Variable declarations from API pointing to DOM */
        let iHelpChatConversationDetails = document.querySelector('#iHelpChatConversationDetails');
        let iHelpChatWriteYourMessageContainer = document.querySelector('#iHelpChatWriteYourMessageContainer');
        let iHelpChatWriteYourMessage = document.querySelector('#iHelpChatWriteYourMessage');
        let iHelpLiveChatContainer = document.querySelector('#iHelpLiveChatContainer');
        let iHelpChatCopyConversationBtn = document.querySelector('#iHelpChatCopyConversationBtn');
        let iHelpChatGoBackHomeBtn = document.querySelector('#iHelpChatGoBackHomeBtn');
        let iHelpChatStopSession = document.querySelector('#iHelpChatStopSession');
        let iHelpChatSendTextBtn = document.querySelector('#iHelpChatSendTextBtn');


        function putCustomerMessageToConversationContainer() {
            /* Get conversation container */

            /* creating new dom element & styles */
            let iHelpChatCustomerCurrentMessage = document.createElement('div');
            let iHelpChatUserInfo = document.createElement('p');
            let iHelpChatConversationText = document.createElement('p');
            let iHelpChatDateTime = document.createElement('span');

            /* Style for iHelpChatCustomerCurrentMessage element */
            iHelpChatCustomerCurrentMessage.style.backgroundColor = "white";
            iHelpChatCustomerCurrentMessage.style.padding = "5px";
            iHelpChatCustomerCurrentMessage.style.height = "auto";
            iHelpChatCustomerCurrentMessage.style.borderRadius = "10px";

            iHelpChatUserInfoStyle = {
                fontSize: "18px",
                fontWeight: "700",
                fontStyle: "italic",
                display: "flex",
                alignItems: "center",
                justifyContent: "space-between",
                borderBottom: "1px solid rgba(150,150,150,.3)",
                paddingBottom: "3px",
                marginBottom: "3px"
            }
            Object.assign(iHelpChatUserInfo.style, iHelpChatUserInfoStyle);

            /* Style for iHelpChatDateTime element */
            iHelpChatDateTime.style.fontSize = "12px";

            iHelpChatUserInfo.innerHTML = "Mister Kiron";

            iHelpChatDateTime.innerHTML = "03 nov 2022 07:26 PM";

            iHelpChatUserInfo.insertAdjacentHTML('beforeend', iHelpChatDateTime.outerHTML);

            iHelpChatCustomerCurrentMessage.insertAdjacentHTML('afterbegin', iHelpChatUserInfo.outerHTML);


            let perseMessage = iHelpChatWriteYourMessage.value.replace(/<[^>]+>/g, '');

            if (perseMessage.length > 0) {
                iHelpChatConversationText.style.wordBreak = "break";
                iHelpChatConversationText.innerHTML = perseMessage;
                /** Generate final chat text */
                iHelpChatCustomerCurrentMessage.insertAdjacentHTML('beforeend', iHelpChatConversationText
                    .outerHTML);
                /** Append final text to container */
                iHelpChatConversationDetails.append(iHelpChatCustomerCurrentMessage);
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
        iHelpChatSendTextBtn.onclick = function() {
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

        /* Stop chat session on btn click */
        iHelpChatStopSession.onclick = function(event) {
            let areYouSure = confirm('Are you sure?');
            if (areYouSure) {
                iHelpChatWriteYourMessageContainer.style.display = 'none';
                iHelpChatCopyConversationBtn.style.display = 'initial';
                iHelpChatGoBackHomeBtn.style.display = 'initial';
                iHelpChatStopSession.style.display = 'none';
                iHelpChatSendTextBtn.style.display = 'none';
                iHelpChatConversationDetails.style.height = '383px';
            }
        }

        /* Copy to clipboard full conversation text on btn click */
        iHelpChatCopyConversationBtn.onclick = function(event) {
            navigator.clipboard.writeText(iHelpChatConversationDetails.innerText);

        }
    }

    /** End: Operations after window load */

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