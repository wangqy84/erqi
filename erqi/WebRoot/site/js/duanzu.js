
function showtime(p_id) {
    $("#" + p_id).show();
    var hotlist1 = "search_hotList5";
    var mendiantext = $("#getCarCityMenDian1").val();
    if (p_id == "search_form_suggest6") {
        mendiantext = $("#getCarCityMenDian2").val();
        hotlist1 = "search_hotList6";
    }

    var chenglists = $.find("#" + hotlist1 + " a");
    if (chenglists.length >= 16) {
        if (mendiantext.indexOf("机场") >= 0) {
            $(chenglists[13]).show();
            $(chenglists[14]).show();
            $(chenglists[15]).show();
        }
        else {
            $(chenglists[13]).hide();
            $(chenglists[14]).hide();
            $(chenglists[15]).hide();
        }
        if (p_id == "search_form_suggest5") {
            var d2 = new Date();
            var h1 = d2.getHours();
            var d3 = new Date($("#txtqucheriqi").val().replace("-", "/").replace("-", "/"));

            if (d2.getMonth() == d3.getMonth() && d2.getDate() == d3.getDate()) {
                for (i = 8; i <= 20; i++) {
                    if (i <= h1 + 1) {
                        $(chenglists[i - 8]).hide();
                    }
                }
            }
            else {
                for (i = 8; i <= 20; i++) {
                    $(chenglists[i - 8]).show();
                }
            }
        }

    }
}

        $("#slider-range").slider({
            range: true,
            max: 1100,
            values: [0, 1100],
            step: 100,
            stop: function (event, ui) {
                var v1 = ui.values[0];
                var v2 = ui.values[1];
                $("#lijiage a").css("display", "block");
                $("#lijiage a").html(v1 + "--" + v2 + "<b onclick=removejg(); ></b>");
                searchcxinfos();
            }
        });
        function removejg() {
            $("#lijiage a").css("display", "none");
            $("#slider-range").slider({ values: [0, 1100] });
            searchcxinfos();
        }
        function removecx(p_selid) {
            $("#cxli" + p_selid).remove();
            searchcxinfos();           
        }

        var vchexinglists = $.find(".filterList a");
        $.each(vchexinglists, function () {
            $(this).click(function () {
                var selcid = 0;
                if (this.attributes["cid"] != undefined) {
                    selcid = this.attributes["cid"].value;
                }
                var seltext = this.innerHTML;
                var htmlul = $(".selected-terms ul").html();
                if (htmlul.indexOf(seltext) >= 0) return;
                //不存在添加
                var vchexinglists = $(".selected-terms li");
                var htmlulobj = $(".selected-terms ul")
                htmlulobj.append("<li id=cxli" + selcid + " ><a  href=# cid=" + selcid + ">" + seltext + "<b onclick=removecx(" + selcid + ");></b></a></li>")
                searchcxinfos();
            });
        });

        function searchcxinfos() {
            var vmin = $("#slider-range").slider("values")[0]
            var vmax = $("#slider-range").slider("values")[1]
            if (vmax == 1100) vmax = 5000;
            var cxinglistid = $(".selected-terms li");
            var cxinglistidtext="";
            if (cxinglistid.length > 2) {
                $.each(cxinglistid, function (i) {
                    if (i >= 2) {
                        if (cxinglistidtext != "") cxinglistidtext += ",";
                        cxinglistidtext += cxinglistid[i].id.substr(4);
                    }
                });
            }
            //alert(cxinglistidtext+";"+vmin+";"+vmax);
            var qcmdid = $("#txtqcid3").val();
            var qccsid = $("#txtqcid").val();
            //alert($("#txtqucheriqi").val() + " " + $("#txtqucheshijian").val() + ":00");
            //alert($("#txthuancheriqi").val() + " " + $("#txthuancheshijian").val() + ":00");
            var qcsj = escape($("#txtqucheriqi").val() + " " + $("#txtqucheshijian").val() + ":00");
            var hcsj = escape($("#txthuancheriqi").val() + " " + $("#txthuancheshijian").val() + ":00");

            $("#searchcars").html("<center><div style='padding-top:50px; padding:50px;color:#f60; font-weight:bold; font-size:20px;'>正在为你努力加载中...<br /><img src='/resources/images/loading32.gif' /></div></center>");

            $.get("/site/datas.aspx?t=4&min=" + vmin + "&max=" + vmax + "&cid=" + escape(cxinglistidtext) + "&qccs=" + qccsid + "&qcmdid=" + qcmdid + "&qcsj=" + qcsj + "&hcsj=" + hcsj, function (result) {
                var searchcarul = $("#searchcars");
                searchcarul.empty();
                var resultcl = eval(result);
                var htmlall = "";
                for (i = 0; i < resultcl.length; i++) {
                    if (resultcl[i].CheXingMiaoShu == undefined)
                        resultcl[i].CheXingMiaoShu = "";

                    if (resultcl[i].RiZuBaoZhengJin == null)
                        resultcl[i].RiZuBaoZhengJin = "";
                    //var htmlLi = $("<li><div class=car-img><img src=" + resultcl[i].CheLiangTuPian.replace(".", "_1.") + " width=285 height=189></div><div class=car-info><div class=fl>" + resultcl[i].KuanXingMingCheng + "</div><div class=fr>" + resultcl[i].RiZuZhouZhongJiaGe + "元/日[全含]</div></div><div class=line></div><div class=car-info><div class=fl>" + resultcl[i].chexingtext + " | " + resultcl[i].zuoweishutext + "</div><div class=fr><a href=javascript:homeselectcar(" + resultcl[i].ID + ") class=car-btn>开始预订</a></div></div></li>");
                    var yudinghi = "<a  class=redBtn onclick=chexingyuding(" + resultcl[i].chexing + "); ></a>";
                    if (resultcl[i].cou == "0")
                        yudinghi = "<a href='#' class='hmendianBtn' ></a>";
                    var htmlLi = "<li class=clearfix>" +
                                 "<input name=car_type_id[] value= v=24 type=hidden>" +
                                 "<div class='carPic fl'>" +
                                    "<img src=" + resultcl[i].CheXingMiaoShu.replace(".", "_1.") + " width=230 height=160 alt='" + resultcl[i].KuanXingMingCheng + "'> </div>" +
                                    "<div class=carItem>" +
                                    "<h3 class=carName >" + resultcl[i].KuanXingMingCheng + "<span class='fr carSelectInput'></span></h3>" +
                                    "<div class='wid540 fl'>" +
                                    "<div class=textAttr>" +
                                    "<div>" + resultcl[i].chexingtext + " | " + resultcl[i].zuoweishutext + "</div><div><span class='cYellow fz24'>¥" + resultcl[i].RiZuZhouZhongJiaGe + "</span>元/日均</div>" +
                                    "<div>综合服务费：0</div><div>预授权:" + resultcl[i].RiZuBaoZhengJin + "</div>" +
                                   " </div>" +
                                   " </div>" +
                                   " <div class='fixBtn fr' >" +
                                    yudinghi +
                                    "</div>" +
                                   " </div>" +
                                "</li>";
                    htmlall += htmlLi;

                }

                searchcarul.append(htmlall);
                //保存cookies
                recorduseryuding();
                
            });

        }
        function emptyinfos() {
            $("#lijiage a").css("display", "none");
            $("#slider-range").slider({ values: [0, 1100] });
            var cxinglistid = $(".selected-terms li");         
            if (cxinglistid.length > 2) {
                $.each(cxinglistid, function (i) {
                    if (i >= 2) {
                        $("#"+cxinglistid[i].id).remove();
                    }
                });
            }
            searchcxinfos();
        }

        function chexingyuding(p_id) {
            $.cookie("clkxid", p_id);

            var cookqcmdid = null;
            if ($.cookie("qcmdid") != null && $("#txtqcid3").val() != undefined) {
                if ($.cookie("qcmdid") != $("#txtqcid3").val())
                    cookqcmdid = $.cookie("qcmdid");
            }
            //alert($.cookie("qccstext"));
            recorduseryuding();
            //alert($.cookie("qccstext"));
            if (cookqcmdid != null) $.cookie("qcmdid",cookqcmdid);
            //订单中心                      
            window.location.href = "/hyviewdd.aspx";  
        }

        function initmendian() {
            var vmblist = $(".minusBox");           
            loaddgxinxibycooki();
            if ($.cookie("qcmdtext") == "" | $.cookie("qcmdtext") == null)
                recorduseryuding();

            if (vmblist.length == 4) {
                $(vmblist[0]).html("<em class=l >取车门店：</em>" + $.cookie("qcmdtext"));
                $(vmblist[1]).html("<em class=l >取车时间：</em>" + $.cookie("qcriqi") + " " + $.cookie("qcshijian"));
                $(vmblist[2]).html("<em class=l >还车门店：</em>" + $.cookie("hcmdtext"));
                $(vmblist[3]).html("<em class=l >还车时间：</em>" + $.cookie("hcriqi") + " " + $.cookie("hcshijian"));
            }
            searchcxinfos();
        }
        initmendian();
        
