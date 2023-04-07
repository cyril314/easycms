package com.fit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fit.core.base.CrudDao;
import com.fit.domain.Data;
import com.fit.domain.Model;

public interface DataDao extends CrudDao<Data> {

    List<Data> findLimit(Data entity);

    Data findOne(Data entity);

    void updateState(Data entity);

    void updateModelCode(@Param("tableName") String tableName, @Param("newModelCode") String newModelCode, @Param("oldModelCode") String oldModelCode);

    void deleteBy(Model model);
}
