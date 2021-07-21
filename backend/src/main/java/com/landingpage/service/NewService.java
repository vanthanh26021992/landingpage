package com.landingpage.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.landingpage.entity.Account;
import com.landingpage.entity.News;
import com.landingpage.repository.NewsRepository;
@Service
public class NewService {
  
  @Autowired
  private NewsRepository newsRepository;
  
  public List<News> getNews() {
    return (List<News>) newsRepository.findAll();
  }
  
  public List<News> creatNews(News news) {
    newsRepository.save(news);
    return getNews();
  }
  
  public List<News> editNews(News news) {
    newsRepository.save(news);
    return getNews();
  }
  
  public List<News> deleteNews(News news) {
    newsRepository.deleteById((int) news.getId());
    return getNews();
  }

}
