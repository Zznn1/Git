<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="common/header.jsp"%>
<head>
	<style type="text/css">
		pagination {
			margin: 18px 0;
		}

		.pagination ul {
			display: inline-block;
			*display: inline;
			*zoom: 1;
			margin-left: 0;
			margin-bottom: 0;
			-webkit-border-radius: 4px;
			-moz-border-radius: 4px;
			border-radius: 4px;
			-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
			-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
			box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
		}

		.pagination ul>li {
			display: inline;
		}

		.pagination ul>li>a, .pagination ul>li>span {
			float: left;
			padding: 4px 12px;
			line-height: 18px;
			text-decoration: none;
			background-color: #ffffff;
			border: 1px solid #dddddd;
			border-left-width: 0;
		}

		.pagination ul>li>a:hover, .pagination ul>.active>a, .pagination ul>.active>span
		{
			background-color: pink;
		}

		.pagination ul>.active>a, .pagination ul>.active>span {
			color: #999999;
			cursor: default;
		}

		.pagination ul>.disabled>span, .pagination ul>.disabled>a, .pagination ul>.disabled>a:hover
		{
			color: #999999;
			background-color: transparent;
			cursor: default;
		}

		.pagination ul>li:first-child>a, .pagination ul>li:first-child>span {
			border-left-width: 1px;
			-webkit-border-top-left-radius: 4px;
			-moz-border-radius-topleft: 4px;
			border-top-left-radius: 4px;
			-webkit-border-bottom-left-radius: 4px;
			-moz-border-radius-bottomleft: 4px;
			border-bottom-left-radius: 4px;
		}

		.pagination ul>li:last-child>a, .pagination ul>li:last-child>span {
			-webkit-border-top-right-radius: 4px;
			-moz-border-radius-topright: 4px;
			border-top-right-radius: 4px;
			-webkit-border-bottom-right-radius: 4px;
			-moz-border-radius-bottomright: 4px;
			border-bottom-right-radius: 4px;
		}

		.pagination-centered {
			text-align: center;
		}

		.pagination-right {
			text-align: right;
		}

		.pagination-large ul>li>a, .pagination-large ul>li>span {
			padding: 11px 19px;
			font-size: 15px;
		}

		.pagination-large ul>li:first-child>a, .pagination-large ul>li:first-child>span
		{
			-webkit-border-top-left-radius: 6px;
			-moz-border-radius-topleft: 6px;
			border-top-left-radius: 6px;
			-webkit-border-bottom-left-radius: 6px;
			-moz-border-radius-bottomleft: 6px;
			border-bottom-left-radius: 6px;
		}

		.pagination-large ul>li:last-child>a, .pagination-large ul>li:last-child>span
		{
			-webkit-border-top-right-radius: 6px;
			-moz-border-radius-topright: 6px;
			border-top-right-radius: 6px;
			-webkit-border-bottom-right-radius: 6px;
			-moz-border-radius-bottomright: 6px;
			border-bottom-right-radius: 6px;
		}

		.pagination-mini ul>li:first-child>a, .pagination-small ul>li:first-child>a,
		.pagination-mini ul>li:first-child>span, .pagination-small ul>li:first-child>span
		{
			-webkit-border-top-left-radius: 3px;
			-moz-border-radius-topleft: 3px;
			border-top-left-radius: 3px;
			-webkit-border-bottom-left-radius: 3px;
			-moz-border-radius-bottomleft: 3px;
			border-bottom-left-radius: 3px;
		}

		.pagination-mini ul>li:last-child>a, .pagination-small ul>li:last-child>a,
		.pagination-mini ul>li:last-child>span, .pagination-small ul>li:last-child>span
		{
			-webkit-border-top-right-radius: 3px;
			-moz-border-radius-topright: 3px;
			border-top-right-radius: 3px;
			-webkit-border-bottom-right-radius: 3px;
			-moz-border-radius-bottomright: 3px;
			border-bottom-right-radius: 3px;
		}

		.pagination-small ul>li>a, .pagination-small ul>li>span {
			padding: 2px 10px;
			font-size: 10.2px;
		}

		.pagination-mini ul>li>a, .pagination-mini ul>li>span {
			padding: 1px 6px;
			font-size: 9px;
		}
		#parent{
			margin-top:15%;
			margin-left:45%;
			transform:translate(-50%,-50%) ;
		}
		.right{
			border: 3px solid blue;
			width: 505px;
			height: 300px;
			margin-top: -100px;
			margin-left: 200px;
		}
	</style>
