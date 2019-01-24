using Braindo.Common;
using Braindo.Model.PlaceModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PlaceModule
{
    public class ConsultMunicipalityCommand : Command
    {
        private Place consultPlace;
        private List<Place> answer;

        public ConsultMunicipalityCommand(Place _consultplace)
        {
            this.consultPlace = _consultplace;
        }

        public override void execute()
        {
            DAOPlace daoplace = new DAOPlace();
            answer = daoplace.consultMunicipality(consultPlace);

        }

        public List<Place> getAnswer()
        {
            return this.answer;
        }
    }
}