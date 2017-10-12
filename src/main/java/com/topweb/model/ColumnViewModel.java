package com.topweb.model;

import com.topweb.entity.CMSColumn;

import java.util.List;

/**
 * Created by Leo on 2017/10/9.
 */
public class ColumnViewModel extends CMSColumn {

    /**
     * 下一级栏目列表
     */
    private List<CMSColumn> subColumnList;

    public List<CMSColumn> getSubColumnList() {
        return subColumnList;
    }

    public void setSubColumnList(List<CMSColumn> subColumnList) {
        this.subColumnList = subColumnList;
    }
}
