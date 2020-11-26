package com.example.zsp.SpringBootDemo.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.zsp.SpringBootDemo.batch.DataBatchConfiguration;
import com.example.zsp.SpringBootDemo.bean.User;
import com.example.zsp.SpringBootDemo.error.ResultBody;
import com.example.zsp.SpringBootDemo.service.LoginService;
import com.github.pagehelper.PageHelper;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * description:
 * author：Andy on 2020/11/16 0016-16:15
 * email:zsp872126510@gmail.com
 */
@Api(tags = "用户登录")
@RestController
public class LoginController {
    @Resource
    LoginService loginService;

    @GetMapping(value = "/getUser")
    public String getUser(int id) {
        return JSON.toJSONString(loginService.getUserById(id));
    }

    @PostMapping(value = "/registerUser")
    @ResponseBody
    public String saveUser(User user) {
        int i = loginService.insertUser(user);
        if (i > 0) {
            return "成功";
        } else {
            return "失败";
        }
    }

    @GetMapping(value = "/saveAllUser")
    @ResponseBody
    public String saveUser() {
        for (int i = 0; i < 100; i++) {
            User user = new User();
            user.setName("测试" + i);
            user.setPassword("admin");
            loginService.insertUser(user);
        }
        return JSON.toJSONString(ResultBody.success());
    }

    @GetMapping(value = "/getAllUser")
    public String getAllUser() {
        return JSON.toJSONString(loginService.getAllUser());
    }

    /*
     * @description: 登录
     * @author: Andy
     * @date: 2020/11/18 0018 10:17
     * @param null:
     * @return:
     */
    @PostMapping(value = "/login")
    @ResponseBody
    public String login(String name, String password, HttpServletResponse response) {
        JSONObject object = new JSONObject();
        User user = loginService.loginByUserName(name, password);
        if (user != null) {
            //自定义生成Token，因为使用了自定义登录，就不会执行JWTLoginFilter了，所以需要字段调用生成token并返给前端
            // 这里可以根据用户信息查询对应的角色信息，这里为了简单，我直接设置个空list
            String subject = user.getName() + "-" + user.isRole();
//            System.out.println(System.currentTimeMillis() + 60*1000);
//            System.out.println(System.currentTimeMillis());
            String token = Jwts.builder()
                    .setSubject(subject)
                    .setExpiration(new Date(System.currentTimeMillis() + 60 * 60 * 1000)) // 设置过期时间 365 * 24 * 60 * 60秒(这里为了方便测试，所以设置了1年的过期时间，实际项目需要根据自己的情况修改)
                    .signWith(SignatureAlgorithm.HS512, "MyJwtSecret") //采用什么算法是可以自己选择的，不一定非要采用HS512
                    .compact();
            // 登录成功后，返回token
            object.put("code", 200);
            object.put("token", token);
        } else {
            object.put("code", 400);
            object.put("token", "");
        }
        return JSONObject.toJSONString(object);
    }

    @ApiOperation("分页查询用户列表")
    @GetMapping(value = "/findAllUser")
    /*
     * @description:分页查询用户列表
     * @author: Andy
     * @date: 2020/11/23 0023 15:51
     * @param pageNo:
     * @param pageSize:
     * @return: com.example.zsp.SpringBootDemo.error.ResultBody
     */
    public ResultBody findAllUser(@RequestParam(defaultValue = "1") int pageNo, @RequestParam(defaultValue = "10") int pageSize) {
        PageHelper.startPage(pageNo, pageSize);
        return ResultBody.success(loginService.getAllUser());
    }
}
