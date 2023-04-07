package com.fit.service;

import java.util.List;

import javax.inject.Inject;

import com.fit.util.StringUtil;
import org.mybatis.guice.transactional.Transactional;

import com.fit.core.base.CrudService;
import com.fit.mapper.CfgDao;
import com.fit.mapper.ColumnDao;
import com.fit.mapper.ComboDao;
import com.fit.domain.Cfg;
import com.fit.domain.Column;
import com.fit.domain.Combo;

public class ColumnService extends CrudService<ColumnDao, Column> {

    @Inject
    CfgDao cfgDao;
    @Inject
    ComboDao comboDao;

    public List<Column> findList(Column entity) {
        List<Column> list = dao.findList(entity);
        //查询字符限制输入长度
        Cfg cfg = new Cfg();
        cfg.setC(1);
        for (Column c : list) {
            cfg.setC1(c.getMappingData());
            String length = cfgDao.get(cfg).getC3();
            c.setLength(length);
            //查询下拉列表的数据
            if ("combo".equals(c.getType())) {
                String sql = c.getSql();
                if (StringUtil.isNotEmpty(sql)) {
                    List<Combo> combo = comboDao.findBy(sql);
                    c.setCombo(combo);
                }
            }

        }
        return list;
    }

    @Transactional
    public int delete(String ids) {
        int result = 0;
        for (String id : ids.split(",")) {
            result = dao.delete(Integer.parseInt(id));
        }
        return result;
    }
}
