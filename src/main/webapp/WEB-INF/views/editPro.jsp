<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Begin Page Content -->
<div class="container-fluid">
	<form action="/fruit/editPro" method="POST">
		<input name="fruitId" type="hidden" value="${pro.id }">
		<div class="form-group">
			<label>Tên sản phẩm</label> <input name="name" type="text"
				class="form-control" id="exampleInputEmail1" value="${pro.name }" required>
		</div>
		<div class="form-group">
			<label>Giá trên mỗi kilogram</label> <input name="price" type="number"
				class="form-control" id="exampleInputEmail1" value="${pro.price }" required>
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect1">Danh mục</label> <select
				name="catId" class="form-control" id="exampleFormControlSelect1"
				required>
				<c:forEach var="item" items="${cats}">
					<c:if test="${item.id == pro.category.id}">
						<option value="${item.id }" selected>${item.name }</option>
					</c:if>
					<c:if test="${item.id != pro.category.id}">
						<option value="${item.id }">${item.name }</option>
					</c:if>
				</c:forEach>
			</select>
		</div>
		<button type="submit" class="btn btn-primary">Hoàn tất</button>
		<a href="/fruit"><button type="button"
				class="btn btn-danger">Hủy</button></a>
	</form>
</div>
<!-- /.container-fluid -->