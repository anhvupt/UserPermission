using Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess
{
    public class PerGroupDAO
    {
        public static List<PerGroup> getAll()
        {
            return CBO.FillCollection<PerGroup>(DataProvider.Instance.ExecuteReader("PerGroup_All"));
        }
        public static PerGroup Single(string Id)
        {
            return CBO.FillObject<PerGroup>(

            DataProvider.Instance.ExecuteReader("PerGroup_Single", Convert.ToInt32(Id)));
        }
        public static int Add(PerGroup data)
        {
            object rs =
            DataProvider.Instance.ExecuteNonQueryWithOutput("@GroupID", "PerGroup_Insert",
            data.GroupID, data.Name, data.Description);
            int identity = rs != null ? Convert.ToInt32(rs) : 0;
            return identity;
        }
        public static bool Update(PerGroup data)
        {
            int rs = DataProvider.Instance.ExecuteNonQuery("PerGroup_Update",
            data.GroupID, data.Name, data.Description);
            return rs > 0;
        }
        public static bool Delete(string PerGroupId)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("PerGroup_Delete",
                Convert.ToInt32(PerGroupId));
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
