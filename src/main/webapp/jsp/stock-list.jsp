<%@page import="car.tp4.entity.Stock"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h2>Books stock</h2>
        <%
            Collection<Stock> stocks = (Collection<Stock>) request.getAttribute("stocks");

            for (Stock stock: stocks) {
            	%>
            	<div>
            		<form method="POST" action="stock">
                	Author: <%= stock.getBook().getAuthor() %><br />
                	Title: 	<%= stock.getBook().getTitle() %><br />
                	Quantity: 	<%= stock.getQuantity() %><br />
                		<input type="hidden" name="stockId" value="<%= stock.getId()  %>">
                		<label for="quantity">Ajouter au stock : </label><input type="number" name="quantity" value="0">
                		<input type="submit" value="Valider" />
                	</form>
                </div>
                <%
            }
        %>
    </body>
</html>