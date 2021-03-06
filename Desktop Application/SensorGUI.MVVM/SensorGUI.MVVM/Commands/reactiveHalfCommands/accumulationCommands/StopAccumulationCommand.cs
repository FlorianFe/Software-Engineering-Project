using System;
using System.Collections.Generic;
using System.Text;
using model;
using SensorGUI.MVVM;
using observation;

namespace commands {
    namespace reactivecommands {
        public class StopAccumulationCommand : ReactiveHalfCommand {
            public StopAccumulationCommand() {
            }

            public override void execute(System.IO.Ports.SerialPort port) {
                Console.Write("excute stopAcc ");
                port.Write(new byte[] { 0x41, 0x50, 0x0D }, 0, 3);
            }

            public override void react(char[] answerData, ObserverCollection observerCollection) {
                Console.WriteLine("answer StopAcc: " + new String(answerData));
                /*
                if(answStrArray1[0] != "AP")
                {
                    //mach iwas fehlerl ER oderso
                }
                */
            }

            public override bool isCorrectAnswerFormat(char[] answerData) {
                return true;
            }
        }
    }
}