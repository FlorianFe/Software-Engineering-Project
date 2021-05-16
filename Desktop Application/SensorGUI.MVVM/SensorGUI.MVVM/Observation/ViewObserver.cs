using SensorGUI.MVVM;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using model;

namespace observation
{
    public class ViewObserver : Observer
    {
        private MainWindowViewModel viewModel;

        public ViewObserver(MainWindowViewModel viewModel)
        {
            this.viewModel = viewModel;
        }

        public override void onConfigurationChanged(int configId)
        {
            // do nothing
        }

        public override void onErrorThrown(string errorMessage)
        {
            this.viewModel.DisplayErrorMessage(errorMessage);
        }

        public override void onLiveValuesUpdate(RepeatingAccuracyMeasurement measurement)
        {
            this.viewModel.UpdateLiveValues(measurement);
            Console.WriteLine("Live Werte wurden geupdatet!!!!!");
        }

        public override void onModelUpdate()
        {
            this.viewModel.update();
            Console.WriteLine("Model wurde geupdatet!!!!!");
        }

        public override void onRepeatingAccuracyMeasurementAdded(RepeatingAccuracyMeasurement measurement)
        {
            // do nothingx
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
