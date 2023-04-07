package com.fit.mapper;

import java.util.List;

import com.fit.core.base.CrudDao;
import com.fit.domain.Node;
import com.fit.domain.Model;

public interface ModelDao extends CrudDao<Model> {

    public List<Node> findTree();

    //public Model getBy(String code);

    List<Model> getByParentId(Integer pid);

    void deleteBy(String modelId);
}
