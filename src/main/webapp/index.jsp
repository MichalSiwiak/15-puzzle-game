<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>coffeecoding.net</title>
    <meta name="description"
          content="Free open source projects present different java solutions using spring, hibernate and other popular frameworks.">
    <meta name="keywords"
          content="java, spring, hibernate, apache, tomcat, coding, programmer, linux, google cloud platform, open source, bootstrap, mysql, java ideas">
    <!-- CSS dependencies -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
    <link rel="stylesheet" href="https://www.coffeecoding.net/resources/css/now-ui-kit.css" type="text/css">
    <link rel="stylesheet" href="https://www.coffeecoding.net/resources/css/style.css" type="text/css">
    <link rel="icon" href="resources/img/favicon.png">
    <!-- PAGE scripts -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
</head>


<body class="bg-light text-dark">
<div id="wrap">
    <div id="main" class="clear-top">


        <div class="collapse" id="navbarHeader">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 py-4">
                        <h4>About</h4>
                        <p class="text-info">Free open source projects present different java solutions using
                            spring,
                            hibernate
                            and other popular frameworks.</p>
                    </div>
                    <div class="col-md-3 offset-md-1 py-4">
                        <h4>Contact</h4>
                        <ul class="list-unstyled">
                            <li>
                                <a href="https://pl.linkedin.com/in/michalsiwiak" class="text-secondary"
                                   target="_blank">Follow
                                    on LinkedIn</a>
                            </li>
                            <li>
                                <a href="mailto:info@coffeecoding.net" target="_top" class="text-secondary">Email
                                    me</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>


        <div class="navbar sticky-top navbar-dark bg-info">
            <div class="container d-flex justify-content-between">
                <a href="https://www.coffeecoding.net/" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-home fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">
                    HOME
                </text>
                </a>
                <a href="https://github.com/MichalSiwiak/15-puzzle-game" target="_blank"
                   class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-git-square fa-fw d-inline-block lead fa-2x"></i>&nbsp;&nbsp;<text
                        class="">SOURCE
                    CODE
                </text>
                </a>
                <a href="${pageContext.request.contextPath}/demo" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-desktop fa-2x fa-fw lead d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">DEMO VIEW
                </text>
                </a>
                <a href="https://coffeecoding.net/resources/img/cv_msiwiak.pdf" target="_blank"
                   class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-address-card fa-2x lead fa-fw d-inline-block"
                        aria-hidden="true"></i>&nbsp;&nbsp;<text class="">RESUME
                </text>
                </a>
                <a href="/contact" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-envelope fa-2x lead fa-fw d-inline-block"
                        aria-hidden="true"></i>&nbsp;&nbsp;<text class="">CONTACT
                </text>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarHeader"><span class="navbar-toggler-icon"></span></button>
            </div>
        </div>


        <div class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="text-left">15 Puzzle Game</h1>
                        <hr>
                        <h5>This application presents simple implementation of 15 Puzzle Game. The player enters the
                            username then starts the game. After completing the puzzle is informed about the result of
                            the game: time, movements and points. Then the user has the option of saving the results
                            to the database.<br></h5>
                        <h5><b>Back End: </b>Java, Spring MVC, Spring Data, Hibernate, MySQL.</h5>
                        <h5><b>Front End: </b>JavaScript, HTML, CSS, JSP.</h5>
                        <h5>To run application: git clone
                            https://github.com/MichalSiwiak/15-puzzle-game.git,
                            upload and run application using tomcat application server or similar.</h5>
                        <h5>Demo View: <a href="https://www.coffeecoding.net/puzzle/demo">https://www.coffeecoding.net/puzzle/demo</a>
                        </h5>
                    </div>
                </div>
                <h5 class="mb-3">Main logic:</h5>
                <pre><code class="javascript">
var timeBegan = null
    , timeStopped = null
    , stoppedDuration = 0
    , started = null;

function start() {
    for (i = 1; i <= 16; i++) {
        document.getElementById(i).disabled = false
    }
    if (timeBegan === null) {
        timeBegan = new Date();
    }

    if (timeStopped !== null) {
        stoppedDuration += (new Date() - timeStopped);
    }

    started = setInterval(clockRunning, 10);
}

