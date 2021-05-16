using model;
using observation;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace commands.simplecommands
{
    public class AddUserCommand : SimpleCommand
    {
        private String name;
        private MeasurementSeriesCollection measurementSeriesCollection;

        public AddUserCommand(String name, MeasurementSeriesCollection measurementSeriesCollection)
        {
            this.name = name;
            this.measurementSeriesCollection = measurementSeriesCollection;
        }

        public void execute(ObserverCollection observers)
        {
            UserCollection userCollection = this.measurementSeriesCollection.getUserCollection();
            userCollection.addUser(new User(name));
        }
    }
}
