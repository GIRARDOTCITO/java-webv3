<%-- 
    Document   : index
    Created on : 28/05/2023, 8:40:25 p. m.
    Author     : GIRARDOTCITO_777
--%>

<%@page import="java.util.*"%>
<%@page import="com.mycompany.javawebv2.Mensaje"%>
<%@page import="com.mycompany.javawebv2.MensajeDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <div class="modal-dialog modal-dialog-centered modal-sm">
            <div class="modal-content">
                <form action="index.jsp" method="POST">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">Nuevo Mensaje</h1>
                </div>
                <div class="modal-body">
                        <div class="mb-3">
                            <label>Ingresa un mensaje</label>
                            <textarea class="form-control" name="mensaje" rows="3"></textarea>
                        </div>
                        <div class="mb-3">
                            <label>Author</label>
                            <input type="text" name="author" class="form-control">
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" name="enviar" >Enviar</button>
                </div>
                 </form>
            </div>
        </div>
        <%
            MensajeDao mensajeDao = new MensajeDao(); 
            if (request.getParameter("enviar") != null){
            Mensaje mensaje = new Mensaje(request.getParameter("mensaje"), request.getParameter("author"));
            mensajeDao.Insertar(mensaje);
            }
        %>
       
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">Mensajes</h1>
                </div>
                <%
                //MensajeDao mensajeDao = new MensajeDao(); 
                List<Mensaje> mensajes = mensajeDao.seleccionar();
                Collections.reverse(mensajes);
                for (Mensaje mensaje: mensajes){
                %>
                <div class="modal-body">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"> <%=mensaje.getAuthor()%></h5>
                            <p class="card-text"><%=mensaje.getMensajes()%></p>
                            <p class="blockquote-footer"><cite><%=mensaje.getFecha()%></cite></p>
                            
                            
                            <a href="eliminar.jsp?id=<%=mensaje.getId()%>" class="card-link">Eliminar</a>
                        </div>
                    </div>
                </div>
                            <%}%>
            </div>
        </div>



    </body>
</html>
