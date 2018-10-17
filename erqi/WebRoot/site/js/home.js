

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


$(function () {

    var len = $('.bannerButton>li').length;
    var index = 0;
    var autoplay;
    $('.bannerButton li').mouseover(function () {
        index = $('.bannerButton li').index(this);
        showImg(index);
    }).eq(0).mouseover();

    autoplay = setInterval(function () {
        showImg(index)
        index++;
        if (index == len) {
            index = 0;
        }
    }, 3500);
    function showImg(index) {
        for (i = 0; i < len; i++) {
            if (i == index) {
                $('.bannerBox li')[index].className = "focusimg";
                $('.bannerButton li')[index].className = "focus"
            }
            else {
                $('.bannerBox li')[i].className = "nofocusimg";
                $('.bannerButton li')[i].className = "";
            }
        }
    };


        var lists = $(".orderTit>li")
        $(".orderTit").on("click", "li", function () {
            zlid = this.id;
            if (zlid == "zl01") {
                document.getElementById("zl01").className = "current";
                document.getElementById("zl02").className = "";
                document.getElementById("fb02").style.display = "none";
                document.getElementById("fb01").style.display = "";

            }
            else {
                document.getElementById("zl01").className = "";
                document.getElementById("zl02").className = "current";
                document.getElementById("fb02").style.display = "";
                document.getElementById("fb01").style.display = "none";
            }
        });





        var chenglists = $.find(".changeCity a");
        $.each(chenglists, function () {
            $(this).click(function () {
                cid = this.attributes["cid"].value;
                curentlistcs = $.find(".changeCity .cur");
                if (curentlistcs.length > 0)
                    curentlistcs[0].className = "";
                this.className = "cur";
                $.get("/site/datas.aspx?t=3&cid=" + cid, function (result) {
                    var resultcl = eval(result);
                    var cartjlistobj = $("#carShowlist1");
                    cartjlistobj.empty();
                    for (i = 0; i < resultcl.length; i++) {
                        if (resultcl[i].CheLiangTuPian == undefined)
                            resultcl[i].CheLiangTuPian = "";
                        var htmlLi = $("<li><div class=car-img><img src=" + resultcl[i].CheLiangTuPian.replace(".", "_1.") + " width=285 height=189></div><div class=car-info><div class=fl>" + resultcl[i].KuanXingMingCheng + "</div><div class=fr>" + resultcl[i].RiZuZhouZhongJiaGe + "元/日[全含]</div></div><div class=line></div><div class=car-info><div class=fl>" + resultcl[i].chexingtext + " | " + resultcl[i].zuoweishutext + "</div><div class=fr><a href=javascript:homeselectcar(" + resultcl[i].ID + ") class=car-btn>开始预订</a></div></div></li>");
                        cartjlistobj.append(htmlLi);
                    }
                });
            });
        });
    });

function homeselectcar(p_cid) {
    //$.cookie("tjclid", p_cid);
    recorduseryuding();
    $.cookie("clkxid", p_cid);    
    window.location.href = '/site/DuanZu.aspx';
}

