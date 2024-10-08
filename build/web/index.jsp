 <%-- 
    Document   : index
    Created on : 1/10/2024, 07:46:07
    Author     : keila
--%>
<%@page import="modelo.Empleado" %>
<%@page import="modelo.Puesto" %>
<%@page import ="java.util.HashMap" %>
<%@page import ="javax.swing.table.DefaultTableModel" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulario empleados</h1>
        <div class="container">
            <form action="sr_empleado" method="get" class="form-group">
                <label for="lbl_codigo"><b>Codigo:</b></label> 
                <input type="text" name="txt_codigo" id="txt_codigo" class="form-control" placeholder="Ejemplo: 001" required>
                <label for="lbl_Nombres"><b>Nombres:</b></label> 
                <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ejemplo: Nombre1 Nombre2 " required>
                <label for="lbl_Apellidos"><b>Apellidos</b></label> 
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder="Ejemplo: Apellido1 Apellido2 " required>
                <label for="lbl_direccion"><b>Direccion:</b></label> 
                <input type="text" name="txt_direccion" id="txt_direccion" class="form-control" placeholder="Ejemplo: # Casa Calle Zona Ciudad    " required>
                <label for="lbl_telefono"><b>Telefono:</b></label> 
                <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo: 12345678  " required>
                <label for="lbl_fn"><b>Fecha de nacimiento: </b></label> 
                <input type="date" name="txt_fn" id="txt_fn" class="form-control" required>
                <!--<label for="lbl_sangre"><b>Tipo de sangre:</b></label> 
               <select name="drop_sangre" id="drop_sangre" class="form-control">
                
                        try {
                            Empleado empleado = new Empleado();
                            HashMap<String, String> drop = empleado.drop_sangre();
                            if (drop.isEmpty()) {
                                out.println("<option>No hay datos disponibles</option>");
                            } else {
                                for (String i : drop.keySet()) {
                                    out.println("<option value='" + i + "'>" + drop.get(i) + "</option>");
                                }
                            }
                        } catch (Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                </select>*/--> 
                <label for="lbl_puesto"><b>Puesto:</b></label> 
                <select name="drop_puesto" id="drop_puesto" class="form-control">
                    <%
                        try {
                            Puesto puesto = new Puesto();
                            HashMap<String, String> drop = puesto.drop_puestos();
                            if (drop.isEmpty()) {
                                out.println("<option>No hay datos disponibles</option>");
                            } else {
                                for (String i : drop.keySet()) {
                                    out.println("<option value='" + i + "'>" + drop.get(i) + "</option>");
                                }
                            }
                        } catch (Exception e) {
                            out.println("Error: " + e.getMessage());
                        }
                    %>
                </select>
                <br>
                <button  name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary btn-lg">Agregar</button>
                <button  name="btn_modificar" id="btn_modificar" value="agregar" class="btn btn-primary btn-lg">Modificar</button>
            </form>
                <table class="table">
    <thead>
      <tr>
        <th>Codigo</th>
        <th>Nombres</th>
        <th>Apellidos</th>
        <th>Direccion</th>
        <th>Telefono</th>
        <th>Nacimiento</th>
        <th>Puesto</th>
        
      </tr>
    </thead>
    <tbody id="tbl_empleados">
       Empleado 
        </div>
            </form>
            
            
            
        </div> 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
