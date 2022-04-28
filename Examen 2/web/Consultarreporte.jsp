<%-- 
    Document   : ConsultarLBD
    Created on : 24/04/2022, 12:30:03 AM
    Author     : USUARIO
--%>

<%@page contentType="text/html" language="java" import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bitacora</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="icon" href="img/logo.png">
</head>
<body>
    <header class="header">
        <div class="logo-encabezado">
            <a href="https://www.cecyt9.ipn.mx/" class="logo"><img id="mi-id" src="img/escudoCECyT9R.png" alt=""></a>
            <a href="Consultarreporte.jsp"><img id="dot" src="img/examen_logo.png" alt=""></a>

        <nav class="navegation"> 
            <ul>
                <li><a href="ConsultarLDS.jsp">LDS</a></li>
                <li><a href="ConsultarLBD.jsp">LBD</a></li>
                <li><a href="ConsultarLNT.jsp">LNT</a></li>
                <li><a href="Consultar40.jsp">4.0</a></li>
            </ul>
        </nav>
              
        </div>
        
    </header>
  
    
    <main>
        <div class="container">
            <h1>BIENVENIDO AL LABORATORIO 4.0</h1>
        </div>    
        <div class="table">
            <table border="2">
            <thead>
                <tr>
                    <th>Laboratorio</th>
                    <th>ID Reporte</th>
                    <th>Fecha</th>
                    <th>Hora</th>
                    <th>ID Máquina</th>
                    <th>ID Equipo</th>
                    <th>Problema</th>
                    <th>ID Persona</th>
                    <th>Rol</th>
                    <th>Nombre</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Grupo</th>
                    <th>Asignatura</th>
                    <th>Estado de reporte</th>
                    <th>Prioridad</th>
                    <th>Editar</th>
                    <th>Borrar</th>
                </tr>
            </thead>
            <tbody>
                
        <%
        //Aquí ya puedo incorporar java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String username, url, password, driver;
        
        url = "jdbc:mysql://localhost/reporte";
        username = "root";
        password = "floresM9";
        
        driver = "com.mysql.jdbc.Driver";
        
        try{
            //Conectarnos
            Class.forName(driver);
            con = DriverManager.getConnection(url, username, password);
            
            try{
                String q = "select * from  dreporte";
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <tr>
                    <td><%=rs.getInt("idreporte")%></td>
                    <td><%=rs.getString("lab")%></td>
                    <td><%=rs.getString("fecha")%></td>
                    <td><%=rs.getString("hora")%></td>
                    <td><%=rs.getString("idmaquina")%></td>
                    <td><%=rs.getString("idequipo")%></td>
                    <td><%=rs.getString("problema")%></td>
                    <td><%=rs.getInt("idpersona")%></td>
                    <td><%=rs.getString("rol")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("appat")%></td>
                    <td><%=rs.getString("apmat")%></td>
                    <td><%=rs.getString("grupo")%></td>
                    <td><%=rs.getString("asig")%></td>
                    <td><%=rs.getString("estado")%></td>
                    <td><%=rs.getString("prioridad")%></td>
                    <td><a href="EditarRep.jsp?id=<%=rs.getInt("idreporte")%>" >Editar</a></td>
                    <td><a href="borraralumno.jsp?id=<%=rs.getInt("idreporte")%>" >Borrar</a></td>
                </tr>
                <%
                }
            }catch(SQLException es){
                
                System.out.println("Error al registrar en la tabla");
                System.out.println(es.getMessage());

                %>
                <h1>No se puede consultar la tabla</h1>
                <%
            }
        }catch(Exception e){

            System.out.println("Error al conectar la BD");
            System.out.println(e.getMessage());

            %>
            <h1>No se conectó con la BD T_T</h1>
            <%
        }
        %>
            </tbody>
            </table>   
                
                
                
                
        </div>
        <div class="opcion">
                <ul>
                    <li><a href="index.html">R</a></li>
                </ul>
        </div>

    </main>

    <script src="scripts.js"></script>

</body>
</html>
