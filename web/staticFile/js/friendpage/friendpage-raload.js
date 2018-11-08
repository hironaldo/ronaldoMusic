window.onload = function () {
    /*歌单详情*/
    $(document).on('click', "#ssheet_box li >div", function () {
        let slistId = $(this).find('h1').text().trim();
        let picurl = $(this).find('h2').text().trim();
        let nickname = $(this).find('h3').text().trim();
        let userId = $(this).find('h4').text().trim();
        let tags = $(this).find('h5').text().trim();
        window.location.href = "songsheet_info.jsp?slistId=" + slistId + "&picurl=" + picurl + "&nickname=" + nickname + "&userId=" + userId + "&tags=" + tags;
    });

    /*关注的信息*/
    $(document).on('click', "#follow_box li >div", function () {
        window.location.href = 'friendpage.jsp?userId=' + $(this).find('h1').text();
    });

    /*粉丝的信息*/
    $(document).on('click', "#followed_box li >div", function () {
        window.location.href = 'friendpage.jsp?userId=' + $(this).find('h1').text();
    });
};