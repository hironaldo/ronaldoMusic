package com.cheery.actions;

import com.alibaba.fastjson.JSON;
import com.cheery.model.*;
import com.cheery.service.DataInitService;
import com.cheery.tools.GetMsgCode;
import com.opensymphony.xwork2.*;
import lombok.*;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

public class InitAction extends ActionSupport implements ModelDriven<UserEntity> {

    public InitAction() throws IOException {
    }

    @Getter
    @Setter
    private int pageNo = 1; //当前页
    @Getter
    @Setter
    private int pageSize = 15;  //页面数据条数
    @Getter
    @Setter
    private int dataCount;  //数据总和
    @Getter
    @Setter
    private int pageCount;  //总页数
    @Getter
    @Setter
    private int listSize; //数组长度
    @Getter
    @Setter
    private String deType;
    @Getter
    @Setter
    private String siType;
    @Getter
    @Setter
    private String region;
    @Getter
    @Setter
    private String style;

    private DataInitService initSer;

    public void setInitSer(DataInitService initSer) {
        this.initSer = initSer;
    }

    private UserEntity user;

    @Override
    public UserEntity getModel() {
        user = new UserEntity();
        return user;
    }

    ActionContext ac = ActionContext.getContext();
    Map session = ac.getSession();
    Map request = (Map) ac.get("request");
    HttpServletResponse response = ServletActionContext.getResponse();
    PrintWriter out = response.getWriter();

    /*初始化 官方精选*/
    public String initData() throws Exception {
        List<PlaylistEntity> playlist = initSer.queryTopPlaylist(); //歌单
        List<SongEntity> songlist = initSer.queryAllSong(); //歌曲
        List<SingerEntity> singerlist = initSer.queryAllSinger(); //歌手
        List<MvEntity> mvlist = initSer.queryAllMv(); //mv
        if (0 < playlist.size() && 0 < songlist.size() && 0 < singerlist.size() && 0 < mvlist.size()) {
            session.put("playlist", playlist);
            session.put("songlist", songlist);
            session.put("singerlist", singerlist);
            session.put("mvlist", mvlist);
            return Action.SUCCESS;
        } else {
            return Action.INPUT;
        }
    }

    /*初始化 全部歌手*/
    public String querySinger() throws Exception {
        dataCount = initSer.querySingerRows();
        pageCount = dataCount % pageSize == 0 ? dataCount / pageSize : dataCount / pageSize + 1;
        if (pageNo <= 0) {
            pageNo = 1;
        } else if (pageNo >= pageCount) {
            pageNo = pageCount;
        }
        List<SingerEntity> list = initSer.queryAllSinger(siType, region, style, pageNo, pageSize);
        System.out.println(JSON.toJSONString(list));
        if (null != list && 0 < list.size()) {
            //session.put("singerList", list);
//            session.put("pageCount", pageCount);
//            session.put("pageNo", pageNo);
//            session.put("dataCount", dataCount);
//            session.put("pageData", list.size());
//            out.print(JSON.toJSONString(list));

            out.print(JSON.toJSONString(list));
            out.flush();
            out.close();
            return null;

            //return Action.SUCCESS;
        } else {
            return Action.ERROR;
        }
    }

    /*初始化 分类歌单*/
    public String querySongSheet() throws Exception {
        dataCount = initSer.querySheetRows();
        System.out.println(dataCount);
        pageCount = dataCount % pageSize == 0 ? dataCount / pageSize : dataCount / pageSize + 1;
        if (pageNo <= 0) {
            pageNo = 1;
        } else if (pageNo >= pageCount) {
            pageNo = pageCount;
        }
        List<PlaylistEntity> list = initSer.queryAllPlaylist(deType, pageNo, pageSize);
        System.out.println(JSON.toJSONString(list));
        System.out.println("页码：" + pageNo);
        if (null != list && 0 < list.size()) {
            session.put("playlist", list);
            session.put("jsonlist", JSON.toJSONString(list));
            session.put("pageCount", pageCount);
            session.put("pageNo", pageNo);
            session.put("dataCount", dataCount);
            session.put("pageData", list.size());
            return Action.SUCCESS;
        } else {
            return Action.ERROR;
        }
    }

}
