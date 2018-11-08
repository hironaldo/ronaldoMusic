window.onload = function () {
    $(document).on('click', "#uinfo", function () {
        window.location.href = 'friendpage.jsp?userId=' + $('#userId').text();
    });
};