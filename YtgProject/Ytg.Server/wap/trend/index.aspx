﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Ytg.ServerWeb.wap.trend.index" %>
<html lang="en"><head>
    <style>
        body,#wrapper_1{-webkit-overflow-scrolling:touch;overflow-scrolling:touch;}/*解决苹果滚动条卡顿的问题*/
        #wrapper_1{overflow-y:visible!important;}
    </style>
    <style>
        span.cur{position: relative; z-index: 3;}
    </style>
    
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport">
    <meta name="format-detection" content="telphone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <link rel="stylesheet" href="/wap/statics/css/global.css?ver=4.4" type="text/css">
     <script src="/wap/statics/js/jquery.min.js?ver=4.3"></script>
    <script src="../statics/js/lazyload-min.js" type="text/javascript"></script>

<%--    <script src="/wap/statics/js/iscro-lot.js?ver=4.4"></script>--%>
<script>
    try{
        isLogin = false;
        }catch(e){console.log(e);}
</script>
    <script>
        var _padding = function () {
            try {
                var l = $("body>.header").height();
                if ($("body>.lott-menu").length > 0) {
                    l += $("body>.lott-menu").height();
                }
                $("#wrapper_1").css("paddingTop", l + "px");
            } catch (e) { }
            try {
                if ($("body>.menu").length > 0) {
                    var l = $("body>.menu").height();
                }
                $("#wrapper_1").css("paddingBottom", l + "px");
            } catch (e) { }
        };

        function loadComplete() {
            _padding();
            //checkItem(2);
            //getResultList();
        }

        function loadscript() {

            LazyLoad.loadOnce([
             '/wap/statics/js/iscro-lot.js?ver=4.4'
            ], loadComplete);
        }
        setTimeout(loadscript, 10);
    </script>    <script>
        function loaded(){}//空实现
        //document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false); //uc浏览器滑动
    </script>
    <title>走势图</title>
<script>
    //对象转数组
    function obj2arr(obj) {
        var arr = [];
        for(var item in obj){
            arr.push(obj[item]);
        }
        return arr;
    }
</script>
<script>
    function drawLine() {
        var cvList = $('div#chartsDiv canvas');
        for (var i = 0; i < cvList.length; i++) {
            var tmpCv = cvList[i];
            var width = $(tmpCv).width();
            var height = $(tmpCv).height();
            var direc = $(tmpCv).data('direc');
            width = (width == undefined) ? 0 : parseInt(width);
            height = (height == undefined) ? 0 : parseInt(height);
            var context=tmpCv.getContext('2d');
            context.beginPath();
            if (direc == 1) {
                context.moveTo(0, 0);
                context.lineTo(width, height);
            } else {
                context.moveTo(0, height);
                context.lineTo(width, 0);
            }
            context.strokeStyle = '#FF0000';
            context.stroke();
        }
    }
</script>
</head>
<body class="login-bg" onload="loaded()">
<div class="header">
    <div class="headerTop">
        <div class="ui-toolbar-left">
            <button id="reveal-left" type="button">reveal</button>
        </div>
        <h1 class="ui-betting-title">
            <div class="bett-top-box">
                    <div class="bett-play">玩法</div>
                    <div class="bett-tit"><span id="msg_type">基本走势</span><!--<i class="bett-attr"></i>--></div>
            </div>
        </h1>
        <div class="ui-bett-right trend-icon">
            <a class="bett-heads" href="javascript:;"></a>
        </div>
    </div>
</div>

