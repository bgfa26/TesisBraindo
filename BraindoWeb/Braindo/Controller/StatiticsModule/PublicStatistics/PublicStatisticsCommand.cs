using Braindo.Common;
using Braindo.Model.StatiticsModule.PublicStatistics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller.StatiticsModule.PublicStatistics
{
    public class PublicStatisticsCommand : Command
    {
        private List<Patient> answer;
        public override void execute()
        {
            try
            {
                DAOStatistics dao = new DAOStatistics();
                answer = dao.GetPublicStatistics();
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