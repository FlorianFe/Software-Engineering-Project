using model;
using PropertyChanged;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SensorGUI.MVVM {
    [ImplementPropertyChanged]
    public class RepeatingAccuracyMeasurementWrapper 
    {
        private RepeatingAccuracyMeasurement originalRepeatingAccuracyMeasurement;
        private NumberFormatInfo numberFormatInfoForThreeDigits;

        public RepeatingAccuracyMeasurementWrapper(RepeatingAccuracyMeasurement original) 
        {
            this.originalRepeatingAccuracyMeasurement = original;
            this.numberFormatInfoForThreeDigits = new System.Globalization.NumberFormatInfo();
            this.numberFormatInfoForThreeDigits.NumberDecimalDigits = 3;
        }

        public string Value1 {
            get
            {
                double value = this.originalRepeatingAccuracyMeasurement.value1;
                if(value == double.PositiveInfinity) 
                {
                    return "FFFFFF";
                }
                else 
                {
                    String valueAsString =  value.ToString("F", this.numberFormatInfoForThreeDigits);
                    return valueAsString.Replace(".", ",");
                }
            }
            set { }
        }
        public string Value2
        {
            get
            {
                double value = this.originalRepeatingAccuracyMeasurement.value2;
                if(value == double.PositiveInfinity) {
                    return "FFFFFF";
                }
                else {
                    String valueAsString = value.ToString("F", this.numberFormatInfoForThreeDigits);
                    return valueAsString.Replace(".", ",");
                }
            }
            set { }
        }
        public string Value3
        {
            get
            {
                double value = this.originalRepeatingAccuracyMeasurement.value3;
                if(value == double.PositiveInfinity) {
                    return "FFFFFF";
                }
                else {
                    String valueAsString = value.ToString("F", this.numberFormatInfoForThreeDigits);
                    return valueAsString.Replace(".", ",");
                }
            }
            set { }
        }
    }
}
