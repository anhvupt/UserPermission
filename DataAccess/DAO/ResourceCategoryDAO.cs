using Core;
using DataAccess.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.DAO
{
    public class ResourceCategoryDAO
    {
        public static List<ResourceCategory> GetAll()
        {
            return CBO.FillCollection<ResourceCategory>(DataProvider.Instance.ExecuteReader("ResourceCategory_All"));
        }
        public static ResourceCategory Single(string Id)
        {
                return CBO.FillObject<ResourceCategory>(

                DataProvider.Instance.ExecuteReader("RecourceCategory_Single", Convert.ToInt32(Id)));
        }
        public static int Add(ResourceCategory data)
        {
            object rs =
            DataProvider.Instance.ExecuteNonQueryWithOutput("@ID", "RecourceCategory_Insert",
            data.ID, data.Name, data.Description);
            int identity = rs != null ? Convert.ToInt32(rs) : 0;
            return identity;
        }
        public static bool Update(ResourceCategory data)
        {
            int rs = DataProvider.Instance.ExecuteNonQuery("RecourceCategory_Update",
            data.ID, data.Name, data.Description);
            return rs > 0;
        }
        public static bool Delete(string ResourceCategoryId)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("RecourceCategory_Delete",
                Convert.ToInt32(ResourceCategoryId));
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
