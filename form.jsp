
<%@page language="java" import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    if ((request.getParameter("name1")!=null)&&(request.getParameter("name2")!=null)&&(request.getParameter("name3")!=null)) {
    String name1 = request.getParameter("name1");
    String name2 = request.getParameter("name2");
    String name3 = request.getParameter("name3");
    /*Create Cookies*/
    Cookie cookie1 = new Cookie("name1",name1);
    Cookie cookie2 = new Cookie("name2",name2);
    Cookie cookie3 = new Cookie("name3",name3);
    /*Declare Cookies' lifetime*/
    cookie1.setMaxAge(30*60);
    cookie2.setMaxAge(30*60);
    cookie3.setMaxAge(30*60);
    response.addCookie(cookie1);
    response.addCookie(cookie2);
    response.addCookie(cookie3);
    }       
%>

<%   
     Cookie cookies [] = request.getCookies ();
     Cookie thisCookie1 = null;
     Cookie thisCookie2 = null;
     Cookie thisCookie3 = null;
      if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            if (cookies [i].getName().equals("name1")) {
                thisCookie1 = cookies[i];
            }
            if (cookies [i].getName().equals("name2")) {
                thisCookie2 = cookies[i];
            }
            if (cookies [i].getName().equals("name3")) {
                thisCookie3 = cookies[i];
            }
        }
     }
%>
 
 <%
    if ((request.getParameter("name1")!=null)&&(request.getParameter("name2")!=null)&&(request.getParameter("name3")!=null)) {
        session.setAttribute("name1", request.getParameter("name1"));
        session.setAttribute("name2", request.getParameter("name2"));
        session.setAttribute("name3", request.getParameter("name3"));}
    else if ((session.getAttribute("name1")==null)&&(session.getAttribute("name2")==null)&&(session.getAttribute("name3")==null)) {
        if ((thisCookie1!=null)&&(thisCookie2!=null)&&(thisCookie3!=null)) {
                session.setAttribute("name1", thisCookie1.getValue());
                session.setAttribute("name2", thisCookie2.getValue());
                session.setAttribute("name3", thisCookie3.getValue());
         }
   }
%>      
 
<html>
<title>Shopping Cart V1</title>
<body>
<center><img src="World-In-Shopping-Cart-Animated.gif" width="300" height="231" alt="World-In-Shopping-Cart-Animated"/></center>
<form method=GET action="form.jsp">
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
        <td><%=application.getInitParameter("P1")%></td>
        <td>
            <input type="text" name="name1" size="10" value="<% if (session.getAttribute("name1")!=null)
            {%><%=session.getAttribute("name1")%><%}else{%><%=0.0%><%}%>"><br/>
        </td>
        <td>
            <% 
            double a=0.0;
            double p1 = Double.parseDouble(application.getInitParameter("P1"));
            if (request.getParameter("name1")!=null) {
            a = Double.parseDouble(request.getParameter("name1"));}
            else {if (session.getAttribute("name1")!=null) {a=Double.parseDouble((String)session.getAttribute("name1"));}
            else {a=0.0;}}%>
            <%=(a*p1)%>
        </td>
    </tr>
    <tr>
        <td>Sugar</td>
        <td><%=application.getInitParameter("P2")%></td>
        <td>
            <input type="text" name="name2" size="10" value="<% if (session.getAttribute("name2") != null)
            {%><%=session.getAttribute("name2")%><%}else{%><%=0.0%><%}%>"><br/>
        </td>
        <td>
            <% double b=0.0;
            double p2=Double.parseDouble(application.getInitParameter("P2"));
            if (request.getParameter("name2")!=null) {
            b = Double.parseDouble((String)request.getParameter("name2"));}
            else {if (session.getAttribute("name2")!=null) {b=Double.parseDouble((String)session.getAttribute("name2"));}
            else {b=0.0;}}%>
            <%=(b*p2)%><br/>
        </td>
    </tr>
    <tr>
        <td>Water</td>
        <td><%=application.getInitParameter("P3")%></td>
        <td>
            <input type="text" name="name3" size="10" value="<% if(session.getAttribute("name3") != null)
            {%><%=session.getAttribute("name3")%><%}else{%><%=0.0%><%}%>">
        </td>
        <td>
            <% double c=0.0;
            double p3 = Double.parseDouble(application.getInitParameter("P3"));
            if (request.getParameter("name3") != null) {
            c = Double.parseDouble(request.getParameter("name3"));}
            else {if (session.getAttribute("name3")!=null) {c=Double.parseDouble((String)session.getAttribute("name3"));}
            else {c=0.0;}}%>
            <%=(p3*c)%>
        </td>
    </tr>
    <tr>
        <td>Total:</td>
        <td></td>
        <td></td>
        <td>
            <% 
            double dnam1=0.0, dnam2=0.0, dnam3=0.0;
            if ((request.getParameter("name1")!=null)&&(request.getParameter("name2")!=null)&&(request.getParameter("name3")!=null)) {
                dnam1 = Double.parseDouble((String)request.getParameter("name1"));
                dnam2 = Double.parseDouble((String)request.getParameter("name2"));
                dnam3 = Double.parseDouble((String)request.getParameter("name3"));
            }
            else {
                if((session.getAttribute("name1")!=null)&&(session.getAttribute("name2")!=null)&&(session.getAttribute("name3")!=null)){
                   dnam1 = Double.parseDouble((String)session.getAttribute("name1"));
                   dnam2 = Double.parseDouble((String)session.getAttribute("name2"));
                   dnam3 = Double.parseDouble((String)session.getAttribute("name3"));
                }
            }
            %><%=(dnam1*p1)+(dnam2*p2)+(dnam3*p3)%>
        </td>
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
