using Braindo.Common;
using Braindo.Model.StatiticsModule.DashboarStatistics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.StatiticsModule.DashboardStatistics
{
    public class StateStatisticsCommand : Command
    {
        private List<Statistics> answer;

        public StateStatisticsCommand()
        {
            
        }

        public override void execute()
        {
            try
            {
                DAODashboardStatistics dao = new DAODashboardStatistics();
                answer = dao.GetStateStatistics();
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