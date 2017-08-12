<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<head>
	<title>Java EasyCMS内容管理系统</title>
	<!-- basic styles -->
	<link href="${ctxStatic}/ace/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="${ctxStatic}/ace/css/font-awesome.min.css" />
	<!-- fonts -->
	<link rel="stylesheet" href="${ctxStatic}/ace/css/ace-fonts.css" />
	<!-- ace styles -->
	<link rel="stylesheet" href="${ctxStatic}/ace/css/ace.min.css" />
	<link rel="stylesheet" href="${ctxStatic}/ace/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="${ctxStatic}/ace/css/ace-skins.min.css" />
	<!-- ace settings handler -->
	<script src="${ctxStatic}/ace/js/ace-extra.min.js"></script>
	<script src="${ctxStatic}/jquery/jquery-1.9.1.min.js"></script>
	<script src="${ctxStatic}/jerichotab/js/jquery.jerichotab.js" type="text/javascript"></script>
	<link href="${ctxStatic}/jerichotab/css/jquery.jerichotab.css" rel="stylesheet" />
		
	<script type="text/javascript">var ctx = '${ctx}', ctxStatic='${ctxStatic}';</script>
	<script src="${ctxStatic}/js/comm.js" language="javascript" type="text/javascript"></script>
	<script type="text/javascript">
		var jericho = {
	        buildTabpanel: function() {
	            $.fn.initJerichoTab({
	                renderTo: '.JerichoTab',
	                uniqueId: 'myJerichoTab',
	                contentCss: { 'height': $('.JerichoTab').height() - 30 }
	            });
	        }
	    }

	    $(document).ready(function() {
	    	size();
	        jericho.buildTabpanel();
	        $.fn.jerichoTab.addTab({
                title: '首页',
                closeable: false,
                data: { dataType: 'formtag', dataLink: '#tbNews' }
            }).loadData();
	        $('.menu-text').click(function() {
	        	
	        	if ('1' == $(this).attr('nav')) {
					return;
				}
				 $.fn.jerichoTab.addTab({
					tabFirer: $(this),
                    title: $(this).attr('name'),
                    data: {
                    	dataType: 'iframe',
                        dataLink: '${ctx}/cms?action=toDataList&modelId='+$(this).attr('modelId')
                    }
                }).loadData();
	        })
	    })
	    $(window).resize(function() {
	    	size();
	    })
	    function size() {
			 var w = $(document).width();
		     var h = $(document).height();
			 var swidth = $("#sidebar").width()+20;
		 	$('.JerichoTab').css({ width: w - swidth, height: h - 78, 'display': 'block'});
		}
	    function cfg() {
	    	window.addTab('配置模型', '${ctx}/cms/table');
	    }
	</script>