<div id="wrapper_1" class="scorllmain-content scorllmain-Beet nobottom_bar" style="padding-top: 44px; padding-bottom: 44px;">
<div class="sub_ScorllCont">
<div id="trend_pos" class="trend-tit"><span data-pos="1" class="on">一位</span><span data-pos="2">二位</span><span data-pos="3">三位</span><span data-pos="4">四位</span><span data-pos="5">五位</span><span data-pos="6">六位</span><span data-pos="7">七位</span><span data-pos="8">八位</span><span data-pos="9">九位</span><span data-pos="10">十位</span></div>
<div id="chartsDiv" class="trend-content">
<table id="trend_table" cellpadding="0" cellspacing="0"><tbody><tr class="trend-titbg"></table>
<canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:100px;top:211px;" data-half="10" data-direc="-1" width="108" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:100px;top:248px;" data-half="10" data-direc="1" width="1" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:100px;top:285px;" data-half="10" data-direc="1" width="72" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:172px;top:322px;" data-half="10" data-direc="1" width="221" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:209px;top:359px;" data-half="10" data-direc="-1" width="185" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:209px;top:396px;" data-half="10" data-direc="1" width="37" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:209px;top:433px;" data-half="10" data-direc="-1" width="37" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:209px;top:470px;" data-half="10" data-direc="1" width="74" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:100px;top:507px;" data-half="10" data-direc="-1" width="182" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:100px;top:544px;" data-half="10" data-direc="1" width="72" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:172px;top:581px;" data-half="10" data-direc="1" width="221" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:246px;top:618px;" data-half="10" data-direc="-1" width="148" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:136px;top:655px;" data-half="10" data-direc="-1" width="109" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:136px;top:692px;" data-half="10" data-direc="1" width="72" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:209px;top:729px;" data-half="10" data-direc="1" width="111" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:283px;top:766px;" data-half="10" data-direc="-1" width="37" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:283px;top:803px;" data-half="10" data-direc="1" width="111" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:320px;top:840px;" data-half="10" data-direc="-1" width="74" height="37"></canvas><canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; border:0px solid;left:320px;top:877px;" data-half="10" data-direc="1" width="37" height="37"></canvas></div>
</div>
</div>
<div class="trend-foot">
    <div class="trend-foot-txt">
        <span id="game_name" style="align: center; color:#999;">北京PK拾</span>
        <!--<span class="red"></span>-->
    </div>
    <button class="trend-add">去投一注</button>
</div>
<!-- 直选tips -->
<div class="beet-tips" hidden="" style="display: none;">
    <!--<div class="beet-tips-tit"><span>普通玩法</span></div>-->
    <div class="clear"></div>
    <ul>
        <li><a class="beet-active" href="javascript:;">走势图</a></li>
    </ul>
</div>
<!-- 走势图彩种tips -->
<div class="trend-tips" hidden="" style="display: none;">
    <div class="trtip-tit"><i class="tr-icon"></i>选择彩种</div>
        <ul>
            <li class="game_li_1"  data-gid="1" data-enable="0">重庆时时彩</li>
            <li class="game_li_4" data-gid="4" data-enable="0">新疆时时彩</li>
            <li class="game_li_5" data-gid="5" data-enable="0">天津时时彩</li>
            <li class="game_li_6" data-gid="6" data-enable="0">广东11选5</li>
            <li class="game_li_7" data-gid="7" data-enable="0">福彩3d</li>
            <li class="game_li_9" data-gid="9" data-enable="0">排列35</li>
            <li class="game_li_19" data-gid="19" data-enable="0">山东11选5</li>
            <li class="game_li_20" data-gid="20" data-enable="0">江西11选5</li>
            <li class="game_li_22" data-gid="22" data-enable="1">江苏快3</li>
            <li class="game_li_18" data-gid="18" data-enable="0">五分11选5</li>
            <li class="game_li_13" data-gid="13" data-enable="0">埃及分分彩</li>
            <li class="game_li_14" data-gid="14" data-enable="0">河内时时彩</li>
            <li class="game_li_23" data-gid="23" data-enable="0">印尼时时彩</li>
            <li class="game_li_24" data-gid="24" data-enable="0">埃及二分彩</li>
            <li class="game_li_25" data-gid="25" data-enable="0">埃及五分彩</li>
            <li class="game_li_26" data-gid="26" data-enable="0">北京PK10</li>
    
    </ul>
