package com.travel.controller;


import com.travel.commn.Result;
import com.travel.commn.StatusCode;
import com.travel.entity.TravelNotes;
import com.travel.service.TravelNotesService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
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


    @Value("${file.root.path}")
    private String filesRootPath;

    @Autowired
    private TravelNotesService travelNotesService;

    @ApiOperation("/查询所有游记")
    @GetMapping("/get_all_travel_notes")
    public Result travel(){
        List<TravelNotes> travelNotes = travelNotesService.list();
        return new Result(StatusCode.OK,travelNotes);
    }

    @ApiOperation("/添加游记")
    @PostMapping("/add_travel_notes_list")
    public Result addtravel(@RequestParam("files")MultipartFile[] files,
                            @RequestParam("title") String title,
                            @RequestParam("date") String date,
                            @RequestParam("text1") String text1,
                            @RequestParam("text2") String text2
                            ){
        TravelNotes travelNotes = new TravelNotes();
        travelNotes.setTitle(title);
        travelNotes.setDate(date);
        travelNotes.setText1(text1);
        travelNotes.setText2(text2);
        if (files.length<0){
            return null;
        }
        for (int i = 0;i<files.length;i++){
            // 获取文件名
            String originalFileName = files[i].getOriginalFilename();
            System.out.println("上传的文件名为：" + originalFileName);
            // 解决中文问题，liunx下中文路径图片显示问题
            String fileRootPath = filesRootPath.lastIndexOf("/")==(filesRootPath.length()-1) ? filesRootPath.substring(0,filesRootPath.length()-1) : filesRootPath;
            String filtAbsolutePath = "/" + "/" +originalFileName;
            String filtPath = fileRootPath + filtAbsolutePath;
            System.out.println(fileRootPath);
            File dest = new File(filtPath );
            // 检测是否存在目录
            if (!dest.getParentFile().exists()) {
                dest.getParentFile().mkdirs();
            }
            try {
                files[i].transferTo(dest);
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            travelNotes.setBackground(files[0].getOriginalFilename());
            travelNotes.setImg1(files[1].getOriginalFilename());
        }
        travelNotesService.save(travelNotes);
        return new Result(true, StatusCode.OK,"添加成功",travelNotes);
    }


}
