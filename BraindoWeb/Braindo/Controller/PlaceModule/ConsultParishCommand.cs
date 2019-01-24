using Braindo.Common;
using Braindo.Model.PlaceModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PlaceModule
{
    public class ConsultParishCommand : Command
    {
        private Place consultPlace;
        private List<Place> answer;

        public ConsultParishCommand(Place _place)
        {
            this.consultPlace = _place;
        }

        public override void execute()
        {
            DAOPlace daoplace = new DAOPlace();
            answer = daoplace.consultParish(consultPlace);

        }
        public List<Place> getAnswer()
        {
            return this.answer;
        }
    }
}