window.onload = function () {
    $("body").on('click', "#ssheet_box li >div", function () {
        let slistId = $(this).find('i').text().trim();
        let picurl = $(this).find('b').text().trim();
        let nickname = $(this).find('s').text().trim();
        let userId = $(this).find('d').text().trim();
        let tags = $(this).find('w').text().trim();
        window.location.href = "songsheet_info.jsp?slistId=" + slistId + "&picurl=" + picurl + "&nickname=" + nickname + "&userId=" + userId + "&tags=" + tags;
    });
};