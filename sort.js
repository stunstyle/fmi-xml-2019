$( document ).ready( function(){
 
    var $divs = $("div.main");
 
    $('#alphBntASC').on('click', function () {
        var alphabeticallyOrderedDivs = $divs.sort(function (a, b) {
            return $(a).find("h2").text() > $(b).find("h2").text();
        });
        $("#outer").html(alphabeticallyOrderedDivs);
    });
 
    $('#numBntASC').on('click', function () {
        var alphabeticallyOrderedDivs = $divs.sort(function (a, b) {
            return $(a).find(".year").text() > $(b).find(".year").text();
        });
        $("#outer").html(alphabeticallyOrderedDivs);
    });

    $('#alphBntDESC').on('click', function () {
        var alphabeticallyOrderedDivs = $divs.sort(function (a, b) {
            return $(a).find("h2").text() < $(b).find("h2").text();
        });
        $("#outer").html(alphabeticallyOrderedDivs);
    });
 
    $('#numBntDESC').on('click', function () {
        var alphabeticallyOrderedDivs = $divs.sort(function (a, b) {
            return $(a).find(".year").text() < $(b).find(".year").text();
        });
        $("#outer").html(alphabeticallyOrderedDivs);
    });
 
   });