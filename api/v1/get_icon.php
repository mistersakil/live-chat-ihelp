<img class="logo" src="https://ihelpbd.com/images_old/favicon.ico" alt="logo"
    style="width:50px; height: 50px; border-radius: 50%; position: absolute; right: 10px; bottom: 10px; cursor:pointer" />

<section id="iHelpLiveChatContainer" style="width: 300px;height:400px; display:flex; flex-direction: column;
    background: grey; position: fixed; right: 70px; bottom: 0; color:white; font-size:16px" data-display="hidden">
    <h2 style="width: 100%;
    font-size: 20px;
    font-weight: 900;
    background: darkred;
    color: white;
    height: 40px;
    text-align: center;
    line-height: 35px;">Live Customer Support</h2>
    <!-- Registration Form  -->
    <aside class="iHelpChatRegistrationForm" style="display: none;">
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
    " id="question" type="button" value="Submit">
        </p>
    </aside>
    <!-- End: Registration Form  -->
    <!-- Conversation form  -->
    <aside id="iHelpChatConversation">
        <div style="
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
            <label for="iHelpChatConversationDetails" title="Required">
                Conversation
            </label>
            <main style="
            width: 100%;
            padding: 5px;
            font-size: 18px;
            outline: none;
            border: none;
            resize: none;
            height: 150px;   
            background:white;       
            color:rgba(100,100,100,1);  
            text-align: left;
            text-transform: capitalize;

            " id="iHelpChatConversationDetails">

            </main>
        </div>

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
            <label for="iHelpChatWiteYourMessage" title="Required">
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
            " id="iHelpChatWiteYourMessage" type="text"></textarea>
        </p>
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
            <input style="
            width: 100%;
            height: 40px;
            padding: 5px;
            font-size: 16px;
            outline: none;
            border: none;
            cursor:pointer;
            background: darkred;
            color:white;

            " id="iHelpChatSend" type="button" value="Send" />
        </p>
    </aside>
    <!-- End: Conversation form  -->

</section>