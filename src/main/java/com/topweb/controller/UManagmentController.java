package com.topweb.controller;

import com.topweb.dao.UManagementMapper;
import com.topweb.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

/**
 * Created by 18710 on 2017/10/7.
 */
@RequestMapping("/um")
@Controller
public class UManagmentController {
  @Autowired
    private UManagementMapper um;

    @RequestMapping("/uninersity.html")
    public ModelAndView uninersity(HttpServletRequest request){
        ModelAndView view = new ModelAndView("umanagement");



        int type=Integer.parseInt(request.getParameter("type"));
        int pagenow=Integer.parseInt(request.getParameter("pnow"));
        int authentication=Integer.parseInt(request.getParameter("authentication"));

        //System.out.println(authentication);

        School school=new School();

        school.setAuthentication(authentication);
        school.setSchoolnature(type);

        Page pg=new Page();
        pg.setPageNow(pagenow);
        pg.setStartNum((pagenow-1)*pg.getAvgPageCount());

        List<Nature> natures=um.naturelist();
        List<School> schools=um.schoollist(school,pg);
        int nodeCount=um.schoolconut(school);
        pg.setNodeCount(nodeCount);

        pg.setPageCount(nodeCount%pg.getAvgPageCount()==0?nodeCount/pg.getAvgPageCount():nodeCount/pg.getAvgPageCount()+1);

       /* for (School sch:schools) {
            System.out.println("aa"+sch.getUname());
            System.out.println(sch.getSchoolnature());
        }*/

        view.addObject("natures",natures);
        view.addObject("type",type);
        view.addObject("schools",schools);
        view.addObject("page",pg);
        view.addObject("authentication",authentication);
        return view;
    }

    @RequestMapping("/deleteschool.html")
    public ModelAndView deleteschool(HttpServletRequest request) {
        ModelAndView view = new ModelAndView("redirect:/um/uninersity.html?pnow=1&type=0&authentication=0");

            int id=Integer.parseInt(request.getParameter("deleteid"));
        System.out.println(id);
           int num=  um.deleteschool(id);
        System.out.println( num);
             return view;
    }

    @RequestMapping("/alldelete.html")
    public ModelAndView alldelete(HttpServletRequest request){

        ModelAndView view = new ModelAndView("redirect:/um/uninersity.html?pnow=1&type=0&authentication=0");
        String [] ids=request.getParameterValues("id");
        int result=0;
        for (String id:ids) {
            int sid=Integer.parseInt(id);
            result+=um.deleteschool(sid);
        }
        System.out.println(request);
        return view;
    }
    @RequestMapping("/addschool.html")
    public ModelAndView addschool(HttpServletRequest request){
        ModelAndView modelAndView =new ModelAndView("addschool");

        List<Nature> natures=um.naturelist();

            int adorup=Integer.parseInt(request.getParameter("addorup"));
            if (adorup==1){
                System.out.println(adorup);
                School school=new School();
                school.setId(0);
                modelAndView.addObject("school",school);
            }else {
                System.out.println(adorup);
                int id=Integer.parseInt(request.getParameter("updateid"));
                School school=um.upschool(id);
                modelAndView.addObject("school",school);
                System.out.println(school.getUname());
                System.out.println(school.getId());
                Tuition tuition=um.setuition(id);
                modelAndView.addObject("tuition",tuition);
            }



          modelAndView.addObject("nature",natures);
        return modelAndView;
    }

