package com.landingpage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.landingpage.entity.News;
import com.landingpage.service.NewService;

@RestController
@RequestMapping("news")
public class NewsController {

  @Autowired
  private NewService service;
  
  @PostMapping("create")
  public List<News>creatNews(News news) {
    return service.creatNews(news);
  }
  
  @PostMapping("edit")
  public List<News>editNews(News news) {
    return service.editNews(news);
  }
  
  @PostMapping("delete")
  public List<News>deleteNews(News news) {
    return service.deleteNews(news);
  }
}
