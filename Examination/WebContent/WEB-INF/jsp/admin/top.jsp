
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--shiro标签--%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!-- 顶栏 -->
<div class="container" id="top">
    <div class="row">
        <div class="col-md-12">
            <!--Add navigation bar title-->
            <div class="navbar navbar-default" role="navigation">
                　<div class="navbar-header">
                　    <a href="##" class="navbar-brand">Student course selection management system (administrator)</a>
                　</div>
                <form action="##" class="navbar-form navbar-right" rol="search">
                    <div class="dropdown">
                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" style="margin-right: 20px; ">
                            <%--Login user name--%>
                            <span class="glyphicon glyphicon-user"><shiro:principal/></span>
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                            <li role="presentation">
                                <a role="menuitem" tabindex="-1" href="#">
                                    <span class="glyphicon glyphicon-cog pull-right"></span>
                                    Modify personal information
                                </a>
                            </li>
                            <!-Dividing line--->
                            <li role="presentation" class="divider"></li>
                            <li role="presentation">
                                <a role="menuitem" tabindex="-1" href="/logout">
                                    <span class="glyphicon glyphicon-off pull-right"></span>
                                    Cancellation
                                </a>
                            </li>
                        </ul>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>
