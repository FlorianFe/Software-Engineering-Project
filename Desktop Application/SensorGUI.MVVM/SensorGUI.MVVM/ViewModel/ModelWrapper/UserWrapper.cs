using model;
using PropertyChanged;
using System;
using System.ComponentModel;

namespace SensorGUI.MVVM {
    [ImplementPropertyChanged]
    public class UserWrapper {

        private User original;
        public string Name { get { return this.original.getName(); }}
        public bool IsTriggerer { get { return this.original.isTriggerer(); } }

        public UserWrapper(User original)
        {
            this.original = original;
        }
    }
}