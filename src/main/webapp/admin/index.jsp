﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<link rel="Bookmark" href="/favicon.ico" >
	<link rel="Shortcut Icon" href="/favicon.ico" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>后台管理系统</title>
<meta name="keywords" content="后台管理系统">
<meta name="description" content="后台管理系统。">
</head>
<body>
	<header class="navbar-wrapper">
		<div class="navbar navbar-fixed-top">
			<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="/aboutHui.shtml">XXX</a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/aboutHui.shtml">ZCZ</a> 
				<span class="logo navbar-slogan f-l mr-10 hidden-xs">用户</span> 
				<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
				<nav class="nav navbar-nav">
					<ul class="cl">
						<li class="dropDown dropDown_hover"><a href="javascript:;" class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> 新增 <i class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" onclick="article_add('添加资讯','article-add.html')"><i class="Hui-iconfont">&#xe616;</i> 资讯</a></li>
								<li><a href="javascript:;" onclick="picture_add('添加资讯','picture-add.html')"><i class="Hui-iconfont">&#xe613;</i> 图片</a></li>
								<li><a href="javascript:;" onclick="product_add('添加资讯','product-add.html')"><i class="Hui-iconfont">&#xe620;</i> 文章</a></li>
							</ul>
						</li>
					</ul>
				</nav>
				<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
					<ul class="cl">
						<li>超级管理员</li>
						<li class="dropDown dropDown_hover">
							<a href="#" class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
								<li><a href="#">切换账户</a></li>
								<li><a href="#">退出</a></li>
							</ul>
						</li>
						<li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
						<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
								<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
								<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
								<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
								<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
								<li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<aside class="Hui-aside">
		<div class="menu_dropdown bk_2">
			<dl id="menu-article">
				<dt><i class="Hui-iconfont">&#xe616;</i> 网站首页<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a data-href="_blank.html" data-title="网站首页管理" href="javascript:void(0)">网站首页管理</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-picture">
				<dt><i class="Hui-iconfont">&#xe622;</i> 课程概况<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a data-href="picture-list.html" data-title="课程简介" href="javascript:void(0)">课程简介</a></li>
						<li><a data-href="article-list.html" data-title="课程特色" href="javascript:void(0)">课程特色</a></li>
						<li><a data-href="_blank.html" data-title="教材与参考资料" href="javascript:void(0)">教材与参考资料</a></li>
						<li><a data-href="_blank.html" data-title="历史沿革" href="javascript:void(0)">历史沿革</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-product1">
				<dt><i class="Hui-iconfont">&#xe60d;</i> 教师队伍<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a data-href="_blank.html" data-title="课程负责人" href="javascript:void(0)">课程负责人</a></li>
						<li><a data-href="_blank.html" data-title="课程教学团队" href="javascript:void(0)">课程教学团队</a></li>
						<li><a data-href="_blank.html" data-title="主讲教师" href="javascript:void(0)">主讲教师</a></li>
						<li><a data-href="_blank.html" data-title="青年教师培养" href="javascript:void(0)">青年教师培养</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-product2">
				<dt><i class="Hui-iconfont">&#xe620;</i> 教学安排<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a data-href="_blank.html" data-title="教学大纲" href="javascript:;">教学大纲</a></li>
						<li><a data-href="_blank.html" data-title="教学日历" href="javascript:void(0)">教学日历</a></li>
						<li><a data-href="_blank.html" data-title="教学内容" href="javascript:;">教学内容</a></li>
						<li><a data-href="_blank.html" data-title="授课计划" href="javascript:void(0)">授课计划</a></li>
						<li><a data-href="_blank.html" data-title="教学难重点" href="javascript:;">教学难重点</a></li>
						<li><a data-href="_blank.html" data-title="教学方法与手段" href="javascript:void(0)">教学方法与手段</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-product3">
				<dt><i class="Hui-iconfont">&#xe620;</i> 教学研究改革<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a data-href="_blank.html" data-title="教学改革措施" href="javascript:;">教学改革措施</a></li>
						<li><a data-href="_blank.html" data-title="教学改革立项" href="javascript:;">教学改革立项</a></li>
						<li><a data-href="_blank.html" data-title="教学改革成果" href="javascript:;">教学改革成果</a></li>
						<li><a data-href="_blank.html" data-title="教学表彰和奖励" href="javascript:;">教学表彰和奖励</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-product4">
				<dt><i class="Hui-iconfont">&#xe620;</i> 教学资源<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a data-href="_blank.html" data-title="教程课件" href="javascript:void(0)">教程课件</a></li>
						<li><a data-href="_blank.html" data-title="教学录像" href="javascript:void(0)">教学录像</a></li>
						<li><a data-href="_blank.html" data-title="习题库" href="javascript:void(0)">习题库</a></li>
						<li><a data-href="_blank.html" data-title="案例库" href="javascript:void(0)">案例库</a></li>
						<li><a data-href="_blank.html" data-title="实验任务" href="javascript:void(0)">实验任务</a></li>
						<li><a data-href="_blank.html" data-title="技术文档范本" href="javascript:void(0)">技术文档范本</a></li>
					</ul>
				</dd>
			</dl>


        <dl id="menu-product5">
            <dt><i class="Hui-iconfont">&#xe620;</i> 教学管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
					<li><a data-href="${pageContext.request.contextPath}/OpenCoursePlanServlet?method=showBack" data-title="开课计划" href="javascript:void(0)">开课计划</a></li>
                    <li><a data-href="<c:url value='/ClassInfoServlet?method=Admin_LoadClassInfo&classInfoPageQuery=1'/>" data-title="上课班级" href="javascript:void(0)">上课班级</a></li>
                    <li><a data-href="<c:url value='/ScoreServlet?method=Admin_LoadStudentEvalator&EvalatorpageQuery=1'/>" data-title="学生成绩" href="javascript:void(0)">学生成绩</a></li>
                    <li><a data-href="<c:url value='/class_list_Servlet?method=Admin_LoadClassList&classListpageQuery=1'/>" data-title="班级名册" href="javascript:void(0)">班级名册</a></li>
                    <li><a data-href="_blank.html" data-title="学生作业案例" href="javascript:void(0)">学生作业案例</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-product6">
            <dt><i class="Hui-iconfont">&#xe620;</i> 教学效果<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
					<li><a data-href="<c:url value='/Expert_EvaluationServlet?method=LoadExpert_Evaluation&EvaluationpageQuery=1&type=0'/>" data-title="校外专家评价" href="javascript:void(0)">校外专家评价</a></li>
					<li><a data-href="<c:url value='/Expert_EvaluationServlet?method=getAllContentReturnBackground'/>" data-title="校内督导评价" href="javascript:void(0)">校内督导评价</a></li>
          <li><a data-href="<c:url value='/teacher_evalution_servlet?method=showInBackstage'/>" data-title="产品管理" href="">教师自我评价</a></li>
          <li><a data-href="<c:url value='/EvalatorServlet?method=Admin_LoadStudentEvalator&EvalatorpageQuery=1'/>" data-title="学生评价管理"
                           href="javascript:void(0)">校内学生评价</a>
                    </li>
                    
                    <li><a data-href="_blank.html" data-title="产品管理" href="javascript:void(0)">社会评价</a></li>
                    <li><a data-href="_blank.html" data-title="产品管理" href="javascript:void(0)">教学评估及相关文件</a></li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-product7">
            <dt><i class="Hui-iconfont">&#xe622;</i> 教学互动<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a data-href="feedback-list.html" data-title="微信群" href="javascript:void(0)">微信群</a></li>
                    <li><a data-href="feedback-list.html" data-title="QQ群" href="javascript:void(0)">QQ群</a></li>
                    <li><a data-href="feedback-list.html" data-title="网站内的师生互动" href="javascript:void(0)">网站内的师生互动</a>
                    </li>
                </ul>
            </dd>
        </dl>
        <dl id="menu-admin8">
            <dt><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a data-href="change-password.html" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
                    <li><a data-href="admin-role.html" data-title="角色管理" href="javascript:void(0)">角色管理</a></li>
                    <li><a data-href="admin-permission.html" data-title="权限管理" href="javascript:void(0)">权限管理</a></li>
                    <li><a data-href="admin-list.html" data-title="管理员列表" href="javascript:void(0)">管理员列表</a></li>
                </ul>
            </dd>
        </dl>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a>
