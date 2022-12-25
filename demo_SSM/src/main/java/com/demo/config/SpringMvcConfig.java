package com.demo.config;


import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan({"com.demo.controller","com.demo.config"})
@EnableWebMvc
public class SpringMvcConfig {
}
