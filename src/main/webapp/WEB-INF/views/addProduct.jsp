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
   <form:form action="addProduct" method="POST" modelAttribute="newProduct">
   
		<h3>Enter Product Information</h3>  
		<div class="row"><form:errors path="name" class="alert alert-danger"/></div><br>
       <form:input class="form-control" path="name" placeholder="Product Name" /><br>
       <form:input class="form-control" path="amount" placeholder="Amount"/><br>
        <select class="form-control" name="typeId">
       		<option value=1>Maistas</option>
       		<option value=2>Buitinės prekės</option>
       		<option value=3>Technika</option>
       		<option value=4>Kita</option>
       </select> <br>
       <div class="row"><form:errors path="shop" class="alert alert-danger"/></div>
       <select class="form-control" name="shopId">
       <c:forEach items="${shopsList }" var="shopsList">
       <option value="${shopsList.id }">${shopsList.name }</option>       
       </c:forEach>
       </select>
      <button type="submit" class="btn btn-success btn-md addButton2">Add Product</button>
   </form:form>
   </div>
  </div>
</div>

<jsp:include page="parts/footer.jsp"></jsp:include>