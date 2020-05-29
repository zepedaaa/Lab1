<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Actualizar</title>
</head>
<body>
    <div>
    <form action="/Video/Actualizar" method="post">
            <fieldset>
            <legend>Actualizar datos</legend>

            <label for="idvideo">idvideo</label>
            <input type="text" name="idvideo" />
            <hr />

            <label for="titulo">titulo</label>
            <input type="text" name="titulo"/>

            <label for="reproduccion">Reproducciones</label>
            <input type="text" name="reproduccion"/>

            <label for="url">url</label>
            <input type="text" name="url" />

            <input type="submit" name="Actualizar"/>
            <p>
            <a href="/Home/Index">Regresar</a>
            </p>
            </fieldset>
        </form>
    </div>
</body>
</html>