</head>
<div class="clearfix"></div>
<div class="row">
	<div class="col-md-12">
		<div class="x_panel">
			<div class="x_title">
				<h2>
					APP 信息管理维护 <i class="fa fa-user"></i><small>${devLogin.devname}
						- 您可以通过搜索或者其他的筛选项对APP的信息进行修改、删除等管理操作。</small>
				</h2>
				<div class="clearfix"></div>
			</div>
			<div class="x_content">
				<form method="post" action="list">
					<input type="hidden" name="pageIndex" value="1" />
					<ul>
						<li>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input id="name" name="querySoftwareName" type="text" class="form-control col-md-7 col-xs-12">
								</div>
							</div>
						</li>

						<li>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">APP状态</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<select name="queryStatus" class="form-control" id="AppStatus">
											<option value="0">--请选择--</option>
									</select>
								</div>
							</div>
						</li>
						<li>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">所属平台</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<select name="queryFlatformId" class="form-control" id="flatformId">
											<option value="0">--请选择--</option>
									</select>
								</div>
							</div>
						</li>
						<li>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">一级分类</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<select id="queryCategoryLevel1" name="queryCategoryLevel1"
										class="form-control">
											<option value="-1">--请选择--</option>
									</select>
								</div>
							</div>
						</li>
						<li>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">二级分类</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<input type="hidden" name="categorylevel2list"
										id="categorylevel2list" />
									<select name="queryCategoryLevel2" id="queryCategoryLevel2" class="form-control">
									</select>
								</div>
							</div>
						</li>
						<li>
							<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12">三级分类</label>
								<div class="col-md-6 col-sm-6 col-xs-12">
									<select name="queryCategoryLevel3" id="queryCategoryLevel3" class="form-control">
									</select>
								</div>
							</div>
						</li>
						<li><button type="button" class="btn btn-primary" onclick="load(0)"> 查 &nbsp;&nbsp;&nbsp;&nbsp;询 </button></li>
					</ul>
				</form>
			</div>
		</div>
	</div>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="x_panel">
			<div class="x_content">
				<p class="text-muted font-13 m-b-30"></p>
				<div id="datatable-responsive_wrapper"
					class="dataTables_wrapper form-inline dt-bootstrap no-footer">
					<div class="row">
						<div class="col-sm-12">
							<a href="${pageContext.request.contextPath}/devUser/goAppInfoAdd"
								class="btn btn-success btn-sm">新增APP基础信息</a>
							<table id="datatable-responsive"
								class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
								cellspacing="0" width="100%" role="grid"
								aria-describedby="datatable-responsive_info"
								style="width: 100%;">
								<thead>
									<tr role="row">
										<th class="sorting_asc" tabindex="0"
											aria-controls="datatable-responsive" rowspan="1" colspan="1"
											aria-label="First name: activate to sort column descending"
											aria-sort="ascending">软件名称</th>
										<th class="sorting" tabindex="0"
											aria-controls="datatable-responsive" rowspan="1" colspan="1"
											aria-label="Last name: activate to sort column ascending">
											APK名称</th>
										<th class="sorting" tabindex="0"
											aria-controls="datatable-responsive" rowspan="1" colspan="1"
											aria-label="Last name: activate to sort column ascending">
											软件大小(单位:M)</th>
										<th class="sorting" tabindex="0"
											aria-controls="datatable-responsive" rowspan="1" colspan="1"
											aria-label="Last name: activate to sort column ascending">
											所属平台</th>
										<th class="sorting" tabindex="0"
											aria-controls="datatable-responsive" rowspan="1" colspan="1"
											aria-label="Last name: activate to sort column ascending">
											所属分类(一级分类、二级分类、三级分类)</th>
										<th class="sorting" tabindex="0"
											aria-controls="datatable-responsive" rowspan="1" colspan="1"
											aria-label="Last name: activate to sort column ascending">
											状态</th>
										<th class="sorting" tabindex="0"
											aria-controls="datatable-responsive" rowspan="1" colspan="1"
											aria-label="Last name: activate to sort column ascending">
											下载次数</th>
										<th class="sorting" tabindex="0"
											aria-controls="datatable-responsive" rowspan="1" colspan="1"
											aria-label="Last name: activate to sort column ascending">
											最新版本号</th>
										<th class="sorting" tabindex="0"
											aria-controls="datatable-responsive" rowspan="1" colspan="1"
											style="width: 124px;"
											aria-label="Last name: activate to sort column ascending">
											操作</th>
									</tr>
								</thead>
								<tbody id="tBody">
								</tbody>
							</table>
							<div class="pagination" id="pagination"></div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>
