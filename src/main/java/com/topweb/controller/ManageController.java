package com.topweb.controller;

import com.topweb.dao.CMSArticleMapper;
import com.topweb.dao.CMSColumnMapper;
import com.topweb.entity.CMSArticle;
import com.topweb.entity.CMSArticleWithBLOBs;
import com.topweb.entity.CMSColumn;
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
                                      @RequestParam(value = "class1", required = false, defaultValue = "0") int class1) {
        ModelAndView view = new ModelAndView();

        if (moduleId == 1) {//简介模块

        } else if (moduleId == 2) {//文章模块
            view.setViewName("article_list");

            //获取文章列表
            List<CMSArticle> articleList = articleMapper.selectArticleList(class1);
            view.addObject("articleList", articleList);
        } else if(moduleId == 3) {//图片模块

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
            throw e;
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

}
