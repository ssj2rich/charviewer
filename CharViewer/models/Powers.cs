using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CharViewer.models
{
    public class Power
    {
        public string name { get; set; }
        public string url { get; set; }
        public string text { get; set; }
        public string Usage { get; set; }
        public string Action { get; set; }
        public string Level { get; set; }
        public List<string> keywords { get; set; }
        public List<Weapon> weapons { get; set; }
        public string range { get; set; }
        public string target { get; set; }
        public string Hit { get; set; }
        public string Effect { get; set; }
        public string Miss { get; set; }
        public string Special { get; set; }
        public string flavorText { get; set; }
        public string Attack { get; set; }
        public string PowerType { get; set; }
        public string AttackType { get; set; }
        public string Requirement { get; set; }
        public string SecondaryTarget { get; set; }
        public string weaponText { get; set; }

        public Power()
        {
            weapons = new List<Weapon>();
            keywords = new List<string>();
        }
    }
}