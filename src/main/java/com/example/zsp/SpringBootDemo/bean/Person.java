package com.example.zsp.SpringBootDemo.bean;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

/**
 * description: Redis测试
 * author：Andy on 2020/11/17 0017-16:02
 * email:zsp872126510@gmail.com
 */
@ApiModel(description = "用户类")
public class Person implements Serializable {
    private String id;
    @ApiModelProperty(value = "姓名", example = "admin")
    private String name;
    private Integer age;

    public Person() {
    }

    public Person(String id, String name, Integer age) {
        this.id = id;
        this.name = name;
        this.age = age;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }
}
