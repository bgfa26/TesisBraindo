using Braindo.Common;
using Braindo.Model.PlaceModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PlaceModule
{
    public class ConsultMunicipalityIDCommand : Command
    {
        private Place municipalityID;
        private Place answer;

        public ConsultMunicipalityIDCommand(Place _municipalityID)
        {
            this.municipalityID = _municipalityID;
        }

        public override void execute()
        {
            DAOPlace daoplace = new DAOPlace();
            answer = daoplace.consultMunicipalityID(municipalityID);

        }
        public Place getAnswer()
        {
            return this.answer;
        }
    }
}