</div>
<section class="Hui-article-box">
    <div id="Hui-tabNav1" class="Hui-tabNav hidden-xs">
        <div class="Hui-tabNav-wp">
            <ul id="min_title_list1" class="acrossTab cl">
                <li class="active">
                    <span title="我的桌面" data-href="welcome.html">我的桌面</span>
                    <em></em></li>
            </ul>
        </div>
        <div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev1" class="btn radius btn-default size-S"
                                                  href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
                id="js-tabNav-next1" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
        </div>
    </div>
    <div id="iframe_box1" class="Hui-article">
        <div class="show_iframe">
            <div style="display:none" class="loading"></div>
            <iframe scrolling="yes" frameborder="0" src="welcome.html"></iframe>
        </div>
    </div>
</section>



			<dl id="menu-product9">
				<dt><i class="Hui-iconfont">&#xe620;</i> 教学效果<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a data-href="<c:url value='/Expert_EvaluationServlet?method=getAllContentReturnBackground'/>" data-title="校外专家评价" href="javascript:void(0)">校外专家评价</a></li>
						<li><a data-href="<c:url value='/Expert_EvaluationServlet?method=getAllContentReturnBackground'/>" data-title="校内督导评价" href="javascript:void(0)">校内督导评价</a></li>
						<li><a data-href="_blank.html" data-title="产品管理" href="javascript:void(0)">教师自我评价</a></li>

						<li><a data-href="_blank.html" data-title="产品管理" href="<c:url value='/EvalatorServlet?method=Admin_LoadStudentEvalator&EvalatorpageQuery=1'/>">校内学生评价</a></li>
						<li><a data-href="_blank.html" data-title="产品管理" href="javascript:void(0)">社会评价</a></li>
						<li><a data-href="_blank.html" data-title="产品管理" href="javascript:void(0)">教学评估及相关文件</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-product">
				<dt><i class="Hui-iconfont">&#xe622;</i> 教学互动<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a data-href="feedback-list.html" data-title="微信群" href="javascript:void(0)">微信群</a></li>
						<li><a data-href="feedback-list.html" data-title="QQ群" href="javascript:void(0)">QQ群</a></li>
						<li><a data-href="feedback-list.html" data-title="网站内的师生互动" href="javascript:void(0)">网站内的师生互动</a></li>
					</ul>
				</dd>
			</dl>
			<dl id="menu-admin">
				<dt><i class="Hui-iconfont">&#xe62d;</i> 管理员管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
				<dd>
					<ul>
						<li><a data-href="change-password.html" data-title="修改密码" href="javascript:void(0)">修改密码</a></li>
						<li><a data-href="admin-role.html" data-title="角色管理" href="javascript:void(0)">角色管理</a></li>
						<li><a data-href="admin-permission.html" data-title="权限管理" href="javascript:void(0)">权限管理</a></li>
						<li><a data-href="admin-list.html" data-title="管理员列表" href="javascript:void(0)">管理员列表</a></li>
					</ul>
				</dd>
			</dl>

	<!-- </div> </aside>-->	
	
	<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
	<section class="Hui-article-box">
		<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
			<div class="Hui-tabNav-wp">
				<ul id="min_title_list" class="acrossTab cl">
					<li class="active">
						<span title="我的桌面" data-href="welcome.html">我的桌面</span>
						<em></em></li>
					</ul>
				</div>
				<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
			</div>
			<div id="iframe_box" class="Hui-article">
				<div class="show_iframe">
					<div style="display:none" class="loading"></div>
					<iframe scrolling="yes" frameborder="0" src="welcome.html"></iframe>
				</div>
			</div>
		</section>

		<div class="contextMenu" id="Huiadminmenu">
			<ul>
				<li id="closethis">关闭当前 </li>
				<li id="closeall">关闭全部 </li>
			</ul>
		</div>
		<!--_footer 作为公共模版分离出去-->
		<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
		<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
		<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
		<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

		<!--请在下方写此页面业务相关的脚本-->
		<script type="text/javascript" src="lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>
		<script type="text/javascript">
			$(function(){
	/*$("#min_title_list li").contextMenu('Huiadminmenu', {
		bindings: {
			'closethis': function(t) {
				console.log(t);
				if(t.find("i")){
					t.find("i").trigger("click");
				}
			},
			'closeall': function(t) {
				alert('Trigger was '+t.id+'\nAction was Email');
			},
		}
	});*/
});
			/*个人信息*/
			function myselfinfo(){
				layer.open({
					type: 1,
					area: ['300px','200px'],
		fix: false, //不固定
		maxmin: true,
		shade:0.4,
		title: '查看信息',
		content: '<div>管理员信息</div>'
	});
			}

			/*资讯-添加*/
			function article_add(title,url){
				var index = layer.open({
					type: 2,
					title: title,
					content: url
				});
				layer.full(index);
			}
			/*图片-添加*/
			function picture_add(title,url){
				var index = layer.open({
					type: 2,
					title: title,
					content: url
				});
				layer.full(index);
			}
			/*产品-添加*/
			function product_add(title,url){
				var index = layer.open({
					type: 2,
					title: title,
					content: url
				});
				layer.full(index);
			}
			/*用户-添加*/
			function member_add(title,url,w,h){
				layer_show(title,url,w,h);
			}


		</script>


	</body>
	</html>