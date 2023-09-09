<%-- 
    Document   : CalcularPrimo
    Created on : 04/09/2023, 02:57:36 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          String number = request.getParameter("numero");
          
          int numero = Integer.parseInt(number);
          System.out.println(number);
          int contador = 2;
          boolean primo=true;
          while ((primo) && (contador!=numero)){
            if (numero % contador == 0)
              primo = false;
            contador++;
          }
          if(primo==true){
          out.print("<h1> El numero "+ number +" es primo</h1>");
            }else{
          out.print("<h1> El numero no "+ number+" es primo</h1>");
            }        
            %>
    </body>
</html>
