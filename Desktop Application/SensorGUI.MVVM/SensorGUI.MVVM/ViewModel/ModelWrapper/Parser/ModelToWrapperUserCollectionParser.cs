using model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SensorGUI.MVVM.ViewModel.ModelWrapper.Parser
{
    class ModelToWrapperUserCollectionParser
    {
        public static ObservableCollection<UserWrapper> parse(MeasurementSeriesCollection measurementSeriesCollection)
        {
            ObservableCollection<UserWrapper> wrappedObservableCollection = new ObservableCollection<UserWrapper>();

            for (int i = 0; i < measurementSeriesCollection.getUserCollection().getSize(); i++)
            {
                User user = measurementSeriesCollection.getUserCollection().getUser(i);
                wrappedObservableCollection.Add(new UserWrapper(user));
            }

            return wrappedObservableCollection;
        }
    }
}
