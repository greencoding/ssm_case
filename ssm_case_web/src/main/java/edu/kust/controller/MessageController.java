package edu.kust.controller;


import edu.kust.domain.Message;
import edu.kust.service.IMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/message")
@PreAuthorize(value = "hasAnyRole('ROLE_ADMIN','ROLE_USER')")
public class MessageController {

    @Autowired
    private IMessageService messageService;

    @RequestMapping("/save.do")
    public String save(Message message){
        messageService.save(message);
        return "main";
    }

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(){
        ModelAndView mv = new ModelAndView();
        List<Message> messageList = messageService.findAll();
        mv.addObject("messageList",messageList);
        mv.setViewName("message");
        return mv;
    }
}
