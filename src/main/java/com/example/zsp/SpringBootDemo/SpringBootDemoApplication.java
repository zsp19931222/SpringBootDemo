package com.example.zsp.SpringBootDemo;

import com.example.zsp.SpringBootDemo.mq.Msg;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import javax.annotation.Resource;

//exclude = {SecurityAutoConfiguration.class} 禁止Security认证
@SpringBootApplication
@EnableCaching  //开启缓存
@EnableJpaRepositories
public class SpringBootDemoApplication implements CommandLineRunner {
    public static void main(String[] args) {
        SpringApplication.run(SpringBootDemoApplication.class, args);
    }

    /*
     * @description: 加密工具
     * @author: Andy
     * @date: 2020/11/18 0018 10:09
     * @param null:
     * @return:
     */
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }


    /*
     * @description:消息发送及目的地定义
     * CommandLineRunner接口中的run方法，是在程序启动后就会执行的代码。JmsTemplate 是用来操作JMS消息的操作类
     * @author: Andy
     * @date: 2020/11/20 0020 10:10
     * @param null:
     * @return:
     */
    @Resource
    JmsTemplate jmsTemplate;

    @Override
    public void run(String... args) throws Exception {
        new Thread(() ->{
            try {
                Thread.sleep(5*1000);
//                jmsTemplate.send("my-destination",new Msg());
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        } ).start();
    }
}
