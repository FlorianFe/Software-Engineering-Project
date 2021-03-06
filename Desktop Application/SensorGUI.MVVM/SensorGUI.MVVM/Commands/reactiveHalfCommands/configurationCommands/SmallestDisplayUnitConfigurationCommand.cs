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
        class SmallestDisplayUnitConfigurationCommand : ReactiveHalfCommand {
            public int OUTNr { get; set; }
            public int smallestDisplayUnit { get; set; }
            public SmallestDisplayUnitConfigurationCommand(int OUTNr, int smallestDisplayUnit) {
                this.OUTNr = OUTNr;
                // in diesem Fall immer 0
                this.smallestDisplayUnit = smallestDisplayUnit;
            }

            public override void execute(System.IO.Ports.SerialPort port) {
                Console.Write("excute SmallestDisplayUnit Config ");
                string command = "SW,OG," + OUTNr.ToString() + "," + smallestDisplayUnit.ToString() + "\r";
                port.Write(usb.StringToHexParser.parse(command), 0, command.Length);
            }

            public override void react(char[] answerData1, ObserverCollection observerCollection) {
                Console.WriteLine("answer SmallestDisplayUnit Config: " + new String(answerData1));
                observerCollection.onModelUpdate();
            }

            public override bool isCorrectAnswerFormat(char[] answerData) {
                return true;
            }
        }
    }
}