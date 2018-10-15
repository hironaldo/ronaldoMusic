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
        if (0 < userList.size() && null != userList) {
            System.out.println(userList);
            session.put("tips", "789456");
            out.print("ok");
            return null;
        } else {
            System.out.println(userSer.userLogin(user));
            session.put("tips", "账户名或密码错误~");
            return Action.INPUT;
        }
    }
}
