

$(function () {


    //加载选择的订单信息
    loaddgxinxibycooki();

    var v001 = $.find("#search_hotList1 a");
    var v002 = $.find("#search_hotList2 a");
    var v003 = $.find("#search_hotList3 a");
    var v004 = $.find("#search_hotList4 a");
    var v005 = $.find("#search_hotList5 a");
    var v006 = $.find("#search_hotList6 a");

    $.each(v001, function () {
        $(this).click(function () {
            if (this.attributes["cid"] != undefined) {
                $("#txtqcid").val(this.attributes["cid"].value);
            }
            $("#getCarCity1").val(this.innerHTML);
            $(".search_form_suggest").hide();
            //获取门店 
            selectmdbyid(this.attributes["cid"].value, 1, true);
        });
    });
    $.each(v002, function () {
        $(this).click(function () {
            if (this.attributes["cid"] != undefined) {
                $("#txtqcid2").val(this.attributes["cid"].value);
            }
            $("#getCarCity2").val(this.innerHTML);
            $(".search_form_suggest2").hide();
            //获取门店 
            selectmdbyid(this.attributes["cid"].value, 2, true);
        });
    });

    $.each(v003, function () {
        $(this).click(function () {
            if (this.attributes["mdid"] != undefined) {
                $("#txtqcid3").val(this.attributes["mdid"].value);
                $.cookie("qcmdid", this.attributes["mdid"].value);
            }

            $("#getCarCityMenDian1").val(this.innerHTML);
            $(".search_form_suggest3").hide();
        });
    });

    $.each(v004, function () {
        $(this).click(function () {
            if (this.attributes["mdid"] != undefined) {
                $("#txtqcid4").val(this.attributes["mdid"].value);
                $.cookie("hcmdid", this.attributes["mdid"].value);
            }
            $("#getCarCityMenDian2").val(this.innerHTML);
            $(".search_form_suggest4").hide();
        });
    });

    $.each(v005, function () {
        $(this).click(function () {
            $("#txtqucheshijian").val(this.innerHTML);
            $("#txthuancheshijian").val(this.innerHTML);
            $(".search_form_suggest5").hide();
        });
    });

    $.each(v006, function () {
        $(this).click(function () {
            $("#txthuancheshijian").val(this.innerHTML);
            $(".search_form_suggest6").hide();
        });
    });


    $(document).bind('click', function (e) {
        var e = e || window.event; //浏览器兼容性 
        var elem = e.target || e.srcElement;
        for (i = 1; i <= 6; i++) {
            $("#search_form_suggest" + i).hide();
        }

        if (elem.id) {
            topv = ($("#" + elem.id).offset().top + 25) + "px";
            leftv = ($("#" + elem.id).offset().left) + "px";
            if (elem.id == "getCarCity1") { SetSelectDivPostion("search_form_suggest1", topv, leftv); }
            else if (elem.id == "getCarCity2") SetSelectDivPostion("search_form_suggest2", topv, leftv);
            else if (elem.id == "getCarCityMenDian1") SetSelectDivPostion("search_form_suggest3", topv, leftv);
            else if (elem.id == "getCarCityMenDian2") SetSelectDivPostion("search_form_suggest4", topv, leftv);
            else if (elem.id == "txtqucheshijian") SetSelectDivPostion("search_form_suggest5", topv, leftv);
            else if (elem.id == "txthuancheshijian") SetSelectDivPostion("search_form_suggest6", topv, leftv);
        }
    });

});

    var maxyudingdays = paraconfig.maxrentdays;
    initdatepicker_cn();
    $(document).ready(function () {
        $('#txtqucheriqi').datepicker(
         {
             minDate: new Date(),
             maxDate: new Date(new Date().valueOf() + maxyudingdays * 24 * 60 * 60 * 1000),       
             numberOfMonths: 2,
             showButtonPanel: true,
             onSelect: function (dateText, inst) {               
                 dateText = dateText.replace("-", "/").replace("-", "/");
                 var t1 = new Date(new Date(dateText).valueOf() + 1 * 24 * 60 * 60 * 1000);               
                 dateText = t1.getFullYear() + "-" + (t1.getMonth() + 1) + "-" + t1.getDate();
                 $("#txthuancheriqi").datepicker("option", "minDate", dateText);
                 dateText = dateText.replace("-", "/").replace("-", "/");
                 var t2 = new Date(new Date(dateText) - 1 + 1 + paraconfig.maxdays * 24 * 60 * 60 * 1000);
                 var dateText2 = t2.getFullYear() + "-" + (t2.getMonth() + 1) + "-" + t2.getDate();                 
                 $("#txthuancheriqi").datepicker("option", "maxDate", dateText2);
             }
         }
        );
        $('#txthuancheriqi').datepicker(
         {
             minDate: new Date(),
             numberOfMonths: 2,
             showButtonPanel: true,
             maxDate: new Date(new Date().valueOf() + 30 * 24 * 60 * 60 * 1000)
         }
        );
    });

     function SetSelectDivPostion(p_id, p_top, p_left) {
         //document.getElementById(p_id).style.top = p_top;
         //document.getElementById(p_id).style.left = p_left;
         $("#" + p_id).show();
         $("#" + p_id).offset({ top: p_top.replace("px", ""), left: p_left.replace("px", "") });       
    }
    function selectcitys() {
        $.get("/site/datas.aspx?t=1", function (result) {
            chengshis = eval(result);
            for (i = 0; i < chengshis.length; i++) {
                var s1 = i;
            }
        });
    }
    function selectmdbyid(p_cid, p_type,p_setfirst) {
        $.get("/site/datas.aspx?t=2&cid=" + p_cid, function (result) {
            chengshis = eval(result);
            var ddobj = $("#search_hotList3 dd");
            if (p_type == 2)
                ddobj = $("#search_hotList4 dd");

            if (ddobj != undefined) {
                ddobj.empty();
                for (i = 0; i < chengshis.length; i++) {
                    var htmlLi = "                                      <a href='#' mdid=" + chengshis[i].priid + ">" + chengshis[i].BuMenMingCheng + "</a>"; // $();
                    ddobj.append(htmlLi);
                    if (p_setfirst == true) {
                        if (i == 0) {
                            if (p_type == 2) {
                                $("#txtqcid4").val(chengshis[i].priid);
                                $("#getCarCityMenDian2").val(chengshis[i].BuMenMingCheng);
                            }
                            else {
                                $("#txtqcid3").val(chengshis[i].priid);
                                $("#getCarCityMenDian1").val(chengshis[i].BuMenMingCheng);
                            }
                        }
                    }
                }
                if (p_type == 2) {
                    var v004 = $.find("#search_hotList4 a");
                    $.each(v004, function () {
                        $(this).click(function () {
                            if (this.attributes["mdid"] != undefined) {
                                $("#txtqcid4").val(this.attributes["mdid"].value);
                                $.cookie("hcmdid", this.attributes["mdid"].value);
                            }
                            $("#getCarCityMenDian2").val(this.innerHTML);
                            $(".search_form_suggest4").hide();
                        });
                    });
                }
                else {
                    var v003 = $.find("#search_hotList3 a");
                    $.each(v003, function () {
                        $(this).click(function () {
                            if (this.attributes["mdid"] != undefined) {
                                $("#txtqcid3").val(this.attributes["mdid"].value);
                                $.cookie("qcmdid", this.attributes["mdid"].value);
                            }
                         
                            $("#getCarCityMenDian1").val(this.innerHTML);
                            $(".search_form_suggest3").hide();
                        });
                    });
                }

            }
        });
    }
    var isloaded = false;
    //var issetfirst = true;
    function loaddgxinxibycooki() {

        //if (isloaded == true) return;
        isloaded = true;
        if ($.cookie("qccsid") != null) $("#txtqcid").val($.cookie("qccsid"));
        if ($.cookie("qccstext") != null) $("#getCarCity1").val($.cookie("qccstext"));
        if ($.cookie("hccsid") != null) $("#txtqcid2").val($.cookie("hccsid"));
        if ($.cookie("hccstext") != null) $("#getCarCity2").val($.cookie("hccstext"));

       // issetfirst = false;
        if ($.cookie("qccsid") != null) {
            selectmdbyid($.cookie("qccsid"), 1,false)
        }
        if ($.cookie("hccsid") != null)
            selectmdbyid($.cookie("hccsid"), 2,false)
        issetfirst = true;       
        if ($.cookie("qcmdid") != null) $("#txtqcid3").val($.cookie("qcmdid"));
        if ($.cookie("qcmdtext") != null) $("#getCarCityMenDian1").val($.cookie("qcmdtext"));

        //alert($.cookie("qcmdtext"));        


        if ($.cookie("hcmdid") != null) $("#txtqcid4").val($.cookie("hcmdid"));
        if ($.cookie("hcmdtext") != null) $("#getCarCityMenDian2").val($.cookie("hcmdtext"));
       
        if ($.cookie("qcriqi") != null) $("#txtqucheriqi").val($.cookie("qcriqi"));
        if ($.cookie("qcshijian") != null) $("#txtqucheshijian").val($.cookie("qcshijian"));

        if ($.cookie("hcriqi") != null) {

            $("#txthuancheriqi").val($.cookie("hcriqi"));
            var hcrq = ($("#txthuancheriqi").val()+"").replace("-", "/").replace("-", "/");
            var qcrq = ($("#txtqucheriqi").val()+"").replace("-", "/").replace("-", "/");
            var d01 = new Date(qcrq);
            var d02 = new Date(hcrq);
            if (d02 < d01) {
                var t1 = new Date(d01.valueOf() + 1 * 24 * 60 * 60 * 1000);
                $("#txthuancheriqi").val(t1.getFullYear() + "-" + (t1.getMonth() + 1) + "-" + t1.getDate());
                $("#txthuancheriqi").datepicker("option", "maxDate", t1.getFullYear() + "-" + (t1.getMonth() + 1) + "-" + t1.getDate());
            }
        }



        if ($.cookie("hcshijian") != null) $("#txthuancheshijian").val($.cookie("hcshijian"));


        if ($.cookie("songche") == "true") $("#chbsongche").attr("checked", true); else $("#chbsongche").attr("checked", false);
        if ($.cookie("huanche") == "true") $("#chbquche").attr("checked", true); else $("#chbquche").attr("checked", false);
        
    }
    function recorduseryuding() {
        $.cookie("qccsid", $("#txtqcid").val());
        $.cookie("qccstext", $("#getCarCity1").val());
        
        $.cookie("hccsid", $("#txtqcid2").val());
        $.cookie("hccstext", $("#getCarCity2").val());

        $.cookie("qcmdid", $("#txtqcid3").val());
        $.cookie("qcmdtext", $("#getCarCityMenDian1").val());

        $.cookie("hcmdid", $("#txtqcid4").val());
        $.cookie("hcmdtext", $("#getCarCityMenDian2").val());

        $.cookie("qcriqi", $("#txtqucheriqi").val());
        $.cookie("qcshijian", $("#txtqucheshijian").val());
        $.cookie("hcriqi", $("#txthuancheriqi").val());
        $.cookie("hcshijian", $("#txthuancheshijian").val());

        //if ($("#chbsongche").val() == "on") $("#chbsongche").val("true")
        $.cookie("songche", document.getElementById("chbsongche").checked);
        $.cookie("huanche", document.getElementById("chbquche").checked);
    }
