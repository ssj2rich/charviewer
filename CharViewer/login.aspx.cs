using CharViewer.models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CharViewer
{
    public partial class login : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            StreamReader sr = new StreamReader(MapPath("~") + @"\users.txt");
            string tempUsers = sr.ReadToEnd();
            sr.Close();
            List<User> users = JsonConvert.DeserializeObject<List<User>>(tempUsers);

            if (!string.IsNullOrEmpty(tbUserName.Text) && !string.IsNullOrEmpty(tbPassword.Text))
            {
                User u = users.Where(d => d.userName == tbUserName.Text && d.password == tbPassword.Text).FirstOrDefault();
                if (u != null && u.id > 0)
                {
                    Session["userId"] = u.id;
                    Response.Redirect("index.aspx");
                }
            }


        }
    }
}