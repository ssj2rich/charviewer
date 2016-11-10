using CharViewer.models;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml;

namespace CharViewer
{
    public class Global : System.Web.HttpApplication
    {
        public static List<Power> allPowers = new List<Power>();

        protected void Application_Start(object sender, EventArgs e)
        {
            //lets load the dnd files on load of application


            string[] files = Directory.GetFiles(Server.MapPath("~") + @"\dnd4eData\", "*.part");
            foreach (var file in files)
            {
                try
                {
                    StreamReader sr = new StreamReader(file);
                    string xml = sr.ReadToEnd();

                    XmlDocument doc = new XmlDocument();
                    doc.LoadXml(xml);
                    string jsonText = JsonConvert.SerializeXmlNode(doc);

                    dynamic data = JObject.Parse(jsonText);

                    foreach (var item in data.D20Rules.RulesElement)
                    {
                        if (item["@type"] == "Power")
                        {
                            Power pw = new Power();

                            try
                            {
                                pw.name = item["@name"];
                            }
                            catch (Exception)
                            {
                            }

                            try
                            {
                                pw.flavorText = item["Flavor"];
                            }
                            catch (Exception)
                            {
                            }


                            foreach (var spec in item.specific)
                            {
                                string specName = spec["@name"];
                                specName = specName.Trim();
                                switch (specName)
                                {
                                    case "Power Usage":
                                        try
                                        {
                                            pw.Usage = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Action Type":
                                        try
                                        {
                                            pw.Action = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Level":
                                        try
                                        {
                                            pw.Level = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Keywords":
                                        try
                                        {
                                            pw.keywords = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;

                                    case "Target":
                                        try
                                        {
                                            pw.target = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Hit":
                                        try
                                        {
                                            pw.Hit = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Effect":

                                        try
                                        {
                                            pw.Effect = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Miss":
                                        try
                                        {
                                            pw.Miss = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Special":
                                        try
                                        {
                                            pw.Special = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }

                                        break;
                                    case "Attack":

                                        try
                                        {
                                            pw.Attack = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Power Type":
                                        try
                                        {
                                            pw.PowerType = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Attack Type":
                                        try
                                        {
                                            pw.AttackType = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;

                                    case "Requirement":
                                        try
                                        {
                                            pw.Requirement = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Secondary Target":
                                        try
                                        {
                                            pw.SecondaryTarget = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    case "Weapon":
                                        try
                                        {
                                            pw.weaponText = spec["#text"];
                                        }
                                        catch (Exception)
                                        {
                                        }
                                        break;
                                    default:
                                        break;
                                }
                            }

                            allPowers.Add(pw);
                        }
                    }

                }
                catch (Exception)
                {
                }
            }


        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}