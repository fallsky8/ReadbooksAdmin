package com.readbooks.usercontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.readbooks.userservice.UserService;
import com.readbooks.uservo.UserVO;



@Controller
@RequestMapping(value="/")
public class forgot {

   @Autowired
   private UserService idPwdService;
    
   //아이디 비밀번호 찾기 페이지 
   @RequestMapping(value="/searchIdPwdForm")
   public String searchIdPwdForm(){
      
      return "mail/searchIdPwdForm";
      
   }
   
   //아이디 찾기
   @RequestMapping(value="/searchId",method=RequestMethod.POST)
   @ResponseBody
   public String getId(@ModelAttribute UserVO userVo){
      
      System.out.println(userVo.getUser_name());
      System.out.println(userVo.getUser_email());
      String idResult="";
      
      idResult=idPwdService.getId(userVo);
      System.out.println(idResult);
      return idResult;
   }
   
   //비밀번호 찾기에서 정보 일치여부에 따른 페이지 이동
      @RequestMapping(value="/searchPwd",method=RequestMethod.POST)
      public ModelAndView getPwd(@ModelAttribute UserVO userVo){
         
      ModelAndView mav=new ModelAndView();
         
         System.out.println(userVo.getUser_id());
         System.out.println(userVo.getUser_name());
         System.out.println(userVo.getUser_email());
         String pwdResult="";
         String userId=userVo.getUser_id();
         pwdResult=idPwdService.getPwd(userVo);
         
         if(pwdResult==null||pwdResult==""){
            
            mav.setViewName("searchIdPwd/searchIdPwd");
            mav.addObject("msg", "조회실패");
         }else{
            mav.setViewName("changePwd/changePwd");
            mav.addObject("userId", userId);
            mav.addObject("userName", userVo.getUser_id());
            mav.addObject("user", userVo.getUser_pw());
         }
         
         return mav;
      }
}