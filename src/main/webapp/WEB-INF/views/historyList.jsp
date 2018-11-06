<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<jsp:include page="parts/header.jsp"></jsp:include>

<div id="page-wrapper">
  <div class="container-fluid ">
      <div class="row">
          <div class="col-lg-12">
              <h2 class="page-header">History List</h2>
          </div>
      </div>
      <!-- ... Your content goes here ... -->
      <table class="table">
      <thead>
      <tr>
      <th>Id</th>
      <th>Product Name</th>
      <th>Amount</th>
      <th>Type</th>
      <th>Shop</th>
      <th>Bought Date</th>
       </tr>
      </thead>
      <c:forEach items="${historyList }" var="historyList">
       <tr>
	      <td> ${historyList.id }</td>
	      <td> ${historyList.name }</td>
	      <td> ${historyList.amount }</td>
	       <td> ${historyList.type1 }</td>
	      <td> ${historyList.shop.name }</td>
	      <td> ${historyList.onPurchase }</td>
	      <td><a class="btn btn-primary" href="deleteHistory?id=${historyList.id }">Delete</a></td>
      </tr>
      </c:forEach>
      </table>
  </div>
</div>

<jsp:include page="parts/footer.jsp"></jsp:include>