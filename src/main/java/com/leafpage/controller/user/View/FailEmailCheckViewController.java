package com.leafpage.controller.user.View;

import com.leafpage.controller.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class FailEmailCheckViewController implements Controller {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("failEmailCheck.jsp로 이동");
        return "user/failEmailCheck";
    }
}
