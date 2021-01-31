package com.travel.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.travel.commn.Result;
import com.travel.commn.StatusCode;
import com.travel.entity.User;
import com.travel.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import static jdk.nashorn.internal.runtime.regexp.joni.Config.log;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author sanqi
 * @since 2021-01-29
 */
@RestController
@RequestMapping("/user")
@Api(value = "userController", tags = "用户操作接口")
public class UserController {

    @Autowired
    private UserService userService;

    @ApiOperation("/根据用户id获取用户信息")
    @ApiImplicitParam(value = "id", name = "id", dataType = "String", paramType = "path")
    @GetMapping("/{id}")
    public Result test(@PathVariable("id") Integer id){
        User user = userService.getById(id);
        return new Result(true, StatusCode.OK,"查询成功",user);
    }


    @ApiOperation(value = "login", notes = "用户登录接口")
    @PostMapping(value = "/login")
    public Result login(@RequestParam String phone, @RequestParam String pwd) {
        System.err.println("请求了"+phone+" "+pwd);
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("phone", phone);
        User one = userService.getOne(wrapper);
        if (null != phone && null != pwd) {
            if (one.getPhone().equalsIgnoreCase(phone)) {
                if (one.getPwd().equalsIgnoreCase(pwd)) {
                    return new Result(StatusCode.OK,one.getName());
                } else {
                    return new Result(false,StatusCode.LOGINERROR,"用户名或密码错误");
                }
            } else {
                return new Result(false,StatusCode.LOGINERROR,"用户名或密码错误");
            }
        } else {
            return new Result(false,StatusCode.LOGINERROR,"用户名或密码错误");
        }
    }
}
