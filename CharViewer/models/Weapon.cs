using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CharViewer.models
{
    public class Weapon
    {
        public string name { get; set; }
        public string type { get; set; }
        public string attackBonus { get; set; }
        public string Damage { get; set; }
        public string attackStat { get; set; }
        public string Defense { get; set; }
        public string hitComponents { get; set; }
        public string dmgComponents { get; set; }
    }
}