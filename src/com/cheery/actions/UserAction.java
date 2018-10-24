package com.cheery.actions;

import com.cheery.model.UserEntity;
import com.cheery.service.UserService;
import com.opensymphony.xwork2.*;
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
    HttpServletResponse response = ServletActionContext.getResponse();
    PrintWriter out = response.getWriter();

    /*登陆*/
    public String userLogin() throws Exception {
        List userList = userSer.userLogin(user);
//        System.out.println("验证码"+GetMsgCode.getCode(user.getPhone()));
//        out.print(GetMsgCode.getCode(user.getPhone()));
        if (0 < userList.size() && null != userList) {
            session.put("userList", userList);
            out.print("ok");
            return null;
        } else {
            System.out.println(userSer.userLogin(user));
            session.put("tips", "\uD83D\uDE05 登陆信息错误");
            return Action.INPUT;
        }
    }
}
