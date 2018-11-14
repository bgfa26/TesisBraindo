using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Braindo.Controller
{
    public abstract class Command
    {
        public abstract void execute();
    }
}