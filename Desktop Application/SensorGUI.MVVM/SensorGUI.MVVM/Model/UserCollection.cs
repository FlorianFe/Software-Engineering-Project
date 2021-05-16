using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace model
{
    public class UserCollection
    {
        private List<User> users;

        public UserCollection()
        {
            this.users = new List<User>();
        }

        public void addUser(User user)
        {
            this.users.Add(user);
        }

        public User getUser(int index)
        {
            return this.users[index];
        }

        public void removeUserByName(String nameOfUserToRemove)
        {
            for(int i=0; i<this.users.Count; i++)
            {
                User user = this.users[i];
                if (user.getName().Equals(nameOfUserToRemove))
                {
                    this.users.RemoveAt(i);
                    i--;
                }
            }
        }

        public int getSize()
        {
            return this.users.Count;
        }

        public void promoteUserToTriggerer(int index)
        {
            for (int i = 0; i < this.users.Count; i++)
            {
                if (i == index)
                {
                    this.users[i].promoteToTriggerer();
                }
                else
                {
                    this.users[i].degradeToWatcher();
                }
            }
        }

        public void degradeAllUsersToWatchers()
        {
            foreach (User user in this.users)
            {
                user.degradeToWatcher();
            }
        }
    }
}
