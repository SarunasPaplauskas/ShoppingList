<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<jsp:include page="parts/header.jsp"></jsp:include>

<div id="page-wrapper">
  <div class="container-fluid ">
      <div class="row">
          <div class="col-lg-12">
              <h2 class="page-header">Shops List</h2>
          </div>
      </div>
      <!-- ... Your content goes here ... -->

      <table class="table">
      <thead>
      <tr>
      <th>Id</th>
      <th>Shop Name</th>
      <th>Address</th>
       </tr>
      </thead>
      <c:forEach items="${shopsList }" var="shopsList">
       <tr>
	      <td> ${shopsList.id }</td>
	      <td> ${shopsList.name }</td>
	      <td> ${shopsList.address }</td>
	        <td><a class="btn btn-primary" href="listByShop?shopId=${shopsList.id }">View List</a></td>
      </tr>
      </c:forEach>
      </table>
  </div>
</div>

<jsp:include page="parts/footer.jsp"></jsp:include>