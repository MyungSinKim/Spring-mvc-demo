<%--
  Created by IntelliJ IDEA.
  User: eastsoft
  Date: 2015/11/21
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>在线尝试 Bootstrap 实例</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/bootstrap-table.css" rel="stylesheet">
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <%--<script src="/js/angular.js"></script>--%>
    <script src="/js/bootstrap-table.js"></script>
    <script src="/js/bootstrap-table-export.js"></script>
    <script src="/js/tableExport.js"></script>
    <script src="/js/bootstrap-table-zh-CN.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {

//            $("#result").load("test2.jsp");

            var $table = $('#table');
            $table.bootstrapTable({

                method: "post",
                url: 'datalist',
                toolbar: "#toolbar",
//                pageNumber: 1,
                pagination: true,
                sidePagination: "server",
                pageList: "[10, 20, 50, 100, All]",
                showExport: true,
//                pageSize: 10,
//            data: data,
                height: $(window).height() - 50,
                queryParams: queryParams,
                columns: [{'field': 'state', checkbox: true},
                    {'field': 'no', 'title': '编号'},
                    {'field': 'product', 'title': '产品'},
                    {'field': 'time', 'title': '交付时间'},
                    {'field': 'state1', 'title': '状态'}],
                onPageChange: function (number, size) {

                }


            });

            $('#toolbar').find('select').change(function () {
                $table.bootstrapTable('refreshOptions', {
                    exportDataType: $(this).val()
                });
            });

            function queryParams(params) {
                return {

                    pageSize: params.limit,

                    pageNumber: params.offset / params.limit + 1

                };

            }

            //                    $.ajax({
            //                        url: 'datalist',
            //                        type: 'post',
            //                        dataType: 'json',
            //                        success: function (msg) {
            //                            alert("++++" + msg);
            //                            var data = msg.rows;
            //                            myTable.bootstrapTable('load',data);
            //                        }
            //                    });


        });

    </script>

</head>


<body>
<div class="container-fluid">
    <div class="row" style="height: 50px">
        <div class="col-xs-12">
            <div class="panel panel-primary">
                <div id="result" class="panel-body"></div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-xs-3 ">
            <div class="panel panel-primary">
                <ul class="nav nav-pills nav-stacked">
                    <li>
                        <a href="#">原始按钮</a></li>
                    <li><a href="#">原始按钮</a></li>
                    <li><a href="#">原始按钮</a></li>
                    <li><a href="#">原始按钮</a>
                    </li>
                </ul>
            </div>

        </div>
        <div class="col-xs-9 ">
            <div class="panel panel-primary">
                <div id="toolbar">
                    <select class="form-control">
                        <%--<option value="">导出</option>--%>
                        <option value="all">导出全部</option>
                        <option value="selected">导出选中</option>
                    </select>
                </div>
                <table id="table"></table>
            </div>
        </div>

    </div>


</div>


</body>
</html>
