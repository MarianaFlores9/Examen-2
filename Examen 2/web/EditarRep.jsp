<%-- 
    Document   : EditarRep
    Created on : 24/04/2022, 05:33:52 PM
    Author     : USUARIO
--%>


<%@page contentType="text/html" language="java" import="java.sql.*, java.util.*, java.text.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Editar de Problema Tecnico</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        
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
            <h2 id="titulo-regproblema">Editar Problema Técnico</h2> 
        <form method="post" name="editar" action="ActualizarRep.jsp">
            
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
                int id = Integer.parseInt(request.getParameter("id"));
                
                String q = "select * from dreporte where idreporte ="+id;
                
                set = con.createStatement();
                
                rs = set.executeQuery(q);
                
                while(rs.next()){
                
                %>
                <p class="label-regproblema">Laboratorio</p>
                <input type="text" name="lab2" id="input_id_lab" value="<%=rs.getString("lab")%>">
                
                 <p class="label-regproblema">ID Reporte</p>
                <input type="text" name="idreporte2" id="input_id_reporte" value="<%=rs.getInt("idreporte")%>">
                
                <p class="label-regproblema">Fecha</p>
                <input type="date" name="fecha2" id="input_fecha" value="<%=rs.getString("fecha")%>" >
                
                <p class="label-regproblema">Hora</p>
                <input type="time" name="hora2" id="input_hora" value="<%=rs.getString("hora")%>" >
                
                 <p class="label-regproblema">ID Máquina</p>
                 <input type="text" name="idmaquina2" id="input_id_maquina"" value="<%=rs.getString("idmaquina")%>" >
                
                <p class="label-regproblema">ID Equipo</p>
                <input type="text" name="idequipo2" id="input_id_equipo" value="<%=rs.getString("idequipo")%>" >
                
                 <p class="label-regproblema" maxlength="5" >Descripción del Problema</p>
                <textarea name="" id="" cols="40" rows="10" name="problema" class="texto_regproblema" value="<%=rs.getString("problema")%>"></textarea>
                
                <p class="label-regproblema">ID Persona</p>
                <input type="text" name="idpersona2" id="input_id_persona" value="<%=rs.getInt("idpersona")%>" >
                
                <p class="label-regproblema">Rol</p>
                <select id="input_rol">
                    <option name="rol2" value="<%=rs.getString("rol")%>">Alumno</option>
                    <option name="rol2" value="<%=rs.getString("rol")%>">Docente</option>
                </select>
                
                <p class="label-regproblema">Nombre</p>
                <input type="text" name="nombre2" id="input_nombre" value="<%=rs.getString("nombre")%>" >
                
                <p class="label-regproblema">Apellido Paterno</p>
                <input type="text" name="appat2" id="input_appat" value="<%=rs.getString("appat")%>">
                
                <p class="label-regproblema">Apellido Materno</p>
                <input type="text" name="apmat2" id="input_apmat" value="<%=rs.getString("apmat")%>" >
                
                <p class="label-regproblema">Grupo</p>
                <input type="text" name="grupo2" id="input_grupo" value="<%=rs.getString("grupo")%>">
               
                <p class="label-regproblema">Asignatura</p>
                <input type="text" name="asig2" id="input_asignatura" value="<%=rs.getString("asig")%>">
                
                <p class="label-regproblema">Estado del Reporte:</p>
                <select id="input_estado">
                    <option name="estado2" value="<%=rs.getString("estado")%>">Pendiente</option>
                    <option name="estado2" value="<%=rs.getString("estado")%>">Resuelto</option>
                </select>

                <p class="label-regproblema">Prioridad del Reporte:</p>
                <select id="input-prioridad">
                    <option name="prioridad2" value="<%=rs.getString("prioridad")%>">Alta</option>
                    <option name="prioridad2" value="<%=rs.getString("prioridad")%>">Media</option>
                    <option name="prioridad2" value="<%=rs.getString("prioridad")%>">Baja</option>
                </select>
                <br>
                <input type="submit" value="Actualizar Datos">
                <br>
                <input type="reset" value="Borrar Datos">
                <%
                }
            }catch(SQLException es){
                
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
            </form>
            
        <a href="Consultarreporte.jsp">Bitacora</a>
        </div>   
    </main>
    </body>
</html>
