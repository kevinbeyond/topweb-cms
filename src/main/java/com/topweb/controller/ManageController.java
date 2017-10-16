package com.topweb.controller;

import com.topweb.dao.CMSArticleMapper;
import com.topweb.dao.CMSColumnMapper;
import com.topweb.dao.CMSImageMapper;
import com.topweb.entity.CMSArticle;
import com.topweb.entity.CMSArticleWithBLOBs;
import com.topweb.entity.CMSColumn;
import com.topweb.entity.CMSImage;
import com.topweb.model.ResultCode;
import com.topweb.model.ResultViewModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Leo on 2017/10/3.
 */
@RequestMapping("/content")
@Controller
public class ManageController {

    @Autowired
    private CMSArticleMapper articleMapper;

    @Autowired
    private CMSColumnMapper columnMapper;

    @Autowired
    private CMSImageMapper imageMapper;

    @RequestMapping("/manage.html")
    public ModelAndView cmsContentManage() {
        ModelAndView view = new ModelAndView("content_management");

        return view;
    }

    @RequestMapping("/publish.html")
    public ModelAndView cmsContentPublish() {
        ModelAndView view = new ModelAndView("content_publish");
        return view;
    }

    /**
     * 栏目发布
     * @param class1
     * @return
     */
    @RequestMapping(value = "/columnPublish.html", method = RequestMethod.POST)
    public @ResponseBody String columnPublish(@RequestParam(value = "class1", defaultValue = "0") int class1) {

        if(class1 == 0) {
            return "/content/publish.html";
        }

        CMSColumn column = columnMapper.selectByPrimaryKey(class1);

        if (column.getModule() == 2) {//文章模块
            return "/content/publishArticle.html?class1=" + class1;
        }
        return "/content/publish.html";
    }

    /**
     * 管理相应模块
     * @param moduleId
     * @return
     */
    @RequestMapping("/modultList.html")
    public ModelAndView cmsModuleList(@RequestParam(value = "module") int moduleId,
                                      @RequestParam(value = "class1", required = false, defaultValue = "0") int class1,
                                      @RequestParam(value = "class2", required = false, defaultValue = "0") int class2) {
        ModelAndView view = new ModelAndView();

        if (moduleId == 1) {//简介模块

        } else if (moduleId == 2) {//文章模块
            view.setViewName("article_list");

            //获取文章列表
            List<CMSArticle> articleList = articleMapper.selectArticleList(class1, class2);
            view.addObject("articleList", articleList);
        } else if(moduleId == 3) {//图片模块
            view.setViewName("image_list");

            List<CMSImage> imageList = imageMapper.selectImageList(class1);
            view.addObject("imageList", imageList);
        }
        return view;
    }

    /**
     * 发布文章
     * @return
     */
    @RequestMapping("/publishArticle.html")
    public ModelAndView publishPerArticle(@RequestParam(value = "id", required = false, defaultValue = "0") int articleId,
                                          @RequestParam(value = "class1", required = false, defaultValue = "0")int class1 ){
        ModelAndView view = new ModelAndView("publish_article");

        if (articleId > 0) {
            CMSArticleWithBLOBs article = articleMapper.selectByPrimaryKey(articleId);
            view.addObject("article", article);
        } else if (class1 >0) {
            CMSArticleWithBLOBs article = new CMSArticleWithBLOBs();
            article.setClass1(class1);
            view.addObject("article", article);
        }

        return view;
    }

    @RequestMapping(value = "/saveOrUpdateArticle", method = RequestMethod.POST)
    @ResponseBody
    public ResultViewModel saveOrUpdateArticle(@RequestBody CMSArticleWithBLOBs article) {
        ResultViewModel result = new ResultViewModel();

        try {
            if (article.getId() == null){//新记录，执行插入操作
                articleMapper.insertSelective(article);
            } else {//更新
                articleMapper.updateByPrimaryKeySelective(article);
            }
            result.setCode(ResultCode.SUCCESS);
            result.setMessage(ResultCode.SUCCESS_MSG);
        } catch (Exception e) {
            result.setCode(ResultCode.ERROR);
            result.setMessage(ResultCode.ERROR_MSG);
        }
        return result;
    }

    /**
     * 删除某篇文章
     * @param articleId
     * @return
     */
    @RequestMapping(value = "/delPerArticle.html")
    public ModelAndView delPerArticle(@RequestParam(value = "id") int articleId) {

        if (articleId > 0) {
            articleMapper.updateArticleDelStatus(articleId);
            return new ModelAndView("redirect:/content/modultList.html?module=2");//返回文章模块列表页
        }

        return null;
    }

