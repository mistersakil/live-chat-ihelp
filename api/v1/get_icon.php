<style>
    #iHelpChatConversationDetails::-webkit-scrollbar {
        width: 1px;
        background: rgba(100, 100, 100, .3);
    }

    #iHelpChatConversationDetails::-webkit-scrollbar-track {
        /* -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 255, 1); */
        border-radius: 15px;
    }

    #iHelpChatConversationDetails::-webkit-scrollbar-thumb {
        border-radius: 15px;
        /* -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.5); */
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
    <aside data-display="visible" id="iHelpChatRegistrationForm" style="display: none;">
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
    <aside data-display="hidden" id="iHelpChatConversation">

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
            text-transform: capitalize;
            overflow-x: hidden;
            overflow-y: scroll;
            display: flex;
            flex-direction: column;
            gap: 10px;           

            " id="iHelpChatConversationDetails">
                <div class="iHelpChatAgentCurrentMessage" style="
                background-color: orange;
                padding: 5px;
                height: auto;
                border-radius: 10px;
                ">
                    <p style="
                    font-size: 16px;
                    font-weight: 700;
                    font-style:italic;
                    ">System</p>
                    <p>Please wait, we will come back you soon</p>
                </div>
                <!-- /#iHelpChatAgentCurrentMessage -->
                <div class="iHelpChatCustomerCurrentMessage" style="
                background-color: white;
                padding: 5px;
                height: auto;
                border-radius: 10px;
                ">
                    <p style="
                    font-size: 16px;
                    font-weight: 700;
                    font-style:italic;
                    " class="customerName">Mister Kiron</p>
                    <p class="customerText">I need support</p>
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
        ">
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
            height: 50px;
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
        " id="iHelpChatBtnGroup">
            <input style="
            width: 50%;
            height: 40px;
            padding: 5px;
            font-size: 16px;
            outline: none;
            border: none;
            cursor:pointer;
            background: darkred;
            color:white;

            " id="iHelpChatSendTextBtn" type="button" value="Send" />

            <input style="
            width: 50%;
            height: 40px;
            padding: 5px;
            font-size: 16px;
            outline: none;
            border: none;
            cursor:pointer;
            background: red;
            color:white;

            " id="iHelpChatStopSession" type="button" value="Stop Chat" />
        </div>
        <!-- /#iHelpChatBtnGroup -->
    </aside>
    <!-- End: Conversation section  -->

</section>