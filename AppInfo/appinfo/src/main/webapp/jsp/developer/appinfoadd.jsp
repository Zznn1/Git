<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="common/header.jsp"%>
<div class="clearfix"></div>
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>新增APP基础信息 <i class="fa fa-user"></i><small>${devLogin.devname}</small></h2>
             <div class="clearfix"></div>
      </div>
      <div class="x_content">
	  <!-- <div class="item form-group">
               <label class="control-label col-md-3 col-sm-3 col-xs-12" ></label>
               <div class="col-md-6 col-sm-6 col-xs-12">
                 <form action="uploadlogo" class="dropzone" style="height:100px;">
                 </form>
            <div class="clearfix"></div>
         </div>
       </div> -->
           <div class="clearfix"></div>
        <form class="form-horizontal form-label-left" action="${pageContext.request.contextPath }/appInfo/goAddApp" method="post" onsubmit="return checkText()" enctype="multipart/form-data">
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="softwareName" class="form-control col-md-7 col-xs-12" 
               data-validate-length-range="20" data-validate-words="1" name="softwarename"  required="required"
               placeholder="请输入软件名称" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">APK名称 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="APKName" class="form-control col-md-7 col-xs-12" 
              	data-validate-length-range="20" data-validate-words="1" name="apkname"   required="required"
              	placeholder="请输入APK名称" type="text">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" >支持ROM <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="supportROM" class="form-control col-md-7 col-xs-12" name="supportrom"
              	data-validate-length-range="20" data-validate-words="1"   required="required"
              	placeholder="请输入支持的ROM" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" >界面语言 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="interfaceLanguage" class="form-control col-md-7 col-xs-12" 
              data-validate-length-range="20" data-validate-words="1" name="interfacelanguage"   required="required"
              placeholder="请输入软件支持的界面语言" type="text">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12" >软件大小 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="softwareSize" name="softwaresize"   required="required" onkeyup="value=value.replace(/[^\d]/g,'')"
              data-validate-minmax="10,500"  placeholder="请输入软件大小，单位为Mb" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">下载次数 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="number" id="downloads" name="downloads"   required="required"
              data-validate-minmax="10,500"  placeholder="请输入下载次数" class="form-control col-md-7 col-xs-12">
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">所属平台 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="flatformid" class="form-control" id="flatformId"  required="required">
                <option value="0">--请选择--</option>
              </select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">一级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select id="queryCategoryLevel1" name="categorylevel1" class="form-control" required="required">
                <option value="-1">--请选择--</option>
              </select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">二级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="hidden" name="categorylevel2list"
                     id="categorylevel2list" />
              <select name="categorylevel2" id="queryCategoryLevel2" class="form-control" required="required">
              </select>
            </div>
          </div>
          
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">三级分类 <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <select name="categorylevel3" id="queryCategoryLevel3" class="form-control" required="required">
              </select>
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">APP状态 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
            	<input type="hidden" name="status" id="status" value="1">待审核
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">应用简介 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <textarea id="appInfo" name="appinfo"     required="required"
              placeholder="请输入本软件的相关信息，本信息作为软件的详细信息进行软件的介绍。" class="form-control col-md-7 col-xs-12"></textarea>
            </div>
          </div>
           <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">LOGO图片 <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
            <input type="file" class="form-control col-md-7 col-xs-12" name="upload"  required="required" id="a_logoPicPath"/>
            ${fileUploadError }
            </div>
          </div>
          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button id="send" type="submit" class="btn btn-success">保存</button>
              <button type="button" id="back" onclick='reviews'>返回</button>
              <br/><br/>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<%@include file="common/footer.jsp"%>
<%--<script src="${pageContext.request.contextPath }/statics/localjs/appinfoadd.js"></script>--%>
<script src="/statics/js/jquery.min.js"></script>
<script>
  $(function () {
    flats();
    queryCategoryLevel1();
  })
  $("#back").on("click",function(){
    window.location.href = "/devUser/goAppinfolist";
  });

  /*文本框判断*/
  function checkText(){
    var flatformId=$("#flatformId").val();
    var queryCategoryLevel2=$("#queryCategoryLevel2").val();
    var queryCategoryLevel3=$("#queryCategoryLevel3").val();
    var a_logoPicPath=$("#a_logoPicPath").val();
    var exec = (/[.]/.exec(a_logoPicPath)) ? /[^.]+$/.exec(a_logoPicPath.toLowerCase()) : '';
    if ($flatformId==0) {
      alert("请选择所属平台！");
      return false;
    }else if ($queryCategoryLevel1=="-1"){
      alert("请选择一级分类！");
      return false;
    }else if ($queryCategoryLevel2=="-1"){
      alert("请选择二级分类！");
      return false;
    }else if ($queryCategoryLevel3=="-1"){
      alert("请选择三级分类！");
      return false;
    }else if (exec!="jpg" || exec!="png" || exec!="jpeg" || exec!="pneg"){
      alert("文件格式不正确，请重新选择")
      return false;
    }
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