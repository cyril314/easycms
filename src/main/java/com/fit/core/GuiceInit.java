package com.fit.core;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.guice.XMLMyBatisModule;

import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.Module;

public class GuiceInit {

    private static final Injector injector;

    static {
        List<Module> modules = new ArrayList<Module>();
        modules.add(new XMLMyBatisModule() {
            @Override
            protected void initialize() {
                setEnvironmentId("j4");
                setClassPathResource("sqlMapConfig.xml");
            }
        });
        injector = Guice.createInjector(modules);
    }

    public static Injector getInjector() {
        return injector;
    }
}
