package com.j4.front.servlet;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import com.j4.base.BaseServlet;
import com.j4.cms.obj.Data;
import com.j4.cms.obj.Model;
import com.j4.cms.service.DataService;
import com.j4.cms.service.ModelService;
import com.j4.common.obj.Ajax;
@WebServlet("/index")
public class IndexServlet extends BaseServlet {
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
			if (StringUtils.isEmpty(action)) {
				index(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		this.write(new Ajax(false, "出现错误！"), response); 
	}
	
	public void index(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//主题市场   菜单
		List<Model> models = modelService.getByParentId(2);
		for (Model model : models) {
			List<Model> childs = modelService.getByParentId(model.getId());
			model.setChilds(childs);
		}
		request.setAttribute("models", models);
		//轮播图 34
		List<Data> sliders = dataService.findList(34);
		request.setAttribute("sliders", sliders);
		
		//中间3商品 35 查3条
		List<Data> mids = dataService.findLimit(35, 3);
		request.setAttribute("mids", mids);
		
		//本月热卖36  查10条
		List<Data> hots = dataService.findLimit(36, 10);
		request.setAttribute("hots", hots);
		
		//新上架  查24条
		List<Data> hots1= dataService.findLimit(37, 24);
		request.setAttribute("hots1", hots1);
		
		//特色  查24条
		List<Data> hots2= dataService.findLimit(38, 24);
		request.setAttribute("hots2", hots2);
		//经典  查24条
		List<Data> hots3= dataService.findLimit(39, 24);
		request.setAttribute("hots3", hots3);
		
		request.getRequestDispatcher(prefix + "front/index.jsp").forward(request, response);
	}
}