    @RequestMapping(value = "/addinfo.html", method = RequestMethod.POST)
    public ModelAndView addinfo(@RequestParam(value = "met_upsql1", required = false) MultipartFile file, HttpServletRequest request){
                  ModelAndView modelAndView=new ModelAndView("redirect:/um/uninersity.html?pnow=1&type=0&authentication=0");
        System.out.println("addinfo");

        School school=new School();
        String name=request.getParameter("cname");
        System.out.println("中文名字:"+name);
        school.setUname(name);

        String jpname=request.getParameter("jpname");
        System.out.println("日本名字:"+jpname);
        school.setJpname(jpname);

        String  schooladress=request.getParameter("schooladress");
        System.out.println(schooladress);
        school.setSchooladress(schooladress);

        int schoolnature=Integer.parseInt(request.getParameter("schoolnature"));
        System.out.println("性质:"+schoolnature);
        school.setSchoolnature(schoolnature);

        int buldingtime=Integer.parseInt(request.getParameter("buldingyear"));
        System.out.println("时间:"+buldingtime);
        school.setBuldingschooltime(buldingtime);

        int authentication=Integer.parseInt(request.getParameter("authentication"));
        System.out.println("认证:"+authentication);
        school.setAuthentication(authentication);

        int peopleconut =Integer.parseInt(request.getParameter("peopleconut"));
        System.out.println("人数；"+peopleconut);
        school.setPeoplecount(peopleconut);

        int popularity=Integer.parseInt(request.getParameter("popularity"));
        System.out.println("人气:"+popularity);
        school.setPopularity(popularity);

        String img=request.getParameter("img");
        System.out.println("img:"+img);
        school.setImg(img);

        String synopsis=request.getParameter("synopsis").trim();
        // System.out.println("synopsis:"+synopsis);
        school.setSynopsis(synopsis);


        String phone=request.getParameter("phone");
        // System.out.println("phone:"+phone);
        school.setPhone(phone);


        String motto=request.getParameter("motto").trim();
        // System.out.println("motto:"+motto);
        school.setMotto(motto);

        int phd =Integer.parseInt(request.getParameter("phd"));
        // System.out.println("phd；"+phd);
        school.setPhd(phd);

        int graduate =Integer.parseInt(request.getParameter("graduate"));
        // System.out.println("graduate；"+graduate);
        school.setGraduate(graduate);

        int undergraduate =Integer.parseInt(request.getParameter("undergraduate"));
        // System.out.println("undergraduate；"+undergraduate);
        school.setUndergraduate(undergraduate);

        int speechcenter =Integer.parseInt(request.getParameter("speechcenter"));
        //System.out.println("speechcenter；"+speechcenter);
        school.setSpeechcenter(speechcenter);

        um.addinfo(school);

        int sid=um.selectsid(name);
        Tuition tuition=new Tuition();
           tuition.setPtuition(Double.parseDouble(request.getParameter("ptuition")));
           tuition.setGtuition(Double.parseDouble(request.getParameter("gtuition")));
           tuition.setUtuition(Double.parseDouble(request.getParameter("utuition")));
           tuition.setStuition(Double.parseDouble(request.getParameter("stuition")));
           tuition.setSid(sid);

           um.addtuition(tuition);

        // 判断文件是否为空
        if (!file.isEmpty()) {
            try {
                // 文件保存路径
                String filePath = request.getSession().getServletContext().getRealPath("/") + "upload/"
                        + file.getOriginalFilename();
                // 转存文件
                file.transferTo(new File(filePath));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }


                  return modelAndView;
    }

    @RequestMapping(value = "/upinfo.html", method = RequestMethod.POST)
    public ModelAndView upinfo(@RequestParam(value = "met_upsql1", required = false) MultipartFile file, HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView("redirect:/um/uninersity.html?pnow=1&type=0&authentication=0");


        School school=new School();
        int id=Integer.parseInt(request.getParameter("schoolid"));
       // System.out.println("学校id:"+id);
        school.setId(id);

        String name=request.getParameter("cname");
       // System.out.println("中文名字:"+name);
        school.setUname(name);

        String jpname=request.getParameter("jpname");
       // System.out.println("日本名字:"+jpname);
        school.setJpname(jpname);

        String  schooladress=request.getParameter("schooladress");
        //System.out.println(schooladress);
        school.setSchooladress(schooladress);

        int schoolnature=Integer.parseInt(request.getParameter("schoolnature"));
       // System.out.println("性质:"+schoolnature);
        school.setSchoolnature(schoolnature);

        int buldingtime=Integer.parseInt(request.getParameter("buldingyear"));
       // System.out.println("时间:"+buldingtime);
        school.setBuldingschooltime(buldingtime);

        int authentication=Integer.parseInt(request.getParameter("authentication"));
       // System.out.println("认证:"+authentication);
        school.setAuthentication(authentication);

        int peopleconut =Integer.parseInt(request.getParameter("peopleconut"));
       // System.out.println("人数；"+peopleconut);
        school.setPeoplecount(peopleconut);

        int popularity=Integer.parseInt(request.getParameter("popularity"));
       // System.out.println("人气:"+popularity);
        school.setPopularity(popularity);

        String img=request.getParameter("img");
       // System.out.println("img:"+img);
        school.setImg(img);

        String synopsis=request.getParameter("synopsis").trim();
       // System.out.println("synopsis:"+synopsis);
        school.setSynopsis(synopsis);


        String phone=request.getParameter("phone");
        //System.out.println("phone:"+phone);
        school.setPhone(phone);


        String motto=request.getParameter("motto").trim();
       // System.out.println("motto:"+motto);
        school.setMotto(motto);

        int phd =Integer.parseInt(request.getParameter("phd"));
       // System.out.println("phd；"+phd);
        school.setPhd(phd);

        int graduate =Integer.parseInt(request.getParameter("graduate"));
       // System.out.println("graduate；"+graduate);
        school.setGraduate(graduate);

        int undergraduate =Integer.parseInt(request.getParameter("undergraduate"));
        //System.out.println("undergraduate；"+undergraduate);
        school.setUndergraduate(undergraduate);

        int speechcenter =Integer.parseInt(request.getParameter("speechcenter"));
        //System.out.println("speechcenter；"+speechcenter);
        school.setSpeechcenter(speechcenter);


        um.upinfo(school);

        Tuition tuition=new Tuition();
        tuition.setPtuition(Double.parseDouble(request.getParameter("ptuition")));
        tuition.setGtuition(Double.parseDouble(request.getParameter("gtuition")));
        tuition.setUtuition(Double.parseDouble(request.getParameter("utuition")));
        tuition.setStuition(Double.parseDouble(request.getParameter("stuition")));
        tuition.setSid(id);

        um.uptuition(tuition);


        // 判断文件是否为空
        if (!file.isEmpty()) {
            try {
                // 文件保存路径
                String filePath = request.getSession().getServletContext().getRealPath("/") + "upload/"
                        + file.getOriginalFilename();
                // 转存文件
                file.transferTo(new File(filePath));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return modelAndView;
    }

}