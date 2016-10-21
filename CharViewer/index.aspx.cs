using CharViewer.models;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace CharViewer
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] == null || int.Parse(Session["userId"].ToString()) <= 0)
            {
                Response.Redirect("login.aspx");
            }
            int userId = int.Parse(Session["userId"].ToString());
            //logged in user

            string userDirecotry = MapPath("~") + @"\data\" + userId;
            //check if user has dnd4e file
            if (Directory.Exists( userDirecotry))
            {
                //user has a dir
                string[] files = Directory.GetFiles(userDirecotry, "*.dnd4e");
                if (files.Length > 0)
                {
                    //todo aviad handle multiple files
                    StreamReader sr = new StreamReader(files[0]);
                    string xml = sr.ReadToEnd();

                    XmlDocument doc = new XmlDocument();
                    doc.LoadXml(xml);
                    string jsonText = JsonConvert.SerializeXmlNode(doc);

                    dynamic data = JObject.Parse(jsonText);

                }
                
            }

        }
    }
}