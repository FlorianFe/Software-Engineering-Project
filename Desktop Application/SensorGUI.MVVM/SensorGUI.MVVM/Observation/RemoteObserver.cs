using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using model;
using serverConnection;

namespace observation
{
    public class RemoteObserver : Observer
    {
        private RemoteSocket remoteSocket;

        public RemoteObserver(RemoteSocket remoteSocket)
        {
            this.remoteSocket = remoteSocket;
        }

        public override void onConfigurationChanged(int configId)
        {
            this.remoteSocket.onConfigurationChanged(configId);
        }

        public override void onErrorThrown(string errorMessage)
        {
            this.remoteSocket.onErrorThrown(errorMessage);
        }

        public override void onLiveValuesUpdate(RepeatingAccuracyMeasurement measurement)
        {
            this.remoteSocket.onLiveValuesUpdate(measurement);
        }

        public override void onModelUpdate()
        {
            this.remoteSocket.onModelUpdate();   
        }

        public override void onRepeatingAccuracyMeasurementAdded(RepeatingAccuracyMeasurement measurement)
        {
            this.remoteSocket.onRepeatingAccuracyMeasurementAdded(measurement);
        }

        public override void onRepeatingAccuracyMeasurementRemoved()
        {
            // do nothing
        }

        public override void onRepeatingAccuracyMeasurementSeriesAdded()
        {
            // do nothing
        }

        public override void onWayTimeMeasurementSeriesAdded()
        {
            // do nothing
        }
    }
}
