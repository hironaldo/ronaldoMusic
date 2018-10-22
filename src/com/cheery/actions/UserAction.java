package com.cheery.actions;

import com.cheery.model.*;
import com.cheery.service.DataInitService;
import com.cheery.service.UserService;
import com.opensymphony.xwork2.*;
import lombok.Getter;
import lombok.Setter;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

public class UserAction extends ActionSupport implements ModelDriven<UserEntity> {

    public UserAction() throws IOException {
    }

    private UserService userSer;

    public void setUserSer(UserService userSer) {
        this.userSer = userSer;
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

    public String login() throws Exception {
        List userList = userSer.userLogin(user);
        if (0 < userList.size() && null != userList) {
            session.put("userList", userList);
            out.print("ok");
            return null;
        } else {
            request.put("tips", "\uD83D\uDE05 登陆信息错误");
            return Action.INPUT;
        }
    }
}
