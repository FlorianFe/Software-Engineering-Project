using observation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace commands
{
    namespace simplecommands
    {
        public interface SimpleCommand
        {
            void execute(ObserverCollection observers);
        }
    }
}
