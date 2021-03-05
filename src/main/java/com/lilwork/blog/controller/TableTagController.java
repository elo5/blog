package com.lilwork.blog.controller;


import com.lilwork.blog.entity.TableTag;
import com.lilwork.blog.service.TableTagService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <bold>tags前端控制器</bold>
 * <p>
 *  注意，对于swagger，不要使用@RequestMapping，
 *  因为@RequestMapping支持任意请求方式，swagger会为这个接口生成7种请求方式的接口文档
 * </p>
 *
 * @author lil
 * @since 2021-03-05
 */

@Api(tags = "tags管理")   //  tags：你可以当作是这个组的名字。
@RestController
public class TableTagController {

    @Autowired
    private TableTagService tableTagService;

    @GetMapping("/list")
    public List<TableTag> info(){
        return tableTagService.list();
    }

    @PostMapping("/add")
    public String add(String tag){

        List<TableTag> allTags = tableTagService.list();
        for (TableTag t : allTags){
            if (tag.trim().equals(t.getName())){
                return tag.trim() + "已存在";
            }
        }

        TableTag tableTag= new TableTag();
        tableTag.setName(tag.trim());
        tableTagService.save(tableTag);
        System.out.println("###################### : " + tableTag.toString());
        return "添加成功";
    }


}