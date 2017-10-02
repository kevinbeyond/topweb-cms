package com.topweb.controller;

import com.topweb.dao.CMSColumnMapper;
import com.topweb.entity.CMSColumn;
import com.topweb.model.ResultCode;
import com.topweb.model.ResultViewModel;
import com.topweb.util.ConstantUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * Created by Leo on 2017/9/21.
 */
@Controller
@RequestMapping("/setting")
public class ColumnController {

    @Autowired
    private CMSColumnMapper columnMapper;

    /**
     * 一级栏目级别
     */
    private final int TOP_CLASS_COLUMN = 1;

    /**
     * 导航栏是否显示配置
     * @return
     */
    @ModelAttribute(value = "navConfig")
    public Map<Integer, String> getNavConfigs(){
        return ConstantUtil.navConfigs();
    }

    /**
     * 模块配置
     * @return
     */
    @ModelAttribute(value = "moduleConfig")
    public Map<Integer, String> getModuleConfigs(){
        return ConstantUtil.moduleConfigs();
    }

    @RequestMapping("columns.html")
    public ModelAndView columnsSetting() {
        ModelAndView view = new ModelAndView("column_list");

        //获取一级栏目列表
        List<CMSColumn> columnList = columnMapper.selectByColumnClassType(TOP_CLASS_COLUMN);
        view.addObject("columnList", columnList);

        return view;
    }

    @RequestMapping(value = "addColumn.html", produces={"application/json;","text/html;charset=UTF-8;"})
    @ResponseBody
    public String addColumn(int type) {
        StringBuilder columnDiv = new StringBuilder();

        if (type == 1) {
            columnDiv.append("<tr class='mouse click  newlist column_1'>")
                    .append("<td class=\"list-text\">")
                    .append("<input name=\"id\" type=\"checkbox\" checked=\"checked\" id=\"id\" value=\"0\">")
                    .append("</td>")
                    .append("<td class=\"list-text\">")
                    .append("<input type=\"text\" class=\"text no_order\" value=\"0\" name=\"noOrder\">")//同级栏目排序
                    .append("<input type=\"hidden\" value=\"1\" name=\"classtype\">")//栏目级别
                    .append("<input type=\"hidden\" value=\"0\" name=\"bigclass\">")//上级栏目id
                    .append("<input type=\"hidden\" value=\"0\" name=\"display\">")//是否在前台显示
                    .append("</td>")
                    .append("<td class=\"list-text\" style=\"text-align:left; \">")
                    .append("<div style=\"width:22px; height:10px; overflow:hidden; float:left;\"></div>")
                    .append("<input style=\"width:144px;\" type=\"text\" class=\"text namenonull\" value=\"\" name=\"name\">")//栏目名称
                    .append("</td>")
                    .append("<td class=\"list-text\">")
                    .append("<select name=\"nav\">");

            //导航栏是否显示
            Map<Integer, String> navConfig = ConstantUtil.navConfigs();
            for (Map.Entry<Integer, String> entry : navConfig.entrySet()) {
                columnDiv.append("<option value=\"").append(entry.getKey()).append("\">").append(entry.getValue()).append("</option>");
            }

            columnDiv.append("</select>")
                    .append("</td>")
                    .append("<td class=\"list-text\">")
                    .append("<select name=\"module\" onchange=\"newmodule($(this),0,1)\">");

            //模块配置选项
            Map<Integer, String> moduleConfig = ConstantUtil.moduleConfigs();
            for (Map.Entry<Integer, String> entry : moduleConfig.entrySet()) {
                columnDiv.append("<option value=").append("\"").
                        append(entry.getKey()).append("\">").append(entry.getValue()).append("</option>");
            }
            columnDiv.append("</select>")
                    .append("</td>")
                    .append("<td class=\"list-text\">")
                    .append("<input type=\"text\" class=\"text max foldernonull\" value=\"\" >")
                    .append("<input type=\"text\" class=\"text none max nonull out_url_new\" style=\"font-weight:normal;\" value=\"http://\" >")
                    .append("<font style=\"font-size:12px; font-weight:normal;\"></font>")
                    .append("</td>")
                    .append("<td class=\"list-text\">")
                    .append("<input type=\"text\" class=\"text no_order\" value=\"0\" >")
                    .append("</td>")
                    .append("<td class=\"list-text\">")
                    .append("<a href=\"javascript:;\" class=\"hovertips\" onclick=\"delettr($(this));\">撤销</a>")
                    .append("</td>")
                    .append("</tr>");
        }

        return columnDiv.toString();
    }

    /**
     * 单个栏目设置
     * @param columnId
     * @return
     */
    @RequestMapping(value = "/perColumnSetting.html")
    public ModelAndView perColumnSetting(@RequestParam(value = "id") int columnId) {
        ModelAndView view = new ModelAndView("per_column_setting");

        CMSColumn column = columnMapper.selectByPrimaryKey(columnId);
        view.addObject("column", column);
        return view;
    }

    /**
     * 单个栏目更新
     * @param column
     * @return
     */
    @RequestMapping(value = "/updatePerColumn", method = RequestMethod.POST)
    @ResponseBody
    public ResultViewModel updatePerColumn(@RequestBody CMSColumn column) {
        ResultViewModel result = new ResultViewModel();

        try{
            columnMapper.updateByPrimaryKey(column);
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
     * 删除单个栏目
     * @param id
     * @return
     */
    @RequestMapping(value = "/delPerColumn", method = RequestMethod.POST)
    @ResponseBody
    public ResultViewModel delPerColumn(@RequestBody Integer id) {
        ResultViewModel result = new ResultViewModel();

        try{
            columnMapper.deleteByPrimaryKey(id);
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
     * 栏目添加或更新
     * @param columns
     * @return
     */
    @RequestMapping(value = "/cmsColumns", method = RequestMethod.POST, produces = "application/json")
    @ResponseBody
    public ResultViewModel cmsColumnsAdd(@RequestBody List<CMSColumn> columns) {
        ResultViewModel result = new ResultViewModel();

        try{
            for (CMSColumn tempColumn:columns) {
                if (tempColumn.getId() == 0) {//执行添加
                    columnMapper.insert(tempColumn);
                } else {//执行更新
                    columnMapper.updateByPrimaryKey(tempColumn);
                }
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
     * 删除选定的栏目
     * @param ids
     * @return
     */
    @RequestMapping(value = "/cmsColumns", method = RequestMethod.DELETE, produces = "application/json")
    @ResponseBody
    public ResultViewModel cmsColumnsDel(@RequestBody String ids) {
        ResultViewModel result = new ResultViewModel();

        try{
            for (String tempId:ids.split(",")) {
                columnMapper.deleteByPrimaryKey(Integer.parseInt(tempId));
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
