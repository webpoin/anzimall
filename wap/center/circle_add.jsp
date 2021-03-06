<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/wap/header.jsp" flush="true"><jsp:param name="title" value="我的商圈" /></jsp:include>

<div class="main">
	
	<div class="circle_box">

		<form action="/addUserCbd_wap.shtml" method="post" class="form">
			
			<cite class="js-city">
				<span><em>*</em>您的省市区地址：</span>
				<select class="prov" name="province" default="" ></select>
				<select class="city" name="city" default="" ></select>
				<select class="town" name="county" default="" ></select>
			</cite>
			<cite><span><em>*</em>详细地址：</span><input type="text" name="address" value="" placeholder="请输入您的详细地址"></cite>

			<cite>
				<div id="map" style="height: 300px;"></div>
				<input type="text" name="location" class="mapval" style="display: none;" value="">
			</cite>
			<div style="color: #0383f9;">最多可以添加5个商圈</div>
		
			<input type="submit" value="添加商圈">

		</form>
	</div>



</div>
<jsp:include page="/wap/footer.jsp" flush="true"/>

<script>
	function loadJScript() {
		var script = document.createElement("script");
		script.type = "text/javascript";
		script.src = "http://api.map.baidu.com/api?type=quick&ak=6MnMg2PV1zdUKf99lHPmfduG&callback=init";
		document.body.appendChild(script);
	}

	function init() {
		var mapval = $('.mapval');
		var mappoi = mapval.val().length>0? mapval.val().split(',') :[113.980066,22.543784];


		var map = new BMap.Map("map");            	// 创建Map实例
		var point = new BMap.Point(mappoi[0],mappoi[1]); //中点
		var marker = new BMap.Marker(point);
		map.centerAndZoom(point, 14);
		map.addControl(new BMap.ZoomControl());
		map.addOverlay(marker);

		map.addEventListener("click", function(e){
			map.removeOverlay(marker);
			marker = new BMap.Marker(e.point);
			map.addOverlay(marker);
			mapval.val(e.point.lng + ", " + e.point.lat);
		});

	}

	loadJScript();

</script>