using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace model
{
    public class User
    {
        private String name;
        private bool triggerer;

        public User(String name)
        {
            this.name = name;
            this.triggerer = true; // todo!
        }

        public void promoteToTriggerer()
        {
            this.triggerer = true;
        }

        public void degradeToWatcher()
        {
            this.triggerer = false;
        }

        public String getName()
        {
            return this.name;
        }

        public bool isTriggerer()
        {
            return this.triggerer;
        }
    }
}
