using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using model;
using System.Collections.ObjectModel;

namespace SensorGUI.MVVM {
    public class ModelToWrappedModelParser {
        public static ObservableCollection<MeasurementSeriesWrapper> parse(MeasurementSeriesCollection measurementSeriesCollection) {

            ObservableCollection<MeasurementSeriesWrapper> wrapperObservableCollection = new ObservableCollection<MeasurementSeriesWrapper>();

            for (int i=0; i<measurementSeriesCollection.getMeasurementSeriesLength(); i++)
            {
                MeasurementSeries measurementSeries = measurementSeriesCollection.getMeasurementSeries(i);

                if (measurementSeries is RepeatingAccuracyMeasurementSeries)
                {
                    RepeatingAccuracyMeasurementSeries series = (RepeatingAccuracyMeasurementSeries) measurementSeries;
                    RepeatingAccuracyMeasurementSeriesWrapper wrappedSeries = new RepeatingAccuracyMeasurementSeriesWrapper(series);
                    wrappedSeries.Id = i;

                    for (int j = 0; j < measurementSeries.getMeasurementsLength(); j++)
                    {
                        RepeatingAccuracyMeasurement measurement = series.getMeasurement(j);
                        RepeatingAccuracyMeasurementWrapper wrappedRepeatingAccuracyMeasurement = new RepeatingAccuracyMeasurementWrapper(measurement);
                        wrappedSeries.addRepeatingAccuracyMeasurement(wrappedRepeatingAccuracyMeasurement);
                    }

                    wrapperObservableCollection.Add(wrappedSeries);
                }
                else 
                {
                    WayTimeMeasurementSeries series = (WayTimeMeasurementSeries) measurementSeries;
                    WayTimeMeasurementSeriesWrapper wrappedSeries = new WayTimeMeasurementSeriesWrapper(series);
                    wrappedSeries.Id = i;
                    
                    for(int j=0; j < series.getMeasurementsLength(); j++) 
                    {
                        Tuple<double, double> measurement = series.getMeasurement(j);
                        wrappedSeries.addMeasurement(measurement);
                    }
                    
                    wrapperObservableCollection.Add(wrappedSeries);
                }
            }

            return wrapperObservableCollection;
        }
    }
}