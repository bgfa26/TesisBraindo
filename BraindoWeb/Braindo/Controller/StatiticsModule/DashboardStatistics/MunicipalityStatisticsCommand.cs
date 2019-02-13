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

        private Statistics municipalityStatistics;
        private List<Statistics> answer;

        public MunicipalityStatisticsCommand(Statistics _municipalityStatistics)
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

        public List<Statistics> GetAnswer()
        {
            return answer;
        }
    }
}