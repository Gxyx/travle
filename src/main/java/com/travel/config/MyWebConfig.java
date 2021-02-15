package com.travel.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @Auther: Gxyx
 * @Date: 2021/02/15/16:23
 */
@Configuration
public class MyWebConfig implements WebMvcConfigurer {
    //设置静态文件的目录
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        registry.addResourceHandler("/images/**").addResourceLocations("file:D:/ceshi/travle/src/main/resources/static/images");
    }
}

