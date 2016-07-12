package com.hl.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class InitController {

	@RequestMapping(value="login")
	public String loginUI(HttpServletRequest request){
		request.removeAttribute("error");
		return "login";
	}
	
	@RequestMapping(value="login",method=RequestMethod.POST,produces="text/html;charset=utf-8")
	public String login(String username,String password,HttpServletRequest request){
		try {
            if ("".equals(username.trim()) || "".equals(password.trim())) {
                request.setAttribute("error", "用户名或密码不能为空！");
                return "/login";
            }
            Subject user = SecurityUtils.getSubject();
            UsernamePasswordToken token = new UsernamePasswordToken(username, password);
            try {
                user.login(token);
            }catch (AuthenticationException e) {
                token.clear();
                request.setAttribute("error", "用户或密码不正确！");
                return "/login";
            }

            Session session = SecurityUtils.getSubject().getSession();

            request.removeAttribute("error");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "登录异常，请联系管理员！");
            return "/login";
        }
        
        return "redirect:index";
	}
	
	@RequestMapping(value="index")
	public String indexUI(){
		return "index";
	}
}
