using commands.reactivecommands;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Xml;

namespace commands
{
    namespace simplecommands
    {
        public class CoreConfigFromXML
        {
            private string path;

            public CoreConfigFromXML(string path)
            {
                this.path = path;
            }

            public String getPort1Name()
            {
                return getValueOfSelector("core.ports.port1name");
            }

            public String getPort2Name()
            {
                return getValueOfSelector("core.ports.port2name");
            }

            public String getIPAddress() {
                return getValueOfSelector("core.ip.address");
            }

            public String getIPPort() {
                return getValueOfSelector("core.ip.port");
            }

            private String getValueOfSelector(String selectorToSearch)
            {
                XmlReader reader = XmlReader.Create(this.path);
                List<string> paths = new List<string>();

                while (reader.Read())
                {
                    if (reader.NodeType == XmlNodeType.Element)
                    {
                        paths.Add(reader.Name);
                    }
                    else if (reader.NodeType == XmlNodeType.EndElement)
                    {
                        paths.RemoveAt(paths.Count - 1);
                    }
                    else if (reader.NodeType == XmlNodeType.Text)
                    {
                        String result = this.getValueOfNode(selectorToSearch, paths.ToArray(), reader.Value);
                        if (result != null) return result;
                    }
                }

                return null;
            }

            private String getValueOfNode(string selectorOfSearch, string[] paths, string value)
            {
                string selectorOfNode = string.Join(".", paths);

                return (selectorOfNode.Equals(selectorOfSearch)) ? value : null;
            }
        }
    }
}
