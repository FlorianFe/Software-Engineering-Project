using observation;
using SensorGUI.MVVM;
using SensorGUI.MVVM.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace commands {
    namespace reactivecommands {

        class SamplingRateConfigurationCommand : ReactiveHalfCommand {
            public int samplingTime { get; set; }
            public SamplingRateConfigurationCommand(int samplingTime) {
                this.samplingTime = samplingTime;   
            }

            public override void execute(System.IO.Ports.SerialPort port) {
                Console.Write("excute SamplingRate Config ");
                string command = "SW,CA," + samplingTime.ToString() + "\r";
                port.Write(usb.StringToHexParser.parse(command), 0, command.Length);
            }

            public override void react(char[] answerData1, ObserverCollection observerCollection) {
                Console.WriteLine("answer SamplingRate Config: " + new String(answerData1));
                observerCollection.onModelUpdate ();
            }

            public override bool isCorrectAnswerFormat(char[] answerData) {
                return true;
            }
        }
    }
}