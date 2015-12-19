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
    <script src="/js/angular.js"></script>
    <script src="/js/bootstrap-table.js"></script>


</head>

<script type="text/javascript">
    //    $(document).ready(function () {
    //        $.ajax({
    //            url: 'getuser',
    //            type: 'get',
    //            dataType: 'text',
    //            success: function (msg) {
    //                alert("++++" + msg);
    //            }
    //        });
    //    });

    var app = angular.module("myTable", []);
    app.controller('tableCtrl', function ($scope, $http) {
        $http.get("list")
                .success(function (response) {
                    $scope.columns = response.record;
                    $scope.pageNumber = response.pageNumber;
                    $scope.pageSize = response.pageSize;
                    $scope.pageCount = response.pageCount;
                    $scope.myOnclick = function (obj) {
                        alert("tips msg" + obj);
                    }

                    var data = response.record;
//                    $('#table').bootstrapTable({
//                        cardView: true
//                    });

                    $('#table1').bootstrapTable({
                        url: 'datalist',
                        cardView: true,
                        method: "post",
                        columns: [{'field': 'state', checkbox: true},
                            {'field': 'no', 'title': '编号'},
                            {'field': 'product', 'title': '产品'},
                            {'field': 'time', 'title': '交付时间'},
                            {'field': 'no', 'title': '编号'}] ,
                        pageList:[10,20,50,100],
                        pageSize:10,
                        pagination: true,
//                        locale:'zh-CN',
                        queryParams:queryParams,
                        search: false, //不显示 搜索框
                        showColumns: false, //不显示下拉框（选择显示的列）
                        sidePagination: "server", //服务端请求
                        onLoadSuccess:function(msg){
                            alert("success"+msg);
                        },
                        onLoadError: function (msg) {
                            alert("error"+msg);

                        }
                    });

                    function queryParams(params) {
                        alert(params);
                        return {

                            pageSize: params.limit,

                            pageNumber: params.offset/params.limit+1

                        };

                    }

                });

    });


</script>
<body>
<div class="container-fluid">

    <div class="row-fluid">
        <div class="col-sm-3">
            <div class="accordion" id="accordion-632660">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion-632660"
                           href="#accordion-element-701049">选项卡 #1</a>
                    </div>
                    <div id="accordion-element-701049" class="accordion-body collapse">
                        <div class="accordion-inner">
                            功能块...
                        </div>
                    </div>
                </div>
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-632660"
                           href="#accordion-element-826907">选项卡 #2</a>
                    </div>
                    <div id="accordion-element-826907" class="accordion-body in">
                        <div class="accordion-inner">
                            功能块...
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-9" ng-app="myTable" ng-controller="tableCtrl">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th> No</th>
                    <th>
                        编号
                    </th>
                    <th>
                        产品
                    </th>
                    <th>
                        交付时间
                    </th>
                    <th>
                        状态
                    </th>
                    <th>
                        操作
                    </th>
                </tr>
                </thead>
                <tbody>
                <tr ng-repeat="x in columns">
                    <td>{{$index + 1}}</td>
                    <td>
                        {{x.no}}
                    </td>
                    <td>
                        {{x.product}}
                    </td>
                    <td>
                        {{x.time}}
                    </td>
                    <td>
                        {{x.state}}
                    </td>
                    <td>
                        <button ng-click="myOnclick(x.no)">点我！</button>
                    </td>
                </tr>
                </tbody>

            </table>
            <table id="table" data-toggle="table" data-url="datalist" data-pagination="true"
                   data-method="post" data-query-params="queryParams"
                   data-side-pagination="server"
                   data-page-list="[5, 10, 20, 50, 100, 200]"
                   data-search="true"
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
            </table>
            <table id="table1" data-show-columns="true">

            </table>

        </div>
        <div class="col-sm-9">

        </div>
    </div>

</div>

</body>
</html>
