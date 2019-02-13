using Braindo.Common;
using Braindo.Model.StatiticsModule.DashboarStatistics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.StatiticsModule.DashboardStatistics
{
    public class AgeStatisticsCommand : Command
    {
        private List<Patient> answer;

        public AgeStatisticsCommand()
        {

        }

        public override void execute()
        {
            try
            {
                DAODashboardStatistics dao = new DAODashboardStatistics();
                answer = dao.GetAgeStatistics();
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