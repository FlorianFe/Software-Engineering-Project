using model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace observation
{
    public class ObserverCollection
    {
        List<Observer> observerList;

        public ObserverCollection()
        {
            this.observerList = new List<Observer>();
        }

        public void registerObserver(Observer observer)
        {
            this.observerList.Add(observer);
        }

        public void onModelUpdate()
        {
            Console.WriteLine("ObserverListe: Model wird geupdatet!");
            for (int i = 0; i < this.observerList.Count; i++)
            {
                this.observerList[i].onModelUpdate();
            }
        }

        public void onConfigurationChanged(int configId)
        {
            for (int i = 0; i < this.observerList.Count; i++)
            {
                this.observerList[i].onConfigurationChanged(configId);
            }
        }

        public void onRepeatingAccuracyMeasurementAdded(RepeatingAccuracyMeasurement measurement)
        {
            for (int i = 0; i < this.observerList.Count; i++)
            {
                this.observerList[i].onRepeatingAccuracyMeasurementAdded(measurement);
            }
        }

        public void onErrorThrown(String errorMessage)
        {
            for (int i = 0; i < this.observerList.Count; i++)
            {
                this.observerList[i].onErrorThrown(errorMessage);
            }
        }

        public void onLiveValuesUpdate(RepeatingAccuracyMeasurement measurement)
        {
            for (int i = 0; i < this.observerList.Count; i++)
            {
                this.observerList[i].onLiveValuesUpdate(measurement);
            }
        }
    }
}
