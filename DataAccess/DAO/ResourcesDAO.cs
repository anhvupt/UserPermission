using Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess
{
    public class ResourcesDAO
    {
        public static List<Resources> GetAll()
        {
            return CBO.FillCollection<Resources>(DataProvider.Instance.ExecuteReader("Resources_All"));
        }
        public static Resources Single(string Id)
        {
            return CBO.FillObject<Resources>(

            DataProvider.Instance.ExecuteReader("Resources_Single", Convert.ToInt32(Id)));
        }
        public static int Add(Resources data)
        {
            object rs =
            DataProvider.Instance.ExecuteNonQueryWithOutput("@ResourceID", "Resources_Insert",
            data.ResourceID, data.Name, data.CategoryID, data.NameMethod, data.Description, data.Icon);
            int identity = rs != null ? Convert.ToInt32(rs) : 0;
            return identity;
        }
        public static bool Update(Resources data)
        {
            int rs = DataProvider.Instance.ExecuteNonQuery("Resources_Update",
            data.ResourceID, data.Name, data.CategoryID, data.NameMethod, data.Description, data.Icon);
            return rs > 0;
        }
        public static bool Delete(string ResourcesId)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("Resources_Delete",
                Convert.ToInt32(ResourcesId));
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