    /**
     * 文章列表更新
     * @param articles
     * @return
     */
    @RequestMapping(value = "/articlesForm", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResultViewModel updateArticles(@RequestBody List<CMSArticle> articles) {
        ResultViewModel result = new ResultViewModel();

        try{
            for (CMSArticle tempArticle:articles) {
                articleMapper.updateByPrimaryKey(tempArticle);
            }
            result.setCode(ResultCode.SUCCESS);
            result.setMessage(ResultCode.SUCCESS_MSG);
        } catch (Exception e) {
            result.setCode(ResultCode.ERROR);
            result.setMessage(ResultCode.ERROR_MSG);
        }

        return result;
    }

    /**
     * 文章列表删除
     * @param ids
     * @return
     */
    @RequestMapping(value = "/articlesForm", method = RequestMethod.DELETE, produces = "application/json")
    @ResponseBody
    public ResultViewModel deleteArticles(@RequestBody String ids) {
        ResultViewModel result = new ResultViewModel();

        try{
            for (String tempId:ids.split(",")) {
                articleMapper.updateArticleDelStatus(Integer.parseInt(tempId));
            }
            result.setCode(ResultCode.SUCCESS);
            result.setMessage(ResultCode.SUCCESS_MSG);
        }catch (Exception e) {
            result.setCode(ResultCode.ERROR);
            result.setMessage(ResultCode.ERROR_MSG);
        }
        return result;
    }

    /**
     * 单个图片记录编辑
     * @return
     */
    @RequestMapping("/perImgEdit.html")
    public ModelAndView perImageEdit(@RequestParam(value = "id", required = false, defaultValue = "0")int imgId){
        ModelAndView view = new ModelAndView("image_edit");

        if (imgId>0) {
            CMSImage image = imageMapper.selectByPrimaryKey(imgId);
            view.addObject("image", image);
        }
        return view;
    }

    @RequestMapping(value = "/saveOrUpdateImage", method = RequestMethod.POST, produces = {"application/json;","text/html;charset=UTF-8;"})
    public @ResponseBody ResultViewModel saveOrUpdateImage(@RequestBody CMSImage image){
        ResultViewModel result = new ResultViewModel();

        try {
            if (image.getId() == null){//添加记录
                imageMapper.insert(image);
            }else {//更新记录
                imageMapper.updateByPrimaryKeySelective(image);
            }
            result.setCode(ResultCode.SUCCESS);
            result.setMessage(ResultCode.SUCCESS_MSG);
        } catch (Exception e) {
            result.setCode(ResultCode.ERROR);
            result.setMessage(ResultCode.ERROR_MSG);
        }
        return result;
    }

    /**
     * 删除单个图片记录
     * 逻辑删除
     * @param imgId
     * @return
     */
    @RequestMapping("/delPerImage.html")
    public ModelAndView delPerImage(@RequestParam(value = "id") int imgId) {
        imageMapper.updateImageDelStatus(imgId);

        return new ModelAndView("redirect:/content/modultList.html?module=3");
    }

    /**
     * 保存图片记录表单
     * @param images
     * @return
     */
    @RequestMapping(value = "/imagesForm", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResultViewModel updateImages(@RequestBody List<CMSImage> images) {
        ResultViewModel result = new ResultViewModel();

        try{
            for (CMSImage tempImg:images) {
                imageMapper.updateByPrimaryKeySelective(tempImg);
            }
            result.setCode(ResultCode.SUCCESS);
            result.setMessage(ResultCode.SUCCESS_MSG);
        } catch (Exception e) {
            result.setCode(ResultCode.ERROR);
            result.setMessage(ResultCode.ERROR_MSG);
        }

        return result;
    }

    /**
     * 图片列表删除
     * @param ids
     * @return
     */
    @RequestMapping(value = "/imagesForm", method = RequestMethod.DELETE, produces = "application/json")
    @ResponseBody
    public ResultViewModel deleteImages(@RequestBody String ids) {
        ResultViewModel result = new ResultViewModel();

        try{
            for (String tempId:ids.split(",")) {
                imageMapper.updateImageDelStatus(Integer.parseInt(tempId));
            }
            result.setCode(ResultCode.SUCCESS);
            result.setMessage(ResultCode.SUCCESS_MSG);
        }catch (Exception e) {
            result.setCode(ResultCode.ERROR);
            result.setMessage(ResultCode.ERROR_MSG);
        }
        return result;
    }
}
