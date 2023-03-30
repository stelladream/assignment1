<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container-wrapper">
    <div class="container">
        <h1>Edit Product</h1>
        <p class="lead">Fill the below information to add a product:</p>

        <c:set var="actionUrl"
               value="${pageContext.request.contextPath}/productInventory/${product.id != 0 ?
               'updateProduct' : 'addProduct'}" />

        <sf:form  action="${actionUrl}"  method="post" modelAttribute="product">

            <c:if test="${product.id != 0}">
                <sf:hidden path="id"/>
            </c:if>

            <div class="form-group">
                <label for="name">Name</label>
                <sf:input path="name" id="name" class="form-control" />
                <sf:errors path="name" cssStyle="color:#ff0000;"/>
            </div>

<%--
            여기를 추가하여 완성할 것
--%>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <sf:input path="manufacturer" id="manufacturer" class="form-control" />
                <sf:errors path="manufacturer" cssStyle="color:#ff0000;"/>
            </div>

            <input type="submit" value="submit" class="btn btn-primary">
            <a href="<c:url value="/productInventory" />"	class="btn btn-default">Cancel</a>
        </sf:form>
        <br/>
    </div>
</div>