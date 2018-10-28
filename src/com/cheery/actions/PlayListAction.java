package com.cheery.actions;


import com.cheery.model.*;
import com.cheery.service.PlayListService;
import com.cheery.service.UserService;
import com.opensymphony.xwork2.*;
import org.apache.struts2.ServletActionContext;
import org.apache.tomcat.jni.User;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

public class PlayListAction extends ActionSupport implements ModelDriven<DetailEntity> {

    public PlayListAction() throws IOException {
    }

    private PlayListService playSer;

    public void setPlaySer(PlayListService playSer) {
        this.playSer = playSer;
    }

    private DetailEntity detail;

    @Override
    public DetailEntity getModel() {
        detail = new DetailEntity();
        return detail;
    }


    ActionContext ac = ActionContext.getContext();
    Map session = ac.getSession();
    HttpServletResponse response = ServletActionContext.getResponse();
    PrintWriter out = response.getWriter();

    public String queryOneById() throws Exception {
        List<PlaylistEntity> mobiles = playSer.queryPlaylistById(detail);
        System.out.println(mobiles);
        return Action.SUCCESS;
    }


    public String queryPlaylistByUserId() throws Exception {
        return Action.SUCCESS;
    }

}