function stop() {
    timeStopped = new Date();
    clearInterval(started);

    for (i = 1; i <= 16; i++) {
        document.getElementById(i).disabled = true
    }
    document.getElementById("resumebtn").disabled = false;
}

function reset() {
    clearInterval(started);
    stoppedDuration = 0;
    timeBegan = null;
    timeStopped = null;
    document.getElementById("display-area").innerHTML = "00:00:00.000";
}

function clockRunning() {
    var currentTime = new Date()
        , timeElapsed = new Date(currentTime - timeBegan - stoppedDuration)
        , hour = timeElapsed.getUTCHours()
        , min = timeElapsed.getUTCMinutes()
        , sec = timeElapsed.getUTCSeconds()
        , ms = timeElapsed.getUTCMilliseconds();

    document.getElementById("display-area").innerHTML =
        (hour > 9 ? hour : "0" + hour) + ":" +
        (min > 9 ? min : "0" + min) + ":" +
        (sec > 9 ? sec : "0" + sec) + "." +
        (ms > 99 ? ms : ms > 9 ? "0" + ms : "00" + ms);
};


function startGame() {


    var nameGame = document.getElementById("nameGame");


    if (nameGame !== null && nameGame.value === "") {
        alert("Please, add the player's name");
    } else {


        prepareGame();
        start();
        document.getElementById("startbtn").disabled = true;
    }
};


function prepareGame() {
    document.getElementById("resumebtn").disabled = true;
    document.getElementById("nameGame").disabled = true;
    document.getElementById("stopbtn").disabled = false;
    for (var a = [], i = 0; i <= 16; ++i) a[i] = i;

    function shuffle(array) {
        var tmp, current, top = array.length;
        if (top)
            while (--top) {
                current = Math.floor(Math.random() * (top + 1));
                tmp = array[current];
                array[current] = array[top];
                array[top] = tmp;
            }
        return array;
    }

    a = shuffle(a);
    var index = a.indexOf(0);
    if (index > -1) {
        a.splice(index, 1);
    }
    for (i = 1; i <= 16; i++) {
        document.getElementById(i).innerHTML = a[i - 1];
        if (a[i - 1] == 16) {
            document.getElementById(i).style.display = "none";
            document.getElementById(i).name = "hid";
        }
    }
}

var clicks = 0;

function myFunction(x) {
    var hidden = document.getElementsByName("hid")[0];
    var text = x.innerHTML;
    var x1 = x.getAttribute("col");
    var y1 = x.getAttribute("row");
    var x2 = hidden.getAttribute("col");
    var y2 = hidden.getAttribute("row");
    var distance = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2))
    if (distance == 1) {
        x.style.display = "none";
        x.name = "hid";
        x.innerHTML = 16;
        hidden.style.display = 'block';
        hidden.innerHTML = text;
        hidden.name = "other";
        clicks += 1;
        document.getElementById("clicks").innerHTML = clicks;
    }
    var check = true;
    for (i = 1; i <= 16; i++) {

        check = check && (document.getElementById(i).innerHTML == i);
    }


    if (check) {
        document.getElementById("results").style.display = 'block';
        document.getElementById("gameUser").value = document.getElementById("nameGame").value;
        document.getElementById("time").value = document.getElementById("display-area").innerHTML;
        document.getElementById("movements").value = document.getElementById("clicks").innerHTML;
        stop();
        document.getElementById("resumebtn").disabled = true;
        document.getElementById("stopbtn").disabled = true;


    }
}
</code></pre>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.11.0/highlight.min.js"></script>
                <script>
                    hljs.initHighlightingOnLoad();
                </script>
            </div>

        </div>


    </div>
</div>


<footer class="footer bg-dark text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>© Copyright 2018 coffeecoding.net - All rights reserved.<br>Contact: info@coffeecoding.net<br>Warsaw
            PL<br><a href="https://www.coffeecoding.net/">Visit the homepage</a>
        </p>
    </div>
</footer>


</body>

</html>