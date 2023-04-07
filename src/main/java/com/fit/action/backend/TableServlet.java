package com.fit.action.backend;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fit.core.base.BaseServlet;
import com.fit.domain.Node;
import com.fit.domain.Cfg;
import com.fit.domain.Column;
import com.fit.domain.Model;
import com.fit.service.CfgService;
import com.fit.service.DataService;
import com.fit.service.ColumnService;
import com.fit.service.ModelService;
import com.fit.core.base.Ajax;
import com.fit.util.StringUtil;

@WebServlet("/cms/table")
public class TableServlet extends BaseServlet {

    @Inject
    CfgService cfgService;
    @Inject
    ModelService modelService;
    @Inject
    ColumnService columnService;
    @Inject
    DataService dataService;

    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) {
        String action = request.getParameter("action");
        try {
            if (StringUtil.isEmpty(action)) {
                index(request, response);
            } else if ("loadModelTree".equals(action)) {
                loadModelTree(request, response);
            } else if ("formColumn".equals(action)) {
                formColumn(request, response);
            } else if ("saveColumn".equals(action)) {
                saveColumn(request, response);
            } else if ("loadColumn".equals(action)) {
                loadColumn(request, response);
            } else if ("delColumn".equals(action)) {
                delColumn(request, response);
            } else if ("formModel".equals(action)) {
                formModel(request, response);
            } else if ("saveModel".equals(action)) {
                saveModel(request, response);
            } else if ("delModel".equals(action)) {
                delModel(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            this.write(new Ajax(false, "出现错误" + e.getMessage()), response);
        }
    }

    public void index(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.getRequestDispatcher(prefix + "model/index.jsp").forward(request, response);
    }

    private void formColumn(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Column column = new Column();
        String modelId = request.getParameter("modelId");
        column.setModelId(Integer.parseInt(modelId));

        Cfg tableCfg = new Cfg();
        tableCfg.setC(3);
        List<Cfg> types = cfgService.findList(tableCfg);
        request.setAttribute("types", types);
        tableCfg.setC(1);
        List<Cfg> maps = cfgService.findList(tableCfg);
        request.setAttribute("maps", maps);
        String id = request.getParameter("id");

        if (StringUtil.isNumeric(id)) {
            column = columnService.get(Integer.parseInt(id));
        }
        request.setAttribute("entity", column);
        request.getRequestDispatcher(prefix + "model/formColumn.jsp").forward(request, response);
    }

    private void loadModelTree(HttpServletRequest request, HttpServletResponse response) {
        List<Node> list = modelService.findTree();
        this.write(list, response);
    }

    private void saveColumn(HttpServletRequest request, HttpServletResponse response) throws Exception {

        Column column = new Column();
        String id = request.getParameter("id");
        if (StringUtil.isNotEmpty(id)) {
            column.setId(Integer.parseInt(id));
        }
        String modelId = request.getParameter("modelId");
        column.setModelId(Integer.parseInt(modelId));

        String name = request.getParameter("name");
        column.setName(name);
        String type = request.getParameter("type");
        column.setType(type);
        String mappingData = request.getParameter("mappingData");
        column.setMappingData(mappingData);

        String sql = request.getParameter("sql");
        column.setSql(sql);

        String seq = request.getParameter("seq");
        if (StringUtil.isNumeric(seq)) {
            column.setSeq(Integer.parseInt(seq));
        }
        String width = request.getParameter("width");
        if (StringUtil.isNumeric(width)) {
            column.setWidth(Integer.parseInt(width));
        }
        String allowBlank = request.getParameter("allowBlank");
        column.setAllowBlank(allowBlank);
        String listShow = request.getParameter("listShow");
        column.setListShow(listShow);
        String remark = request.getParameter("remark");
        column.setRemark(remark);

        columnService.save(column);
        this.write(new Ajax(true, "保存成功"), response);
    }

    private void loadColumn(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String modelId = request.getParameter("modelId");
        Column tableColumn = new Column();
        tableColumn.setModelId(Integer.parseInt(modelId));
        List<Column> list = columnService.findList(tableColumn);
        this.write(list, response);
    }


    private void delColumn(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String ids = request.getParameter("ids");
        columnService.delete(ids);
        this.write(new Ajax(true, "删除成功"), response);
    }


    private void formModel(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Model model = new Model();
        String id = request.getParameter("id");

        if (StringUtil.isNumeric(id)) {
            model = modelService.get(Integer.parseInt(id));
        } else {
            //新增时的父节点
            String parentId = request.getParameter("parentId");
            model.setParentId(Integer.parseInt(parentId));
        }
        request.setAttribute("entity", model);


        request.getRequestDispatcher(prefix + "model/formModel.jsp").forward(request, response);
    }

    private void saveModel(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Model model = new Model();
        String id = request.getParameter("id");
        if (StringUtil.isNotEmpty(id)) {
            model.setId(Integer.parseInt(id));
        }
        String parentId = request.getParameter("parentId");
        if (StringUtil.isNumeric(parentId)) {
            model.setParentId(Integer.parseInt(parentId));
        }
        String name = request.getParameter("name");
        model.setName(name);
        String tableName = request.getParameter("tableName");
        model.setTableName(tableName);
        String seq = request.getParameter("seq");
        if (StringUtil.isNumeric(seq)) {
            model.setSeq(Integer.parseInt(seq));
        }
        String remark = request.getParameter("remark");
        model.setRemark(remark);

        modelService.save(model);
        this.write(new Ajax(true, "保存成功"), response);
    }

    private void delModel(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String id = request.getParameter("id");
        modelService.delete(id);
        this.write(new Ajax(true, "删除成功"), response);
    }
}
