// --------------Homepage header text slider Started--------------------


var cnt = 0;
var headerH1 = document.getElementById("headerH1");
var headerP = document.getElementById("headerP");

setInterval(function() {
    headerH1.innerHTML = h1[cnt];
    headerP.innerHTML = hp[cnt];
    cnt++;

    if (cnt >= h1.length) {
        cnt = 0;
    }
}, 4000);

// --------------Homepage header text slider ended--------------------


// -----------------Form handler Started-----------------------

// Feedback form

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


// OneStop form

function oneStopFormLoad() {

    var myOneForm = document.getElementById("myOneForm");
    var msgSccs = document.getElementById("oneSubMsg");
    var msgErr = document.getElementById("oneErrMsg");

    if (submitted == true) {
        myOneForm.reset();
        msgSccs.innerHTML = "🗸 Your mail has been successfully sent to 1-Stop service";
        msgSccs.classList.add("msgSccs");
    } else {
        myOneForm.reset();
        msgErr.innerHTML = "✖ Error! Please Try Again";
        msgErr.classList.add("msgErr");
    }

    setTimeout(function() {

        document.getElementById("oneSubMsg", "oneErrMsg").innerHTML = "";
        msgSccs.classList.remove("msgSccs");
        msgErr.classList.remove("msgErr");
    }, 5000);
}

// ---------------------Form handler ended----------------------

    document.addEventListener("DOMContentLoaded", () => {
        const nav = document.querySelector("nav");
        document.body.style.paddingTop = `${nav.offsetHeight}px`;
    });


