package com.szs.controller;

import com.szs.dao.IUserDao;
import com.szs.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


/**
 * Created by Administrator on 2017/2/18.
 */
@Controller
public class DemoCtrl {

    @Autowired
    IUserDao userDao;

    @RequestMapping(value = "/details", method = RequestMethod.GET)
    public ModelAndView forCustomerDetail() {
        List<User> userList=userDao.getAllUser();
        System.out.println(userList);
        ModelAndView modelAndView=new ModelAndView("/module/name");
        modelAndView.addObject("a",1);
        return modelAndView;
    }
}
