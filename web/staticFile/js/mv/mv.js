$(function () {
    let plId = $('#plId').text().trim();    //歌单id
    let siId = $('#siId').text().trim();    //歌手id
    let url;
    /*当前MV*/
    url = 'https://api.bzqll.com/music/netease/mv?key=579621905&id=' + plId;
    $.get(url, function (data) {
        $("#mv_info").html('');
        $("#mv").tmpl(data.data).appendTo('#mv_info');
    });

    /*相关MV*/
    url = 'http://localhost:3000/artist/mv?id=' + siId;
    $.get(url, function (data) {
        $("#mv_box").html('');
        $("#c-mv").tmpl(data.mvs).appendTo('#mv_box');
    });

    /*评论*/
    url = 'http://localhost:3000/comment/mv?id=' + plId;
    $.get(url, function (data) {
        $("#content_top").html('');
        $("#t-comment").tmpl(data.hotComments).appendTo('#content_top');
    });
    $('#box').paging({
        initPageNo: 1, totalPages: 6, slideSpeed: 600, jump: true,
        callback: function (page) {
            url = 'http://localhost:3000/comment/mv?id=' + plId + "&offset=" + page + "&limit=10";
            $.get(url, function (data) {
                $("#content_new").html('');
                $("#n-comment").tmpl(data.comments).appendTo('#content_new');
            });
        }
    });

    /*发送评论*/
    layui.use('layedit', function () {
        var layedit = layui.layedit;
        layedit.build('comment', {
            height: 100,
            tool: [
                'face'
            ]
        });
    });
});