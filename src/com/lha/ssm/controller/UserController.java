package com.lha.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lha.ssm.entity.PageBean;
import com.lha.ssm.entity.User;
import com.lha.ssm.service.UserService;
import com.lha.ssm.validated.Login;
import com.lha.ssm.validated.Regist;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private UserService us;

    @RequestMapping("/login")
    public String login(@Validated(Login.class) User user1, BindingResult br,
                        Model m, HttpSession session) {
        if (br.hasFieldErrors()) {
            return "login";
        } else {
            User user = us.login(user1);
            if (user != null) {
                System.out.println("登录成功");
                session.setAttribute("user", user);
            } else {
                m.addAttribute("msg", "账号或密码错误！");
                return "login";
            }
            return "WEB-INF/pages/manage/main";
        }
    }

    @RequestMapping("/welcome")
    public String welcome() {
        return "WEB-INF/pages/manage/welcome";
    }

    @RequestMapping("/regist")
    public String regist(@Validated(Regist.class) User user, BindingResult br,
                         Model m) {
        if (br.hasFieldErrors()) {
            return "regist";
        } else {
            int i = us.addUser(user);
            if (i > 0) {
                m.addAttribute("msg", "注册成功");
                return "login";
            } else {
                m.addAttribute("msg", "注册失败");
            }
            return "regist";
        }
    }

    @RequestMapping("/allUser")
    public String allUser(@RequestParam(defaultValue = "1") Integer pageIndex,
                          User user, Model m) {
        int count = us.getCount(user);
        int pageSize = 4;
        int pageCount = count % pageSize == 0 ? count / pageSize : count
                / pageSize + 1;
        if (pageIndex < 1 || pageIndex > pageCount) {
            pageIndex = 1;
        }
        List<User> list = us.allUserByPage(user, (pageIndex - 1) * pageSize, pageSize);
        PageBean pb = new PageBean(pageIndex, pageSize, pageCount, count, list);
        m.addAttribute("page", pb);
        return "WEB-INF/pages/manage/userlist";
    }

    @RequestMapping("/checkLoginName")
    public @ResponseBody
    String checkLoginName(String loginName) {
        boolean isok = us.checkLogin(loginName);
        String rs = "用户名已被占用";
        if (isok) {
            rs = "用户名可以使用";
        }
        return rs;
    }

    @RequestMapping("/showUserList")
    public @ResponseBody
    List<User> getUsers() {
        List<User> list = us.allUser();
        return list;
    }

    @RequestMapping("/initAddUser")
    public String initAddUser(){
        return "WEB-INF/pages/manage/addUser";
    }

    @RequestMapping("/addUser")
    public String addUser(User user,Model model) {
        int i = us.addUser(user);
        if (i>0){
            model.addAttribute("Msg","true");
        }else {
            model.addAttribute("Msg","false");
        }
        return "forward:/allUser";
    }

    @RequestMapping("/deleteUser/{id}")
    public String deleteUser(@PathVariable("id")Integer id,Model model){
        System.out.println(id);
        boolean b = us.deleteUser(id);
        if (b) {
            model.addAttribute("Msg","用户删除成功");
        }else {
            model.addAttribute("Msg","用户删除失败");
        }
        return "forward:/allUser";
    }

    @RequestMapping("/updateUser")
    public String updateUser(User user,Model model){
        boolean b = us.updateUser(user);
        if (b) {
            model.addAttribute("Msg","用户修改成功");
        }else {
            model.addAttribute("Msg","用户修改失败");
        }
        return "WEB-INF/pages/manage/user";
    }

    @RequestMapping("/queryUser/{id}")
    public String queryUser(@PathVariable("id")Integer id,Model model){
        User user = us.queryUser(id);
        model.addAttribute("user",user);
        return "WEB-INF/pages/manage/user";
    }
}