</div>
<!--<div class="tips-bg" hidden=""></div>-->

<style>
    .center {text-align: center}
</style>

<div class="beet-odds-tips round" id="tip_pop" style="display: none; height:130px;">
    <div class="beet-odds-info f100">
        <div class="beet-money" id="tip_pop_content" style="font-size: 120%; margin-top: 15px; color:#666;">
            号码选择有误
        </div>
    </div>
    <div class="beet-odds-info text-center">
        <button class="btn-que" style="width: 100%;" onclick="tipOk()"><span>确定</span></button>
    </div>
</div>

<div id="tip_bg" class="tips-bg" style="display: none;"></div>

<script>
    var func;
    function tipOk() {
        $('#tip_pop').hide();
        $('#tip_bg').hide();
        if (/系统维护/g.test($('div#tip_pop_content').html())) {
            location.href = '/index/index.html';
            return;
        }
        if (typeof(func) == "function"){
            func();
            func = "";
        }else{
            if (typeof(doTipOk) == "function") {
                doTipOk();
            }
        }
    }
    function msgAlert (msg,funcParm) {
        $('div#tip_pop_content').html(msg);
        $('div#tip_pop').show();
        $('div#tip_bg').show();
        func = (funcParm == ""||typeof(funcParm) != "function")?'':funcParm;
    }
</script>

<script>
    var trendGid = 1;
    /*$('.ui-betting-title').click(function(){
        $('.beet-tips').toggle();
    });*/

    $('.bett-top').click(function(event){
        event.stopPropagation();
    });
    $('.trend-icon').click(function(){
        $('.trend-tips').show();
        $('.tips-bg').show();
    });

    $('.tips-bg').click(function(){
        $('.trend-tips').hide();
        $('.tips-bg').hide();
    })
    $('div.trend-tips li').click(function(){
        $('div.trend-tips li').removeClass('trend-on');
        $(this).addClass('trend-on');
        $('.trend-tips').hide();
        $('.tips-bg').hide();
        trendGid = $(this).data('gid');
     
        showPosTitle();
        $('div.trend-tit span').bind('touchend', function () {
            event.preventDefault();
            $('div.trend-tit span').removeClass('on');
            $(this).addClass('on');
            trendPos = $(this).data('pos');
            getTrendData();
        });
        //需要切换菜单，位置信息选项
        getTrendData();
    });

    //$(document).on('click', 'div.trend-tit span', function() {
    /*$('div.trend-tit span').bind('touchend', function () {
        event.preventDefault();
        $('div.trend-tit span').removeClass('on');
        $(this).addClass('on');
        trendPos = $(this).data('pos');
        getTrendData();
    });*/

    function showPosTitle() {
        var gameName = {
            1: '重庆时时彩|4',
            2: '江西时时彩|4',
            //3: '黑龙江时时彩|4',
            4: '新疆时时彩|4',
            5: '天津时时彩|4',
            6: '广东11选5|12',
            7: '福彩3d|1',
            9: '排列35|1',
            19: '山东11选5|12',
            20: '江西11选5|12',
            22: '江苏快3|22',
            18: '五分11选5|12',
            13: '埃及分分彩|4',
            14: '河内时时彩|4',
            23: '印尼时时彩|4',
            24: '埃及二分彩|4',
            25: '埃及五分彩|4',
            26: '北京PK10|9'
        };
       
        //显示游戏名
        var gNameArr = gameName[trendGid].split('|');
        $('span#game_name').text(gNameArr[0]);
        if (gNameArr[1] == undefined) {
            return;
        }
        var gamePosArr = new Array();
        gamePosArr[1] = {0:'0|1|2|3|4|5|6|7|8|9',1:'百',2:'十',3:'个'};
        gamePosArr[4] = {0:'0|1|2|3|4|5|6|7|8|9',1:'万',2:'千',3:'百',4:'十',5:'个'};
        gamePosArr[9] = {0:'01|02|03|04|05|06|07|08|09|10',1:'一位',2:'二位',3:'三位',4:'四位',5:'五位',6:'六位',7:'七位',8:'八位',9:'九位',10:'十位'};
        gamePosArr[10] = {0:'1|2|3|4|5|6',1:'百',2:'十',3:'个'};
        gamePosArr[12] = {0:'01|02|03|04|05|06|07|08|09|10|11',1:'第一位',2:'第二位',3:'第三位',4:'第四位',5:'第五位'};
        
        var posArr = obj2arr(gamePosArr[gNameArr[1]]);
        noStr = posArr[0];
        //alert('位置信息:'+posArr.join('&'));
        var posHtml = '';
        for (var i = 1; i < posArr.length; i++) {
            var tmpOn = (i == 1) ? 'class="on"' : '';
            posHtml += '<span data-pos="'+i+'" '+ tmpOn +'>'+posArr[i]+'</span>';
        }
        //alert('位置选项:'+posHtml);
        trendPos = 1;//默认1
        $('div#trend_pos').html(posHtml);
    }
