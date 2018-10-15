$(function () {
    var song = [
        {
            'cover': 'http://y.gtimg.cn/music/photo_new/T002R300x300M000000GDz8k03UOaI.jpg?max_age=2592000',
            'src': 'http://music.163.com/song/media/outer/url?id=33471524.mp3',
            'title': '十年 - 陈奕迅'
        },
        {
            'cover': 'http://y.gtimg.cn/music/photo_new/T002R300x300M000003cpvED39hxmh.jpg?max_age=2592000',
            'src': 'http://dl.stream.qqmusic.qq.com/M800002miT7m27YYe9.mp3?vkey=0649C9FD5592AF2371C91086571CC6A2B05826BB59466B666B046D079284A6C76DB83F447C7CC96C0B90819D6C1F24D286D76FABCFBA498D&guid=5150825362&fromtag=1',
            'title': '漂洋过海来看你 - 刘明湘'
        },
        {
            'cover': 'http://y.gtimg.cn/music/photo_new/T001R300x300M000001ByAsv3XCdgm.jpg?max_age=2592000',
            'src': 'http://music.163.com/song/media/outer/url?id=296837.mp3',
            'title': '魔鬼中的天使 - 田馥甄'
        }
    ];
    var audioFn = audioPlay({
        song: song,
        autoPlay: true  //是否立即播放第一首，autoPlay为true且song为空，会alert文本提示并退出
    });

    /* 向歌单中添加新曲目，第二个参数true为新增后立即播放该曲目，false则不播放 */
    audioFn.newSong({
        'cover': 'images/cover4.jpg',
        'src': 'http://so1.111ttt.com:8282/2016/5/06m/06/199061931237.m4a?tflag=1494769315&pin=a0b26b2dddd976d74724841f6d2641d6&ip=114.233.172.33#.mp3',
        'title': '新曲目'
    }, false);

    /* 暂停播放 */
    //audioFn.stopAudio();

    /* 开启播放 */
    //audioFn.playAudio();

    /* 选择歌单中索引为3的曲目(索引是从0开始的)，第二个参数true立即播放该曲目，false则不播放 */
    //audioFn.selectMenu(3,true);

    /* 查看歌单中的曲目 */
    //console.log(audioFn.song);

    /* 当前播放曲目的对象 */
    //console.log(audioFn.audio);
});