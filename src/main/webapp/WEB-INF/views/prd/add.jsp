<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
   h1 { text-align: center; padding-top: 20px; padding-bottom: 20px; }
   table, th, td { border-collapse: collapse; margin: auto; text-align: center; }
   th {
     padding-top: 12px;
     padding-bottom: 12px;
     background-color: #33CC99;
     color: white;
     border: 1px solid black;
   }
   td {border: 1px solid black; padding: 7px;}
   button{width:100px;height:35px;font-size: 15px;background:#33CC99;color:#fff;border:none;}
   button:hover { opacity: 0.8; }   
</style>

<h1>제품 등록하기</h1>
<form>
   <table style="width:80%; padding: 10px;">
     <tbody>
        <tr>
          <th style="width:30%;">항목</th>
          <th>내용</th>
        </tr>
        <tr>
          <td>제품명</td>
          <td><input id="prdName" type="text" name="prdName" class="form-control" 
                   placeholder="제품명 입력" style="width:95%; height:100%; font-size:medium;" required></td>
        </tr>
        <tr>
          <td>판매가</td>
          <td><input id="price" type="text" name="price" class="form-control"
                   placeholder="판매가 입력" style="width:95%; height:100%; font-size:medium;" required></td>
        </tr>
        <tr>
          <td>재고수량</td>
          <td><input id="inventory" type="text" name="inventory" class="form-control"
                   placeholder="재고수량 입력" style="width:95%; height:100%; font-size:medium;"></td>
        </tr>
     </tbody>
   </table>
   <div style="text-align: center; padding-top: 30px;">         
      <button id="done-btn">등록하기</button>
      <button type="reset">다시 작성</button>
      <button id="prd-btn">뒤로가기</button>
      <button id="home">HOME</button>
   </div>
</form>
<script src="${prdt}/js/prd.js"></script>
<script src="${cmm}/js/cmm.js"></script>
<script>
   $(`#done-btn`).click(function(){prd.done(`${ctx}`)})
   $(`#home`).click(function(){ location.href=`${ctx}`})
   $(`#prd-btn`).click(e => {location.href=`${ctx}/move/prd/list`})
</script>