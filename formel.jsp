<%@ page isELIgnored ="false" %> 
<html>
<title>Shopping Cart V2</title>
<body>
<jsp:useBean id="Bean" class="beans.BeanClass" scope="request"/>
<jsp:setProperty name ="Bean" property = "p1" value = "${initParam.P1}"/>
<jsp:setProperty name ="Bean" property = "p2" value = "${initParam.P2}"/>
<jsp:setProperty name ="Bean" property = "p3" value = "${initParam.P3}"/>
<jsp:setProperty name ="Bean" property = "*"/>
<center><img src="World-In-Shopping-Cart-Animated.gif" width="300" height="231" alt="World-In-Shopping-Cart-Animated"/></center>
<form method="POST" action="formel.jsp">
    <table align="center" border="l">
     <thead>
       <th>Item</th>
       <th>Price</th>
       <th>Quantity</th>
       <th>Total</th>
    </thead>
<tbody>
 <tr>
    <td>Cafe</td>
    <td>${initParam.P1}</td>
    <td><input type="text" value="0.0" name="name1" size="10"><br/></td>
    <td>${Bean.answer1}<br/></td>
 </tr>
 <tr>
    <td>Sugar</td>
    <td>${initParam.P2}</td>
    <td><input type="text" value="0.0" name="name2" size="10"><br/></td>
    <td>${Bean.answer2}<br/></td>
 </tr>
 <tr>
    <td>Water</td>
    <td>${initParam.P3}</td>
    <td><input type="text" value="0.0" name="name3" size="10"><br/></td>
    <td>${Bean.answer3}<br/></td>
 </tr> 
 <tr>
    <td>Total:</td>
    <td></td>
    <td></td>
    <td>${Bean.answer4}<br/></td>
 </tr>
 </tbody>
 </table>           
 <div align="center">
     <input buttonalign="center" value="CHECK OUT" type="submit">
     <input type="button" value="Get Code" onClick="window.location.href='https://github.com/chalimis/Project3'">
     <input type="button" value="Get Info" onClick="window.location.href='http://chalimis.wordpress.com/2011/12/05/project-3/'">
 </div>
 <div align="center">
     <input type="button" value="HOMEPAGE" onClick="window.location.href='http://texwww.inf.uth.gr:8080/~chalimis/'">
 </div>
</form>
</body>
</html>
