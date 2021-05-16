using commands.simplecommands;
using model;
using observation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace commands.simplecommand
{
    class RemoveUserCommand : SimpleCommand
    {
        private String name;
        private MeasurementSeriesCollection measurementSeriesCollection;

        public RemoveUserCommand(String name, MeasurementSeriesCollection measurementSeriesCollection)
        {
            this.name = name;
            this.measurementSeriesCollection = measurementSeriesCollection;
        }

        public void execute(ObserverCollection observers)
        {
            UserCollection userCollection = this.measurementSeriesCollection.getUserCollection();
            userCollection.removeUserByName(name);
        }
    }
}
