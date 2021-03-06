﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	pageContext.setAttribute("basePath", request.getContextPath());
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>LDAR后台管理系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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

		<script src="${basePath}/assets/js/ace-extra.min.js"></script>

	</head>

	<body>

	<%@ include file="../../parentPage/topNavigation.jsp" %>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			
			<div class="main-container-inner">             <!-- 还是最外层-->

				<%@ include file="../../parentPage/reportLeftListNavigation.jsp" %>
				<div class="main-content">             <!-- 右边内容界面-->
				
					<div class="breadcrumbs" id="breadcrumbs">  <!-- 右边内容界面的导航栏-->
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">报告</a>
							</li>
							<li class="active">延迟修复报告</li>
						</ul>
					</div>  <!-- .结束导航栏 -->


					<div id="accordion" class="accordion-style1 panel-group">
						<div class="well">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
											<i class="icon-angle-down bigger-110" data-icon-hide="icon-angle-down" data-icon-show="icon-angle-right"></i>
											<!-- 标题-->
											过滤条件
										</a>
									</h4>
								</div>

								<div class="panel-collapse collapse in" id="collapseOne">
									<div class="panel-body">
										<!-- 内容-->
										<form class="form-vertical"  id="from-search" role="form" method="post"
											  action="${basePath}/report/delay_repair_report_listUI.action?pageNo=1">
											<div class="row">
												<div class="col-md-4">
													<div class="form-horizontal">
														<div class="form-group">
															<label class="control-label col-md-4" style="padding-right: 0px;">装置：</label>
															<div class="col-md-6">
																<select>
																	<option>全部</option>
																	<option>建材车间二</option>
																	<option>中间罐区</option>
																	<option>老厂三车间</option>
																	<option>建材车间一</option>
																	<option>老厂二车间</option>
																	<option>老厂罐区</option>
																	<option>一车间</option>
																	<option>二车间</option>
																	<option>建材车间</option>
																	<option>罐区</option>
																	<option>制冷车间</option>
																	<option>三车间分部</option>
																	<option>三车间分车间</option>
																	<option>冷冻房（一车间后和近厂门）</option>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-4" style="padding-right: 0px;">标签号：</label>
															<div class="col-md-6">
																<input type="text">
															</div>
														</div>


													</div>
												</div>
												<div class="col-md-4">
													<div class="form-horizontal">
														<div class="form-group">
															<label class="control-label col-md-4" style="padding-right: 0px;">区域：</label>
															<div class="col-md-6">
																<select>
																	<option>全部</option>
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-4" style="padding-right: 0px;">组件类型：</label>
															<div class="col-md-6">
																<select>
																	<option>全部</option>
																	<option>泵</option>
																	<option>阀门</option>
																	<option>压缩机</option>
																	<option>搅拌器</option>
																	<option>开口管线</option>
																	<option>连接件</option>
																	<option>法兰</option>
																	<option>泄压装置</option>

																</select>
															</div>
														</div>


													</div>
												</div>
												<div class="col-md-4">
													<div class="form-horizontal">
														<div class="form-group">
															<label class="control-label col-md-4" style="padding-right: 0px;">设备：</label>
															<div class="col-md-6">
																<select>
																	<option>全部</option>
																</select>
															</div>
														</div>
													</div>
													</div>
												</div>
														<div class="row">
															<div class="col-md-8">
																<div class="form-horizontal">
																	<div class="form-group">
																		<label class="col-md-4 control-label">进入延迟修复日期：</label>
																		<div class="col-md-8">
																		<input type="date" name="">到<input type="date" name="">
																		</div>
																	</div>
																	<div class="form-group">
																		<label class="col-md-4 control-label">成功修复日期：</label>
																		<div class="col-md-8">
																		<input type="date" name="">到<input type="date" name="">
																		</div>
																	</div>
																</div>
															</div>
															<div class="col-md-4">
																<div class="form-horizontal">
																	<div class="form-group">
																		<label class="control-label col-md-4" style="padding-right: 0px;">难于检测：</label>
																		<div class="col-md-6">
																			<input type="radio" name="#.#"><label>是</label>
																			<input type="radio" name="#.#"><label>否</label>
																			<input type="radio" name="#.#" checked><label>所有</label>
																		</div>
																	</div>
																	<div class="form-group">
																		<label class="control-label col-md-4" style="padding-right: 0px;">成功修复：</label>
																		<div class="col-md-6">
																			<input type="radio" name="#.##"><label>是</label>
																			<input type="radio" name="#.##"><label>否</label>
																			<input type="radio" name="#.##" checked><label>所有</label>
																		</div>
																	</div>
																	<div class="form-group" style="float: right;margin-right: 180px">
																		<button class="btn btn-info" type="button">导出</button>
																	</div>
																</div>
															</div>

													</div>

											<hr>
											<h4  style="margin-right:150px;float: right;" class="text-primary">
												选择批量导出的列
											</h4>
											<div class="checkbox">
												<div class="col-md-3 col-md-offset-9">
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">装置</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">区域</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">设备</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">标签号</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">扩展号</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">PID图号</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">位置描述</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">法规</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">组件类型</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">尺寸（mm）</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">读数（PPM）</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">泄漏阈值（PPM）</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">最新检测日期</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">首次发现泄漏日期</span>
													</label>
													</div>
													<div>

													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">进入DOR时间</span>
													</label>
													</div>
													<div>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace" />
														<span class="lbl">原因</span>
													</label>
</div>
												</div>

											</div>

										</form>
									</div>
								</div>
							</div>
						</div>

					</div><!-- /span -->
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
		<script src="${basePath}/assets/js/jquery.sparkline.min.js"></script>
		<script src="${basePath}/assets/js/flot/jquery.flot.min.js"></script>
		<script src="${basePath}/assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="${basePath}/assets/js/flot/jquery.flot.resize.min.js"></script>

		<!-- ace scripts -->

		<script src="${basePath}/assets/js/ace-elements.min.js"></script>
		<script src="${basePath}/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function ($) {
				<!-- 全选checkbox-->
				$('table th input:checkbox').on('click', function () {
					var that = this;
					$(this).closest('table').find('tr > td:first-child input:checkbox')
							.each(function () {
								this.checked = that.checked;
								$(this).closest('tr').toggleClass('selected');
							});

				});

			})
		</script>
		<div style="display:none">
			<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'>
			</script>
		</div>
	</body>
</html>

