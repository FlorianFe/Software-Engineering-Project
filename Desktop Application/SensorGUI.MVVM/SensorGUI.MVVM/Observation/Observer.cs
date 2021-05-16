using model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace observation
{
    public abstract class Observer
    {
        public abstract void onModelUpdate();
        public abstract void onConfigurationChanged(int configId);
        public abstract void onRepeatingAccuracyMeasurementSeriesAdded();
        public abstract void onWayTimeMeasurementSeriesAdded();
        public abstract void onRepeatingAccuracyMeasurementAdded(RepeatingAccuracyMeasurement measurement);
        public abstract void onRepeatingAccuracyMeasurementRemoved();

        public abstract void onErrorThrown(String errorMessage);
        public abstract void onLiveValuesUpdate(RepeatingAccuracyMeasurement measurement);
    }
}
