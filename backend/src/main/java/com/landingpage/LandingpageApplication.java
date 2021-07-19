package com.landingpage;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan(basePackages = {"com.landingpage.controller", "com.landingpage.service"})
@EnableJpaRepositories(basePackages = "com.landingpage.repository")
public class LandingpageApplication {

  public static void main(String[] args) {
    SpringApplication.run(LandingpageApplication.class, args);
  }

}
