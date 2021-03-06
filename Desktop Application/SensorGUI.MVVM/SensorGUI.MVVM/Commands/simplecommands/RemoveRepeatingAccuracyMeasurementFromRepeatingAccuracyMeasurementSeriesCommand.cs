using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using model;
using observation;

namespace commands 
{
    namespace simplecommands 
    {
        public class RemoveRepeatingAccuracyMeasurementFromLastRepeatingAccuracyMeasurementSeriesCommand : SimpleCommand 
        {
            private MeasurementSeriesCollection measurementSeriesCollection;
            private int index;

            public RemoveRepeatingAccuracyMeasurementFromLastRepeatingAccuracyMeasurementSeriesCommand(MeasurementSeriesCollection measurementSeriesCollection, int index) 
            {
                this.measurementSeriesCollection = measurementSeriesCollection;
                this.index = index;
            }

            public void execute(ObserverCollection observers) 
            {
                int lastIndex = this.measurementSeriesCollection.getMeasurementSeriesLength() - 1;
                RepeatingAccuracyMeasurementSeries repeatingAccuracyMeasurementSeries = (RepeatingAccuracyMeasurementSeries)(this.measurementSeriesCollection.getMeasurementSeries(lastIndex));
                repeatingAccuracyMeasurementSeries.removeMeasurement(this.index);
            }
        }
    }
}
