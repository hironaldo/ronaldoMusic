window.onload = function () {
    /*查看相关专辑信息*/
    $("body").on('click', "#album_box li >div", function () {
        window.location.href = 'album_info.jsp?abId=' + $(this).find('h1').text().trim() + "&siId=" + $('#siId').text().trim();
    });
    /*查看mv信息*/
    $("body").on('click', "#mv_box li >div", function () {
        window.location.href = "play-mv.jsp?plId=" + $(this).find('h1').text() + "&siId=" + $('#siId').text().trim();
    });
};