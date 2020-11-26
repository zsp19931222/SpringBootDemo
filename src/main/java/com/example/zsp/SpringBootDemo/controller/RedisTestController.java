package com.example.zsp.SpringBootDemo.controller;

import com.example.zsp.SpringBootDemo.bean.Person;
import com.example.zsp.SpringBootDemo.dao.PersonDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * description:
 * author：Andy on 2020/11/17 0017-16:19
 * email:zsp872126510@gmail.com
 */
@RestController
@RequestMapping("/redis")
public class RedisTestController {

    @Resource
    PersonDao personDao;

    @RequestMapping("/test")
    public void set(){
        Person p = new Person("1","周劭鹏",26);
        personDao.save(p);
        personDao.stringRedisTempleteDemo();
    }

    @RequestMapping("/getStr")
    public String getStr(){
        return personDao.getString();

    }
    @RequestMapping("/getPerson")
    public Person getPerson(){
        return  personDao.getPerson();
    }

}

