using Braindo.Common;
using Braindo.Model.StatiticsModule.DashboarStatistics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.StatiticsModule.DashboardStatistics
{
    public class MunicipalityStatisticsCommand : Command
    {

        private Patient municipalityStatistics;
        private List<Patient> answer;

        public MunicipalityStatisticsCommand(Patient _municipalityStatistics)
        {
            this.municipalityStatistics = _municipalityStatistics;
        }

        public override void execute()
        {
            try
            {
                DAODashboardStatistics dao = new DAODashboardStatistics();
                answer = dao.GetMunicipalityStatistics(municipalityStatistics);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<Patient> GetAnswer()
        {
            return answer;
        }
    }
}