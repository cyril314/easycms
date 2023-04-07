package com.fit.domain;

import java.util.ArrayList;
import java.util.List;

import com.fit.core.base.BaseEntity;

public class Model extends BaseEntity<Model> {

    private static final long serialVersionUID = 1L;
    private String name;//
    private String tableName;//
    private String remark;//
    private boolean leaf;//
    private int seq;//
    private int parentId;//
    private String nav;//

    private List<Model> childs = new ArrayList<Model>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public boolean isLeaf() {
        return leaf;
    }

    public void setLeaf(boolean leaf) {
        this.leaf = leaf;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    public String getNav() {
        return nav;
    }

    public void setNav(String nav) {
        this.nav = nav;
    }

    public List<Model> getChilds() {
        return childs;
    }

    public void setChilds(List<Model> childs) {
        this.childs = childs;
    }
}
