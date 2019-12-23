<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>查看APP信息 <i class="fa fa-user"></i><small>${devLogin.devname}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_title">
            <h2>APP基础信息</h2>
          <div class="clearfix"></div>
      </div>
      <div class="x_content1">
        <form class="form-horizontal form-label-left" >
          <input type="hidden" name="id" value="${oneInfo.id}" id="id">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">软件名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" value="${oneInfo.softwarename}"
              type="text" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APK名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" class="form-control col-md-7 col-xs-12" 
              value="${oneInfo.apkname}" readonly="readonly">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">支持ROM <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input class="form-control col-md-7 col-xs-12" 
              	value="${oneInfo.supportrom}" type="text" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">界面语言 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
             <input class="form-control col-md-7 col-xs-12" readonly="readonly"
              	value="${oneInfo.interfacelanguage}" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">软件大小 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" value="${oneInfo.softwaresize}"
              class="form-control col-md-7 col-xs-12" readonly="readonly">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">下载次数 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" value="${oneInfo.downloads}"
               class="form-control col-md-7 col-xs-12" readonly="readonly">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">所属平台 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" class="form-control col-md-7 col-xs-12" 
              	value="${oneInfo.flatformName}" readonly="readonly">
            
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">所属分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="text" class="form-control col-md-7 col-xs-12" 
              	value="${oneInfo.categoryLevel1Name} --> ${oneInfo.categoryLevel2Name} --> ${oneInfo.categoryLevel3Name}" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APP状态 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<input type="text" class="form-control col-md-7 col-xs-12" 
              	value="${oneInfo.statusName}" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">应用简介 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea class="form-control col-md-7 col-xs-12" readonly="readonly"> 
              ${oneInfo.appinfo}</textarea>
            </div>
          </div>
           <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">LOGO图片 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
				    <img src="${oneInfo.logopicpath }?m=1" width="100px;"/>
            </div>
          </div>
        </form>
        </div>
        <div class="clearfix"></div>
        <div class="x_title">
            <h2>历史版本列表</h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
            </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content" style="display: block;">
         <br>
        <div id="datatable-responsive_wrapper"
			class="dataTables_wrapper form-inline dt-bootstrap no-footer">
			<div class="row">
				<div class="col-sm-12">
					<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed"
						cellspacing="0" width="100%" role="grid" aria-describedby="datatable-responsive_info" style="width: 100%;">
						<thead>
							<tr role="row">
								<th class="sorting_asc" tabindex="0"
									aria-controls="datatable-responsive" rowspan="1" colspan="1"
									style="width: 70px;" aria-label="First name: activate to sort column descending"
									aria-sort="ascending">软件名称</th>
								<th class="sorting" tabindex="0"
									aria-controls="datatable-responsive" rowspan="1" colspan="1"
									style="width: 10px;"
									aria-label="Last name: activate to sort column ascending">
									版本号</th>
								<th class="sorting" tabindex="0"
									aria-controls="datatable-responsive" rowspan="1" colspan="1"
									style="width: 90px;"
									aria-label="Last name: activate to sort column ascending">
									版本大小(单位:M)</th>
								<th class="sorting" tabindex="0"
									aria-controls="datatable-responsive" rowspan="1" colspan="1"
									style="width: 50px;"
									aria-label="Last name: activate to sort column ascending">
									发布状态</th>
								<th class="sorting" tabindex="0"
									aria-controls="datatable-responsive" rowspan="1" colspan="1"
									style="width: 50px;"
									aria-label="Last name: activate to sort column ascending">
									APK文件下载</th>
								<th class="sorting" tabindex="0"
									aria-controls="datatable-responsive" rowspan="1" colspan="1"
									style="width: 50px;"
									aria-label="Last name: activate to sort column ascending">
									最新更新时间</th>
							</tr>
						</thead>
						<tbody id="tBody">
						</tbody>
					</table>
				</div>
			</div>
      </div>
    </div>
     <div class="form-group">
        <div class="col-md-6 col-md-offset-3">
          <button type="button" class="btn btn-primary" id="back" onclick='reviews'>返回</button>
        </div>
      </div>
    <div class="clearfix"></div>
    <br/><br/>
  </div>
</div>
<%@include file="common/footer.jsp"%>
<script src="${pageContext.request.contextPath }/statics/localjs/appinfoview.js"></script>
<script>
    $(function () {
        load();
    })

    function reviews() {
        location.href="/devUser/goAppinfolist";
    }

    function load() {
        var $id=$("#id").val();
        $.ajax({
            url: "/appInfo/getVersion",
            type: "POST",
            data: {
                "appId": $id,
            },
            dataType: "JSON",
            success: function (list) {
                $("#tBody").html("");
                $.each(list, function (index,dom) {
                    $("#tBody").append("<tr>" +" " +
                        "<td>" + dom.softwarename + "</td>" +
                        " <td>" + dom.versionno + "</td>" +
                        " <td>" + dom.versionsize + "</td>" +
                        "<td>" + dom.statusName + "</td>" +
                        "<td>" + dom.apkfilename + "</td>" +
                        "<td>" + changeDate(dom.modifydate) + "</td>" +
                        "</tr>");
                })
            }
        })
    }

    //解决日期格式
    function changeDate(datetimes){
        var date = new Date(datetimes);
        Y = date.getFullYear() + '-';
        M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
        D = date.getDate() + ' ';
        //  h = date.getHours() + ':';
        //  m = date.getMinutes() + ':';
        //  s = date.getSeconds();
        //  年 月 日 时 分 秒
        return Y+M+D;
    }
</script>