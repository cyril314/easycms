package com.fit.mapper;

import com.fit.core.base.CrudDao;
import com.fit.domain.Column;

public interface ColumnDao extends CrudDao<Column> {

    void deleteBy(int modelId);
}
