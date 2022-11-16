<style>
    #iHelpChatConversationDetails::-webkit-scrollbar {
        width: 1px;
        background: rgba(100, 100, 100, .3);
    }

    #iHelpChatConversationDetails::-webkit-scrollbar-track {
        border-radius: 15px;
    }

    #iHelpChatConversationDetails::-webkit-scrollbar-thumb {
        border-radius: 15px;
        background: transparent;
    }
</style>
<img class="logo" src="https://ihelpbd.com/images_old/favicon.ico" alt="logo" style="width:50px; height: 50px; border-radius: 50%; position: absolute; right: 10px; bottom: 10px; cursor:pointer" />

<section id="iHelpLiveChatContainer" style="width: 300px;height:500px; display:flex; flex-direction: column;
    background: #bf1a1a; position: fixed; right: 70px; bottom: 0; color:white; font-size:16px" data-display="hidden">
    <h2 style="width: 100%;
    font-size: 20px;
    font-weight: 900;
    background: darkred;
    color: white;
    height: 40px;
    text-align: center;
    line-height: 35px;">Live Customer Support</h2>
    <!-- Registration Form  -->
    <aside data-display="visible" id="iHelpChatRegistrationForm" style="display: initial;">
        <p style="display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    width: 100%;
    padding: 10px;
    gap: 5px;
    margin-bottom: 10px;
    border-bottom: 1px solid dimgrey;">
            <label for="fullName" title="Required">
                Full Name
                <sup>*</sup>
            </label>
            <input style="width: 100%;
    height: 40px;
    padding: 5px;
    font-size: 16px;
    outline: none;
    border: none;" id="fullName" type="text" require>
        </p>
        <p style="display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    width: 100%;
    padding: 10px;
    gap: 5px;
    margin-bottom: 10px;
    border-bottom: 1px solid dimgrey;">
            <label for="mobileNumber">
                Mobile Number
                <sup>*</sup>
            </label>
            <input style="width: 100%;
    height: 40px;
    padding: 5px;
    font-size: 16px;
    outline: none;
    border: none;" id="mobileNumber" type="number" require>
        </p>
        <p style="display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    width: 100%;
    padding: 10px;
    gap: 5px;
    margin-bottom: 10px;
    border-bottom: 1px solid dimgrey;">
            <label for="emailID">
                Email Address
                <sup>*</sup>
            </label>
            <input style="width: 100%;
    height: 40px;
    padding: 5px;
    font-size: 16px;
    outline: none;
    border: none;" id="emailID" type="text" required>
        </p>
        <p style="display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    width: 100%;
    padding: 10px;
    gap: 5px;
    margin-bottom: 10px;
    border-bottom: 1px solid dimgrey;">
            <label for="question">
                Your Question
                <sup>*</sup>
            </label>
            <input style="width: 100%;
    height: 40px;
    padding: 5px;
    font-size: 16px;
    outline: none;
    border: none;" id="question" type="text">
        </p>
        <p style="display: flex;
    flex-direction: column;
    justify-content: flex-start;
    align-items: flex-start;
    width: 100%;
    padding: 10px;
    gap: 5px;
    margin-bottom: 10px;">
            <input style="width: 100%;
    height: 40px;
    padding: 5px;
    font-size: 16px;
    outline: none;
    border: none;
    cursor:pointer;
    background: darkred;
    color:white;
    " id="iHelpChatRegistrationBtn" type="button" value="Submit">
        </p>
    </aside>
    <!-- End: Registration Form  -->
    <!-- Conversation section  -->
    <aside data-display="hidden" id="iHelpChatConversation" style="display: none;">

        <div style="
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: flex-start;
        width: 100%;
        padding: 5px;
        gap: 5px;
        margin-bottom: 10px;
        border-bottom: 1px solid dimgrey;
        ">
            <main style="
            width: 100%;
            padding: 5px;
            font-size: 18px;
            outline: none;
            border: none;
            resize: none;
            height: 250px;   
            background:transparent;       
            color:rgba(100,100,100,1);  
            text-align: left;
            overflow-x: hidden;
            overflow-y: scroll;
            display: flex;
            flex-direction: column;
            gap: 10px;           

            " id="iHelpChatConversationDetails">
                <div class="iHelpChatSystemGenerateMessage" style="
                background-color: orange;
                padding: 5px;
                height: auto;
                border-radius: 10px;
                ">
                    <p style="
                    font-size: 18px;
                    font-weight: 700;
                    font-style:italic;
                    display:flex;
                    justify-content:space-between;
                    align-items:center;
                    border-bottom: 1px solid rgba(150,150,150,.3);
                    padding-bottom:3px;
                    margin-bottom:3px;
                    " class="iHelpChatUserInfo">
                        System
                        <span class="iHelpChatDateTime" style="
                        font-size: 12px;
                        "><?php echo date('M d, Y h:i A'); ?></span>
                    </p>
                    <p class="iHelpChatConversationText" style="word-break:break-word;">Please wait, we will come back
                        you soon</p>
                </div>
                <!-- /#iHelpChatSystemGenerateMessage -->
                <div class="iHelpChatCustomerCurrentMessage" style="
                background-color: white;
                padding: 5px;
                height: auto;
                border-radius: 10px;
                ">
                    <p style="
                    font-size: 18px;
                    font-weight: 700;
                    font-style:italic;                    
                    display:flex;
                    align-items:center;
                    justify-content:space-between;
                    border-bottom: 1px solid rgba(150,150,150,.3);
                    padding-bottom:3px;
                    margin-bottom:3px;
                    " class="iHelpChatUserInfo">
                        Mister Kiron
                        <span class="iHelpChatDateTime" style="
                        font-size: 12px;                        
                        "><?php echo date('M d, Y h:i A'); ?></span>
                    </p>
                    <p class="iHelpChatConversationText" style="word-break: break">I need support with lot of questions
                        and questions</p>
                </div>
                <!-- /.iHelpChatCustomerCurrentMessage -->

            </main>
            <!-- /#iHelpChatConversationDetails -->
        </div>
        <!--  /#iHelpChatConversation -->
        <p style="
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: flex-start;
        width: 100%;
        padding: 10px;
        gap: 5px;
        margin-bottom: 10px;
        border-bottom: 1px solid dimgrey;
        " id="iHelpChatWriteYourMessageContainer">
            <label for="iHelpChatWriteYourMessage" title="Required">
                Write your message
            </label>
            <textarea style="
            width: 100%;
            padding: 5px;
            font-size: 16px;
            outline: none;
            border: none;
            resize: none;
            height: 80px;
            word-break: break-word;
            " id="iHelpChatWriteYourMessage"></textarea>
            <!-- /#iHelpChatWriteYourMessage -->
        </p>
        <div style="
        display: flex;
        flex-direction: row-reverse;
        justify-content: flex-start;
        align-items: flex-start;
        width: 100%;
        height:40px;
        padding: 10px;
        gap: 5px;
        margin-bottom: 10px;
        flex-wrap: wrap;
        " id="iHelpChatBtnGroup">
            <input style="
            width: 40%;
            height: 40px;
            padding: 5px;
            font-size: 16px;
            outline: none;
            border: none;
            cursor:pointer;
            background: darkred;
            color:white;
            flex-grow:1;

            " id="iHelpChatSendTextBtn" type="button" value="Send" />

            <input style="
            width: 40%;
            height: 40px;
            padding: 5px;
            font-size: 16px;
            outline: none;
            border: none;
            cursor:pointer;
            background: red;
            color:white;
            flex-grow:1;

            " id="iHelpChatStopSession" type="button" value="Stop Chat" />

            <input style="
            width: 40%;
            height: 40px;
            padding: 5px;
            font-size: 16px;
            outline: none;
            border: none;
            cursor:pointer;
            background: darkred;
            color:white;
            display:none;
            flex-grow:1;

            " id="iHelpChatCopyConversationBtn" type="button" value="Copy Chat Text" />

            <input style="
            width: 40%;
            height: 40px;
            padding: 5px;
            font-size: 16px;
            outline: none;
            border: none;
            cursor:pointer;
            background: red;
            color:white;
            display:none;
            flex-grow:1;
            " id="iHelpChatExitBtn" type="button" value="Exit" title="Go back to registration page to start a new session" />
        </div>
        <!-- /#iHelpChatBtnGroup -->
    </aside>
    <!-- End: Conversation section  -->

</section>