</script>


<script>
  gameOpArr = {
        1: 'cqssc',
        2: 'JXSSC',
        3: 'hljssc',
        4: 'xjssc',
        5: 'tjssc',
        6: 'gd11x5',
        7: 'fc3d',
        8: 'shssl',
        9: 'pl5',
        10: 'bjkl8',
        11: 'yifencai',
        12: 'erfencai',
        13: 'FFC1',
        14: 'VIFFC5',
        15: 'krkeno',
        17: 'sf11x5',
        18: 'wf11x5',
        19: 'sd11x5',
        20: 'jx11x5',
        21: 'hk6',
        22: 'jsk3',
        23: 'INFFC5',
        24: 'FFC2',
        25: 'FFC5',
        26: 'bjpk10'
    };
    $('button.trend-add').click(function() {
        if ($('li.game_li_'+trendGid).data('enable') == 1) {
            msgAlert('该彩种正在维护！');
            return;
        }
        ///wap/GameCenter.aspx?ltcode=cqssc&ltid=1&ln=重庆时时彩&ico=lottery_ssc.png
       //  location.href = '/bet/' + gameOpArr[trendGid] + '.html';
        location.href = '/wap/GameCenter.aspx?ltcode=' + gameOpArr[trendGid] + '&ltid=' + trendGid + '&ln=重庆时时彩&ico=lottery_ssc.png';
    });
</script>

<script>
    $(function() {
        $('li.game_li_'+trendGid).click();
        //getTrendData();
    });
</script>

