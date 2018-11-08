<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的主页</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/public.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/mypage/style.css" media="all">
    <style>
        #nav span:hover {
            cursor: pointer;
        }

        #mssheet_box li {
            display: inline-block;
            width: 160px;
            padding-bottom: 20px;
            padding-left: 28px;
        }

        #ssheet_box li {
            display: inline-block;
            width: 160px;
            padding-bottom: 20px;
            padding-left: 28px;
        }

        #follow_box li {
            display: inline-block;
            padding-bottom: 20px;
            padding-left: 28px;
        }

        #follow_box li:hover {
            cursor: pointer;
        }

        #followed_box li {
            display: inline-block;
            padding-bottom: 20px;
            padding-left: 28px;
        }

        #followed_box li:hover {
            cursor: pointer;
        }

        #singer_box li {
            display: inline-block;
            padding-bottom: 20px;
            padding-left: 28px;
        }

        #singer_box li:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>

<div>
    <table style="margin: 10px 0 0 15px;">
        <tr id="user_info">
        <tr>
    </table>
    <div class="layui-tab layui-tab-brief">
        <ul class="layui-tab-title">
            <li class="layui-this">我喜欢</li>
            <li>歌单</li>
            <li>关注</li>
            <li>粉丝</li>
        </ul>
        <div class="layui-tab-content">
            <div id="nav" style="padding-left: 6px">
                <span id="o-span" style="font-size: 12px;color: #009688;">歌曲</span>&nbsp;&nbsp;&nbsp;&nbsp;
                <span id="t-span" style="font-size: 12px;">歌手</span>&nbsp;&nbsp;&nbsp;&nbsp;
                <span id="r-span" style="font-size: 12px;">歌单</span>&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <div class="layui-tab-item layui-show">
                <table id="o-ele" class="layui-table" lay-skin="nob">
                    <thead>
                    <tr>
                        <th>
                            <div class="layui-unselect header layui-form-checkbox" style="display: none;"
                                 lay-skin="primary">
                                <i class="layui-icon">&#xe605;</i>
                            </div>&nbsp;歌曲
                        </th>
                        <th>歌手</th>
                    </tr>
                    </thead>
                    <tbody id="song">

                    </tbody>
                </table>
                <ul id="singer_box" style="padding-top: 15px"></ul>
                <ul id="ssheet_box" style="padding-top: 15px"></ul>
            </div>
            <div class="layui-tab-item">
                <ul id="mssheet_box"></ul>
            </div>
            <div class="layui-tab-item">
                <ul id="follow_box"></ul>
            </div>
            <div class="layui-tab-item">
                <ul id="followed_box"></ul>
            </div>
        </div>
    </div>
</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/layui/layui.all.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.cookie.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/js/mypage/mypage.js" charset="utf-8"></script>

<script id="u-info" type="text/x-jquery-tmpl">
    <td>
        <img src="{{= avatarUrl}}" style="width: 115px;border-radius: 50%"/>
    </td>
    <td style="padding-left: 20px">
        <ul>
            <li style="padding-top: 10px">
                <p style="font-size: 24px;">{{= nickname}}</p>
                <p style="color: #666;font-size: 12px;padding-top: 5px">Motto：
                    {{if signature== ""}}
                         还没签名哦
                    {{else}}
                        {{= signature}}
                    {{else}}

                    {{/if}}
                </p>
                <p style="font-family: 'Microsoft YaHei';color: #666;font-size: 12px;padding-top: 5px">
                    关注：{{= follows}}&nbsp;&nbsp;&nbsp;
                    粉丝：{{= followeds}}&nbsp;&nbsp;&nbsp;
                    自创歌单：{{= playlistCount}}
                </p>
            </li>
        </ul>
    </td>
</script>

<script id="u-likemusic" type="text/x-jquery-tmpl">
    <tr>
        <td>
            <div class="layui-unselect header layui-form-checkbox" style="display: none;"
                 lay-skin="primary">
                <i class="layui-icon">&#xe605;</i>
            </div>
            <span>
                <img src="../staticFile/images/fulllove.svg" width="18px" style="padding-bottom: 5px">
            </span>
            {{= name}}
        </td>
        <th>{{= singer}}</th>
    </tr>