<%@include file="common/footer.jsp"%>
<%--<script src="${pageContext.request.contextPath }/statics/localjs/rollpage.js"></script>
<script src="${pageContext.request.contextPath }/statics/localjs/appinfolist.js"></script>--%>
<script src="/statics/js/jquery.min.js"></script>
<script src="/statics/js/jquery.pagination.js"></script>
<script>
	$(function () {
		load(0);
		status();
		flats();
		queryCategoryLevel1();
	})
	function review(id) {
		location.href="/appInfo/getOne/"+id;
	}
	function review1(id) {
		location.href="/appInfo/getModify/"+id;
	}
	function review2(id) {
		location.href="/appInfo/delectApp/"+id;
	}
	function review3(id) {
		location.href="/devUser/goAppVer/"+id;
	}
	function review4(id) {
		location.href="/devUser/updateAppVersion/"+id;
	}


	function load(pageNum) {
		var $name=$("#name").val();
		var $AppStatus=$("#AppStatus").val();
		var $flatformId=$("#flatformId").val();
		var $queryCategoryLevel1=$("#queryCategoryLevel1").val();
		var $queryCategoryLevel2=$("#queryCategoryLevel2").val();
		var $queryCategoryLevel3=$("#queryCategoryLevel3").val();
		$.ajax({
			url: "/appInfo/getAllList",
			type: "POST",
			data:{"softwareName":$name,
				"pageNum":pageNum,
				"AppStatus":$AppStatus,
				"flatformId":$flatformId,
				"categoryLevel1":$queryCategoryLevel1,
				"categoryLevel2":$queryCategoryLevel2,
				"categoryLevel3":$queryCategoryLevel3},
			dataType: "JSON",
			success: function (pageInfo) {
				$("#tBody").html("");
				$.each(pageInfo.list, function (index,dom) {
					var shelf="";
					if (dom.status==2 || dom.status==5){
						var shelf=" <a href='javascript::;' onclick='ShelfAndObtained(4,"+dom.id+")' class=\"saleSwichOpen\" saleSwitch=\"open\"\n" +
								" appinfoid=${appInfo.id }\n" +
								" appsoftwarename=${appInfo.softwareName }\n" +
								" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\"\n" +
								" data-original-title=\"恭喜您，您的审核已经通过，您可以点击上架发布您的APP\">上架</a>\n" +
								" \n"+
								" \n"
					}
					var Obtained="";
					if (dom.status==4){
						var Obtained=" <a href='javascript::;' onclick='ShelfAndObtained(5,"+dom.id+")' class=\"saleSwichClose\" saleSwitch=\"close\"\n" +
							" appinfoid=${appInfo.id }\n" +
							" appsoftwarename=${appInfo.softwareName }\n" +
							" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\"\n" +
							" data-original-title=\"您可以点击下架来停止发布您的APP，市场将不提供APP的下载\">下架</a>\n" +
							" \n" +
							" </li>\n"
					}

					var ver="";
					if (dom.versionNo==null){
						ver=" <li><a style='display:none' class=\"modifyVersion\"\n" +
						" appinfoid=\"${appInfo.id }\"\n" +
						" versionid=\"${appInfo.versionId }\"\n" +
						" status=\"${appInfo.status }\"\n" +
						" statusname=\"${appInfo.statusName }\" data-toggle=\"tooltip\"\n" +
						" data-placement=\"top\" title=\"\"\n" +
						" data-original-title=\"修改APP最新版本信息\" onclick='review4("+dom.versionid+")'>修改版本</a></li>\n"
					}else if (dom.versionNo!=null){
						ver=" <li><a class=\"modifyVersion\"\n" +
						" appinfoid=\"${appInfo.id }\"\n" +
						" versionid=\"${appInfo.versionId }\"\n" +
						" status=\"${appInfo.status }\"\n" +
						" statusname=\"${appInfo.statusName }\" data-toggle=\"tooltip\"\n" +
						" data-placement=\"top\" title=\"\"\n" +
						" data-original-title=\"修改APP最新版本信息\" onclick='review4("+dom.versionid+")'>修改版本</a></li>\n"
					}

					$("#tBody").append("<tr>" +
							" <td>" + dom.softwarename + "</td>" +
							" <td>" + dom.apkname + "</td>" +
							" <td>" + dom.softwaresize + "</td>" +
							" <td>" + dom.flatformName + "</td>" +
							" <td>" + dom.categoryLevel1Name+"--"+dom.categoryLevel2Name +"--"+dom.categoryLevel3Name +"</td>" +
							" <td>" + dom.statusName + "</td>" +
							" <td>" + dom.downloads + "</td>" +
							" <td>" + cehck(dom.versionNo) + "</td>" +
							" <td>\n" +
							" <div class=\"btn-group\">\n" +
							" <button type=\"button\" class=\"btn btn-danger\">点击操作</button>\n" +
							" <button type=\"button\"\n" +
							" class=\"btn btn-danger dropdown-toggle\"\n" +
							" data-toggle=\"dropdown\" aria-expanded=\"false\">\n" +
							" <span class=\"caret\"></span> <span class=\"sr-only\">Toggle\n" +
							" Dropdown</span>\n" +
							" </button>\n" +
							" <ul class=\"dropdown-menu\" role=\"menu\">\n" +
							" <li>\n" +
							" \n" +
							shelf+"<span></span>"+ Obtained+"<span></span>"+ver+
							" <li><a class=\"addVersion\" appinfoid=\"${appInfo.id }\"\n" +
							" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\"\n" +
							" data-original-title=\"新增APP版本信息\" onclick='review3("+dom.id+")'>新增版本</a></li>\n" +

							" <li><a class=\"modifyAppInfo\"\n" +
							" appinfoid=\"${appInfo.id }\" status=\"${appInfo.status }\"\n" +
							" statusname=\"${appInfo.statusName }\" data-toggle=\"tooltip\"\n" +
							" data-placement=\"top\" title=\"\"\n" +
							" data-original-title=\"修改APP基础信息\" onclick='review1("+dom.id+")'>修改</a></li>\n" +
							" <li><a class=\"viewApp\" appinfoid=${appInfo.versionid }\n" +
							" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\"\n" +
							" data-original-title=\"查看APP基础信息以及全部版本信息\" onclick='review("+dom.id+")'>查看</a></li>\n" +
							" <li><a class=\"deleteApp\" appinfoid=${appInfo.id }\n" +
							" appsoftwarename=${appInfo.softwareName }\n" +
							" data-toggle=\"tooltip\" data-placement=\"top\" title=\"\"\n" +
							" data-original-title=\"删除APP基础信息以及全部版本信息\" onclick='review2("+dom.id+")'>删除</a></li>\n" +
							" </ul>\n" +
							" </div>\n" +
							" </td>"+
							" </tr>");
				})
				//构建分页
				//渲染分页  总记录数  当前页码  每页数据量
				$('#pagination').pagination(pageInfo.total, {
					current_page : pageNum,
					items_per_page : pageInfo.pageSize,
					callback:load,
					load_first_page : true,
					prev_text : '上一页',
					next_text : '下一页'
				});
			}
		})
	}

	function ShelfAndObtained(num,id) {
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath }/appInfo/ShelfAndObtained",
			data:{"num":num,"id":id},
			dataType:"JSON",
			success: function(resout) {
				if (resout!=null){
					if (num==4){
						alert("上架成功")
						load(0)
					} else  if (num=5){
						alert("下架成功")
						load(0)
					}

				}
			}
		})
	}
	/*APP状态下拉框*/
	function status() {
		$.ajax({
			url: "/appInfo/getAppStatus",
			data: "post",
			dataType: "JSON",
			success: function (list) {
				$.each(list, function (index,bind) {
					$("#AppStatus").append(" <option value='"+bind.valueid+"'>"+bind.valuename+"</option>");
				})
			}
		});
	}
	/*所属平台下拉框*/
	function flats(){
		$.ajax({
			url: "/appInfo/getFlatFormId",
			data: "post",
			dataType: "JSON",
			success: function (list) {
				$.each(list, function (index,bind) {
					$("#flatformId").append(" <option value='"+bind.valueid+"'>"+bind.valuename+"</option>");
				})
			}
		});
	}

	/*一级菜单改变事件*/
	$("#queryCategoryLevel1").change(function(){
		queryCategoryLevel3();
		queryCategoryLevel2();
	})

	/*一级菜单*/
	function queryCategoryLevel1(){
		$.ajax({
			url: "/appInfo/getCategoryLevel1",
			data: "post",
			dataType: "JSON",
			success: function (list) {
				$.each(list, function (index,bind) {
					$("#queryCategoryLevel1").append(" <option value='"+bind.id+"'>"+bind.categoryname+"</option>");
				})
			}
		});
	}

	/*绑定二级菜单*/
	function queryCategoryLevel2() {
		var val = $("#queryCategoryLevel1").val();
		$.ajax({
			url:"/appInfo/getCategoryLevel2",
			type:"post",
			data:{"cid":val},
			dataType:"JSON",
			success:function (list) {
				$("#queryCategoryLevel2").html("");
				$("#queryCategoryLevel2").append("<option value='-1'>---请选择---</option>");
				$.each(list,function (index,dom) {
					$("#queryCategoryLevel2").append("<option value='"+dom.id+"'>"+dom.categoryname+"</option>");
				})
			}
		})
	}

	/*一二级菜单改变事件*/
	$("#queryCategoryLevel2").change(function(){
		queryCategoryLevel3();
	})

	/*绑定三级菜单*/
	function queryCategoryLevel3(){
		var val = $("#queryCategoryLevel2").val();
		$.ajax({
			url:"/appInfo/getCategoryLevel3",
			type:"post",
			data:{"cid":val},
			dataType:"JSON",
			success:function (list) {
				$("#queryCategoryLevel3").html("");
				$("#queryCategoryLevel3").append("<option value='-1'>---请选择---</option>");
				$.each(list,function (index,dom) {
					$("#queryCategoryLevel3").append("<option value='"+dom.id+"'>"+dom.categoryname+"</option>");
				})
			}
		})
	}
	function cehck(id){
		if (id==null){
			return "";
		}else{
			return id;
		}
	}
</script>