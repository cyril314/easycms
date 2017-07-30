package com.j4.cms.service;

import org.mybatis.guice.transactional.Transactional;

import com.j4.base.CrudService;
import com.j4.cms.dao.ColumnDao;
import com.j4.cms.obj.Column;

public class ColumnService extends CrudService<ColumnDao, Column> {

	
	@Transactional
	public int delete(String ids) {
		int result = 0;
		for (String id : ids.split(",")) {
			result = dao.delete(Integer.parseInt(id));
		}
		return result;
	}
}
