using observation;
using SensorGUI.MVVM;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace commands
{
    namespace reactivecommands
    {
        public class ReactiveHalfCommandForFullCommandOnPort2 : ReactiveHalfCommand
        {
            private ReactiveFullCommand fullCommand;

            public ReactiveHalfCommandForFullCommandOnPort2(ReactiveFullCommand fullCommand)
            {
                this.fullCommand = fullCommand;
            }

            public override void execute(System.IO.Ports.SerialPort port)
            {
                this.fullCommand.executeOnPort2(port);
            }

            public override void react(char[] answerData, ObserverCollection observerCollection)
            {
                this.fullCommand.reactOnPort2(answerData, observerCollection);
            }

            public override bool isCorrectAnswerFormat(char[] answerData)
            {
                return true;
            }
        }
    }
}
