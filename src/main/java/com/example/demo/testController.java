package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class testController {
    @ResponseBody
    @RequestMapping(value =  "test",method={RequestMethod.GET} )
    public String test( ){

        return "你好";
    }
}
