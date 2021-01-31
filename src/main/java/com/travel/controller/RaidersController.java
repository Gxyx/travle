package com.travel.controller;


import com.travel.commn.Result;
import com.travel.commn.StatusCode;
import com.travel.entity.Raiders;
import com.travel.entity.TravelNotes;
import com.travel.service.RaidersService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author sanqi
 * @since 2021-01-29
 */
@RestController
@RequestMapping("/raiders")
@Api(value = "travelNotesController", tags = "攻略接口")
public class RaidersController {

    @Autowired
    private RaidersService raidersService;

    @ApiOperation("/查询所有攻略")
    @GetMapping("/get_all_raiders")
    public Result travel(){
        List<Raiders> raiders = raidersService.list();
        return new Result(StatusCode.OK,raiders);
    }
}
