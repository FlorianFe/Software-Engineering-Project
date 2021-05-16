﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace model {
    public class RepeatingAccuracyMeasurementSeries : MeasurementSeries{
        private List<RepeatingAccuracyMeasurement> measurements;

        public RepeatingAccuracyMeasurementSeries(string name) : base(name) {
            this.measurements = new List<RepeatingAccuracyMeasurement>();
        }
        public void addMeasurement(RepeatingAccuracyMeasurement measurement) {
            this.measurements.Add(measurement);
        }

        public RepeatingAccuracyMeasurement getMeasurement(int index) {
            if(index >= this.getMeasurementsLength()) {
                throw new MeasurementDoesntExistException();
            } else {
                return this.measurements.ElementAt(index);
            }
        }

        public void removeMeasurement(int index) {
            this.measurements.RemoveAt(index);
        }

        public override int getMeasurementsLength() {
            return this.measurements.Count();
        }
    }
}