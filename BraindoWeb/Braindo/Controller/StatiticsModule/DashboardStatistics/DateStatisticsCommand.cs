using Braindo.Common;
using Braindo.Model.StatiticsModule.DashboarStatistics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.StatiticsModule.DashboardStatistics
{
    public class DateStatisticsCommand : Command
    {
        private Statistics dateStatistics;
        private List<Statistics> answer;

        public DateStatisticsCommand(Statistics _dateStatistics)
        {
            this.dateStatistics = _dateStatistics;
        }

        public override void execute()
        {
            try
            {
                DAODashboardStatistics dao = new DAODashboardStatistics();
                answer = dao.GetDateStatistics(dateStatistics);
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