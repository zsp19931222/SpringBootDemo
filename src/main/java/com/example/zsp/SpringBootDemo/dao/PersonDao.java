package com.example.zsp.SpringBootDemo.dao;

import com.example.zsp.SpringBootDemo.bean.Person;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;


/**
 * description:
 * author：Andy on 2020/11/17 0017-16:06
 * email:zsp872126510@gmail.com
 */
@Repository
public class PersonDao {

    @Resource(name = "stringRedisTemplate")
    ValueOperations<String,String> valueOpsStr;

    @Resource(name = "redisTemplate")
    ValueOperations<Object,Object> valueOps;
    //存储字符串类型
    public void stringRedisTempleteDemo(){
        valueOpsStr.set("xx","yy");
    }
    //存储对象类型
    public  void  save(Person person){
        valueOps.set(person.getId(),person);
    }
    //获得字符串
    public  String getString(){
        return  valueOpsStr.get("zzz");
    }
    //获取对象类型
    public Person getPerson(){
        return (Person) valueOps.get("1");
    }
}
