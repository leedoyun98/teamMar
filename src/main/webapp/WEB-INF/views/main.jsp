<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<h1>환영합니다!!</h1>
<button type="button" class="joinPage-btn" id="joinPage-btn">회원가입</button>	  
<button type="button" class="loginPage-btn" id="loginPage-btn">로그인</button>
<button id="manage-btn">회원관리</button>
<button id="register-btn">회원등록</button>
<button id="del-btn">회원삭제</button>   
<jsp:include page="./cmm/head.jsp"/>
<script>	
$(`#joinPage-btn`).click( function(){location.href = `${ctx}/move/mem/join`})
$(`#loginPage-btn`).click( function(){location.href = `${ctx}/move/mem/login`})
$(`#manage-btn`).click(function(e) {location.href = `${ctx}/move/manage/mng`})
$(`#register-btn`).click(function(e) {location.href = `${ctx}/move/manage/regi`})
$(`#del-btn`).click(function() {location.href = `${ctx}/move/manage/del`})
</script>