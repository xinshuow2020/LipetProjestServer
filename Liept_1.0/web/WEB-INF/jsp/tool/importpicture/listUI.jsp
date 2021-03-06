<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    pageContext.setAttribute("basePath", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>LDAR后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style type="text/css">
        a:link,a:visited{
            text-decoration:none;  /*超链接无下划线*/
        }
        a:hover{
            text-decoration:underline;  /*鼠标放上去有下划线*/
        }
    </style>
    <!-- basic styles -->
    <link href="${basePath}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${basePath}/assets/css/font-awesome.min.css" />
    <!--[if IE 7]>
    <link rel="stylesheet" href="${basePath}/assets/css/font-awesome-ie7.min.css" />
    <![endif]-->

    <!-- page specific plugin styles -->

    <!-- fonts -->

    <link rel="stylesheet" href="${basePath}/assets/css/font-down-google.css"/>

    <!-- ace styles -->

    <link rel="stylesheet" href="${basePath}/assets/css/ace.min.css" />
    <link rel="stylesheet" href="${basePath}/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="${basePath}/assets/css/ace-skins.min.css" />

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${basePath}/assets/css/ace-ie.min.css" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="${basePath}/assets/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="${basePath}/assets/js/html5shiv.js"></script>
    <script src="${basePath}/assets/js/respond.min.js"></script>

    <script type="text/javascript">
        function importModuleFromExcel(){
            document.getElementById("from-importfile").submit();
        }

    </script>
    <![endif]-->
</head>

<body>

<%@ include file="../../parentPage/topNavigation.jsp" %>
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try{ace.settings.check('main-container' , 'fixed')}catch(e){}
    </script>
    <div class="main-container-inner">             <!-- 还是最外层-->

        <%@ include file="../../parentPage/toolLeftListNavigation.jsp" %>

        <div class="main-content">             <!-- 右边内容界面-->

            <div class="breadcrumbs" id="breadcrumbs">  <!-- 右边内容界面的导航栏-->
                <script type="text/javascript">
                    try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a     href="#">工具</a>
                    </li>
                    <li class="active">导入图片</li>
                </ul>
            </div>  <!-- .结束导航栏 -->

            <div class="page-content">     <!-- 右边内容界面的导航栏下的内容主界面-->



                <div class="well">
                    <h5 class="blue smaller lighter">导入图片规范：</h5>

                    <div class="row">
                        <div class="col-xs-12">
                            <ul class="list-unstyled spaced2">
                                <li>
                                    <i class="icon-circle green"></i>
                                    将图片存放于服务器的images目录下
                                </li>
                                <li>
                                    <i class="icon-circle green"></i>
                                    图片路径为： images目录下： 标记到任务目录
                                </li>
                                <li>
                                    <i class="icon-circle green"></i>
                                    例如：.....\images\华泰L-00458
                                </li>
                                <li>
                                    <i class="icon-circle green"></i>
                                    华泰为具体任务目录， 其子目录为标签目录
                                </li>
                                <li>
                                    <i class="icon-circle green"></i>
                                    图片路径最终应填写为：华泰L-00458
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>


                <div class="well">
                    <form action="${basePath}/tool/import_picture_importPicture.action">
                        图片路径：<input type="text" name="picturePath">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <button class="btn btn-info" type="submit" id="btn1">导入图片</button>
                    </form>
                </div>

                <center><div id="vvv" style="margin-left: auto;margin-right: auto;"></div></center>

            </div>
        </div><!-- /.main-content -->

    </div>
</div>


<script type="text/javascript">
    window.jQuery || document.write("<script src='${basePath}/assets/js/jquery-2.0.3.min.js'>" + "<" + "script>");
</script>


<script type="text/javascript">
    if ("ontouchend" in document) document.write("<script src='${basePath}/assets/js/jquery.mobile.custom.min.js'>" + "<" + "script>");
</script>
<script src="${basePath}/assets/js/bootstrap.min.js"></script>
<script src="${basePath}/assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>
<script src="${basePath}/assets/js/excanvas.min.js"></script>
<![endif]-->

<script src="${basePath}/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="${basePath}/assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="${basePath}/assets/js/jquery.slimscroll.min.js"></script>
<script src="${basePath}/assets/js/jquery.easy-pie-chart.min.js"></script>
<script src="${basePath}/assets/js/jquery.sparkline.min.js"></script>
<script src="${basePath}/assets/js/flot/jquery.flot.min.js"></script>
<script src="${basePath}/assets/js/flot/jquery.flot.pie.min.js"></script>
<script src="${basePath}/assets/js/flot/jquery.flot.resize.min.js"></script>

<!-- ace scripts -->

<script src="${basePath}/assets/js/ace-elements.min.js"></script>
<script src="${basePath}/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    $(document).ready(function () {
        $("#btn1").click(function () {
            $("#vvv").append('<img src="${basePath}/images/loading.gif"/>');
        })
    })
</script>
<div style="display:none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'>
    </script>
</div>
</body>
</html>
