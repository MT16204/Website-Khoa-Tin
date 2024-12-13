function formLoad() {

    var myForm = document.getElementById("myform");
    var msgSccs = document.getElementById("subMsg");
    var msgErr = document.getElementById("errMsg");

    if (submitted == true) {
        myForm.reset();
        msgSccs.innerHTML = "🗸 Thanks For Your Feedback";
        msgSccs.classList.add("msgSccs");
    } else {
        myForm.reset();
        msgErr.innerHTML = "✖ Error! Please Try Again";
        msgErr.classList.add("msgErr");
    }

    setTimeout(function() {

        document.getElementById("subMsg", "errMsg").innerHTML = "";
        msgSccs.classList.remove("msgSccs");
        msgErr.classList.remove("msgErr");
    }, 5000);
}


// Contact us form

function contFormLoad() {

    var myContForm = document.getElementById("contform");
    var msgSccs = document.getElementById("contSubMsg");
    var msgErr = document.getElementById("contErrMsg");

    if (submitted == true) {
        myContForm.reset();
        msgSccs.innerHTML = "🗸 Your message has been sent successfully";
        msgSccs.classList.add("msgSccs");
    } else {
        myContForm.reset();
        msgErr.innerHTML = "✖ Error! Please Try Again";
        msgErr.classList.add("msgErr");
    }

    setTimeout(function() {

        document.getElementById("contSubMsg", "contErrMsg").innerHTML = "";
        msgSccs.classList.remove("msgSccs");
        msgErr.classList.remove("msgErr");
    }, 5000);
}




