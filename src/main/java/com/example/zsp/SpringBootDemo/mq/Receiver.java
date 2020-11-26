package com.example.zsp.SpringBootDemo.mq;

import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

/**
 * description:消息监听
 * author：Andy on 2020/11/20 0020-10:12
 * email:zsp872126510@gmail.com
 */
//@Component
public class Receiver {
    @JmsListener(destination = "my-destination")//显示的定义了指定要监听的目的地
    public void  receivedMessage(String message){
        System.out.println("接受到"+message);
    }
}
