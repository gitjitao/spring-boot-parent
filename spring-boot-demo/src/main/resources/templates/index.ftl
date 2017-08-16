<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>列表</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" media="screen" href="/static/css/jquery.alerts.css">
<#include "include/common_css_js.ftl">
    <style>
        .table-nobg-btn{
            font:15/29px;
            height: 31px;
            margin: 7px 7px 7px 0;
            padding: 0 22px;
        }
        .dt-wrapper {
            overflow: auto;
        }

    </style>

</head>

<body>
<#include "include/menu.ftl">
<div id="main" role="main">

    <!-- RIBBON -->
    <div id="ribbon">

        <!-- breadcrumb -->
        <ol class="breadcrumb">
            <li>用户信息管理</li>
            <li>用户列表</li>
        </ol>
        <!-- end breadcrumb -->
    </div>

    <div id="content">
        <section id="widget-grid" class="">
            <div class="row">
                <!-- NEW WIDGET START -->
                <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <!-- NEW WIDGET START -->
                    <div class="jarviswidget" id="customerInfoMsg"  data-widget-deletebutton="false" data-widget-editbutton="false">
                        <header>
                            <h2>快速搜索</h2>
                        </header>
                        <div>
                            <form class="smart-form" action="/member/list"  method="post" id="custForm">
                                <div class="jarviswidget-editbox">
                                </div>
                                <div class="widget-body no-padding">
                                    <div class="mt10 mb10">
                                        <table class="table lh32">
                                            <col width="100" />
                                            <col width="220" />
                                            <col width="100" />
                                            <col width="220" />
                                            <col width="100" />
                                            <col />
                                            <tbody>
                                            <tr>
                                                <td class="tr">用户名:</td>
                                                <td>
                                                    <label class="input"  style="width:210px" >
                                                        <input type="text" name="username" value=""/>
                                                    </label>
                                                </td>
                                                <td class="tr">邮箱：</td>
                                                <td>
                                                    <label class="input" style="width:210px" >
                                                        <input type="text" name="email" value="" />
                                                    </label>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <footer>
                                        <button class="btn btn-primary" onclick="javascript:void(0);">查&nbsp;&nbsp;&nbsp;询</button>
                                    </footer>
                                </div>
                                <!-- end widget content -->
                            </form>
                        </div>
                    </div>

                    <!-- NEW WIDGET START -->
                    <!-- 	<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12"> -->
                    <div class="jarviswidget jarviswidget-color-darken" id="menu-id-33"  data-widget-deletebutton="false" data-widget-editbutton="false">
                        <header>
                            <span class="widget-icon"> <i class="fa fa-table"></i> </span>
                            <h2>用户列表</h2>
                        </header>
                        <!-- widget div-->
                        <div>
                            <form class="smart-form">
                                <!-- widget edit box -->
                                <div class="jarviswidget-editbox">
                                </div>
                                <!-- end widget edit box -->
                                <!-- widget content -->
                                <div class="widget-body">
                                    <table id="borrow-rep-table12" class="table table-bordered tc mt15" style="min-width:1100px;">
                                        <col width="150" />
                                        <col width="100" />
                                        <col width="100" />
                                        <col width="100" />
                                        <col width="150" />
                                        <col width="100" />
                                        <col width="150" />
                                        <col width="" />
                                        <thead>
                                        <tr>
                                            <td>用户编号</td>
                                            <td >用户名</td>
                                            <td>密码</td>
                                            <td>电话</td>
                                            <td >邮箱</td>
                                            <td>qq</td>
                                            <td>创建时间</td>
                                            <td>操作</td>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <#list page.list as user>
                                        <tr>
                                            <td>${(user.id)!}</td>
                                            <td>${(user.username)!}</td>
                                            <td>${(user.password)!}</td>
                                            <td>${(user.tel)!}</td>
                                            <td>${(user.email)!}</td>
                                            <td>${(user.qq)!}</td>
                                            <td>${(user.createtime?string('yyyy-mm-dd'))!}</td>
                                            <td><a href="#">查看详情</a></td>
                                        </tr>
                                        </#list>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- end widget content -->
                            </form>
                        </div>
                    </div>
                </article>
            </div>
        </section>
    </div>
</div>
<#include "include/common_footer_css_js.ftl">
<script src="/static/js/jquery.form.js" ></script>
<script src="/static/js/jquery.alerts.js" ></script>
<script type="text/javascript" charset="utf-8">
    $(document).ready(function () {
        pageSetUp();
        DT_page("borrow-rep-table12", true, '{"pages":"${page.pages}","total":"${page.total}","pageSize":"${page.pageSize}","pageNum":"${page.pageNum}"}', $("#custForm"));
    });
    $('.selectdate').datetimepicker({
        language:  'zh-CN',
        weekStart: 1,
        autoclose: 1,
        format:'yyyy-mm-dd',
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
    function verify(){
        $("#custForm").submit();
    }

</script>

<#include "include/foot.ftl">
</body>

</html>