<%-- 
    Document   : deseos
    Created on : 20/11/2017, 08:47:42 PM
    Author     : Alejandro
--%>

<%@page import="VO.*"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
	<title>Projects</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
 	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/preview.css" type="text/css">
	<script type="text/javascript" src="js/include_script.js"></script>
  	<!--[if lt IE 9]>
	   	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <link href="css/ie.css" rel="stylesheet" type="text/css">
    <![endif]-->
</head>
<body>
<!--content wrapper-->
	<div id="wrapper">
		<section>
			<div class="container">
				<div class="dynamicContent">
					<!--content-->
	                <div class="row">
  <h1>Registro de Deseos</h1>
                    <table>
                        <tr>
                            <td>Id deseos</td>
                            <td>Id libro</td>
                            <td>Nombre libro</td>
                            <td>Precio</td>
                            
                        </tr>
                        <%
                            if (request.getAttribute("lis") != null) {
                                ArrayList<Deseos> libros = (ArrayList<Deseos>) request.getAttribute("lis");

                                if (libros != null) {
                                    for (Deseos es: libros) {

                        %>
                        <h1></h1>
                        <tr>  
                            <td><%=es.getId_deseos()%></td>
                            <td><%=es.getId_libro()%></td>
                            <td><%=es.getNombre_libro()%></td>
                            <td><%=es.getPrecio()%></td>
                           
                        </tr>

                        <%

                                    }
                                }
                            }
                        %>

                    </table>
                        <h3> total deseos:</h3>
                        <h3> $<%= request.getAttribute("cotizar")    %></h3>
                            
                            

	                  





	                </div>
				</div>
			</div>
		</section>
	</div>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script>
        $(".fancybox").fancybox({});
    </script>
</body>
</html>
