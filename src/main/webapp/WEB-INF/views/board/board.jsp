<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<h1>안녕하세요!! 메뉴판 입니다!!!</h1>
<li><a id="home" href="#"> Go Home </a></li>
<br></br>
 <button id="myPage-btn">마이페이지</button>
 <button id="wri">글쓰기</button>
 <button id="wri-list">글 목록</button>
  <button id="prd-btn">제품보기</button>
<script>
$('#prd-btn').click(function(){location.href=`${ctx}/move/prd/list`})
$('#myPage-btn').click(function(){location.href=`${ctx}/move/mem/myPage`})
$('#wri').click(function(){location.href=`${ctx}/move/board/writer`})
$('#wri-list').click(function(){location.href=`${ctx}/move/board/writerList`})
$('#home').click(function(){ location.href=`${ctx}`})
</script>