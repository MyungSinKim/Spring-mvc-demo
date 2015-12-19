package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by eastsoft on 2015/11/21.
 */
@Controller
@RequestMapping("/testController")
public class TestController {

    @RequestMapping("login")
    public String printWelcome(@RequestParam(value = "username", required = false) String username, @RequestParam(value = "password", required = false) String password,ModelMap model) {
        model.addAttribute("message", "Hello world!");
        System.out.println("username="+username+"password="+password);
        List<String> lst=new ArrayList<String>();
        lst.add("11");
        lst.add("12");
        lst.add("13");
        lst.add("14");
        model.addAttribute("obj", lst);
        return "pages/hello";
    }


}
