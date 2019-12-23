<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>修改APP基础信息 <i class="fa fa-user"></i><small>${devLogin.devname}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
        <form class="form-horizontal form-label-left" action="/appInfo/updaApp" method="post" enctype="multipart/form-data">
          <input type="hidden" name="id" id="id" value="${oneInfo.id}">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">软件名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="softwareName" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" 
               name="softwarename" value="${oneInfo.softwarename}" required="required"
               placeholder="请输入软件名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APK名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="APKName" type="text" class="form-control col-md-7 col-xs-12"
              name="apkname" value="${oneInfo.apkname}" readonly="readonly">
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">支持ROM <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="supportROM" class="form-control col-md-7 col-xs-12"
                     name="supportrom" value="${oneInfo.supportrom}" required="required"
                     data-validate-length-range="20" data-validate-words="1"
                     placeholder="请输入支持的ROM" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">界面语言 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="interfaceLanguage" class="form-control col-md-7 col-xs-12"
                     data-validate-length-range="20" data-validate-words="1"  required="required"
                     name="interfacelanguage" value="${oneInfo.interfacelanguage}"
                     placeholder="请输入软件支持的界面语言" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">软件大小 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="softwareSize" name="softwaresize" value="${oneInfo.softwaresize}" required="required"
                     data-validate-minmax="10,500"  placeholder="请输入软件大小，单位为Mb" class="form-control col-md-7 col-xs-12">
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="number">下载次数 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="downloads" name="downloads"
                     value="${oneInfo.downloads}" required="required"
                     data-validate-minmax="10,500" placeholder="请输入下载次数"
                     class="form-control col-md-7 col-xs-12">

            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">所属平台 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" value="" id="fid" />
              <select name="flatformid" id="flatformId" class="form-control" required="required">
                <option value="">${oneInfo.flatformName}</option>
              </select>
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">一级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" value="" id="cl1" />
              <select name="categorylevel1" id="queryCategoryLevel1" class="form-control"  required="required">
                <option value="">${oneInfo.categoryLevel1Name}</option>
              </select>
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12"  for="select">二级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" value="" id="cl2" />
              <select name="categorylevel2" id="queryCategoryLevel2" class="form-control"  required="required"><%--<option value="">${oneInfo.categorylevel2}</option>--%></select>
            </div>
          </div>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="select">三级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" value="" id="cl3" />
              <select name="categorylevel3" id="queryCategoryLevel3" class="form-control"  required="required"><%--<option value="">${oneInfo.categorylevel3}</option>--%></select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">APP状态 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="statusName" type="text" class="form-control col-md-7 col-xs-12"
                     name="statusname" value="${oneInfo.statusName}" readonly="readonly">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="textarea">应用简介 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="appInfo" name="appinfo" required="required"
                        placeholder="请输入本软件的相关信息，本信息作为软件的详细信息进行软件的介绍。" class="form-control col-md-7 col-xs-12">
                ${oneInfo.appinfo}</textarea>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">LOGO图片 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="file" class="form-control col-md-7 col-xs-12" name="multipartFile"  required="required" id="a_logoPicPath"/>
              ${fileUploadError }
            </div>
          </div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
<%--              <c:if test="${oneInfo.status == 3}">
                <button id="send" type="submit" name="status" value="1" class="btn btn-success">保存并再次提交审核</button>
              </c:if>--%>
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" class="btn btn-primary" id="back" onclick='reviews'>返回</button>
              <br/><br/>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="common/footer.jsp"%>
<%--<script src="${pageContext.request.contextPath }/statics/localjs/appinfomodify.js"></script>--%>
<script>
  $(function () {
    flats();
    queryCategoryLevel1();
    flatForm();
  })

  $("#back").on("click",function(){
    window.location.href = "/devUser/goAppinfolist";
  });

  function flatForm() {
    $.ajax({
      url:"/appInfo/getflatformfrontupda",
      data:"post",
      dataType:"json",
      success:function (flatForm) {
        $.each(flatForm,function (index, dom) {
          $("#flatform").append(" <option value='"+dom.valueid+"'>"+dom.valuename+"</option>")
        })
      }
    })
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
</script>