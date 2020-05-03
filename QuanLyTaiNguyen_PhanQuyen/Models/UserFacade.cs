using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyTaiNguyen_PhanQuyen.Models
{
    public class UserFacade
    {
        public User User;
        public List<PerGroup> Groups;
        public List<Resources> Resources;

        public UserFacade()
        {
            User user = new User();
            this.Groups = new List<PerGroup>();
            this.Resources = new List<Resources>();
        }
        public UserFacade(User user)
        {
            this.User = user;
            this.Groups = new List<PerGroup>();
            this.Resources = new List<Resources>();
        }
        public void Start()
        {
            //load list groups
            this.Groups = UserManagement.GetListGroupByUserID_Static(this.User.UserID);
            //load list resource
            foreach (PerGroup group in this.Groups)
            {
                List<Resources> rs = GroupManagement.GetListResourcesByGroupID_Static(group.GroupID);
                foreach(Resources r in rs)
                {
                    if (!this.Resources.Contains(r)) this.Resources.Add(r);
                }
            }
        }
    }
}