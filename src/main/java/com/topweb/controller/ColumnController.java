package com.topweb.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.topweb.dao.CMSColumnMapper;
import com.topweb.entity.CMSColumn;
import com.topweb.model.ColumnViewModel;
import com.topweb.model.ResultCode;
import com.topweb.model.ResultViewModel;
import com.topweb.util.ConstantUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
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
     * 二级栏目级别
     */
    private final int SECOND_CLASS_COLUMN = 2;

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
        List<CMSColumn> columnList = columnMapper.selectByColumnClassType(TOP_CLASS_COLUMN, 0);

        List<ColumnViewModel> columnViewModelList = new ArrayList<ColumnViewModel>();

        for (CMSColumn tempColumn:columnList){
            List<CMSColumn> secondClassColumnList = columnMapper.selectByColumnClassType(SECOND_CLASS_COLUMN, tempColumn.getId());

            ColumnViewModel columnViewModel = new ColumnViewModel();
            BeanUtils.copyProperties(tempColumn, columnViewModel);
            columnViewModel.setSubColumnList(secondClassColumnList);
            columnViewModelList.add(columnViewModel);
        }

        view.addObject("columnViewModelList", columnViewModelList);
        return view;
    }

    /**
     * 添加栏目html
     * @param type
     * @return
     */
    @RequestMapping(value = "addColumn.html", produces={"application/json;","text/html;charset=UTF-8;"})
    @ResponseBody
    public String addColumn(int type, @RequestParam(value = "bigclass", required = false, defaultValue = "0") int bigclass) {
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
        } else if (type == 2) {
            columnDiv.append("<tr class=\"mouse click columnz_1 newlist column_2\">")
                    .append("<td class=\"list-text2\">")
                    .append("<input name=\"id\" type=\"checkbox\" checked=\"checked\" id=\"id\" value=\"0\">")
                    .append("</td>")
                    .append("<td class=\"list-text2\">")
                    .append("<input type=\"text\" class=\"text no_order\" value=\"0\" name=\"noOrder\">")
                    .append("<input type=\"hidden\" value=\"2\" name=\"classtype\">")//栏目等级
                    .append("<input type=\"hidden\" value=\"").append(bigclass).append("\" name=\"bigclass\">")//上级栏目id
                    .append("<input type=\"hidden\" value=\"0\" name=\"display\">")//是否前台展示
                    .append("<td class=\"list-text2\" style=\"text-align:left; padding-left:10px;\">")
                    .append("<img src=\"/images/bg_column.gif\" style=\"position:relative; top:6px; margin-right:4px;\">")
                    .append("<input style=\"width:141px;\" type=\"text\" class=\"text namenonull\" value=\"\" name=\"name\">")
                    .append("</td>")
                    .append("<td class=\"list-text2\">")
                    .append("<select name=\"nav\">");

            //导航栏是否显示
            Map<Integer, String> navConfig = ConstantUtil.navConfigs();
            for (Map.Entry<Integer, String> entry : navConfig.entrySet()) {
                columnDiv.append("<option value=\"").append(entry.getKey()).append("\">").append(entry.getValue()).append("</option>");
            }

            columnDiv.append("</select>")
                    .append("</td>")
                    .append("<td class=\"list-text2\">")
                    .append("<select name=\"module\" onchange=\"newmodule($(this),1,2)\">");
            //模块配置选项
            Map<Integer, String> moduleConfig = ConstantUtil.moduleConfigs();
            for (Map.Entry<Integer, String> entry : moduleConfig.entrySet()) {
                columnDiv.append("<option value=").append("\"").
                        append(entry.getKey()).append("\">").append(entry.getValue()).append("</option>");
            }

            columnDiv.append("</select>")
                    .append("</td>")
                    .append("<td class=\"list-text2\">")
                    .append("<span>about</span>")
                    .append("<input type=\"text\" value=\"\" class=\"text max none foldernonull\">")
                    .append("<input type=\"text\" class=\"text none max nonull out_url_new\" style=\"font-weight:normal;\" value=\"http://\">")
                    .append("<font style=\"font-size:12px; font-weight:normal;\"></font>")
                    .append("</td>")
                    .append("<td class=\"list-text2\">")
                    .append("<input type=\"text\" class=\"text no_order\" value=\"0\">")
                    .append("</td>")
                    .append("<td class=\"list-text2\">")
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

    /**
     * 下拉框-级联栏目
     * @param moduleId
     * @param classtype
     * @return
     */
    @RequestMapping(value = "/cascadeColumns", produces = "application/json;charset=UTF-8;")
    public @ResponseBody JSON getCascadeColumns(@RequestParam(value = "module", defaultValue = "0", required = false) int moduleId,
                                                @RequestParam(value = "classtype", defaultValue = "1") int classtype){

        JSONArray cascadeColumnArray = new JSONArray();
        JSONObject defaultObject = new JSONObject();
        defaultObject.put("name", "所有栏目");
        defaultObject.put("value", "");

        JSONObject defaultJSON = new JSONObject();
        defaultJSON.put("p", defaultObject);
        cascadeColumnArray.add(defaultJSON);

        List<CMSColumn> columnList = columnMapper.selectByModuleAndClassType(moduleId, classtype);

        for (CMSColumn tempColumn:columnList) {
            JSONObject firstColumnJSONObject = new JSONObject();
            JSONObject columnObject = new JSONObject();
            columnObject.put("name", tempColumn.getName());
            columnObject.put("value", tempColumn.getId());

            List<CMSColumn> subClassColumnList = columnMapper.selectByColumnClassType(SECOND_CLASS_COLUMN, tempColumn.getId());
            if(subClassColumnList != null && subClassColumnList.size() > 0) {
                JSONArray subColumnJSONArray = new JSONArray();

                JSONObject subDefaultJSONObject = new JSONObject();
                subDefaultJSONObject.put("name", "二级栏目");
                subDefaultJSONObject.put("value", "");

                JSONObject subDefaultJSON = new JSONObject();
                subDefaultJSON.put("n", subDefaultJSONObject);
                subColumnJSONArray.add(subDefaultJSON);

                for (CMSColumn subColumn:subClassColumnList){
                    JSONObject subColumnObject = new JSONObject();
                    subColumnObject.put("name", subColumn.getName());
                    subColumnObject.put("value", subColumn.getId());

                    JSONObject subColumnJSON = new JSONObject();
                    subColumnJSON.put("n", subColumnObject);
                    subColumnJSONArray.add(subColumnJSON);
                }

                firstColumnJSONObject.put("c", subColumnJSONArray);
            }

            firstColumnJSONObject.put("p", columnObject);
            cascadeColumnArray.add(firstColumnJSONObject);

        }

        JSONObject cascadeColumnJSON = new JSONObject();
        cascadeColumnJSON.put("citylist", cascadeColumnArray);

        System.out.println(JSON.toJSONString(cascadeColumnJSON));

        return cascadeColumnJSON;
    }
}
