<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>新增APP版本信息 <i class="fa fa-user"></i><small>${devLogin.devname}</small></h2>
            <div class="clearfix"></div>
      </div>
       <div class="x_title">
            <h2>历史版本列表</h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
            </ul>
          <div class="clearfix"></div>
        </div>
      <div class="x_content1">
      <div class="clearfix"></div>
	  <p class="text-muted font-13 m-b-30"></p>
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
        <div class="clearfix"></div>
        <div class="x_title">
            <h2>新增版本信息</h2>
            <ul class="nav navbar-right panel_toolbox">
              <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
              </li>
            </ul>
          <div class="clearfix"></div>
        </div>
        <div class="x_content" style="display: block;">
         <br>
        <form class="form-horizontal form-label-left" onsubmit="return checkText()" action="${pageContext.request.contextPath }/appInfo/goAddVersion" method="post" enctype="multipart/form-data">
           <input type="hidden" name="appid" value="${oneInfo.id}" id="id">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">版本号 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="versionNo" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" name="versionno"
               placeholder="请输入版本号" type="text"  required="required">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">版本大小 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="versionSize" name="versionsize"  required="required"
              data-validate-minmax="10,500"  placeholder="请输入版本大小，单位为Mb" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
       
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">发布状态 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" name="publishstatus" id="publishStatus" value="3">预发布
            </div>
          </div>
        
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">版本简介 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="versionInfo" name="versioninfo" required="required"
              placeholder="请输入本版本的相关信息，本信息作为该版本的详细信息进行版本介绍。" class="form-control col-md-7 col-xs-12"></textarea>
            </div>
          </div>
           <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">apk文件 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="file" class="form-control col-md-7 col-xs-12" name="upload" id="a_downloadLink"  required="required"/>
            ${fileUploadError }
            </div>
          </div>
          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" class="btn btn-primary" id="back" onclick='reviews'>返回</button>
            </div>
          </div>
        </form>
        </div>
      </div>
    </div>
  </div>
</div>
<%@include file="common/footer.jsp"%>
<script src="${pageContext.request.contextPath }/statics/localjs/appversionadd.js"></script>
<script>
    $(function () {
        load();
    })
    $("#back").on("click",function(){
        window.location.href = "/devUser/goAppinfolist";
    });

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

    function checkText() {
        var multipartFile=$("#a_downloadLink").val();
        var exec = (/[.]/.exec(multipartFile)) ? /[^.]+$/.exec(multipartFile.toLowerCase()) : '';
        if (exec!=".apk"){
            alert("文件格式不正确！");
            return false;
        }
    }
</script>