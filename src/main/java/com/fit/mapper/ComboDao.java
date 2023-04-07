package com.fit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fit.core.base.CrudDao;
import com.fit.domain.Combo;

public interface ComboDao extends CrudDao<Combo> {

    List<Combo> findBy(@Param("sql") String sql);
}
