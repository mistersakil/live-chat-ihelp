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
    /** Dom content loaded */
    document.addEventListener("DOMContentLoaded", () => {

        async function fetchLiveChat() {
            let getIconApi = await fetch('./api/v1');
            let getResponseText = await getIconApi.text();
            const div = document.createElement("div");
            div.innerHTML = getResponseText;
            document.body.prepend(div);
        }
        fetchLiveChat();
        /** Operations after window load */
        window.onload = function() {
            /* Variable declarations from API pointing to DOM */
            let iHelpChatRegistrationForm = document.querySelector('#iHelpChatRegistrationForm');
            let iHelpChatRegistrationBtn = document.querySelector('#iHelpChatRegistrationBtn');
            let iHelpChatConversation = document.querySelector('#iHelpChatConversation');
            let iHelpChatConversationDetails = document.querySelector('#iHelpChatConversationDetails');
            let iHelpChatWriteYourMessageContainer = document.querySelector(
                '#iHelpChatWriteYourMessageContainer');
            let iHelpChatWriteYourMessage = document.querySelector('#iHelpChatWriteYourMessage');
            let iHelpLiveChatContainer = document.querySelector('#iHelpLiveChatContainer');
            let iHelpChatCopyConversationBtn = document.querySelector('#iHelpChatCopyConversationBtn');
            let iHelpChatExitBtn = document.querySelector('#iHelpChatExitBtn');
            let iHelpChatStopSession = document.querySelector('#iHelpChatStopSession');
            let iHelpChatSendTextBtn = document.querySelector('#iHelpChatSendTextBtn');
            let iHelpChatSystemGenerateMessage = document.querySelector('#iHelpChatSystemGenerateMessage');



            /** Generate specific message and put it to conversation container */
            function iHelpChatSystemGenerateMessageProcess() {
                /* creating new dom element & styles */
                let iHelpChatSystemInitialMessage = document.createElement('div');
                let iHelpChatUserInfo = document.createElement('p');
                let iHelpChatConversationText = document.createElement('p');
                let iHelpChatDateTime = document.createElement('span');

                /* Style for iHelpChatSystemInitialMessage element */
                iHelpChatSystemInitialMessage.style.backgroundColor = "GreenYellow";
                iHelpChatSystemInitialMessage.style.padding = "5px";
                iHelpChatSystemInitialMessage.style.height = "auto";
                iHelpChatSystemInitialMessage.style.borderRadius = "10px";

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
                iHelpChatUserInfo.innerHTML = "System";
                iHelpChatDateTime.innerHTML = "03 nov 2022 07:26 PM";
                iHelpChatUserInfo.insertAdjacentHTML('beforeend', iHelpChatDateTime.outerHTML);
                iHelpChatSystemInitialMessage.insertAdjacentHTML('afterbegin', iHelpChatUserInfo.outerHTML);
                iHelpChatConversationText.style.wordBreak = "break-word";
                iHelpChatConversationText.innerHTML = "Please wait we will come back you soon";
                iHelpChatSystemInitialMessage.insertAdjacentHTML('beforeend', iHelpChatConversationText
                    .outerHTML);
                iHelpChatConversationDetails.innerHTML = '';

                iHelpChatConversationDetails.append(iHelpChatSystemInitialMessage);

            }

            /** Generate specific message and put it to conversation container */
            function putCustomerMessageToConversationContainer() {
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

                iHelpChatCustomerCurrentMessage.insertAdjacentHTML('afterbegin', iHelpChatUserInfo
                    .outerHTML);


                let perseMessage = iHelpChatWriteYourMessage.value.replace(/<[^>]+>/g, '');

                if (perseMessage.length > 0) {
                    iHelpChatConversationText.style.wordBreak = "break-word";
                    iHelpChatConversationText.innerHTML = perseMessage;
                    /** Generate final chat text */
                    iHelpChatCustomerCurrentMessage.insertAdjacentHTML('beforeend',
                        iHelpChatConversationText
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

            /**  
             * Show conversation panel after register and hide registration form
             **/
            iHelpChatRegistrationBtn.onclick = function() {
                /* Validate registration form before going further process  */

                let formData = {};
                formData.fullName = document.querySelector('#fullName').value;
                formData.mobileNumber = document.querySelector('#mobileNumber').value;
                formData.emailID = document.querySelector('#emailID').value;
                formData.question = document.querySelector('#question').value;
                console.log(formData);
                let dataLength = Object.keys(formData).length;
                console.log(dataLength);
                if (formData.length === 4) {
                    console.log(formData);
                } else {
                    console.log('erros');
                    return;
                }

                // Hide registration form 
                iHelpChatRegistrationForm.style.display = "none";
                // Display conversation form
                iHelpChatConversation.style.display = "initial";
                // Hide conversation copy btn
                iHelpChatCopyConversationBtn.style.display = 'none';
                // Hide conversation exit btn
                iHelpChatExitBtn.style.display = 'none';
                // Display chat stop btn
                iHelpChatStopSession.style.display = 'initial';
                // Display send chat text message btn
                iHelpChatSendTextBtn.style.display = 'initial';
                // Process and generate message block
                iHelpChatSystemGenerateMessageProcess();
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
                        this.value = content.substring(0, caret - 1) + "\n" + content.substring(
                            caret, content
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
                    iHelpChatExitBtn.style.display = 'initial';
                    iHelpChatStopSession.style.display = 'none';
                    iHelpChatSendTextBtn.style.display = 'none';
                    iHelpChatConversationDetails.style.height = '383px';
                }
            }

            /* Copy to clipboard full conversation text on btn click */
            iHelpChatCopyConversationBtn.onclick = function(event) {
                navigator.clipboard.writeText(iHelpChatConversationDetails.innerText);

            }

            /* Go back to registration page after live chat on exit btn click */
            iHelpChatExitBtn.onclick = function(event) {
                iHelpChatRegistrationForm.style.display = "initial";
                iHelpChatConversation.style.display = "none";
                iHelpChatWriteYourMessageContainer.style.display = "flex";
                iHelpChatConversationDetails.style.height = '253px';
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
    });
    /** End: Dom content loaded */
    </script>

</body>



</html>