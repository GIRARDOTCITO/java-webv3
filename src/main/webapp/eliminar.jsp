<%-- 
    Document   : eliminar
    Created on : 29/05/2023, 7:58:52 p. m.
    Author     : GIRARDOTCITO_777
--%>
<%@page import="com.mycompany.javawebv2.Mensaje"%>
<%@page import="com.mycompany.javawebv2.MensajeDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String id = request.getParameter("id");
        Mensaje mensaje = new Mensaje(Integer.valueOf(id));
        MensajeDao mensajeDao = new MensajeDao();
        mensajeDao.Eliminar(mensaje);
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
        %>
    </body>
</html>
