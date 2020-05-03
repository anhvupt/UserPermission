using Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess
{
    public class UserGroupDAO
    {
        public static List<UserGroup> getAll()
        {
            return CBO.FillCollection<UserGroup>(DataProvider.Instance.ExecuteReader("UserGroup_All"));
        }
        public static int Add(UserGroup data)
        {
            object rs =
            DataProvider.Instance.ExecuteNonQueryWithOutput("@UserGroupID", "UserGroup_Insert",
            data.UserGroupID, data.UserID, data.GroupID);
            int identity = rs != null ? Convert.ToInt32(rs) : 0;
            return identity;
        }
        public static bool Update(UserGroup data)
        {
            int rs = DataProvider.Instance.ExecuteNonQuery("UserGroup_Update",
            data.UserGroupID, data.UserID, data.GroupID);
            return rs > 0;
        }
        public static bool Delete(string UserGroupId)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("UserGroup_Delete",
                Convert.ToInt32(UserGroupId));
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public static List<UserGroup> GetByUserID(int userId)
        {
            return CBO.FillCollection<UserGroup>(DataProvider.Instance.ExecuteReader("UserGroup_Get_ByUserID", userId));
        }
    }
}

