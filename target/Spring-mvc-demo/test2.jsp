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
    <script src="/js/jquery-1.11.3.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/angular.js"></script>

    <script type="text/javascript"
            src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-ui"></script>


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

                });
    });
</script>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="navbar navbar-inverse">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span
                                class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>
                        <a href="#" class="brand">网站名</a>

                        <div class="nav-collapse collapse navbar-responsive-collapse">
                            <ul class="nav">
                                <li class="active">
                                    <a href="#">主页</a>
                                </li>
                                <li>
                                    <a href="#">链接</a>
                                </li>
                                <li>
                                    <a href="#">链接</a>
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单<strong
                                            class="caret"></strong></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">下拉导航1</a>
                                        </li>
                                        <li>
                                            <a href="#">下拉导航2</a>
                                        </li>
                                        <li>
                                            <a href="#">其他</a>
                                        </li>
                                        <li class="divider">
                                        </li>
                                        <li class="nav-header">
                                            标签
                                        </li>
                                        <li>
                                            <a href="#">链接1</a>
                                        </li>
                                        <li>
                                            <a href="#">链接2</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <ul class="nav pull-right">
                                <li>
                                    <a href="#">右边链接</a>

                                </li>
                                <li class="divider-vertical">
                                </li>
                                <li class="dropdown">
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单<strong
                                            class="caret"></strong></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="#">下拉导航1</a>
                                        </li>
                                        <li>
                                            <a href="#">下拉导航2</a>
                                        </li>
                                        <li>
                                            <a href="#">其他</a>
                                        </li>
                                        <li class="divider">
                                        </li>
                                        <li>
                                            <a href="#">链接3</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
                <tfoot>
                <tr>
                    <td colspan="5">
                        <span></span><select name="cars">
                        <option value="volvo">Volvo</option>
                        <option value="saab">Saab</option>
                        <option value="fiat">Fiat</option>
                        <option value="audi">Audi</option>
                    </select>
                        <ul class="pagination">
                            <span>当前第{{pageNumber}}页，总{{pageCount}}页,</span>
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <span><span></span><select name="cars">
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="fiat">Fiat</option>
                                <option value="audi">Audi</option>
                            </select></span></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </td>
                </tr>
                </tfoot>
            </table>

        </div>
    </div>
</div>

</body>
</html>
