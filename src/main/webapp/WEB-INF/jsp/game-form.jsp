<!DOCTYPE html>
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


    <script>
        var timeBegan = null
            , timeStopped = null
            , stoppedDuration = 0
            , started = null;

        function start() {
            if (timeBegan === null) {
                timeBegan = new Date();
            }

            if (timeStopped !== null) {
                stoppedDuration += (new Date() - timeStopped);
            }
            console.log(stoppedDuration);

            started = setInterval(clockRunning, 10);
        }

        function stop() {
            timeStopped = new Date();
            clearInterval(started);
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

    </script>
</head>


<body class="bg-light text-dark">


<div id="wrap">
    <div id="main" class="clear-top">


        <div class="collapse" id="navbarHeader">
            <div class="container">
                <div class="row">
                    <div class="col-md-7 py-4">
                        <h4>About</h4>
                        <p class="text-info">Free open source projects present different java solutions using spring,
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
                                <a href="mailto:info@coffeecoding.net" target="_top" class="text-secondary">Email me</a>
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
                        class="fa fa-git-square fa-fw d-inline-block lead fa-2x"></i>&nbsp;&nbsp;<text class="">SOURCE
                    CODE
                </text>
                </a>
                <a href="${pageContext.request.contextPath}" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-file-text fa-2x fa-fw lead d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">DESCRIPTION
                </text>
                </a>
                <a href="https://coffeecoding.net/resources/img/cv_msiwiak.pdf" target="_blank"
                   class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-address-card fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">RESUME
                </text>
                </a>
                <a href="/contact" class="navbar-brand d-flex align-items-center"><i
                        class="fa fa-envelope fa-2x lead fa-fw d-inline-block" aria-hidden="true"></i>&nbsp;&nbsp;<text
                        class="">CONTACT
                </text>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader"><span
                        class="navbar-toggler-icon"></span></button>
            </div>
        </div>


        <div class="text-center py-4 bg-secondary"
             style="	background-image: linear-gradient(to left, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.9));	background-position: top left;	background-size: 100%;	background-repeat: repeat;">
            <div class="container">
                <div class="row">
                    <div class="col-md-0">
                        <h1 class="text-left text-primary">15 Puzzle Game</h1>
                        <p class="lead text-left">Start playing and beat the ranking!</p>
                    </div>
                </div>
            </div>
        </div>


        <div class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group text-center m-0"><label class="m-0">Enter your name:</label><input
                                type="text"
                                class="form-control w-100"
                                required="required">
                        </div>
                    </div>
                    <div class="col-md-3 mt-4 mb-0">
                        <button class="btn w-100 btn-info text-body" onclick="startGame();this.disabled=true;start()"
                                type="button">START
                        </button>
                    </div>
                    <div class="col-md-3">
                        <button class="btn w-100 text-body mt-4 btn-danger" onclick="stop()" type="button">STOP</button>
                    </div>
                    <div class="col-md-3">
                        <button class="btn w-100 text-body mt-4 btn-warning" onclick="reset()" type="button">RESUME
                        </button>
                    </div>
                </div>
                <h4 class="text-left m-0 mt-4">TIME:
                    <output id="display-area">00:00:00.000</output>
                </h4>
                <h4 class="text-left mb-5 mt-4"><p class="">MOVEMENTS: <a id="clicks">0</a></p></h4>


                <div class="row">

                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table style="margin: 0 auto;">
                                <tbody>
                                <tr>
                                    <td>
                                        <button id="1" col="1" row="1" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">1
                                        </button>
                                    </td>
                                    <td>
                                        <button id="2" col="2" row="1" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">2
                                        </button>
                                    </td>
                                    <td>
                                        <button id="3" col="3" row="1" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">3
                                        </button>
                                    </td>
                                    <td>
                                        <button id="4" col="4" row="1" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">4
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <button id="5" col="1" row="2" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">5
                                        </button>
                                    </td>
                                    <td>
                                        <button id="6" col="2" row="2" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">6
                                        </button>
                                    </td>
                                    <td>
                                        <button id="7" col="3" row="2" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">7
                                        </button>
                                    </td>
                                    <td>
                                        <button id="8" col="4" row="2" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">8
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <button id="9" col="1" row="3" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">9
                                        </button>
                                    </td>
                                    <td>
                                        <button id="10" col="2" row="3" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">10
                                        </button>
                                    </td>
                                    <td>
                                        <button id="11" col="3" row="3" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">11
                                        </button>
                                    </td>
                                    <td>
                                        <button id="12" col="4" row="3" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">12
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <button id="13" col="1" row="4" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">13
                                        </button>
                                    </td>
                                    <td>
                                        <button id="14" col="2" row="4" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">14
                                        </button>
                                    </td>
                                    <td>
                                        <button id="15" col="3" row="4" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">15
                                        </button>
                                    </td>
                                    <td>
                                        <button id="16" col="4" row="4" type="button"
                                                style="width:200px; height:200px;font-size : 40px; "
                                                onclick="myFunction(this)" class="bg-info rounded text-dark">16
                                        </button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>

                            <script>
                                function startGame() {

                                    for (var a = [], i = 0; i <= 16; ++i) a[i] = i;

                                    function shuffle(array) {
                                        var tmp, current, top = array.length;
                                        if (top) while (--top) {
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
                                    }

                                    clicks += 1;
                                    document.getElementById("clicks").innerHTML = clicks;

                                    for (i = 1; i <= 16; i++) {
                                        console.log(document.getElementById(i).innerHTML == i);
                                        ;
                                    }

                                }
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>

<footer class="footer bg-dark text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>© Copyright 2018 coffeecoding.net - All rights reserved.<br>Contact: info@coffeecoding.net<br>Warsaw PL<br><a
                href="https://www.coffeecoding.net/">Visit the homepage</a>
        </p>
    </div>
</footer>
</body>
</html>