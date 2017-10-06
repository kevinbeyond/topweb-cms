package com.topweb.controller;


import com.topweb.dao.FriendlyLinkMapper;
import com.topweb.entity.FriendlyLink;
import com.topweb.entity.LinkName;
import com.topweb.entity.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;


import java.io.File;
import java.util.List;

/**
 * 友情链接
 * Created by Leo on 2017/9/24.
 */
@RequestMapping("/market")
@Controller
public class FriendshipLinkController {

    @Autowired
    private FriendlyLinkMapper flm;

    @RequestMapping("/friendshiplink.html")
    public ModelAndView friendshipLinkSetting(HttpServletRequest request){
        ModelAndView view = new ModelAndView("friendship_link");
  String guan=request.getParameter("guan");
        //System.out.println(guan);
        int pagenow=Integer.parseInt(request.getParameter("pnow"));
        int linktype=Integer.parseInt(request.getParameter("linktype"));
        FriendlyLink fl=new FriendlyLink();
       // System.out.println("连接类型"+linktype);
       // System.out.println("当前页数"+pagenow);
        int nodeCount=0;

        if (linktype==1){
              fl.setEgis(2);
              nodeCount=flm.nodeCount(linktype);
        }else if (linktype==2){
             fl.setRecommend(1);
            nodeCount=flm.nodeCount(linktype);
        }else if(linktype==4){
              fl.setLinkType(1);
            nodeCount=flm.nodeCount(linktype);
        }else if(linktype==3){
            nodeCount=flm.nodeCount(linktype);
        }else if(linktype==5){
            fl.setLinkType(2);
            nodeCount=flm.nodeCount(linktype);
        } else if (linktype==6) {
            nodeCount=flm.nodeCountGuan(guan);
            fl.setWebKeyWords(guan);
        }

        view.addObject("linktype",linktype);





      /*  System.out.println("linktype"+fl.getLinkType());
        System.out.println("egis"+fl.getEgis());
        System.out.println("webkeywords"+fl.getWebKeyWords());
        System.out.println("recommend"+fl.getRecommend());*/

        Page pg=new Page();
        pg.setPageNow(pagenow);
        pg.setStartNum((pagenow-1)*pg.getAvgPageCount());


      /*  System.out.println("开始个数" + pg.getStartNum());*/



      // System.out.println("总信息数"+nodeCount);

       pg.setNodeCount(nodeCount);

       pg.setPageCount(nodeCount%pg.getAvgPageCount()==0?nodeCount/pg.getAvgPageCount():nodeCount/pg.getAvgPageCount()+1);

       // System.out.println("总页数"+pg.getPageCount());

        List<FriendlyLink> friendlyLink=flm.friendlylinkList(fl,pg);
        List<LinkName> linkNames=flm.findLinkNames();
/*        for (FriendlyLink ff:friendlyLink) {
            System.out.println(ff.getId());
            System.out.println(ff.getLinkType());
        }*/

     /*   for (LinkName ff:linkNames) {
            System.out.println(ff.getId());
            System.out.println(ff.getLinkName());
        }*/

        view.addObject("fdl",friendlyLink);
        view.addObject("page",pg);
        view.addObject("linknames",linkNames);

        view.addObject("guan",guan);
        return view;
    }

    @RequestMapping("/addFriendshiplink.html")
    public ModelAndView addFriendshiplink(){
        ModelAndView view = new ModelAndView("addFriendlyLink");

        return view;
    }

