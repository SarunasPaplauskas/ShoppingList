<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<jsp:include page="parts/header.jsp"></jsp:include>

<div id="page-wrapper">
  <div class="container-fluid ">
      <div class="row">
          <div class="col-lg-12">
              <h2 class="page-header">Products List</h2>
          </div>
      </div>
      <!-- ... Your content goes here ... -->
       <td><a class="btn btn-primary addButton" href="addProduct">Add Product</a></td>
      <table class="table">
      <thead>
      <tr>
      <th>Id</th>
      <th>Product Name</th>
      <th>Amount</th>
      <th>Type</th>
      <th>Shop</th>
       </tr>
      </thead>
      <c:forEach items="${ProductList }" var="ProductList">
       <tr>
	      <td> ${ProductList.id }</td>
	      <td> ${ProductList.name }</td>
	      <td> ${ProductList.amount }</td>
	      <td> ${ProductList.type1 }</td>
	      <td> ${ProductList.shop.name }</td>
	       <td><a class="btn btn-primary" href="bought?id=${ProductList.id }">Bought</a></td>
	        <td><a class="btn btn-primary" href="delete?id=${ProductList.id }">Delete</a></td>
      </tr>
      </c:forEach>
      </table>
  </div>
</div>

<jsp:include page="parts/footer.jsp"></jsp:include>