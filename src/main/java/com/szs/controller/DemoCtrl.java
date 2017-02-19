package com.szs.controller;

import com.szs.dao.IEmpDao;
import com.szs.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


/**
 * Created by Administrator on 2017/2/18.
 */
@Controller
public class DemoCtrl {

    @Autowired
    private IEmpDao userDao;




    @RequestMapping(value = "/details", method = RequestMethod.GET)
    public @ResponseBody List<Employee> forCustomerDetail() {
        return userDao.getAllUser();
    }
}
