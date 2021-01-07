$(document).ready(function(){

    //TEST IF WORKING
    console.log("READY")
  
      //GET DAY, DATE & TIME
      var d = new Date();
      //GET DAY
      var weekday = new Array(7);
          weekday[0] = "Sunday";
          weekday[1] = "Monday";
          weekday[2] = "Tuesday";
          weekday[3] = "Wednesday";
          weekday[4] = "Thursday";
          weekday[5] = "Friday";
          weekday[6] = "Saturday";
      var day = weekday[d.getDay()]
      //GET DATE
      var date = ((d.getDate() > 9) ? d.getDate() : ('0' + d.getDate())) + '/' + ((d.getMonth() > 8) ? (d.getMonth() + 1) : ('0' + (d.getMonth() + 1))) + '/' + d.getFullYear();
      //GET TIME
      var time = ((d.getHours() > 9) ? d.getHours() : ('0' + d.getHours())) + ":" + ((d.getMinutes() > 9) ? d.getMinutes() : ('0' + d.getMinutes()))

    clockUpdate();
    setInterval(clockUpdate, 1000);

    function clockUpdate() {
        var date = new Date();
        function addZero(x) {
            if (x < 10) {
                return x = '0' + x;
            } else {
                return x;
            }
        }

        function twelveHour(x) {
            if (x > 12) {
                return x = x - 12;
            } else if (x == 0) {
                return x = 12;
            } else {
                return x;
            }
        }

        var h = addZero(twelveHour(date.getHours())),
            m = addZero(date.getMinutes()),
            time = (h + ':' + m);

        $('#time').html(time);
    };
    console.log(day)
    console.log(date);
    console.log(time);

    $('#day').html(day);
    $('#date').html(date);
  
    //BUTTON
    var q = $('#q_btn');

    q.click(function () {
        
        var b = $('.switch-ball'),
            s = $('.switch'),
            qs = $('#queue_status');

        if($(this).hasClass('q-off')){
            b.animate({ right: "0px" }, 200);
            s.css("background-color", "#25D366", 200);
            q.removeClass('q-off');
            //qs.children('i').removeClass('fa-times').addClass('fa-check');
            qs.css({"background-color":"#25D366","color":"#fff"}, 200);
            var t = '<i class="fas fa-check"></i>in queue';
            qs.html(t);
        } else {
            b.animate({ right: "26px" }, 200);
            s.css("background-color", "rgba(0,0,0,0.2)", 200);
            q.addClass('q-off');
            //qs.children('i').removeClass('fa-check').addClass('fa-times');
            qs.css({"background-color":"rgba(0,0,0,0.2)"}, 200);
            var t = '<i class="fas fa-times"></i>out of queue';
            qs.html(t);
        }
        
    })

    //DIALPAD
    var count = 0;

    $(".digit").on('click', function () {
        var num = ($(this).clone().children().remove().end().text());
        if (count < 11) {
            $("#output").append('<span>' + num.trim() + '</span>');

            count++
        }
    });

    $('.fa-backspace').on('click', function () {
        $('#output span:last-child').remove();
        count--;
    });
  
    //APPS
    var cb = $('#chat_box'),
        x = $('.app .app-head .fa-times'),
        ch = $('#chat_head'),
        cm = $('#chat_menu'),
        o = $('#chat_open');

    x.click(function () {
        //cb.slideUp(100);
        $(this).closest('.app').slideUp(100);
    });
    o.click(function () {
        cb.slideDown(100);
    });
    ch.click(function () {
        cm.slideToggle(100);
    });
    var e = $('.fa-grin-beam'),
        eb = $('#cb_emojis');
    e.click(function () {
        eb.toggle(100);
    });
    var l = $('#lead_deets');

    //PHONE
    var d = $('#dialpad'),
        dp = $('#dial_pad');
    d.click(function () {
        dp.slideToggle(100);
    });

    //TOOLBAR
    var tb_d = $('#tb_deets'),
        tb_p = $('#tb_phone'),
        tb_c = $('#tb_chat'),
        tb_n = $('#tb_notes'),
        phone = $('#phone'),
        deets = $('#lead_deets'),
        notes = $('#notes');

    tb_p.click(function () {
        phone.slideToggle(100);
    });
    tb_d.click(function () {
        deets.slideToggle(100);
    });
    tb_c.click(function () {
        cb.slideToggle(100);
    });
    tb_n.click(function () {
        notes.slideToggle(100);
    });

    //USER MENU
    var um1 = $('#user_btn'),
        sub1 = $('#user_menu');
    um1.click(function () {
        sub1.slideToggle(100);
    });
    var um2 = $('#user_menu > ul > li'),
        pref = $('#um_pref'),
        sub2 = $('#user_menu ul li ul');
    pref.click(function () {
        sub2.slideToggle(100);
    });

    //THEMES
    var drk = $('#dark'),
        lt = $('#light');

    drk.click(function () {
        console.log('Dark Theme Applied');
        $('.light-2').removeClass('light-2').addClass('dark-2');
        $('.light').removeClass('light').addClass('dark');
    });
    lt.click(function () {
        console.log('Light Theme Applied');
        $('.dark-2').removeClass('dark-2').addClass('light-2');
        $('.dark').removeClass('dark').addClass('light');
    });

    //PRIMARY COLOUR
    var clr1 = $('#clr_1'),
        clr2 = $('#clr_2'),
        clr3 = $('#clr_3'),
        clr4 = $('#clr_4'),
        navQ = $('.nav-queue');

    clr1.click(function () {
        console.log('Color 1 selected');
        if (navQ.hasClass('q-off')) {
            navQ.addClass('q-off');
        }
        $('.active').removeClass('clr-1 clr-2 clr-3 clr-4').addClass('clr-1');
        um2.removeClass('clr-1-hov clr-2-hov clr-3-hov clr-4-hov').addClass('clr-1-hov');
        sub1.css('border-color', '#F55456');
    });
    clr2.click(function () {
        console.log('Color 2 selected');
        if (navQ.hasClass('q-off')) {
            navQ.addClass('q-off');
        }
        $('.active').removeClass('clr-1 clr-2 clr-3 clr-4').addClass('clr-2');
        um2.removeClass('clr-1-hov clr-2-hov clr-3-hov clr-4-hov').addClass('clr-2-hov');
        sub1.css('border-color', '#27ae60');
    });
    clr3.click(function () {
        console.log('Color 3 selected');
        if (navQ.hasClass('q-off')) {
            navQ.addClass('q-off');
        }
        $('.active').removeClass('clr-1 clr-2 clr-3 clr-4').addClass('clr-3');
        um2.removeClass('clr-1-hov clr-2-hov clr-3-hov clr-4-hov').addClass('clr-3-hov');
        sub1.css('border-color', '#008084');
    });
    clr4.click(function () {
        console.log('Color 4 selected');
        if (navQ.hasClass('q-off')) {
            navQ.addClass('q-off');
        }
        $('.active').removeClass('clr-1 clr-2 clr-3 clr-4').addClass('clr-4');
        um2.removeClass('clr-1-hov clr-2-hov clr-3-hov clr-4-hov').addClass('clr-4-hov');
        sub1.css('border-color', '#8e44ad');
    });

    //CALENDAR
    var cal = $("#cal_wrap");
    $(function () {
        cal.simpleCalendar({

            // displays events
            displayEvent: true,

            // event dates
            events: [
              // generate new event after tomorrow for one hour
              {
                  startDate: new Date(new Date().setHours(new Date().getHours() + 24)).toDateString(),
                  endDate: new Date(new Date().setHours(new Date().getHours() + 25)).toISOString(),
                  summary: 'Call Back with Mr. Ginger @ 2pm'
              },
              // generate new event for yesterday at noon
              {
                  startDate: new Date(new Date().setHours(new Date().getHours() - new Date().getHours() - 12, 0)).toISOString(),
                  endDate: new Date(new Date().setHours(new Date().getHours() - new Date().getHours() - 11)).getTime(),
                  summary: 'Follow Up with Ms. Redhead re. sale.'
              },
              // generate new event for the last two days
              {
                  startDate: new Date(new Date().setHours(new Date().getHours() - 48)).toISOString(),
                  endDate: new Date(new Date().setHours(new Date().getHours() - 24)).getTime(),
                  summary: 'Get birthday present for Old Guy'
              }
            ],

            // disable showing event details
            disableEventDetails: false,

            // disable showing empty date details
            disableEmptyDetails: false

        });
    });
    var dt = $('.date-time');
    dt.click(function (e) {
        console.log(e);
        cal.slideToggle(100);
    });

    var dhead = $('.deets-head span');

    dhead.click(function () {
        if ($(this).hasClass('deets-active')) {
            //
        } else {
            dhead.removeClass('deets-active');
            $(this).addClass('deets-active');
        }
    });

});

