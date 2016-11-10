using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CharViewer.models
{
    public class D20Character
    {
        
        public int Id { get; set; }
        public string test { get; set; }
        public Details Details { get; set; }
        public AbilityScores AbilityScores { get; set; }
        public Defenses Defenses { get; set; }
        public List<Skills> skills { get; set; }
        public List<Power> Powers { get; set; }

    }
}