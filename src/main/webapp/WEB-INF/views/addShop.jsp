<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<jsp:include page="parts/header.jsp"></jsp:include>

<div id="page-wrapper">
  <div class="container-fluid">
      <div class="row">
          <div class="col-lg-12">
              <h2 class="page-header">Add new Product</h2>
          </div>
      </div>
      <div class="addProductForm">
      <!-- ... Your content goes here ... -->
   <form:form action="addShop" method="POST" modelAttribute="newShop">
		<h3>Enter Shop Information</h3>  
		<div class="row"><form:errors path="name" class="alert alert-danger"/></div><br> 
       <form:input class="form-control" path="name" placeholder="Shop Name" required="required"/><br>
       <div class="row"><form:errors path="address" class="alert alert-danger"/></div> <br>
       <form:input class="form-control" path="address" placeholder="Shop Address" required="required"/>
      <button type="submit" class="btn btn-success btn-md addButton2">Add Shop</button>
   </form:form>
   </div>
  </div>
</div>

<jsp:include page="parts/footer.jsp"></jsp:include>