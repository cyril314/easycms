package com.fit.mapper;

import java.util.List;
import java.util.Map;

import com.fit.domain.Model;

public interface CountDao {

    List<Map<String, Object>> numModelCode();

    List<Model> findModel();

    List<Map<String, Object>> numMonth();
}
