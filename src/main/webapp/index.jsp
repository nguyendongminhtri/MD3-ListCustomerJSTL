<%@ page import="com.example.ListCustomerJSTL.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: pmtri
  Date: 9/19/2019
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<style>
    table {
        width: 100%;
    }
</style>
<head>
    <title>List Customer</title>
</head>
<body>
<%
    ArrayList<Customer> listCustomers = new ArrayList<>();
    listCustomers.add(new Customer("Nghiện Thuốc Lào","1/1/1111","Tiên Lãng","Hau.jpg"));
    listCustomers.add(new Customer("Park Chân Ung","2/2/2222","Hàn Xẻng","Hiep.jpg"));
    listCustomers.add(new Customer("Supper English","3/3/3333","England","Hieu.jpg"));
    listCustomers.add(new Customer("Ngáo Đá","5/5/5555","Bay lắc","Linh.jpg"));
    listCustomers.add(new Customer("Thanh KuTeo","4/4/4444","PlayKu","Thanh.jpg"));
    listCustomers.add(new Customer("Thánh Troll","6/6/6666","Bao Cao Su","Ngao.jpg"));
    listCustomers.add(new Customer("Đầu Gấu Bắc Cực","7/7/7777","Bắc Cực","Thao.jpg"));
    pageContext.setAttribute("listCustomers",listCustomers);
%>
<form >
    <table class="table" style="color: blue" border="1px">
        <tr><th colspan="4"><h1>Danh sách khách hàng</h1></th></tr>
        <tr>
            <td width="150px" height="50px">Tên</td>
            <td width="150px" height="50px">Ngày sinh</td>
            <td width="150px" height="50px">Địa chỉ</td>
            <td width="150px" height="50px">Ảnh</td>
        </tr>
        <c:forEach var="customer" items="#{listCustomers}">
            <tr>
                <td><c:out value="${customer.name}"/></td>
                <td><c:out value="${customer.birthday}"/></td>
                <td><c:out value="${customer.address}"/></td>
                <td><img width="150px" height="150px" src="image/<c:out value="${customer.image}"/>"></td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>