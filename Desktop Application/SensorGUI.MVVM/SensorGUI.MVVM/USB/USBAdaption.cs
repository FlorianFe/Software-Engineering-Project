using System;
using System.Collections.Generic;
using System.Text;
using commands;
using System.Runtime.CompilerServices;
using SensorGUI.MVVM;
using observation;
using commands.simplecommands;

namespace usb
{
    public class USBAdaption
    {
        private static System.IO.Ports.SerialPort serialPort1;
        private static System.IO.Ports.SerialPort serialPort2;

        private static Queue<char> queue1 = new Queue<char>();
        private static Queue<char> queue2 = new Queue<char>();
        
        private static CommandExecuter commandExecuter;

        public static void init(ObserverCollection observerCollection)
        {
            Console.Write("Init USB Adaption...\n");

            System.ComponentModel.IContainer container = new System.ComponentModel.Container();

            USBAdaption.serialPort1 = new System.IO.Ports.SerialPort(container);
            USBAdaption.serialPort2 = new System.IO.Ports.SerialPort(container);

            CoreConfigFromXML portConfig = new CoreConfigFromXML("C:/Users/student/Desktop/ini.xml");

            USBAdaption.serialPort1.PortName = portConfig.getPort1Name();
            USBAdaption.serialPort1.BaudRate = 9600;

            USBAdaption.serialPort2.PortName = portConfig.getPort2Name();
            USBAdaption.serialPort2.BaudRate = 9600;
            
            USBAdaption.serialPort1.Open();
            USBAdaption.serialPort2.Open();

            USBAdaption.serialPort1.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(USBAdaption.serialPort1_DataReceived);
            USBAdaption.serialPort2.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(USBAdaption.serialPort2_DataReceived);

            USBAdaption.commandExecuter = new CommandExecuter(observerCollection, USBAdaption.serialPort1, USBAdaption.serialPort2);
        }

        public static CommandExecuter getCommandExecuter()
        {
            return USBAdaption.commandExecuter;
        }

        public static void close()
        {
            if (serialPort1.IsOpen) serialPort1.Close();
            if (serialPort2.IsOpen) serialPort2.Close();
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        public static void serialPort1_DataReceived(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {
            char[] receivedData = USBAdaption.dataReceived(USBAdaption.serialPort1, USBAdaption.queue1);
            if (receivedData != null)
            {
                USBAdaption.commandExecuter.notifyOnPort1(receivedData);
            }
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        public static void serialPort2_DataReceived(object sender, System.IO.Ports.SerialDataReceivedEventArgs e)
        {
            char[] receivedData = USBAdaption.dataReceived(USBAdaption.serialPort2, USBAdaption.queue2);
            if (receivedData != null)
            {
                USBAdaption.commandExecuter.notifyOnPort2(receivedData);
                
            }
        }

        [MethodImpl(MethodImplOptions.Synchronized)]
        public static char[] dataReceived(System.IO.Ports.SerialPort port, Queue<char> queue)
        {
            // Stueck fuer Stueck aus Serial auslesen
            //   und in Queue recievedbuffer einreihen
            char[] data = new char[port.BytesToRead];
            port.Read(data, 0, data.Length);

            for (int i = 0; i < data.Length; i++)
            {
                queue.Enqueue(data[i]);
            }


            // Wenn ein Befehl vollstaendig im Buffer mit '\r' (Cariage Return gefunden)
            // dann werte den Befehl aus.
            // falls mehr als ein Befehl in der Queue, dann brich ab
            // und lass beim naechsten mal den Befehl auswerten 

            List<char> answerData = new List<char>();

            if (queue.Contains('\r'))
            {
                //Console.Write(queue.Count + ": ");

                bool isCommandComplete = false;
                int commandCount = queue.Count;
                for (int i = 0; i < commandCount && !isCommandComplete; i++)
                {
                    char temp = queue.Dequeue();
                    //Console.Write(String.Format("" + temp));
                    answerData.Add(temp);

                    //return diesen Wert an die Klasse, die es interessiert
                    if (temp == '\r')
                    {
                        isCommandComplete = true;
                        return (answerData.ToArray());
                    }
                }
            }

            //Console.Write(queue.ToString());

            return null;
        }
    }  
}
