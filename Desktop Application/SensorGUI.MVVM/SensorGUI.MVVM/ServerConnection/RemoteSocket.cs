using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Quobject.SocketIoClientDotNet.Client;
using model;
using commands;
using commands.reactivecommands;
using Newtonsoft.Json;
using SensorGUI.MVVM;

namespace serverConnection
{
    public class RemoteSocket
    {

        private Socket socket;

        private MainWindowViewModel viewModel;
        private MeasurementSeriesCollection measurementSeriesCollection;
        private CommandExecuter commandExecuter;

        //private static MySocket instance;
        private static bool alreadyCreated = false;

        public RemoteSocket(MeasurementSeriesCollection measurementSeriesCollection, CommandExecuter commandExecuter, MainWindowViewModel viewModel)
        {
            if (!RemoteSocket.alreadyCreated)
            {
                //this.socket = IO.Socket("http://server-88195.onmodulus.net:80");
                this.socket = IO.Socket("http://192.168.0.201:8080/desktop");
                this.measurementSeriesCollection = measurementSeriesCollection;
                this.commandExecuter = commandExecuter;
                this.viewModel = viewModel;

                new RemoteSocketCommands(this.socket, this.measurementSeriesCollection, this.commandExecuter, this.viewModel);

                RemoteSocket.alreadyCreated = true;
            }
            else
            {
                throw new Exception("Es darf nur eine Instanz von MySocket geben!");
            }
        }

        /*
        public static MySocket Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new MySocket();
                    
                }
                return instance;
            }
        }*/
    

        public bool connect()
        {
            try
            {
                this.socket.On(Socket.EVENT_CONNECT, () =>
                {
                    socket.Emit("connection");
                });

                return true;
            } catch(Exception e) {
                return false;
            }
        }

        /*
        public void sayHello()
        {
            try
            {
                socket.Emit("Hallo");
                socket.On("Hallo", () =>
                {
                    Console.WriteLine("Server says Hello");
                });
            }
            catch (Exception e)
            {
            }
        }*/

        public void onModelUpdate()
        {
            String jsonString = JsonConvert.SerializeObject(this.measurementSeriesCollection);
            this.socket.Emit("ModelUpdate", jsonString);
        }

        public void onErrorThrown(String errorMessage)
        {
            // Fehler wurde geschmissen, Clients müssen informiert werden!
        }

        public void onLiveValuesUpdate(RepeatingAccuracyMeasurement measurement)
        {
            // Live Werte wurden aktualisiert, Clients müssen informiert werden!
            String jsonString = JsonConvert.SerializeObject(measurement);
            this.socket.Emit("LiveValuesUpdate", jsonString);
        }

        public void onConfigurationChanged(int configId)
        {
            this.socket.Emit("ConfigurationChanged", configId);
        }

        public void onRepeatingAccuracyMeasurementAdded(RepeatingAccuracyMeasurement measurement)
        {
            this.socket.Emit("RepeatingAccuracyMeasurementAdded", measurement.serialize());
        }
    }
}