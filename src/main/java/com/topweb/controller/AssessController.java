package com.topweb.controller;

import com.topweb.dao.AssessMapper;
import com.topweb.entity.Assess;
import com.topweb.entity.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by 18710 on 2017/11/4.
 */
@Controller
@RequestMapping("/ass")
public class AssessController {
    @Autowired
    AssessMapper ass;

    @RequestMapping("/assess.html")
    public ModelAndView assess(HttpServletRequest request,
                               @RequestParam(value = "chuli", defaultValue = "0", required = false)int chuli,
                               @RequestParam(value = "pnow", defaultValue = "1", required = false)int pagenow){
        ModelAndView view =new ModelAndView("assesslist");
         int nodeCount=ass.nodeCount(chuli);
        Page pg=new Page();
        pg.setPageNow(pagenow);
        pg.setStartNum((pagenow-1)*pg.getAvgPageCount());
        pg.setNodeCount(nodeCount);
        pg.setPageCount(nodeCount%pg.getAvgPageCount()==0?nodeCount/pg.getAvgPageCount():nodeCount/pg.getAvgPageCount()+1);
        List<Assess>assesslist=ass.assesslist(chuli,pg);

        view.addObject("asslist",assesslist);
        view.addObject("page",pg);
        view.addObject("chuli",chuli);
        return view;
    }
    @RequestMapping("/deletenode.html")
    public ModelAndView deletenode(HttpServletRequest request,
                                   @RequestParam(value = "deleteid", required = true)int deleteid){
        ModelAndView view=new ModelAndView("forward:/ass/assess.html");
                ass.deletenode(deleteid);
        return view;
    }

    @RequestMapping("/alldeleteinfo.html")
    public ModelAndView alldeleteinfo(HttpServletRequest request){

        ModelAndView view = new ModelAndView("forward:/ass/assess.html");
        String [] ids=request.getParameterValues("id");
        int result=0;
        for (String id:ids) {
            int sid=Integer.parseInt(id);
            result+= ass.deletenode(sid);
        }
        return view;
    }
    @RequestMapping("/assone.html")
    public ModelAndView assone(HttpServletRequest request){
        ModelAndView view = new ModelAndView("assessone");
        int id=Integer.parseInt(request.getParameter("id"));
        Assess assess=ass.assone(id);
        view.addObject("assess",assess);
        return view;
    }

    @RequestMapping("/upnoe.html")
    public ModelAndView upone(HttpServletRequest request){
        ModelAndView view = new ModelAndView("forward:/ass/assess.html");

        int id=Integer.parseInt(request.getParameter("aid"));
        int chuli=Integer.parseInt(request.getParameter("chuli"));
        System.out.println(chuli);
           ass.upnode(id,chuli);
        return view;
    }

}
