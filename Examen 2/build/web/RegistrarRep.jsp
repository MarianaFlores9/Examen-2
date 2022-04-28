<%-- 
    Document   : RegistrarRep
    Created on : 4/04/2022, 07:30:00 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" language="java" import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Rep</title>
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
        <br>
        <div class="reg-problema">
            <h2 id="titulo-regproblema">Reporte</h2> 
        <%
        //Aquí ya puedo incorporar java
        Connection con = null;
        Statement set = null;
        ResultSet rs = null;
        
        String username, url, password, driver;
        
        url = "jdbc:mysql://localhost/reporte";
        username = "root";
        password = "n0m3l0";
        
        driver = "com.mysql.jdbc.Driver";
        
        try{
            //Conectarnos
            Class.forName(driver);
            con = DriverManager.getConnection(url, username, password);
            
            try{
                String idreporte,idpersona, lab, fecha, hora,idmaquina,idequipo,problema,rol, nom, appat, apmat,grupo,asig ,estado, prioridad;
               
                
                idreporte = request.getParameter("idreporte");
                lab = request.getParameter("lab");
                fecha = request.getParameter("fecha");
                hora = request.getParameter("hora");
                idmaquina = request.getParameter("idmaquina");
                idequipo = request.getParameter("idequipo");
                problema = request.getParameter("problema");
                idpersona = request.getParameter("idpersona");
                rol = request.getParameter("rol");
                nom = request.getParameter("nombre");
                appat = request.getParameter("appat");
                apmat = request.getParameter("apmat");
                grupo = request.getParameter("grupo");
                asig = request.getParameter("asig");
                estado = request.getParameter("estado");
                prioridad = request.getParameter("prioridad");
                
                System.out.println(lab);
                System.out.println(fecha);
                System.out.println(hora);
                System.out.println(idmaquina);
                System.out.println(idequipo);
                System.out.println(problema);
                System.out.println(idpersona);
                System.out.println(rol);
                System.out.println(nom);
                System.out.println(appat);
                System.out.println(apmat);
                System.out.println(grupo);
                System.out.println(asig);
                System.out.println(estado);
                System.out.println(prioridad);

                
                set = con.createStatement();
                
                String q = "INSERT INTO `reporte`.`dreporte` (`idreporte`,`lab`, `fecha`,"+""
                        + " `hora`, `idmaquina`, `idequipo`, `problema`, `idpersona`, `nombre`,"+""
                        + " `appat`, `apmat`, `grupo`, `asig`, `estado`, `prioridad`)"+""
                        + " VALUES ("+idreporte+",'"+lab+"', '"+fecha+"', '"+hora+"', '"+idmaquina+"', "+""
                        + "'"+idequipo+"', '"+problema+"', '"+idpersona+"', '"+rol+"', '"+nom+"', '"+appat+"',"+""
                        + " '"+apmat+"', '"+grupo+"', '"+asig+"', '"+estado+"', '"+prioridad+"');";

                
                int registro = set.executeUpdate(q);
                System.out.println("Error al registrar en la tabla");
                
                %>
                <h1>Registro Exitoso</h1>
                <%
                
            }catch(SQLException es){
                out.println(es);
                System.out.println("Error al registrar en la tabla");
                System.out.println(es.getMessage());

                %>
                <h1>No se pudo registrar en la tabla, Tendrás que revisar los datos existentes, por favor, introducen tal cual esta escrito, graciaas:3</h1>
                <a href="ConsultarTablas.jsp">Consultar datos</a>
                
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
        <a href="Consultarreporte.jsp">Bitacora</a>
    </div>   
    </main>
    </body>
</html>
