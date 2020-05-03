using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyTaiNguyen_PhanQuyen.Models
{
    public class UserManagement
    {
        public User User = new User();
        public List<PerGroup> Groups = new List<PerGroup>();
        public UserManagement() { }
        public UserManagement(User user, List<PerGroup> perGroups)
        {
            this.User = user;
            this.Groups = perGroups;
        }
        public void GetListGroupByUserID(int userID) {
            List<UserGroup> userGroups = UserGroupDAO.GetByUserID(userID);
            foreach(UserGroup userGroup in userGroups)
            {
                PerGroup group = PerGroupDAO.Single(userGroup.UserID.ToString());
                if (!this.Groups.Contains(group)) this.Groups.Add(group);
            }
        }
        public static List<PerGroup> GetListGroupByUserID_Static(int userID)
        {
            List<PerGroup> result = new List<PerGroup>();
            List<UserGroup> userGroups = UserGroupDAO.GetByUserID(userID);
            foreach (UserGroup userGroup in userGroups)
            {
                PerGroup group = PerGroupDAO.Single(userGroup.GroupID.ToString());
                if (!result.Contains(group)) result.Add(group);
            }
            return result;
        }

    }

}