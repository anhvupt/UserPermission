using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyTaiNguyen_PhanQuyen.Models
{
    public class GroupManagement
    {
        public PerGroup PerGroup = new PerGroup();
        public List<Resources> Resources = new List<Resources>();
        public GroupManagement() { }
        public GroupManagement(PerGroup group, List<Resources>resources)
        {
            this.PerGroup = group;
            this.Resources = resources;
        }
        public void GetListResourcesByGroupID(int groupId)
        {
            List<GroupResources> groupResources = GroupResourcesDAO.GetByGroupID(groupId);
            foreach (GroupResources gr in groupResources)
            {
                Resources r = ResourcesDAO.Single(gr.RecourceID.ToString());
                if (!this.Resources.Contains(r)) this.Resources.Add(r);
            }
        }
        public static List<Resources> GetListResourcesByGroupID_Static(int groupId)
        {
            List<Resources> result = new List<Resources>();
            List<GroupResources> groupResources = GroupResourcesDAO.GetByGroupID(groupId);
            foreach (GroupResources gr in groupResources)
            {
                Resources r = ResourcesDAO.Single(gr.RecourceID.ToString());
                if (!result.Contains(r)) result.Add(r);
            }
            return result;
        }
    }
}