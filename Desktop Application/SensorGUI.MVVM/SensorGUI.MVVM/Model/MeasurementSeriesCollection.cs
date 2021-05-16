using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace model {
    public class MeasurementSeriesCollection {
        private List<MeasurementSeries> measurementSeries = new List<MeasurementSeries>();
        private UserCollection userCollection = new UserCollection();
        private int mode = 0;

        private static int REPEATING_ACCURACY = 1;
        private static int WAY_TIME = 2;

        public MeasurementSeriesCollection()
        {

        }

        public UserCollection getUserCollection()
        {
            return this.userCollection;
        } 

        public void addMeasurementSeries(MeasurementSeries measurementSeries)
        {
            this.measurementSeries.Add(measurementSeries);
        }

        public void setModeToRepeatingAccuracy()
        {
            this.mode = MeasurementSeriesCollection.REPEATING_ACCURACY;
        }

        public void setModeToWayTime()
        {
            this.mode = MeasurementSeriesCollection.WAY_TIME;
        }

        public MeasurementSeries getMeasurementSeries(int measurementSeriesIndex)
        {
            return this.measurementSeries.ElementAt(measurementSeriesIndex);
        }

        public int getMeasurementSeriesLength() {
            return this.measurementSeries.Count();
        }

        public void removeMeasurementSeries(int measurementSeriesIndex) {
            this.measurementSeries.RemoveAt(measurementSeriesIndex);
        }
    }
}
