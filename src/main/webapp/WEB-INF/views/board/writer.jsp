<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<h1>글쓰기</h1>
 <li><a id="home" href="#"> Go Home </a></li>
    <li><a id="back" href="#"> 메뉴로 가기 </a></li>
<form> 
<body>
<p><label>제목</label><input type="text" id ="title"></p>
<label>내용</label><p>
<textarea rows="15" cols="65" id = "content"></textarea><p>
<button type = "button" id="writ">등록</button>
</form>

</body>


</html>
<script>
$('#writ').click(function(){board.writer(`${ctx}`)})
$('#home').click(function(){ location.href=`${ctx}`})
$('#back').click(function(){ location.href=`${ctx}/move/board/board`})
</script>