window.onload = function () {
    /*查看相关专辑信息*/
    $(document).on('click', "#album_box li >div", function () {
        window.location.href = 'album_info.jsp?abId=' + $(this).find('h1').text().trim() + "&siId=" + $('#siId').text().trim();
    });
    /*查看mv信息*/
    $(document).on('click', "#mv_box li >div", function () {
        window.location.href = "play-mv.jsp?plId=" + $(this).find('h1').text() + "&siId=" + $('#siId').text().trim();
    });

    /*关注 取关歌手*/
    $(document).on('click', "#singer_info ul li .def", function () {
        let siId = $(this).find('strong').text().trim();
        if ($(this).find('button').text().trim() == '关注') {
            $.ajax({
                url: 'http://localhost:3000/artist/sub?id=' + siId + '&t=1',
                xhrFields: {withCredentials: true},
                success: function (data) {
                    if (data.code === 200) {
                        layer.msg('关注成功');
                    }
                }
            });
        } else {
            alert('2');
            $.ajax({
                url: 'http://localhost:3000/artist/sub?id=' + siId + '&t=0',
                xhrFields: {withCredentials: true},
                success: function (data) {
                    if (data.code === 200) {
                        layer.msg('取关成功');
                    }
                }
            });
        }
    });
};