package com.landingpage.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.landingpage.entity.News;
@Service
public class NewService {
  
  public List<News> creatNews(News news) {
    List<News> newslist = new ArrayList<>();
    newslist.add(news);
    return newslist;
  }
  
  public List<News> editNews(News news) {
    List<News> newslist = new ArrayList<>();
    newslist.add(new News(152644895, "hieuuuuu", 1005, 502, 1902, "01-01-1990", "06-02-1995", "Still", "on line"));
    for (News exitsedNews : newslist) {
      if(exitsedNews.getId() == news.getId()) {
        exitsedNews.setTittle(news.getTittle());
        exitsedNews.setViewnumber(news.getViewnumber());
        exitsedNews.setLikenumber(news.getLikenumber());
        exitsedNews.setSharenumber(news.getSharenumber());
        exitsedNews.setStatus(news.getStatus());
        exitsedNews.setAction(news.getAction());
        exitsedNews.setDateofcreat(news.getDateofcreat());
        exitsedNews.setDateofpost(news.getDateofpost());
      }
    }
    return newslist;
  }
  
  public List<News> deleteNews(News news) {
    List<News> newslist = new ArrayList<>();
    newslist.add(new News(152644895, "hieuuuuu", 1005, 502, 1902, "01-01-1990", "06-02-1995", "Still", "on line"));
    newslist.add(new News(159697654, "hieuuuuu", 1005, 502, 1902, "01-01-1990", "06-02-1995", "Still", "on line"));
    for (int i = 0; i < newslist.size(); i++) {
      if(newslist.get(i).getId() == news.getId()) {newslist.remove(i);}
    }
    return newslist;
  }

}
