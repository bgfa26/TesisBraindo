using Braindo.Common;
using Braindo.Model.PlaceModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PlaceModule
{
    public class ConsultStateCommand : Command
    {

        private Place consultPlace;
        private List<Place> answer;

        public ConsultStateCommand()
        {

        }

        public override void execute()
        {
            DAOPlace daoplace = new DAOPlace();
            answer = daoplace.consultState();

        }

        public List<Place> getAnswer()
        {
            return this.answer;
        }
    }
}