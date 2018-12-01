using Braindo.Common;
using Braindo.Model.PsychologistModule;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.PsychologistModule
{
    public class EditInformationCommand : Command
    {
        private Psychologist editPsycho;
        private Psychologist answer;

        public EditInformationCommand(Psychologist _editPsycho)
        {
            this.editPsycho = _editPsycho;
        }

        public override void execute()
        {
            DAOPsychologist daopsycho = new DAOPsychologist();
            answer = daopsycho.modifyInformation(editPsycho);
        }

        public Psychologist getAnswer()
        {
            return this.answer;
        }
    }
}