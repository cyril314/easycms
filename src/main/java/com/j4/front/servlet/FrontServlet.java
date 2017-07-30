package com.j4.front.servlet;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.common.collect.Lists;
import com.j4.base.BaseServlet;
import com.j4.cms.obj.Data;
import com.j4.cms.obj.Model;
import com.j4.cms.service.DataService;
import com.j4.cms.service.ModelService;
import com.j4.common.obj.Ajax;
@WebServlet("/front")
public class FrontServlet extends BaseServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Inject
	DataService dataService;
	@Inject
	ModelService modelService;
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		String action = request.getParameter("action");
		try {
			
			//通用 栏目，列表，明细
			if ("listm".equals(action)) {
				listm(request, response);
			}
			//列表
			else if ("list".equals(action)) {
				list(request, response);
			}
			//单条明细
			else if ("detail".equals(action)) {
				detail(request, response);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.write(new Ajax(false, "出现错误！"), response); 
	}
	

	public void listm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String modelId= request.getParameter("modelId");
		Model model = modelService.get(Integer.parseInt(modelId));
		request.setAttribute("model", model);
		//获取子模型用于显示横着的栏目
		List<Model> models =  modelService.getByParentId(model.getId());
		request.setAttribute("models", models);
		if (null != models && models.size() > 0) {
			request.setAttribute("firstModel", models.get(0));
		}
		request.getRequestDispatcher(prefix + "front/listm/listm.jsp").forward(request, response);
	}
	public void list(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String modelId= request.getParameter("modelId");
		Model model = modelService.get(Integer.parseInt(modelId));
		request.setAttribute("model", model);
		Data data = new Data();
		data.setTableName(model.getTableName());
		data.setModelId(model.getId());
		data.setState(1);//查询已发布的
		List<Data> list = Lists.newArrayList();
		switch (modelId) {
			//友情链接单处的页面样式，需单独处理
			case "98":
			case "100":
			case "101":
				
				List<Data> link = dataService.findList(data);
				request.setAttribute("link", link);
				request.getRequestDispatcher(prefix + "front/other/link.jsp").forward(request, response);
	            break;
	            //详情页
			case "22": //馆藏档案
			case "24": //仪征市城市展览馆
			case "43": //局馆介绍
	        case "70": //档案查询流程图
	        case "71": //服务项目
	        case "72": //接待时间
	        case "73": //查档须知
	        case "74": //使用工具
	        case "108": //全宗名册
	        case "109": //仪征地图
	        case "106": //常见查档问题
	        case "110": //仪征地标
	        case "111": //地名录及街巷
	        case "112": //地名由来
	        case "113": //真州八景
	        case "114": //仪征诗词选
	    		data = dataService.findOne(data);
	    		request.setAttribute("data", data);
	    		request.getRequestDispatcher(prefix + "front/listm/detail.jsp").forward(request, response);
	            break;
	        case "47": //内设机构   
				list = dataService.findList(data);
				request.setAttribute("dataList", list);
	    		request.getRequestDispatcher(prefix + "front/other/org.jsp").forward(request, response);
	        	break;
	        //列表页
	        default:
				list = dataService.findList(data);
				request.setAttribute("dataList", list);
				request.getRequestDispatcher(prefix + "front/listm/list.jsp").forward(request, response);
		}
	}
	public void detail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String modelId= request.getParameter("modelId");
		Model model = modelService.get(Integer.parseInt(modelId));
		request.setAttribute("model", model);
		String id =  request.getParameter("id");
		Data data = new Data();
		data.setTableName(model.getTableName());
		data.setModelId(model.getId());
		data.setId(Integer.parseInt(id));
		data = dataService.get(data);
		request.setAttribute("data", data);
		request.getRequestDispatcher(prefix + "front/listm/detail.jsp").forward(request, response);
	}
}
