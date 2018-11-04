window.onload = function () {
    $("body").on('click', "#singer_box li >div", function () {
        window.location.href = "singer_info.jsp?siId=" + $(this).find('i').text() + "&siName=" + $(this).find('b').text();
    });
};