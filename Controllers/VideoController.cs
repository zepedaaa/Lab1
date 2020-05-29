using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
//
using System.Data;
using System.Data.SqlClient;
using MVCPlantilla.Utilerias;

namespace MvcPlantilla.Controllers
{
    public class VideoController : Controller
    {
        //
        // GET: /Video/

        //-------------------------------------------------------------AGREGAR
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(int idvideo, string titulo, int reproduccion, string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idvideo", idvideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@reproduccion", reproduccion));
            parametros.Add(new SqlParameter("@url", url));

            BaseHelper.ejecutarSentencia("insert into video values(@idvideo, @titulo, @reproduccion, @url)", CommandType.Text, parametros);

            return View();
        }


        //-------------------------------------------------------------ELIMINAR
        public ActionResult Eliminar()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Eliminar(int idvideo)
        {
            //Eliminar un video ya existente
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idvideo", idvideo));

            BaseHelper.ejecutarSentencia("delete from video where idvideo=@idvideo", CommandType.Text, parametros);
            return View();
        }

        //-------------------------------------------------------------ACTUALIZAR
        public ActionResult Actualizar()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Actualizar(int idvideo,string titulo,int reproduccion,string url)
        {
            List<SqlParameter> parametros = new List<SqlParameter>();
            parametros.Add(new SqlParameter("@idvideo", idvideo));
            parametros.Add(new SqlParameter("@titulo", titulo));
            parametros.Add(new SqlParameter("@reproduccion", reproduccion));
            parametros.Add(new SqlParameter("@url", url));

            BaseHelper.ejecutarSentencia("UPDATE video SET titulo=@titulo, reproduccion=@reproduccion, url=@url WHERE idvideo=@idvideo", CommandType.Text, parametros);
            return View();
        }
    }
}
