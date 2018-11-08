window.onload = function () {
    /*获取播放地址*/
    setTimeout(function () {
        const mvUrl = $('#mvurl').text();
        let dp = new DPlayer({
            container: document.getElementById('dplayer'),
            autoplay: true,
            video: {url: mvUrl}
        });
    }, 500);
    /*切换播放*/
    $(document).on('click', "#mv_box li >div", function () {
        window.location.href = "play-mv.jsp?plId=" + $(this).find('h1').text() + "&siId=" + $('#siId').text().trim();
    });
    /*查看歌手信息*/
    $(document).on('click', "#siName", function () {
        window.location.href = "singer_info.jsp?siId=" + $('#siId').text().trim() + "&siName=" + $(this).text();
    });
};