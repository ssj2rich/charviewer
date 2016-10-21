using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CharViewer.models
{
    public class D20Character
    {
        
        public int Id { get; set; }

        public Details[] Details { get; set; }
        public AbilityScores[] AbilityScores { get; set; }

    }
}