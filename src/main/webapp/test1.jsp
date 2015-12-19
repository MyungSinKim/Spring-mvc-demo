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
    <title>在线尝试 Bootstrap 实例</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet">
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>

</head>

<script type="text/javascript">
    $(document).ready(function () {
        $.ajax({
            url: 'getuser',
            type: 'get',
            dataType: 'text',
            success: function (msg) {
                alert("++++" + msg);
            }
        });
    });
</script>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <nav class="navbar navbar-inverse">

                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Brand</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#" onclick="menuOnClick(this)" id="devCtrlPage">设备控制 <span
                                    class="sr-only">(current)</span></a>
                            </li>
                            <li><a href="#" onclick="menuOnClick(this)" id="historyDataPage">历史数据</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true"
                                   aria-expanded="false">情景模式 <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">One more separated link</a></li>
                                </ul>
                            </li>
                            <li><a href="#" onclick="menuOnClick(this)" id="timerTaskPage">定时任务</a></li>
                            <li><a href="#" onclick="menuOnClick(this)" id="selfCtrlPage">自动控制</a></li>
                            <li><a href="#" onclick="menuOnClick(this)" id="devMaintainPage">设备维护</a></li>
                            <li><a href="#" onclick="menuOnClick(this)" id="authorityManagePage">权限管理</a></li>
                        </ul>

                    </div>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

        </div>

    </div>

    <div class="row-fluid">
        <div class="span4">
            ssssssss
        </div>
        <div class="span8">
            <table class="table">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>名称</th>
                </tr>
                </thead>
            </table>
        </div>
    </div>
</div>

</body>
</html>
