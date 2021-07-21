package com.landingpage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.landingpage.entity.Account;
import com.landingpage.entity.News;
import com.landingpage.service.NewService;

@RestController
@RequestMapping("news")
public class NewsController {

  @Autowired
  private NewService service;
  
  @GetMapping("search")
  public List<News> getNews() {
    return service.getNews();
  }
  
  @PostMapping("create")
  @ResponseBody
  public List<News>creatNews(@RequestBody News news) {
    return service.creatNews(news);
  }
  
  @PostMapping("edit")
  public List<News>editNews(@RequestBody News news) {
    return service.editNews(news);
  }
  
  @PostMapping("delete")
  public List<News>deleteNews(@RequestBody News news) {
    return service.deleteNews(news);
  }
}
