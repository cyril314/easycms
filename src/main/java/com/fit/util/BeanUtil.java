package com.fit.util;

import java.lang.reflect.InvocationTargetException;

import org.apache.commons.beanutils.BeanUtils;

import com.fit.domain.Data;

public class BeanUtil {


    public static String getProperty(Data data, String name) {
        String v = "";
        try {
            v = BeanUtils.getProperty(data, name);
        } catch (IllegalAccessException | InvocationTargetException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        }
        return v;
    }
}
