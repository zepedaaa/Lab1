<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
</head>
<body>

    <h1>Lista de Videos</h1>
    

    Se encontraron <%: ((System.Data.DataTable)ViewData["datavideo"]).Rows.Count %> videos
    <div> Opciones </div>


    <p>
        <asp:HyperLink ID="hpAgregar" runat="server" NavigateUrl="/Video/Create">Agregar</asp:HyperLink>
    </p>
    <asp:HyperLink ID="hpEliminar" runat="server" NavigateUrl="/Video/Eliminar">Eliminar</asp:HyperLink>
    <p>
        <asp:HyperLink ID="hpModificar" runat="server" NavigateUrl="/Video/Actualizar">Modificar</asp:HyperLink>
    </p>
    <hr />
    <% 
        foreach (System.Data.DataRow video in ((System.Data.DataTable)ViewData["datavideo"]).Rows)
        {%>
    <p> <%: video["titulo"].ToString() %> </p>
    <iframe width="560" height="315" src="<%: video["url"].ToString() %>" 
    frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
    allowfullscreen></iframe>
    <%
        }           
    %>
</body>
</html>
