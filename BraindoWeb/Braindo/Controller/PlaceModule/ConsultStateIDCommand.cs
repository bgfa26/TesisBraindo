using Braindo.Common;
using Braindo.Model.PlaceModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PlaceModule
{
    public class ConsultStateIDCommand : Command
    {
        private Place stateID;
        private Place answer;

        public ConsultStateIDCommand(Place _stateID)
        {
            this.stateID = _stateID;
        }

        public override void execute()
        {
            DAOPlace daoplace = new DAOPlace();
            answer = daoplace.consultStateID(stateID);

        }
        public Place getAnswer()
        {
            return this.answer;
        }

    }
}