<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<jsp:include page="parts/header.jsp"></jsp:include>

<div id="page-wrapper">
  <div class="container-fluid">
      <div class="row">
          <div class="col-lg-12">
              <h2 class="page-header">Welcome Back ${user.username }</h2>
          </div>
      </div>
     
      <img src="/list/resources/shoppinglist.png">

  </div>
</div>

<jsp:include page="parts/footer.jsp"></jsp:include>