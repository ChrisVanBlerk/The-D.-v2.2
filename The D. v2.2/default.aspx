<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="The_D.v2._2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>The D. V.2.0</title>
    <link rel="stylesheet" href="content/css/simple-calendar.css" />
	<link rel="stylesheet" type="text/css" href="content/css/style.css" />
	<link rel="stylesheet" type="text/css" href="content/css/all.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body class="dark">
    <form id="form1" runat="server">
    <div class="main-container">
            <div class="main-header dark-2">
                <div class="head-logo">
                    <img src="content/img/logo.png"/>
                </div>
                <div class="head-search">
                    <input type="text" class="dark" placeholder="Find people, document, and more.."/>
                    <i class="fas fa-search"></i>
                </div>
                <div class="head-stats">
                    <div class="stats-time">
                        <span id="time">13:45</span>
                        <span id="time_clock">PM</span>
                    </div>
                    <div class="stats-date">
                        <div class="date-time">
                            <span id="date">14/12/2020</span>
                            <span id="day">Monday</span>
                            <i class="fas fa-arrow-down"></i>
                        </div>
                        <div id="cal_wrap" class="dark-2"></div>
                    </div>
                    <div class="stats-status">
                        <span id="queue_status"><i class="fas fa-times"></i>out of queue</span>
                        <span id="call_status"><i class="fas fa-phone-volume"></i>on call</span>
                    </div>
                </div>
                <div class="head-user">
                    <span id="user_img">
                        <img src="content/img/avatars/av-m-1.png" />
                    </span>
                    <span id="user_name">Tom Riddle
                        <i id="user_btn"class="fas fa-sort-down"></i>
                    </span>
                    <div id="user_menu">
                        <ul>
                            <li>My Activty</li>
                            <li id="um_pref">Preferences
                                <ul>
                                    <li>Theme
                                        <span>
                                            <span id="dark">Dark</span>
                                            <span id="light">Light</span>
                                        </span>
                                    </li>
                                    <li>Primary Colours
                                        <span>
                                            <span id="clr_1" class="clr-1 clrs">1</span>
                                            <span id="clr_2" class="clr-2 clrs">2</span>
                                            <span id="clr_3" class="clr-3 clrs">3</span>
                                            <span id="clr_4" class="clr-4 clrs">4</span>
                                        </span>
                                    </li>
                                </ul>
                            </li>
                            <li>Option</li>
                            <li>Option</li>
                            <li>Log out</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="nav dark-2">
                <ul>
                    <li><i class="fas fa-user"></i>Preferences</li>
                    <li id="q_btn" class="nav-queue active q-off clr-1"><i class="fas fa-address-card"></i>Queue
                        <span class="switch"><span class="switch-ball"></span></span>
                    </li>
                    <li><i class="fas fa-tachometer-alt"></i>Monitor</li>
                    <li><i class="fas fa-cogs"></i>Maintain</li>
                    <li><i class="fas fa-chart-bar"></i>Reports</li>
                    <li><i class="fas fa-wrench"></i>Developer</li>
                </ul>
            </div>
            <div class="chat dark-2">
                <div class="chat-head effect" id="chat_head">
                    <i class="far fa-comments"></i>
                    <i class="fas fa-arrow-down"></i>
                    <div id="chat_menu">
                        <ul>
                            <li id="chat_open">Open Chat</li>
                            <li id="chat_createGroup">Create Group Chat</li>
                            <li id="chat_search">Search for User</li>
                        </ul>
                    </div>
                </div>
                <div class="chat-body">
                    <div class="chatter avail"><p class="effect dark-2">Susan Soap<span>Online</span></p><img src="content/img/avatars/av-f-1.png"/></div>
                    <div class="chatter avail"><p class="effect dark-2">Bob Hart<span>Online</span></p><img src="content/img/avatars/av-m-1.png"/></div>
                    <div class="chatter away"><p class="effect dark-2">Karen Hatt<span>Away</span></p><img src="content/img/avatars/av-f-2.png"/></div>
                    <div class="chatter offline"><p class="effect dark-2">Brad Ginger<span>Offline</span></p><img src="content/img/avatars/av-m-2.png"/></div>
                    <div class="chatter avail"><p class="effect dark-2">Carol Redhead<span>Online</span></p><img src="content/img/avatars/av-f-3.png"/></div>
                    <div class="chatter away"><p class="effect dark-2">Old Guy<span>Away</span></p><img src="content/img/avatars/av-m-3.png"/></div>
                </div>
            </div>
            <div class="main-body">
                <!--TOOLBAR-->
                <div id="toolbar" class="dark-2">
                    <div>
                        <span id="tb_deets" class="dark-2"><i class="far fa-address-card"></i><p class="dark">Lead Details</p></span>
                        <span id="tb_phone" class="dark-2"><i class="fas fa-mobile-alt"></i><p class="dark">Phone</p></span>
                        <span id="tb_chat" class="dark-2"><i class="far fa-comments"></i><p class="dark">Chat</p></span>
                        <span id="tb_notes" class="dark-2"><i class="far fa-sticky-note"></i><p class="dark">Notes</p></span>
                    </div>
                </div>
                <!-- PHONE -->
                <div id="phone" class="app dark-2">
                    <div class="phone-head">
                        <img src="content/img/phone/bk-1.png" />
                        <div class="phone-pic"><img src="content/img/avatars/av-m-2.png"/></div>
                        <div class="phone-deets">
                            <span>John Doe</span>
                            <span>(Cell) 076 123 4567</span>
                            <span>Dialing</span>
                        </div>
                    </div>
                    <div class="phone-body">
                        <span><i class="fas fa-volume-up"></i></span>
                        <span><i class="fas fa-microphone-slash"></i></span>
                        <span id="dialpad"><img src="content/img/phone/dialpad.png"/></span>
                        <span><i class="fas fa-pause"></i></span>
                        <span><i class="fas fa-plus"></i></span>
                        <div id="dial_pad">
                            <div id="output"></div>
                              <div class="row">
                                <div class="digit" id="one">1</div>
                                <div class="digit" id="two">2
                                  <div class="sub">ABC</div>
                                </div>
                                <div class="digit" id="three">3
                                  <div class="sub">DEF</div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="digit" id="four">4
                                  <div class="sub">GHI</div>
                                </div>
                                <div class="digit" id="five">5
                                  <div class="sub">JKL</div>
                                </div>
                                <div class="digit">6
                                  <div class="sub">MNO</div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="digit">7
                                  <div class="sub">PQRS</div>
                                </div>
                                <div class="digit">8
                                  <div class="sub">TUV</div>
                                </div>
                                <div class="digit">9
                                  <div class="sub">WXYZ</div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="digit">*
                                </div>
                                <div class="digit">0
                                </div>
                                <div class="digit">#
                                </div>
                              </div>
                              <div class="botrow">
                                <i class="fas fa-asterisk dig" aria-hidden="true"></i>
                                <div id="call"><i class="fa fa-phone" aria-hidden="true"></i></div>
                                <i class="fas fa-backspace dig" aria-hidden="true"></i>
                              </div>
                        </div>
                    </div>
                    <div class="phone-foot dark-2">
                        <span><i class="fas fa-phone"></i></span>
                    </div>
                </div>
                <!-- CHAT -->
                <div id="chat_box" class="app dark-2">
                    <div class="app-head">
                        <h4><i class="far fa-comments"></i>Chat Box</h4>
                        <i class="fas fa-times effect"></i>
                    </div>
                    <div class="app-body chatbox-wrap">
                        <div class="chatbox-nav">
                            <input type="text" class="dark" placeholder="Search.." />
                            <ul>
                                <li class="avail">Susan Soap</li>
                                <li class="avail">Bob Hart</li>
                                <li class="away">Karen Hart</li>
                                <li class="offline">Brad Ginger</li>
                                <li class="avail chat-active">Carol Redhead</li>
                                <li class="away">Old Guy</li>
                            </ul>
                        </div>
                        <div class="chatbox-body">
                            <div class="chatbox-body-head">
                                <h5>Carol Redhead</h5>
                            </div>
                            <div class="chatbox-body-chat">
                                <div class="msg from">
                                    <i class="fas fa-sort-down"></i>
                                    <p>this is a test message</p>
                                    <div class="msg-stats">
                                        <span>12:04</span>
                                    </div>
                                </div>
                                <div class="msg to">
                                    <i class="fas fa-sort-down"></i>
                                    <p>this is a test response</p>
                                    <div class="msg-stats">
                                        <span>12:10</span>
                                        <span class="read"><i class="fas fa-check"></i><i class="fas fa-check"></i></span>
                                    </div>
                                </div>
                            </div>
                            <div class="chatbox-body-foot">
                                <div class="chatbox-btns">
                                    <i class="far fa-grin-beam"></i>
                                    <i class="fas fa-paperclip"></i>
                                    <div id="cb_emojis">
                                        <div>
                                            <span>&#128512;</span>
                                            <span>&#128513;</span>
                                            <span>&#128514;</span>
                                            <span>&#128515;</span>
                                            <span>&#128516;</span>
                                        </div>
                                        <div>
                                            <span>&#128519;</span>
                                            <span>&#128525;</span>
                                            <span>&#128526;</span>
                                            <span>&#128530;</span>
                                            <span>&#128531;</span>
                                        </div>
                                        <div>
                                            <span>&#128533;</span>
                                            <span>&#128534;</span>
                                            <span>&#128546;</span>
                                            <span>&#128552;</span>
                                            <span>&#128554;</span>
                                        </div>
                                        <div>
                                            <span>&#128557;</span>
                                            <span>&#128561;</span>
                                            <span>&#128564;</span>
                                            <span>&#128566;</span>
                                            <span>&#128567;</span>
                                        </div>
                                        <div>
                                            <span>&#128155;</span>
                                            <span>&#128154;;</span>
                                            <span>&#128153;</span>
                                            <span>&#128151;</span>
                                            <span>&#128150;</span>
                                        </div>
                                    </div>
                                </div>
                                <input type="text" class="dark" placeholder="Type a message.." />
                                <i class="fas fa-share effect"></i>
                            </div>
                        </div>
                    </div>
                </div>
                <!--LEAD APP-->
                <div id="lead_deets" class="app dark-2">
                     <div class="app-head">
                        <h4><i class="far fa-address-card"></i>Lead Deets</h4>
                        <i class="fas fa-times effect"></i>
                    </div>
                    <div class="app-body deets-wrap">
                        <div class="deets-head">
                            <span class="deets-active">Personal Details</span>
                            <span>Address Details</span>
                            <span>Income Details</span>
                            <span>Employment Details</span>
                        </div>
                        <div class="deets-body">
                            <div class="item i1"><p>Title</p><h5>Mr</h5></div>
                            <div class="item i1"><p>Initials</p><h5>JD</h5></div>
                            <div class="item i1"><p>First Name</p><h5>John</h5></div>
                            <div class="item i1"><p>Last Name</p><h5>Doe</h5></div>
                            <div class="item i1"><p>Marital Status</p><span><i class="fas fa-circle"></i>Married</span><span><i class="far fa-circle"></i>Single</span></div>
                            <div class="item i1"><p>Gender</p><span><i class="fas fa-circle"></i>Male</span><span><i class="far fa-circle"></i>Female</span></div>
                            <div class="item i1"><p>Date of Birth</p><h5>01/01/1990</h5></div>
                            <div class="item i1"><p></p></div>
                            <div class="item i2"><p>Home Language</p><h5>English</h5></div>
                            <div class="item i2"><p>ID Number</p><h5>9001015179123</h5></div>
                            <div class="item i2"><p>Cell Number</p><h5>076 123 4567</h5></div>
                            <div class="item i2"><p>Home Number</p><h5>021 132 4567</h5></div>
                            <div class="item i2"><p>Email Address</p><h5>john@doe.co.za</h5></div>
                            <div class="item i2"><p></p></div>
                        </div>
                    </div>
                </div>
                <!--NOTES APP-->
                <div id="notes" class="app dark-2">
                     <div class="app-head">
                        <h4><i class="far fa-sticky-note"></i>Notes</h4>
                        <i class="fas fa-times effect"></i>
                    </div>
                    <div class="notes-body">
                        <span><i class="fas fa-plus"></i></span>
                        <div class="note">
                            <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                            </p>
                        </div>
                        <div class="note">
                            <p>
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.      
                            </p>
                        </div>
                        <div class="note"><p>test</p></div>
                        <div class="note"><p>test</p></div>
                    </div>
                </div>
            </div>
        </div>
		<script src="content/js/script.js"></script>
        <script src="content/js/jquery.simple-calendar.js"></script>
    </form>
</body>
</html>