</script>

<script id="u-songlist" type="text/x-jquery-tmpl">
    {{if ordered==false}}
        <li>
           <div style="height: 215px">
                <h1 style="display: none;">{{= id}}</h1>
                <h2 style="display: none;">{{= creator.avatarUrl}}</h2>
                <h3 style="display: none;">{{= creator.nickname}}</h3>
                <h4 style="display: none;">{{= creator.userId}}</h4>
                <h5 style="display: none;">{{= tags}}</h5>
                <div>
                    <a class="songlist__link mod_cover"> <img src="{{= coverImgUrl}}" class="songlist__pic" style="height: 160px;" /> <i class="mod_cover__mask"></i> <i class="mod_cover__icon_play"></i> </a>
                </div>
                <div>
                     <div>
                        <p style="font-size: 13px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:160px;">{{= name}}</p>
                     </div>
                     <div style="height: 5px"></div>
                     <div>
                        <span style="font-size: 10px;color: #666">{{= creator.nickname}}</span>
                     </div>
                </div>
           </div>
       </li>
   {{/if}}
</script>

<script id="s-songlist" type="text/x-jquery-tmpl">
    {{if ordered==true}}
        <li>
           <div style="height: 215px">
                <h1 style="display: none;">{{= id}}</h1>
                <h2 style="display: none;">{{= creator.avatarUrl}}</h2>
                <h3 style="display: none;">{{= creator.nickname}}</h3>
                <h4 style="display: none;">{{= creator.userId}}</h4>
                <h5 style="display: none;">{{= tags}}</h5>
                <div>
                    <a class="songlist__link mod_cover"> <img src="{{= coverImgUrl}}" class="songlist__pic" style="height: 160px;" /> <i class="mod_cover__mask"></i> <i class="mod_cover__icon_play"></i> </a>
                </div>
                <div>
                     <div>
                        <p style="font-size: 13px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:160px;">{{= name}}</p>
                     </div>
                     <div style="height: 5px"></div>
                     <div>
                        <span style="font-size: 10px;color: #666">{{= creator.nickname}}</span>
                     </div>
                </div>
           </div>
       </li>
   {{/if}}
</script>

<script id="u-follow" type="text/x-jquery-tmpl">
    <li>
       <div>
            <h1 style="display:none">{{= userId}}</h1>
            <div>
                <img src="{{= avatarUrl}}" style="width: 130px;border-radius: 50%;" />
            </div>
            <div>
                 <div style="text-align: center;padding-top:5px">
                    <span style="font-size: 10px;color: #666;">{{= nickname}}</span>
                 </div>
            </div>
       </div>
   </li>
</script>

<script id="u-followed" type="text/x-jquery-tmpl">
    <li>
       <div>
            <h1 style="display:none">{{= userId}}</h1>
            <div>
                <img src="{{= avatarUrl}}" style="width: 130px;border-radius: 50%;" />
            </div>
            <div>
                 <div style="text-align: center;padding-top:5px">
                    <span style="font-size: 10px;color: #666;">{{= nickname}}</span>
                 </div>
            </div>
       </div>
   </li>
</script>

<script id="s-follow" type="text/x-jquery-tmpl">
    <li>
       <div>
            <div>
                <h1 style="display:none">{{= id}}</h1>
                <h2 style="display:none">{{= name}}</h2>
                <img src="{{= picUrl}}" style="width: 130px;border-radius: 50%;" />
            </div>
            <div>
                 <div style="text-align: center;padding-top:5px">
                    <p style="font-size: 10px;color: #666;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;width: 130px;">
                        {{= name}} - {{= alias}}
                    </p>
                 </div>
            </div>
       </div>
   </li>
</script>

<script src="../staticFile/js/mypage/mypage-reload.js" charset="utf-8"></script>
</body>
</html>















