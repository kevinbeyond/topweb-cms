package com.topweb.controller;


import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import com.topweb.dao.FriendlyLinkMapper;
import com.topweb.entity.FriendlyLink;
import com.topweb.entity.LinkName;
import com.topweb.entity.Page;
import com.topweb.model.FileUploadReturnModel;
import com.topweb.model.ResultCode;
import com.topweb.model.ResultViewModel;
import com.topweb.util.ConstantUtil;
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
import java.io.IOException;
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
    public ModelAndView friendshipLinkSetting(HttpServletRequest request,
                                              @RequestParam(value = "pnow", defaultValue = "1", required = false)int pagenow,
                                              @RequestParam(value = "linktype", defaultValue = "3", required = false)int linktype){
        ModelAndView view = new ModelAndView("friendship_link");
        String guan=request.getParameter("guan");
        //System.out.println(guan);
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
    public ModelAndView addinfo(@RequestParam(value = "met_upsql1") MultipartFile image,
                                HttpServletRequest request){
        ModelAndView view = new ModelAndView("redirect:/market/friendshiplink.html?pnow=1&linktype=3&guan=0");


        FriendlyLink friendlyLink=new FriendlyLink();

        //文件上传
        ResultViewModel result = new ResultViewModel();
        //上传七牛云服务器
        Configuration cfg = new Configuration(Zone.zone1());//华北机房
        UploadManager uploadManager = new UploadManager(cfg);
        Auth auth = Auth.create(ConstantUtil.QINIU_ACCESS_KEY, ConstantUtil.QINIU_SECRET_KEY);
        String upToken = auth.uploadToken(ConstantUtil.QINIU_BUCKET);

        String key = System.currentTimeMillis()+"_" + image.getOriginalFilename();
        friendlyLink.setWebLogo(key);
        try {
            Response response = uploadManager.put(image.getBytes(), key, upToken);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            if (putRet != null) {

                FileUploadReturnModel returnModel = new FileUploadReturnModel();
                returnModel.setFilepath(key);
                returnModel.setOriginal("../" + key);
                result.setObject(returnModel);
                result.setCode(ResultCode.UPLOAD_SUCCESS);
                result.setMessage(ResultCode.UPLOAD_SUCCESS_MSG);
                System.out.println("putnull");
            } else {
                result.setCode(ResultCode.UPLOAD_FAIL);
                result.setMessage(ResultCode.UPLOAD_FAIL_MSG);
                System.out.println("putnotnull");
            }
        } catch (QiniuException ex) {
            Response r = ex.response;
            result.setCode(ResultCode.UPLOAD_FAIL);
            result.setMessage(ResultCode.UPLOAD_FAIL_MSG);
            System.out.println("qiniuex");
        } catch (IOException e) {
            e.printStackTrace();
            result.setCode(ResultCode.UPLOAD_FAIL);
            result.setMessage(ResultCode.UPLOAD_FAIL_MSG);
            System.out.println("ioex");
        }

        int link_type=Integer.parseInt(request.getParameter("link_type"));
        friendlyLink.setLinkType(link_type);

       String webaddress=request.getParameter("weburl");
        friendlyLink.setWebAddress(webaddress);
        System.out.println(webaddress);




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
