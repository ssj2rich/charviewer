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
                    det.languages = new List<string>();

                    List<Skills> skills = new List<Skills>();

                    Skills skill = new Skills();
                    skill.name = "Acrobatics";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Arcana";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Athletics";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Bluff";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Diplomacy";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Dungeoneering";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Endurance";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Heal";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "History";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Insight";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Intimidate";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Nature";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Perception";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Religion";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Stealth";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Streetwise";
                    skills.Add(skill);

                    skill = new Skills();
                    skill.name = "Thievery";
                    skills.Add(skill);


                  
                        // block to extract ability scores including everything
                    det.Name = data.D20Character.CharacterSheet.Details["name"].Value;
                    det.Age = data.D20Character.CharacterSheet.Details["Age"].Value;
                    det.Alignment = data.D20Character.CharacterSheet.Details["Alignment"].Value;
                    det.Appearance = data.D20Character.CharacterSheet.Details["Appearance"].Value;
                    det.CarriedMoney = data.D20Character.CharacterSheet.Details["CarriedMoney"].Value;
                    det.Companions = data.D20Character.CharacterSheet.Details["Companions"].Value;
                    det.Company = data.D20Character.CharacterSheet.Details["Company"].Value;

                    det.Experience = string.IsNullOrEmpty(data.D20Character.CharacterSheet.Details["Experience"].Value) ? "0" : data.D20Character.CharacterSheet.Details["Experience"].Value;
                    det.Gender = data.D20Character.CharacterSheet.Details["Gender"].Value;
                    det.Height = data.D20Character.CharacterSheet.Details["Height"].Value;
                    det.Level = data.D20Character.CharacterSheet.Details["Level"].Value;
                    det.Notes = data.D20Character.CharacterSheet.Details["Notes"].Value;
                    det.Portrait = data.D20Character.CharacterSheet.Details["Portrait"].Value;
                    det.StoredMoney = data.D20Character.CharacterSheet.Details["StoredMoney"].Value;
                    det.Traits = data.D20Character.CharacterSheet.Details["Traits"].Value;
                    det.Weight = data.D20Character.CharacterSheet.Details["Weight"].Value;
                    




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





                                //"Death Saves Count"
                                //"Level"
                                //"Hit Points"
                                //"_LEVEL-ONE-HPS"
                                //"Healing Surges"

                                //"_BaseActionPoints"
                                //"XP Needed"

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
                            Skills foundSkill = new Skills();
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

                                case "Acrobatics":
                                    foundSkill = skills.Where(d => d.name == "Acrobatics").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;

                                case "Acrobatics Trained":
                                    foundSkill = skills.Where(d => d.name == "Acrobatics").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;

                                case "Arcana":
                                    foundSkill = skills.Where(d => d.name == "Arcana").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Arcana Trained":
                                    foundSkill = skills.Where(d => d.name == "Arcana").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Diplomacy":
                                    foundSkill = skills.Where(d => d.name == "Diplomacy").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Diplomacy Trained":
                                    foundSkill = skills.Where(d => d.name == "Diplomacy").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Dungeoneering":
                                    foundSkill = skills.Where(d => d.name == "Dungeoneering").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Dungeoneering Trained":
                                    foundSkill = skills.Where(d => d.name == "Dungeoneering").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Endurance":
                                    foundSkill = skills.Where(d => d.name == "Endurance").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Endurance Trained":
                                    foundSkill = skills.Where(d => d.name == "Endurance").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Heal":
                                    foundSkill = skills.Where(d => d.name == "Heal").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Heal Trained":
                                    foundSkill = skills.Where(d => d.name == "Heal").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "History":
                                    foundSkill = skills.Where(d => d.name == "History").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "History Trained":
                                    foundSkill = skills.Where(d => d.name == "History").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Insight":
                                    foundSkill = skills.Where(d => d.name == "Insight").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Insight Trained":
                                    foundSkill = skills.Where(d => d.name == "Insight").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Intimidate":
                                    foundSkill = skills.Where(d => d.name == "Intimidate").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Intimidate Trained":
                                    foundSkill = skills.Where(d => d.name == "Intimidate").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Nature":
                                    foundSkill = skills.Where(d => d.name == "Nature").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Nature Trained":
                                    foundSkill = skills.Where(d => d.name == "Nature").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Perception":
                                    foundSkill = skills.Where(d => d.name == "Perception").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Perception Trained":
                                    foundSkill = skills.Where(d => d.name == "Perception").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Religion":
                                    foundSkill = skills.Where(d => d.name == "Religion").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Religion Trained":
                                    foundSkill = skills.Where(d => d.name == "Religion").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Stealth":
                                    foundSkill = skills.Where(d => d.name == "Stealth").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Stealth Trained":
                                    foundSkill = skills.Where(d => d.name == "Stealth").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Streetwise":
                                    foundSkill = skills.Where(d => d.name == "Streetwise").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Streetwise Trained":
                                    foundSkill = skills.Where(d => d.name == "Streetwise").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Thievery":
                                    foundSkill = skills.Where(d => d.name == "Thievery").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Thievery Trained":
                                    foundSkill = skills.Where(d => d.name == "Thievery").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;
                                case "Athletics":
                                    foundSkill = skills.Where(d => d.name == "Athletics").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        foundSkill.skillScore = int.Parse(item["@value"].Value);
                                    }
                                    break;
                                case "Athletics Trained":
                                    foundSkill = skills.Where(d => d.name == "Athletics").SingleOrDefault();
                                    if (foundSkill != null)
                                    {
                                        if (item["@value"].Value == "0")
                                        {
                                            foundSkill.isTrained = false;
                                        }
                                        else
                                        {
                                            foundSkill.isTrained = true;
                                        }
                                    }
                                    break;

                                default:
                                    break;
                            }
                        }
                        catch (Exception)
                        {
                        }

                    }

                    foreach (var item in data.D20Character.CharacterSheet.RulesElementTally.RulesElement)
                    {
                        try
                        {
                            //string stat = item.alias[0]["@name"].Value;
                            string stat = item["@type"].Value;
                            switch (stat)
                            {
                                case "Language":
                                    det.languages.Add(item["@name"].Value);
                                    break;

                                case "Race":
                                    det.Race = item["@name"].Value;
                                    break;

                                case "Class":
                                    det.Class = item["@name"].Value;
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

                    dChar.skills = skills;
                    dChar.AbilityScores = ab;
                    dChar.Defenses = def;
                    dChar.Details = det;
                    dChar.test = "mosffhe";
                }

            }

        }
    }
}