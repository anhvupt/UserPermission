using Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess
{
    public class GroupResourcesDAO
    {
        public static List<GroupResources> getAll()
        {
            return CBO.FillCollection<GroupResources>(DataProvider.Instance.ExecuteReader("GroupResources_All"));
        }
        public static int Add(GroupResources data)
        {
            object rs =
            DataProvider.Instance.ExecuteNonQueryWithOutput("@GroupResourcesID", "GroupResources_Insert",
            data.GroupResourcesID, data.GroupID, data.RecourceID);
            int identity = rs != null ? Convert.ToInt32(rs) : 0;
            return identity;
        }
        public static bool Update(GroupResources data)
        {
            int rs = DataProvider.Instance.ExecuteNonQuery("GroupResources_Update",
            data.GroupResourcesID, data.GroupID, data.RecourceID);
            return rs > 0;
        }
        public static bool Delete(string GroupResourcesId)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("GroupResources_Delete",
                Convert.ToInt32(GroupResourcesId));
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public static List<GroupResources> GetByGroupID(int groupId)
        {
            return CBO.FillCollection<GroupResources>(DataProvider.Instance.ExecuteReader("GroupResources_Get_ByGroupID", groupId));
        }
    }
}
