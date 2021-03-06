package com.envcheck.base.action;

import com.envcheck.base.utils.PageResult;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by susion on 2016/5/3.
 */
public abstract class BaseAction extends ActionSupport {

    protected PageResult pageResult;
    private int pageNo;
    private int pageSize;
    //默认页大小
    public static int DEFAULT_PAGE_SIZE = 20;
    protected String[] selectedRow;

    //创建和修改信息
    public String[] getSelectedRow() {
        return selectedRow;
    }
    public void setSelectedRow(String[] selectedRow) {
        this.selectedRow = selectedRow;
    }
    public PageResult getPageResult() {
        return pageResult;
    }
    public void setPageResult(PageResult pageResult) {
        this.pageResult = pageResult;
    }
    public int getPageNo() {
        return pageNo;
    }
    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }
    public int getPageSize() {
        if(pageSize < 1) pageSize = DEFAULT_PAGE_SIZE;
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

}
