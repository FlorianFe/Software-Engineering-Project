using System;
using System.Collections.Generic;
using System.Text;
using model;
using SensorGUI.MVVM;
using observation;

namespace commands {
    namespace reactivecommands {
        public class StartAccumulationCommand : ReactiveHalfCommand {
            public StartAccumulationCommand() {
            }

            public override void execute(System.IO.Ports.SerialPort port) {
                Console.Write("excute startAcc ");
                port.Write(new byte[] { 0x41, 0x53, 0x0D }, 0, 3);
            }

            public override void react(char[] answerData, ObserverCollection observerCollection) {
                Console.WriteLine("answer StartAcc: " + new String(answerData));
                /*
                if(answStrArray1[0] != "AS")
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