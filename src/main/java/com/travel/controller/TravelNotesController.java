package com.travel.controller;


import com.travel.commn.Result;
import com.travel.commn.StatusCode;
import com.travel.entity.TravelNotes;
import com.travel.entity.User;
import com.travel.service.TravelNotesService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
@RequestMapping("/travel-notes")
@Api(value = "travelNotesController", tags = "游记接口")
public class TravelNotesController {

    @Autowired
    private TravelNotesService travelNotesService;

    @ApiOperation("/查询所有游记")
    @GetMapping("/get_all_travel_notes")
    public Result travel(){
        List<TravelNotes> travelNotes = travelNotesService.list();
        return new Result(StatusCode.OK,travelNotes);
    }
}
