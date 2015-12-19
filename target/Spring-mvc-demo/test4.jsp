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
            alert("sssss");
            var myTable = $('#table').bootstrapTable({

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
                queryParams: queryParams,
                columns: [{'field': 'state', checkbox: true},
                    {'field': 'no', 'title': '编号'},
                    {'field': 'product', 'title': '产品'},
                    {'field': 'time', 'title': '交付时间'},
                    {'field': 'state', 'title': '状态'}],
                onPageChange: function (number, size) {
                    alert(number + "+" + size);
                }


            });
            var $table = $('#table');

            $('#toolbar').find('select').change(function () {
                $table.bootstrapTable('refreshOptions', {
                    exportDataType: $(this).val()
                });
            });

            function queryParams(params) {
                alert(params.toLocaleString());
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


        })
        ;

    </script>

</head>


<body>


<%-- <table id="table" data-toggle="table" data-url="getData" data-pagination="true"
        data-side-pagination="server"
        data-page-size="10"
        data-page-list="[5, 10, 20, 50, 100, 200]"
        data-height="300">
     <thead>
     <tr>
         <th data-field="state" data-checkbox="true"></th>
         <th class="col-xs-1" data-field="no">编号</th>
         <th class="col-xs-2" data-field="product">产品</th>
         <th class="col-xs-4" data-field="time">交付时间</th>
         <th class="col-xs-2" data-field="state">状态</th>
     </tr>
     </thead>
 </table>--%>
<div class="container">
    <div id="toolbar">
        <select class="form-control">
            <option value="">Export Basic</option>
            <option value="all">Export All</option>
            <option value="selected">Export Selected</option>
        </select>
    </div>
    <table id="table"></table>

</div>


</body>
</html>