</head>
<body style="overflow-x: hidden;">
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							Java EasyCMS
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->
				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>
							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-ok"></i>
									4 Tasks to complete
								</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Task Name</span>
											<span class="pull-right">65%</span>
										</div>

										<div class="progress progress-mini ">
											<div style="width:65%" class="progress-bar "></div>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										See tasks with details
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>
						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-bell-alt icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>
							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-warning-sign"></i>
									8 Notifications
								</li>
								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												New Comments
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>
								<li>
									<a href="#">
										See all notifications
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>
						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-envelope icon-animated-vertical"></i>
								<span class="badge badge-success">5</span>
							</a>
							<ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-envelope-alt"></i>
									5 Messages
								</li>
								<li>
									<a href="#">
										<img src="${ctxStatic}/ace/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Alex:</span>
												Message Summary
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>Message Time</span>
											</span>
										</span>
									</a>
								</li>
								<li>
									<a href="inbox.html">
										See all messages
										<i class="icon-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>
						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="${ctxStatic}/ace/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎</small>Admin
								</span>
								<i class="icon-caret-down"></i>
							</a>
							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
								<li>
									<a href="javascript:cfg()">
										<i class="icon-cog"></i>
										配置
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="#">
										<i class="icon-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>
					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>
							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>
							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>
							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>
						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>
							<span class="btn btn-info"></span>
							<span class="btn btn-warning"></span>
							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->
					<ul class="nav nav-list">
						<c:forEach var="menu1" items="${menus}" varStatus="status">
						<!-- 一层 -->
						<li>
							<a href="javascript:void(0)" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text" name="${menu1.name }" modelId="${menu1.id }" nav="${menu1.nav }"> ${menu1.name }</span>
								<c:if test="${fn:length(menu1.nodes) > 0 }">
								<b class="arrow icon-angle-down"></b>
								</c:if>
							</a>
							<!-- 二层 -->
							<c:if test="${fn:length(menu1.nodes) > 0 }">
							<ul class="submenu">
								<c:forEach var="menu2" items="${menu1.nodes}" varStatus="status">
								<li>
									<a href="javascript:void(0)" class="dropdown-toggle">
										<i class="icon-plus"></i>
										<span class="menu-text" name="${menu2.name }" modelId="${menu2.id }" nav="${menu2.nav }">${menu2.name }</span>
										<c:if test="${fn:length(menu2.nodes) > 0 }">
										<b class="arrow icon-angle-down"></b>
										</c:if>
									</a>
									<!-- 三层 -->
									<c:if test="${fn:length(menu2.nodes) > 0 }">
									<ul class="submenu">
										<c:forEach var="menu3" items="${menu2.nodes}" varStatus="status">
										<li>
											<a href="javascript:void(0)">
												<i class="icon-pencil"></i>
												<span class="menu-text" name="${menu3.name }" modelId="${menu3.id }" nav="${menu3.nav }">${menu3.name }</span>
											</a>
										</li>
										</c:forEach>
									</ul>
									</c:if>
								</li>
								</c:forEach>
							</ul>
							</c:if>
						</li>
						</c:forEach>
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="page-content">
						<div class="row">
							<div class="col-xs-12 JerichoTab">
								<!-- PAGE CONTENT BEGINS -->
									
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->


		<script src="${ctxStatic}/ace/js/bootstrap.min.js"></script>
		<script src="${ctxStatic}/ace/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->

		<script src="${ctxStatic}/ace/js/ace-elements.min.js"></script>
		<script src="${ctxStatic}/ace/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
	<div id="tbNews" >
	   <div class="row">
			<div class="space-6"></div>

			<div class="col-sm-6 infobox-container">
				<div class="infobox infobox-green  ">
					<div class="infobox-icon">
						<i class="icon-comments"></i>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">32</span>
						<div class="infobox-content">comments + 2 reviews</div>
					</div>
					<div class="stat stat-success">8%</div>
				</div>

				<div class="infobox infobox-blue  ">
					<div class="infobox-icon">
						<i class="icon-twitter"></i>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">11</span>
						<div class="infobox-content">new followers</div>
					</div>

					<div class="badge badge-success">
						+32%
						<i class="icon-arrow-up"></i>
					</div>
				</div>

				<div class="infobox infobox-pink  ">
					<div class="infobox-icon">
						<i class="icon-shopping-cart"></i>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">8</span>
						<div class="infobox-content">new orders</div>
					</div>
					<div class="stat stat-important">4%</div>
				</div>

				<div class="infobox infobox-red  ">
					<div class="infobox-icon">
						<i class="icon-beaker"></i>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">7</span>
						<div class="infobox-content">experiments</div>
					</div>
				</div>

				<div class="infobox infobox-orange2  ">
					<div class="infobox-chart">
						<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"><canvas style="display: inline-block; width: 44px; height: 34px; vertical-align: top;" width="44" height="34"></canvas></span>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">6,251</span>
						<div class="infobox-content">pageviews</div>
					</div>

					<div class="badge badge-success">
						7.2%
						<i class="icon-arrow-up"></i>
					</div>
				</div>

				<div class="infobox infobox-blue2  ">
					<div class="infobox-progress">
						<div class="easy-pie-chart percentage easyPieChart" data-percent="42" data-size="46" style="width: 46px; height: 46px; line-height: 46px;">
							<span class="percent">42</span>%
						<canvas width="46" height="46"></canvas></div>
					</div>

					<div class="infobox-data">
						<span class="infobox-text">traffic used</span>

						<div class="infobox-content">
							<span class="bigger-110">~</span>
							58GB remaining
						</div>
					</div>
				</div>

				<div class="space-6"></div>

				<div class="infobox infobox-green infobox-small infobox-dark">
					<div class="infobox-progress">
						<div class="easy-pie-chart percentage easyPieChart" data-percent="61" data-size="39" style="width: 39px; height: 39px; line-height: 39px;">
							<span class="percent">61</span>%
						<canvas width="39" height="39"></canvas></div>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Task</div>
						<div class="infobox-content">Completion</div>
					</div>
				</div>

				<div class="infobox infobox-blue infobox-small infobox-dark">
					<div class="infobox-chart">
						<span class="sparkline" data-values="3,4,2,3,4,4,2,2"><canvas style="display: inline-block; width: 39px; height: 20px; vertical-align: top;" width="39" height="20"></canvas></span>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Earnings</div>
						<div class="infobox-content">$32,000</div>
					</div>
				</div>

				<div class="infobox infobox-grey infobox-small infobox-dark">
					<div class="infobox-icon">
						<i class="icon-download-alt"></i>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Downloads</div>
						<div class="infobox-content">1,205</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 infobox-container">
				<div class="infobox infobox-green  ">
					<div class="infobox-icon">
						<i class="icon-comments"></i>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">32</span>
						<div class="infobox-content">comments + 2 reviews</div>
					</div>
					<div class="stat stat-success">8%</div>
				</div>

				<div class="infobox infobox-blue  ">
					<div class="infobox-icon">
						<i class="icon-twitter"></i>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">11</span>
						<div class="infobox-content">new followers</div>
					</div>

					<div class="badge badge-success">
						+32%
						<i class="icon-arrow-up"></i>
					</div>
				</div>

				<div class="infobox infobox-pink  ">
					<div class="infobox-icon">
						<i class="icon-shopping-cart"></i>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">8</span>
						<div class="infobox-content">new orders</div>
					</div>
					<div class="stat stat-important">4%</div>
				</div>

				<div class="infobox infobox-red  ">
					<div class="infobox-icon">
						<i class="icon-beaker"></i>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">7</span>
						<div class="infobox-content">experiments</div>
					</div>
				</div>

				<div class="infobox infobox-orange2  ">
					<div class="infobox-chart">
						<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"><canvas style="display: inline-block; width: 44px; height: 34px; vertical-align: top;" width="44" height="34"></canvas></span>
					</div>

					<div class="infobox-data">
						<span class="infobox-data-number">6,251</span>
						<div class="infobox-content">pageviews</div>
					</div>

					<div class="badge badge-success">
						7.2%
						<i class="icon-arrow-up"></i>
					</div>
				</div>

				<div class="infobox infobox-blue2  ">
					<div class="infobox-progress">
						<div class="easy-pie-chart percentage easyPieChart" data-percent="42" data-size="46" style="width: 46px; height: 46px; line-height: 46px;">
							<span class="percent">42</span>%
						<canvas width="46" height="46"></canvas></div>
					</div>

					<div class="infobox-data">
						<span class="infobox-text">traffic used</span>

						<div class="infobox-content">
							<span class="bigger-110">~</span>
							58GB remaining
						</div>
					</div>
				</div>

				<div class="space-6"></div>

				<div class="infobox infobox-green infobox-small infobox-dark">
					<div class="infobox-progress">
						<div class="easy-pie-chart percentage easyPieChart" data-percent="61" data-size="39" style="width: 39px; height: 39px; line-height: 39px;">
							<span class="percent">61</span>%
						<canvas width="39" height="39"></canvas></div>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Task</div>
						<div class="infobox-content">Completion</div>
					</div>
				</div>

				<div class="infobox infobox-blue infobox-small infobox-dark">
					<div class="infobox-chart">
						<span class="sparkline" data-values="3,4,2,3,4,4,2,2"><canvas style="display: inline-block; width: 39px; height: 20px; vertical-align: top;" width="39" height="20"></canvas></span>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Earnings</div>
						<div class="infobox-content">$32,000</div>
					</div>
				</div>

				<div class="infobox infobox-grey infobox-small infobox-dark">
					<div class="infobox-icon">
						<i class="icon-download-alt"></i>
					</div>

					<div class="infobox-data">
						<div class="infobox-content">Downloads</div>
						<div class="infobox-content">1,205</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>