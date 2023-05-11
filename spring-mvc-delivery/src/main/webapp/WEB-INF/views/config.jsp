<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: DUONG TIEU
  Date: 5/11/2023
  Time: 9:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Email config</title>
</head>
<body>
<form:form method="post" action="/saveConfig" modelAttribute="emailConfig">
  <div>
      <label for="language"> Languages : </label>
      <select id="language" name="languages">
          <form:option value="en">English</form:option>
          <form:option value="vn">Vietnamese</form:option>
          <form:option value="jp">Japanese</form:option>
          <form:option value="cn">Chinese</form:option>
      </select>
  </div>
  <div>
      <label for="pageSize">Page size :</label>
      <label><p>Show</p></label>
      <select id="pageSize" name="pageSizes">
         <form:option value="5">5</form:option>
         <form:option value="10">10</form:option>
         <form:option value="15">15</form:option>
         <form:option value="25">25</form:option>
         <form:option value="100">100</form:option>
      </select>
      <label><p>emails per page</p></label>
  </div>
  <div>
      <label for="Spams filter">Spam filter</label>
      <label id="Spams filter"><form:checkbox path="Spam filter"></form:checkbox></label>
      <label><p>Enable spams filter</p></label>
  </div>
  <div>
      <label for="signature">Signature</label>
      <label><form:textarea path="signature"></form:textarea></label>
  </div>
  <div>
      <label>
         <form:button value="update"> Update</form:button>
      </label>

      <label>
          <form:button value="cancle">Cancel</form:button>
      </label>
  </div>
</form:form>
</body>
</html>
