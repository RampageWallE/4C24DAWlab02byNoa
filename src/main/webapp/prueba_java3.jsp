<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" 
              href="webjars/bootstrap/5.1.0/css/bootstrap.min.css" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
            <%
                
                int[] numeros = {1,5,10,9,11,200,99,53};
                int n = numeros.length;
                boolean intercambio;
                out.println("<br><h2>La lista inicial es la siguiente:</h2>");
                for(int elemento: numeros){
                    out.print(elemento + " ");
                }                    
                do{
                    intercambio = false;
                    for(int i = 1; i < n; i++){
                        if (numeros[i-1]>numeros[i]){
                            int temp = numeros[i - 1];
                            numeros[i - 1]=numeros[i];
                            numeros[i] = temp;
                            intercambio = true;                            
                        }
                    }
                }while(intercambio);
                out.println("<br><br><h2>La lista en orden es la siguiente:</h2>");
                for(int elemento: numeros){
                    out.print(elemento + " ");
                }
                
            %>
    </body>
</html>
