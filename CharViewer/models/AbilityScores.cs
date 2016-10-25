using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CharViewer.models
{
    public class AbilityScores
    {
        public string Strength { get; set; }
        public string Constitution { get; set; }
        public string Dexterity { get; set; }
        public string Intelligence { get; set; }
        public string Wisdom { get; set; }
        public string Charisma { get; set; }

        public string StrengthMod { get; set; }
        public string ConstitutionMod { get; set; }
        public string DexterityMod { get; set; }
        public string IntelligenceMod { get; set; }
        public string WisdomMod { get; set; }
        public string CharismaMod { get; set; }

        public string StrengthOriginal { get; set; }
        public string ConstitutionOriginal { get; set; }
        public string DexterityOriginal { get; set; }
        public string IntelligenceOriginal { get; set; }
        public string WisdomOriginal { get; set; }
        public string CharismaOriginal { get; set; }

    }
}