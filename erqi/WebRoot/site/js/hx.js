var hexieconfig = null;
function browserRedirect() {
    var sUserAgent = navigator.userAgent.toLowerCase();
    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
    var bIsAndroid = sUserAgent.match(/android/i) == "android";
    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";

    if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
        //if (hexieconfig != undefined && hexieconfig != null && hexieconfig.ismobile == true) return;
        if (hexieconfig == undefined | hexieconfig == null)
            window.location.href = "/sitephone/index.html";
    } else {
        if (hexieconfig != undefined && hexieconfig != null)
            window.location.href = "/default.html";
    }
}
browserRedirect();

var totaotal = 0;
function getyanzheng(p_link) {
    totaotal = 120;
    if ($("#mcp_txtshoujihao").val() == "") return;
    if ($("#mcp_txtshoujihao").val().length != 11) return;    
    var yzm = $("#mcp_txtyz").val();
    if (yzm == "") {
        alert("请输入图形验证码");
        return;
    }
    $("#hrefgetregc").attr("onclick", "");
    //发送成功后，进入计时处理.
    $.get("/site/smsend.aspx?p=" + $("#mcp_txtshoujihao").val() + "&yzm=" + yzm, function (result) {
        if (result != "success") {
            if (result != "")
                alert(result);
            $("#hrefgetregc").attr("onclick", "javascript:getyanzheng(this);");
            return;
        }
        $("#hrefgetregc").html(totaotal + "秒后失效");
        setTimeout("showyanzhengtime()", 1000);
        totaotal = totaotal - 1;
        $("#hrefgetregc").attr("onclick", "");
    });
}
function showyanzhengtime() {
    if (totaotal <= 1) {
        $("#hrefgetregc").html("重新发送短信验证码");
        $("#hrefgetregc").attr("onclick", "javascript:getyanzheng(this);");
        return;
    }
    //$("#hrefgetregc").html("60秒后失效 " + totaotal + "秒");
    $("#hrefgetregc").attr("onclick", "");
    $("#hrefgetregc").html(totaotal + "秒后失效 ");
    setTimeout("showyanzhengtime()", 1000);
    totaotal = totaotal - 1;
}

function getyanzhengpw(p_link) {
    totaotal = 120;
    if ($("#mcp_txtshoujihao").val() == "") return;
    if ($("#mcp_txtshoujihao").val().length != 11) return;    
    var yzm = $("#mcp_txtyz").val();
    if (yzm == "") { alert("请输入图形验证码"); return; }
    $("#hrefgetregc").attr("onclick", "");
    //发送成功后，进入计时处理.
    $.get("/site/smsend.aspx?t=2&p=" + $("#mcp_txtshoujihao").val() + "&yzm=" + yzm, function (result) {
        if (result != "success") {
            if (result != "") {
                alert(result);
            }
            $("#hrefgetregc").attr("onclcik", "javascript:getyanzhengpw(this);");
            return;
        }
        $("#hrefgetregc").html(totaotal + "秒后失效");
        setTimeout("showyanzhengtimepw()", 1000);
        totaotal = totaotal - 1;
        $("#hrefgetregc").attr("onclcik", "");
    });
}
function showyanzhengtimepw() {
    if (totaotal <= 1) {
        $("#hrefgetregc").html("重新发送短信验证码");
        $("#hrefgetregc").attr("onclcik", "javascript:getyanzhengpw(this);");
        return;
    }
    $("#hrefgetregc").attr("onclcik", "");
    //$("#hrefgetregc").html("60秒后失效 " + totaotal + "秒");
    $("#hrefgetregc").html(totaotal + "秒后失效 ");
    setTimeout("showyanzhengtimepw()", 1000);
    totaotal = totaotal - 1;
}



var czfphone = "";
function getyanzhengzf(p_phone, p_link) {
    totaotal = 120;
    czfphone = p_phone;
    var yzm = $("#mcp_txtyz").val();
    if (yzm == "") {
        alert("请输入图形验证码");
        return;
    }
    $("#hrefgetregc").attr("onclick", "");
    //发送成功后，进入计时处理.
    $.get("/site/smsend.aspx?t=3&p=" + p_phone + "&yzm=" + yzm, function (result) {
        if (result != "success") {
            if (result != "") {                
                alert(result);
            }
            $("#hrefgetregc").attr("onclick", "javascript:getyanzhengzf('"+ czfphone + "',this);");
            return;
        }
        $("#hrefgetregc").html(totaotal + "秒后失效");
        setTimeout("showyanzhengtimezf()", 1000);
        totaotal = totaotal - 1;
        $("#hrefgetregc").attr("onclick", "");
    });
}
function showyanzhengtimezf() {
    if (totaotal <= 1) {
        $("#hrefgetregc").html("重新发送短信验证码");
        $("#hrefgetregc").attr("onclick", "javascript:getyanzheng('" + czfphone + "',this);");
        return;
    }
    //$("#hrefgetregc").html("60秒后失效 " + totaotal + "秒");
    $("#hrefgetregc").attr("onclick", "");
    $("#hrefgetregc").html(totaotal + "秒后失效 ");
    setTimeout("showyanzhengtime()", 1000);
    totaotal = totaotal - 1;
}

