<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<div class="header">
    <div class="top-right">
        <ul>
        <li><a id="updateCache" href="#">更新缓存</a></li>
        <li><a id="setAgent" href="#">委托授权</a></li>
        <li><a href="#" onclick="updateMyself();">${sessionScope.LOGIN_USER_NAME}</a></li>
        <li><a href="LoginServlet?doLogOut=true">退出</a></li>
        <li><a href="FlowManager?action=processDefinitionList" target='_blank'>管控中心</a></li>
        </ul>
    </div>
    <div class="menu">
        <div class="logo"></div>
        <ul>
        <li><a id="getMyProcess" href="FlowCenter?action=getMyProcess"><h1>发起流程</h1><h4>start flow</h4></a></li>
        <li><a id="getMyTask" href="FlowCenter?action=getMyTask"><h1>待办任务</h1><h4>schedule</h4></a></li>
        <li><a id="getAllProcess" href="FlowCenter?action=getAllProcess"><h1>流程查询</h1><h4>flow query</h4></a></li>
        <li><a id="getPlaceOnFile" href="FlowCenter?action=getPlaceOnFile"><h1>归档任务</h1><h4>place on file</h4></a></li>
        </ul>
    </div>
</div>
<script>
 
	$(function(){
		$("#updateCache").click(function(){
			window.open("FlowManager?action=updateCache")
		});
		
		$("#setAgent").click(function(){
			var url = "FlowCenter?action=viewDelegation";
			Fix.OpenMethod.openWindow(url);
		});
		
	})

	chooseSelect();
	function updateMyself(){
		var obj = {};
		window.showModalDialog("FlowCenter?action=getUserInfo&isUpdate=true",obj,"dialogWidth=800px;dialogHeight=600px");
	}
	
	function chooseSelect(){
		var now = '${nowAction}';
		$("#"+now).addClass("select");
	}
</script>
