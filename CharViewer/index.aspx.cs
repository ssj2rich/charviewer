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
        //public dndChar char = new 
        public D20Character dChar = new D20Character();
        
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
            if (Directory.Exists(userDirecotry))
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

                    AbilityScores ab = new AbilityScores();
                    Defenses def = new Defenses();
                    Details det = new Details();
                    foreach (var item in data.D20Character.CharacterSheet.StatBlock.Stat)
                    {
                        try
                        {
                            // block to extract ability scores including everything
                            string stat = item.alias[0]["@name"].Value;
                            switch (stat)
                            {
                                case "Charisma":
                                    ab.Charisma = item["@value"];
                                    break;

                                case "Constitution":
                                    ab.Constitution = item["@value"];
                                    break;

                                case "Dexterity":
                                    ab.Dexterity = item["@value"];
                                    break;

                                case "Intelligence":
                                    ab.Intelligence = item["@value"];
                                    break;

                                case "Strength":
                                    ab.Strength = item["@value"];
                                    break;

                                case "Wisdom":
                                    ab.Wisdom = item["@value"];
                                    break;

                                case "AC":
                                    def.AC = item["@value"];
                                    break;

                                case "Fortitude Defense":
                                    def.Fortitude = item["@value"];
                                    break;
                                case "Reflex Defense":
                                    def.Reflex = item["@value"];
                                    break;
                                case "Will Defense":
                                    def.Will = item["@value"];
                                    break;



                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;
                                //case "Strength":
                                //    ab.Strength = item["@value"];
                                //    break;


                               

                                //"Death Saves Count"
                                //"Level"
                                //"Hit Points"
                                //"_LEVEL-ONE-HPS"
                                //"Healing Surges"
                                
                                //"_BaseActionPoints"
                                //"XP Needed"
                                //"Acrobatics"
                                //"Acrobatics Trained"
                                //"Arcana"
                                //"Arcana Trained"
                                //"Diplomacy"
                                //"Diplomacy Trained"
                                //"Dungeoneering"
                                //"Dungeoneering Trained"
                                //"Endurance"
                                //"Endurance Trained"
                                //"Heal"
                                //"Heal Trained"
                                //"History"
                                //"History Trained"
                                //"Insight"
                                //"Insight Trained"
                                //"Intimidate"
                                //"Intimidate Trained"
                                //"Nature"
                                //"Nature Trained"
                                //"Perception"
                                //"Perception Trained"
                                //"Religion"
                                //"Religion Trained"
                                //"Stealth"
                                //"Stealth Trained"
                                //"Streetwise"
                                //"Streetwise Trained"
                                //"Thievery"
                                //"Thievery Trained"
                                //"Athletics"
                                //"Athletics Trained"
                                //"Passive Perception"
                                //"Passive Insight"
                               
                                //"Size"
                                
                                //"Free Rituals"
                                //"@String": "* As a cleric you possess a ritual book, and it contains two free 1st–level rituals to begin your career.",



                                default:
                                    break;
                            }
                        }
                        catch (Exception)
                        {
                        }


                        try
                        {
                            // block to extract ability scores including everything
                            string stat = item.alias["@name"].Value;
                            switch (stat)
                            {
                                case "Strength modifier":
                                    ab.StrengthMod = item["@value"].Value;
                                    break;

                                case "Dexterity modifier":
                                    ab.DexterityMod = item["@value"].Value;
                                    break;

                                case "Constitution modifier":
                                    ab.ConstitutionMod = item["@value"].Value;
                                    break;

                                case "Intelligence modifier":
                                    ab.IntelligenceMod = item["@value"].Value;
                                    break;

                                case "Wisdom modifier":
                                    ab.WisdomMod = item["@value"].Value;
                                    break;

                                case "Charisma modifier":
                                    ab.CharismaMod = item["@value"].Value;
                                    break;

                                case "Initiative":
                                    det.Initiative = item["@value"].Value;
                                    break;

                                case "Speed":
                                    det.Speed = item["@value"].Value;
                                    break;

                                case "Saving Throws":
                                    det.SavingThrows = item["@value"].Value;
                                    break;

                                default:
                                    break;
                            }
                        }
                        catch (Exception)
                        {
                        }

                    }
                   
                    ab.CharismaOriginal = data.D20Character.CharacterSheet.AbilityScores.Charisma["@score"].Value;
                    ab.ConstitutionOriginal = data.D20Character.CharacterSheet.AbilityScores.Constitution["@score"].Value;
                    ab.DexterityOriginal = data.D20Character.CharacterSheet.AbilityScores.Dexterity["@score"].Value;
                    ab.IntelligenceOriginal = data.D20Character.CharacterSheet.AbilityScores.Intelligence["@score"].Value;
                    ab.StrengthOriginal = data.D20Character.CharacterSheet.AbilityScores.Strength["@score"].Value;
                    ab.WisdomOriginal = data.D20Character.CharacterSheet.AbilityScores.Wisdom["@score"].Value;

                    dChar.AbilityScores = ab;
                    dChar.Defenses = def;
                    dChar.Details = det;
                    dChar.test = "mosffhe";
                }

            }

        }
    }
}