    @RequestMapping(value = "/saveFriendlyLink.html", method = RequestMethod.POST )
    public ModelAndView saveFriendlyLink(HttpServletRequest request){
        ModelAndView view = new ModelAndView("redirect:/market/friendshiplink.html?pnow=1&linktype=3&guan=0");

        FriendlyLink friendlyLink=new FriendlyLink();
        int updateid=Integer.parseInt(request.getParameter("updateid"));
        friendlyLink.setId(updateid);
        System.out.println(updateid);

        int linktype=Integer.parseInt(request.getParameter("link_type"));
        friendlyLink.setLinkType(linktype);
        System.out.println("链接类型"+linktype);

       String webaddress=request.getParameter("weburl");
       friendlyLink.setWebAddress(webaddress);
        System.out.println(webaddress);

      String weblogo=request.getParameter("weblogo");
      friendlyLink.setWebLogo(weblogo);
        System.out.println(weblogo);

      String keyword =request.getParameter("info");
      friendlyLink.setWebKeyWords(keyword);
        System.out.println(keyword);


        int sort=Integer.parseInt(request.getParameter("orderno"));
        friendlyLink.setSort(sort);
        System.out.println(sort);

        int egis=Integer.parseInt(request.getParameter("show_ok"));
        friendlyLink.setEgis(egis);
        System.out.println("审核"+egis);

        int recommend=Integer.parseInt(request.getParameter("com_ok"));
        friendlyLink.setRecommend(recommend);
        System.out.println("推荐"+recommend);

        String contact=request.getParameter("contact").trim();
        friendlyLink.setContactWay(contact);
        System.out.println(contact);

        String webname=request.getParameter("webname");
        friendlyLink.setWebTitle(webname);

        flm.saveinfo(friendlyLink);

        return view;
    }
    @RequestMapping("/updateinfo.html")
    public ModelAndView updateinfo(HttpServletRequest request){
        ModelAndView view = new ModelAndView("updateFriendlyLink");
         int id=Integer.parseInt(request.getParameter("updateid"));
      // System.out.println(id);
        FriendlyLink fl=flm.updateinfo(id);
        view.addObject("fl",fl);
        return view;
    }

    @RequestMapping("/deletelink.html")
    public ModelAndView deletelink(HttpServletRequest request){
        ModelAndView view = new ModelAndView("redirect:/market/friendshiplink.html?pnow=1&linktype=3&guan=0");
        int id=Integer.parseInt(request.getParameter("deleteid"));
       // System.out.println(id);
        int deleteresult=flm.deleteinfo(id);
      //  System.out.println(deleteresult);
        return view;
    }


    @RequestMapping("/alldeleteinfo.html")
    public ModelAndView alldeleteinfo(HttpServletRequest request){

        ModelAndView view = new ModelAndView("redirect:/market/friendshiplink.html?pnow=1&linktype=3&guan=0");
       String [] ids=request.getParameterValues("id");
       int result=0;
        for (String id:ids) {
            int sid=Integer.parseInt(id);
            result+=flm.deleteinfo(sid);
        }
        return view;
    }

    @RequestMapping(value = "/addinfo.html", method = RequestMethod.POST )
    public ModelAndView addinfo(@RequestParam(value = "met_upsql1", required = false) MultipartFile file, HttpServletRequest request){
        ModelAndView view = new ModelAndView("redirect:/market/friendshiplink.html?pnow=1&linktype=3&guan=0");


        FriendlyLink friendlyLink=new FriendlyLink();

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

        int link_type=Integer.parseInt(request.getParameter("link_type"));
        friendlyLink.setLinkType(link_type);

       String webaddress=request.getParameter("weburl");
        friendlyLink.setWebAddress(webaddress);
        System.out.println(webaddress);

        String weblogo=request.getParameter("weblogo");
        friendlyLink.setWebLogo(weblogo);
        System.out.println(weblogo);

        String keyword =request.getParameter("info");
        friendlyLink.setWebKeyWords(keyword);
        System.out.println(keyword);


        int sort=Integer.parseInt(request.getParameter("orderno"));
        friendlyLink.setSort(sort);
        System.out.println(sort);

        int egis=Integer.parseInt(request.getParameter("show_ok"));
        friendlyLink.setEgis(egis);
        System.out.println("审核"+egis);

        int recommend=Integer.parseInt(request.getParameter("com_ok"));
        friendlyLink.setRecommend(recommend);
        System.out.println("推荐"+recommend);

        String contact=request.getParameter("contact").trim();
        friendlyLink.setContactWay(contact);
        System.out.println(contact);

        String webname=request.getParameter("webname");
        friendlyLink.setWebTitle(webname);

        flm.addinfo(friendlyLink);

        return view;
    }

}
