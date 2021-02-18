<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<style>
	h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
	table, th, td { border: 1px solid black; text-align: center; margin: auto; padding: 7px; }
</style>
<h1>제품 목록보기</h1>
		<div id="prd-table">
			<table id="tab">
				<tr>
					<th>제품번호</th>
					<th>제품명</th>
					<th>가격</th>
					<th>재고수량</th>
				</tr>
			</table>
		</div>
<div style="text-align: center margin-top:30px;">
	<button id="add-btn">제품추가</button>
	<button id="back">메뉴로 가기</button>
</div>

<script>
$(`#add-btn`).click(e => {location.href=`${ctx}/move/prd/add`})
$('#back').click(function(){ location.href=`${ctx}/move/board/board`})
	prd.list(`${ctx}`)
</script>
