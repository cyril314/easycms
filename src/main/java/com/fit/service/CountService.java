package com.fit.service;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import com.fit.mapper.CountDao;
import com.fit.domain.Model;
import com.fit.util.DateUtils;

public class CountService {

    @Inject
    CountDao countDao;

    public Map<String, Object> numModelCode() {
        Map<String, Object> map = new HashMap<String, Object>();
        Map<String, Object> codeMap = new HashMap<String, Object>();
        List<Map<String, Object>> list = countDao.numModelCode();
        for (Map<String, Object> m : list) {
            codeMap.put(m.get("modelCode").toString(), m.get("num"));
        }
        List<Model> models = countDao.findModel();
        int size = models.size();
        String[] names = new String[size];
        Object[] nums = new Object[size];
        for (int i = 0; i < size; i++) {
            names[i] = models.get(i).getName();
            //nums[i] = codeMap.get(models.get(i).getCode());
        }
        map.put("names", names);
        map.put("nums", nums);
        return map;
    }

    public Map<String, Object> numMonth() {
        Map<String, Object> data = new HashMap<String, Object>();

        Map<String, Object> monthMap = new HashMap<String, Object>();
        List<Map<String, Object>> list = countDao.numMonth();
        for (Map<String, Object> m : list) {
            monthMap.put(m.get("month").toString(), m.get("num"));
        }


        String[] months = new String[12];// 前12个月
        Object[] nums = new Object[12];
        // 取得当前时间
        Date dt = DateUtils.nowadays();
        dt = DateUtils.addMoth(dt, -11);
        for (int i = 0; i < 12; i++) {
            Date dt2 = DateUtils.addMoth(dt, i);
            int mfy = DateUtils.getMonthInt(dt2);
            String m = mfy < 10 ? "0" + mfy : mfy + "";
            String ym = dt2.getYear() + "-" + m;
            months[i] = ym;
            if (null == monthMap.get(ym)) {
                nums[i] = 0;
            } else {
                nums[i] = monthMap.get(ym);
            }
        }
        data.put("months", months);
        data.put("nums", nums);

        return data;
    }
}
