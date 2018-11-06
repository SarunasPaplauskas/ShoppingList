<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<jsp:include page="parts/header.jsp"></jsp:include>

<div id="page-wrapper">
  <div class="container-fluid ">
      <div class="row">
          <div class="col-lg-12">
              <h2 class="page-header">Users List</h2>
          </div>
      </div>
      <!-- ... Your content goes here ... -->
      <h3 class="message">${hasRole }</h3>
      <table class="table">
      <thead>
      <tr>
      <th>Id</th>
      <th>User Name</th>
      <th>Email</th>
      <th>Role</th>
       </tr>
      </thead>
      <c:forEach items="${usersList }" var="usersList">
       <tr>
          <form action="/list/admin/saveChanges" method="GET">
          <input type="hidden" value="${usersList.id }" name="userId">
	      <td> ${usersList.id }</td>
	      <td> ${usersList.username }</td>
	      <td> ${usersList.email }</td>
	      <td> 
	      		<c:forEach items="${usersList.roles }" var="userRoles">
		      		<p>${userRoles.authority }</p> 
		      </c:forEach>
		  </td>
		      <td> 
		      	<select name="role" class="form-control"> 
		      	<c:forEach items="${rolesList }" var="rolesList">
		      		<option value= "${rolesList.id }">${rolesList.authority }</option> 
		      	</c:forEach>
		      	</select> 
		      </td>
		      <td><button type="submit" class="btn btn-primary">Save Changes</button></td>
		   </form>
      </tr>
      </c:forEach>
      </table>
  </div>
</div>

<jsp:include page="parts/footer.jsp"></jsp:include>