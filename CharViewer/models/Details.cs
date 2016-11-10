using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CharViewer.models
{
    public class Details
    {
        public string Name { get; set; }
        public string Level { get; set; }
        public string Height { get; set; }
        public string Weight { get; set; }
        public string Gender { get; set; }
        public string Age { get; set; }
        public string Alignment { get; set; }
        public string Company { get; set; }
        public string Portrait { get; set; }
        public string Experience { get; set; }
        public string CarriedMoney { get; set; }
        public string StoredMoney { get; set; }
        public string Traits { get; set; }
        public string Appearance { get; set; }
        public string Companions { get; set; }
        public string Notes { get; set; }
        public string Race { get; set; }
        public string Class { get; set; }

        public string Initiative { get; set; }
        public string Speed { get; set; }
        public string SavingThrows { get; set; }

        public string HpBloodied { get; set; }
        public string HpCurrent { get; set; }
        public string HpMax { get; set; }

        public string HealingSurgesValue { get; set; }
        public string HealingSurgesCurrent { get; set; }
        public string HealingSurgesMax { get; set; }

        public string PowerPointsCurrent { get; set; }
        public string PowerPointsMax { get; set; }
        public bool HasPowerPoints { get; set; }

        public int Milestones { get; set; }

        public int ActionPoints { get; set; }

        public int PassivePerception { get; set; }
        public int PassiveInsight { get; set; }

        public string Vision { get; set; }
        public string Deity { get; set; }

        public List<string> languages { get; set; }


    }
}