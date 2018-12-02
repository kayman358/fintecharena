/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fintech.implementation;

import com.fintech.dao.PostsDAO;
import com.fintech.model.Post;
import com.fintech.model.Comment;
import com.fintech.model.User;
import com.fintech.services.Service;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.log4j.Logger;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author IBRAHIM
 */
@Controller
public class ForumImplementation {
    String subject;
    String loggedInUser = "Guest";
    final static Logger logger = Logger.getLogger(ForumImplementation.class);
    ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
    PostsDAO JDBCTemplate
            = (PostsDAO) context.getBean("JDBCTemplate");

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getIndex() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("username", loggedInUser);
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping(value = "/open-banking", method = RequestMethod.GET)
    public ModelAndView getOpenBanking() {
        logger.debug("Inside OpenBanking View");
        ModelAndView mv = new ModelAndView();
        mv.addObject("username", loggedInUser);
        mv.setViewName("open-banking");
        return mv;
    }

    @RequestMapping(value = "open-banking/new-post", method = RequestMethod.GET)
    public ModelAndView getNewPost() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("username", loggedInUser);
        mv.setViewName("new-post");
        return mv;
    }

    @RequestMapping(value = "/posts/{id}", method = RequestMethod.GET)
    public ModelAndView getPostDetails(@PathVariable("id") int id, @ModelAttribute Post post, Comment comment) {
        ModelAndView mv = new ModelAndView();
        post = JDBCTemplate.viewPost(id);
        mv.addObject("id", id);
        mv.addObject("subject", post.getSubject());
        subject = post.getSubject();
        mv.addObject("body", post.getBody());
        List<Comment> comments = JDBCTemplate.viewComments(id);

        for (Comment koment : comments) {
            mv.addObject("comment", koment.getComment());
            logger.debug("My comment " + koment.getComment());
        }
        mv.addObject("comments", comments);
        mv.addObject("username", loggedInUser);
        mv.setViewName("post");
        return mv;
    }

    @RequestMapping(value = "/posts/{id}/comment", method = RequestMethod.GET)
    public ModelAndView addCommentPage(@PathVariable("id") int id) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("id", id);
        mv.addObject("username", loggedInUser);
        mv.addObject("subject", subject);
        mv.setViewName("comment");
        return mv;
    }

    @RequestMapping(value = "/posts/{id}/addcomment", method = RequestMethod.POST)
    public String addComment(HttpServletResponse response, HttpServletRequest request, @PathVariable("id") int id, @ModelAttribute Comment comment, Post post) {
        ModelAndView mv = new ModelAndView();
        JDBCTemplate.createComment(comment, id);
        logger.debug("Comment Body is " + comment.getComment());
        post = JDBCTemplate.viewPost(id);
        mv.addObject("subject", post.getSubject());
        mv.addObject("body", post.getBody());
        List<Comment> comments = JDBCTemplate.viewComments(id);
        for (Comment koment : comments) {
            mv.addObject("comment", koment.getComment());
        }
        mv.addObject("comments", comments);
        mv.addObject("username", loggedInUser);
        //mv.setViewName("post");
        return "redirect:/posts/{id}";
    }

    @RequestMapping(value = "/open-banking/new-post/createPost", method = RequestMethod.POST)
    public String addTopic(@ModelAttribute Post topic, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        System.out.println("result is " + topic.getSubject());
        int id = JDBCTemplate.createPost(topic);
        mv.addObject("id", id);
        mv.addObject("body", topic.getBody());
        mv.addObject("subject", topic.getSubject());
        
        List<Comment> comments = JDBCTemplate.viewComments(id);
        for (Comment koment : comments) {
            mv.addObject("comment", koment.getComment());
        }
        mv.addObject("comments", comments);
        mv.addObject("username", loggedInUser);
        //mv.setViewName("post");
        System.out.println("ID is "+id);
        return "redirect:/posts/"+id+"/";
        //return mv;
    }

    @RequestMapping(value = "/userLogin", method = RequestMethod.GET)
    public ModelAndView userLogin() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("username", loggedInUser);
        mv.setViewName("login");
        return mv;
    }
    
    @RequestMapping(value = "/userLogin", method = RequestMethod.POST)
    public String LoginController(@ModelAttribute User user, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String enteredPassword = user.getPassword();
        User DBuser = JDBCTemplate.getUser(user);
        String gottenPassword = DBuser.getPassword();
      
        if(BCrypt.checkpw(enteredPassword, gottenPassword)){
        request.getSession().setAttribute("username", user.getUsername());
        return "redirect:/";
        }
        else{
            mv.addObject("wrong", "Please kindly re-confirm your login credentials are correct");
           return "redirect:login";
        }
          
    }
    

    @RequestMapping(value = "/newUser", method = RequestMethod.GET)
    public ModelAndView newUser() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("username", loggedInUser);
        mv.setViewName("newUser");
        return mv;
    }

    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
    public String createUser(@ModelAttribute User user, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        Service service = new Service(user.getPassword(), user.getConfirmPassword());
        boolean isPasswordSame = service.confirmPassword();

        if (isPasswordSame) {
              String hashed = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt());
              user.setPassword(hashed);
            JDBCTemplate.createUser(user);
            request.getSession().setAttribute("username", user.getUsername());
            //loggedInUser = user.getUsername();
            mv.addObject("username", loggedInUser);
            return "redirect:/";
        } else {
            return "redirect:newUser";
        }

   
    }
}
