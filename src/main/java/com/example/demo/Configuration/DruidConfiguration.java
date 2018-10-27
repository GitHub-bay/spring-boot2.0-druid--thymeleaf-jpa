package com.example.demo.Configuration;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.http.StatViewServlet;
import com.alibaba.druid.support.http.WebStatFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import javax.sql.DataSource;

@Configuration
public class DruidConfiguration {

    private static final Logger logger = LoggerFactory.getLogger(DruidDataSource.class);

    @Bean
    public ServletRegistrationBean<StatViewServlet> druidServlet() {

        logger.info("init Druid Servlet Configuration");

        ServletRegistrationBean<StatViewServlet> servletRegistrationBean = new ServletRegistrationBean<>(new StatViewServlet(), "/druid/*");

        // IP白名单
        servletRegistrationBean.addInitParameter("allow", "*");

        // IP黑名单-优先
        //servletRegistrationBean.addInitParameter("deny","127.0.0.1");
        servletRegistrationBean.addInitParameter("loginUserName", "admin");
        servletRegistrationBean.addInitParameter("loginPassword", "admin");

        // 禁用Reset All功能
        servletRegistrationBean.addInitParameter("resetEnable", "false");

        return servletRegistrationBean;

    }

    @Bean
    public FilterRegistrationBean<WebStatFilter> filterRegistrationBean() {

        FilterRegistrationBean<WebStatFilter> webStatFilterFilterRegistrationBean = new FilterRegistrationBean<>(new WebStatFilter());
        webStatFilterFilterRegistrationBean.addUrlPatterns("/*");
        webStatFilterFilterRegistrationBean.addInitParameter("exclusions", "*.js,*.gif,*.jpg,*.png,*.css,*.ico,/druid/*");

        return webStatFilterFilterRegistrationBean;
    }

    @Value("${spring.datasource.url}")
    private String url;

    @Value("${spring.datasource.username}")
    private String userName;

    @Value("${spring.datasource.password}")
    private String password;

    @Value("${spring.datasource.driver-class-name}")
    private String driverClassName;

    @Bean
    @Primary
    public DataSource dataSource() {
        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setUrl(url);
        druidDataSource.setUsername(userName);
        druidDataSource.setPassword(password);
        druidDataSource.setDriverClassName(driverClassName);

        //configuration

        return druidDataSource;
    }
}
