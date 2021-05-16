using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Quobject.SocketIoClientDotNet.Client;
using commands;
using model;
using commands.reactivecommands;
using commands.simplecommands;
using SensorGUI.MVVM;
using commands.simplecommand;

namespace serverConnection
{
    public class RemoteSocketCommands
    {
        private Socket socket;
        private MainWindowViewModel viewModel;
        private MeasurementSeriesCollection measurementSeriesCollection;
        private CommandExecuter commandExecuter;

        public RemoteSocketCommands(Socket socket, MeasurementSeriesCollection measurementSeriesCollection, CommandExecuter commandExecuter, MainWindowViewModel viewModel)
        {
            this.socket = socket;
            this.viewModel = viewModel;
            this.measurementSeriesCollection = measurementSeriesCollection;
            this.commandExecuter = commandExecuter;

            this.registerAllCommands();
        }

        public void registerAllCommands()
        {
            this.socket.On("NewMeasurementCommand", () =>
            {
                this.viewModel.MeasurementNewExecute(new object());
            });

            this.socket.On("TriggerValueCommand", () =>
            {
                this.viewModel.TriggerExecute(new object());
            });

            this.socket.On("SaveMeasurementCommand", (Object obj) =>
            {
                this.viewModel.SaveFromApp((String)(obj));
            });

            this.socket.On("CancelMeasurementCommand", () =>
            {
                this.viewModel.CancelFromApp();
            });

            this.socket.On("SetToNullCommand", () =>
            {
                this.viewModel.CalibrateExecute(new object());
            });

            this.socket.On("StartAccumulationCommand", () =>
            {
                this.viewModel.MeasurementNewExecute(new object());
                this.viewModel.StartExecute(new object());
            });

            this.socket.On("StopAccumulationCommand", () =>
            {
                this.viewModel.StopExecute(new object());
            });

            this.socket.On("AddMobileUser", (object name) =>
            {
                this.commandExecuter.execute(new AddUserCommand((string)(name), this.measurementSeriesCollection));
            });

            this.socket.On("RemoveMobileUser", (object name) =>
            {
                this.commandExecuter.execute(new RemoveUserCommand((string)(name), this.measurementSeriesCollection));
            });
        }
    }
}
