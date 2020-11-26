package com.example.zsp.SpringBootDemo.mq;

import org.springframework.jms.core.MessageCreator;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

/**
 * description:定义消息
 * author：Andy on 2020/11/20 0020-10:08
 * email:zsp872126510@gmail.com
 */
public class Msg implements MessageCreator {
    @Override
    public Message createMessage(Session session) throws JMSException {
        return session.createTextMessage("测试消息");
    }
}
