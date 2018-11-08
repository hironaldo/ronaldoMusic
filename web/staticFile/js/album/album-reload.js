window.onload = function () {
    /*切换专辑信息*/
    $(document).on('click', "#album_box li >div", function () {
        window.location.href = 'album_info.jsp?abId=' + $(this).find('h1').text().trim() + "&siId=" + $('#siId').text().trim();
    });
    /*查看歌手资料*/
    $(document).on('click', "#siName", function () {
        window.location.href = "singer_info.jsp?siId=" + $('#siId').text().trim() + "&siName=" + $(this).text();
    });

};