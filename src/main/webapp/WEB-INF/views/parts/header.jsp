<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>My Shopping List</title>
    <!-- Bootstrap Core CSS -->
    <link href="/list/resources/template/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/list/resources/template/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="/list/resources/template/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/list/resources/template/css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="/list/resources/template/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/list/resources/template/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/list/resources/myStyle.css">
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="/list/">My Shopping List</a>
        </div>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <!-- Top Navigation: Left Menu -->
        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <li><a href="/list/"><i class="fa fa-home fa-fw"></i> HOME</a></li>
        </ul>

        <!-- Top Navigation: Right Menu -->
        <ul class="nav navbar-right navbar-top-links">
            <li class="dropdown navbar-inverse">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> New Comment
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> Account <b class="caret"></b>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="/list/logout"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
            </li>
        </ul>

        <!-- Sidebar -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">

                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                        </div>
                    </li>
                    <li>
                        <a href="/list/" class="active"><i class="fa fa-dashboard fa-fw"></i> Home</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Products<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/list/productList">Products List</a>
                                <a href="/list/shopsListToProduct">Product List By Shop</a> 
                                <a href="/list/addProduct">Add new Product</a> 
                            </li>
                        </ul>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Shops<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/list/shopsList">Shops List</a>
                                 <a href="/list/addShop">Add new Shop</a>
                            </li>
                        </ul>  
                    </li> 
                     <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Shopping History<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/list/historyList">All History</a>
                                <a href="/list/historyShopsList">History By Shops</a>
                            </li>
                        </ul>  
                    </li>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
	                     <li>
	                        <a href="#"><i class="fa fa-sitemap fa-fw"></i>Users List<span class="fa arrow"></span></a>
	                        <ul class="nav nav-second-level">
	                            <li>
	                                <a href="admin/usersList">All Users</a>
	                            </li>
	                        </ul>  
	                    </li>
                    </sec:authorize>  
                </ul>
            </div>
        </div>
    </nav>
  </div>
    