<script>
 
    trendCount = 20;
    trendPos = 1;
    noStr = '0|1|2|3|4|5|6|7|8|9';

    function getTrendData() {
        if (trendGid == null || trendGid == undefined || trendGid == '') {
            trendGid = 1;
        }
        $.ajax({
            url: '/Page/Lott/lottery.aspx?action=top20trend',
            type: 'POST',
            dataType: 'json',
            data: {
                'gid': trendGid,
                'count' : trendCount,
                'pos' : trendPos
            },
            timeout: 30000,
            success: function (data) {
                if (data.Code !=0) {
                    msgAlert(data.Desc);
                    return false;
                }
                //福体彩
                var headHtml = '';
                var tbHtml = '';
                var noArr = noStr.split('|');
                var noLen = noArr.length;
                headHtml = '<tr class="trend-titbg">'
                    + '<th style="width: 8%">期数</th>';
                for (var i = 0; i < noLen; i++) {
                    headHtml += '<th>'+ noArr[i] +'</th>';
                }
                headHtml += '</tr>';
                data = data.Data;
                for (var i = 0; i < data.RecordCount; i++) {
                    var tmpOpenNum = data.Records[i].iOpenNum;
                    var clsBg = (i % 2 == 1) ? 'class="trend-bg"' : '';
                    tbHtml += '<tr ' + clsBg + '>';
                    tbHtml += '<td>'+data.Records[i].sGamePeriod+'</td>';
                    if (data.Records[i].iYL0 != undefined) {
                        tbHtml += '<td>'+((tmpOpenNum == 0) ? '<span class="cur">':'')+data.Records[i].iYL0+((tmpOpenNum == 0) ? '</span>':'')+'</td>';
                    }
                    tbHtml += '<td>'+((tmpOpenNum == 1) ? '<span class="cur">1':data.Records[i].iYL1)+((tmpOpenNum == 1) ? '</span>':'')+'</td>';
                    tbHtml += '<td>'+((tmpOpenNum == 2) ? '<span class="cur">2':data.Records[i].iYL2)+((tmpOpenNum == 2) ? '</span>':'')+'</td>';
                    tbHtml += '<td>'+((tmpOpenNum == 3) ? '<span class="cur">3':data.Records[i].iYL3)+((tmpOpenNum == 3) ? '</span>':'')+'</td>';
                    tbHtml += '<td>'+((tmpOpenNum == 4) ? '<span class="cur">4':data.Records[i].iYL4)+((tmpOpenNum == 4) ? '</span>':'')+'</td>';
                    tbHtml += '<td>'+((tmpOpenNum == 5) ? '<span class="cur">5':data.Records[i].iYL5)+((tmpOpenNum == 5) ? '</span>':'')+'</td>';
                    tbHtml += '<td>'+((tmpOpenNum == 6) ? '<span class="cur">6':data.Records[i].iYL6)+((tmpOpenNum == 6) ? '</span>':'')+'</td>';
                    if (data.Records[i].iYL7 != undefined) {
                        tbHtml += '<td>'+((tmpOpenNum == 7) ? '<span class="cur">7':data.Records[i].iYL7)+((tmpOpenNum == 7) ? '</span>':'')+'</td>';
                    }
                    if (data.Records[i].iYL8 != undefined) {
                        tbHtml += '<td>'+((tmpOpenNum == 8) ? '<span class="cur">8':data.Records[i].iYL8)+((tmpOpenNum == 8) ? '</span>':'')+'</td>';
                    }
                    if (data.Records[i].iYL9 != undefined) {
                        tbHtml += '<td>'+((tmpOpenNum == 9) ? '<span class="cur">9':data.Records[i].iYL9)+((tmpOpenNum == 9) ? '</span>':'')+'</td>';
                    }
                    if (data.Records[i].iYL10 != undefined) {
                        tbHtml += '<td>'+((tmpOpenNum == 10) ? '<span class="cur">10':data.Records[i].iYL10)+((tmpOpenNum == 10) ? '</span>':'')+'</td>';
                    }
                    if (data.Records[i].iYL11 != undefined) {
                        tbHtml += '<td>'+((tmpOpenNum == 11) ? '<span class="cur">11':data.Records[i].iYL11)+((tmpOpenNum == 11) ? '</span>':'')+'</td>';
                    }
                    tbHtml += '</tr>';
                }
                //平均、最大遗漏
                var ylHtml = '<tr class="trend-bg-average">'
                    + '<td>平均遗漏</td>';
                if (data.iYLAvg0 != undefined) {
                    ylHtml += '<td>'+data.iYLAvg0+'</td>';
                }
                if (data.iYLAvg1 != undefined) {
                    ylHtml += '<td>'+data.iYLAvg1+'</td>';
                }
                ylHtml += '<td>'+data.iYLAvg2+'</td>';
                ylHtml += '<td>'+data.iYLAvg3+'</td>';
                ylHtml += '<td>'+data.iYLAvg4+'</td>';
                ylHtml += '<td>'+data.iYLAvg5+'</td>';
                ylHtml += '<td>'+data.iYLAvg6+'</td>';
                if (data.iYLAvg7 != undefined) {
                    ylHtml += '<td>'+data.iYLAvg7+'</td>';
                }
                if (data.iYLAvg8 != undefined) {
                    ylHtml += '<td>'+data.iYLAvg8+'</td>';
                }
                if (data.iYLAvg9 != undefined) {
                    ylHtml += '<td>'+data.iYLAvg9+'</td>';
                }
                if (data.iYLAvg10 != undefined) {
                    ylHtml += '<td>'+data.iYLAvg10+'</td>';
                }
                if (data.iYLAvg11 != undefined) {
                    ylHtml += '<td>'+data.iYLAvg11+'</td>';
                }
                ylHtml += '</tr>';
                ylHtml += '<tr>';
                ylHtml += '<td>最大遗漏</td>';
                if (data.iYLMax0 != undefined) {
                    ylHtml += '<td>'+data.iYLMax0+'</td>';
                }
                if (data.iYLMax1 != undefined) {
                    ylHtml += '<td>'+data.iYLMax1+'</td>';
                }
                ylHtml += '<td>'+data.iYLMax2+'</td>';
                ylHtml += '<td>'+data.iYLMax3+'</td>';
                ylHtml += '<td>'+data.iYLMax4+'</td>';
                ylHtml += '<td>'+data.iYLMax5+'</td>';
                ylHtml += '<td>'+data.iYLMax6+'</td>';
                if (data.iYLMax7 != undefined) {
                    ylHtml += '<td>'+data.iYLMax7+'</td>';
                }
                if (data.iYLMax8 != undefined) {
                    ylHtml += '<td>'+data.iYLMax8+'</td>';
                }
                if (data.iYLMax9 != undefined) {
                    ylHtml += '<td>'+data.iYLMax9+'</td>';
                }
                if (data.iYLMax10 != undefined) {
                    ylHtml += '<td>'+data.iYLMax10+'</td>';
                }
                if (data.iYLMax11 != undefined) {
                    ylHtml += '<td>'+data.iYLMax11+'</td>';
                }
                ylHtml += '</tr>';
                //清楚划线
                $('div#chartsDiv canvas').remove();
                $('#trend_table').html(headHtml + tbHtml + ylHtml);
                //return;
                //先获取所有开奖号码对象，然后把每两个对象组成一个canvas
                var cvList = $('td span.cur');
                var cvHtml = '';
                for (var i = 0; i < cvList.length; i++) {
                    //alert('v:'+$(cvList[i]).width()+':'+$(cvList[i]).height());
                    if (i == 0) {
                        continue;
                    }
                    var tmpBallHalf = parseInt($(cvList[i]).width()/2);
                    var tmpHeight = $(cvList[i]).position().top - $(cvList[i-1]).position().top;
                    tmpHeight = Math.abs(parseInt(tmpHeight));
                    var tmpWidth = $(cvList[i]).position().left - $(cvList[i-1]).position().left;
                    var direc = (tmpWidth < 0) ? -1 : 1;
                    tmpWidth = Math.abs(parseInt(tmpWidth));
                    tmpWidth = (tmpWidth == 0) ? 1 : tmpWidth;
                    //left,top
                    var tmpTop = Math.min($(cvList[i]).position().top, $(cvList[i-1]).position().top);
                    var tmpLeft = Math.min($(cvList[i]).position().left, $(cvList[i-1]).position().left);
                    tmpTop = Math.abs(parseInt(tmpTop)) + parseInt(tmpBallHalf) + 10;
                    tmpLeft = Math.abs(parseInt(tmpLeft)) + parseInt(tmpBallHalf) - 1;
                    cvHtml += '<canvas class="trend-canvas" style="position:absolute; z-index:2;visibility: visible; '
                        + 'border:0px solid;left:'+tmpLeft+'px;top:'+tmpTop+'px;" data-half="'+tmpBallHalf+'" data-direc="'+direc+'" width="'+tmpWidth+'" height="'+tmpHeight+'"></canvas>';
                }
                $('div#chartsDiv').append(cvHtml);
                drawLine();
                loaded();
            }
        });
    }
</script>
</body></html>