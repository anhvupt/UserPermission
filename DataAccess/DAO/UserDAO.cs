using Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess
{
    public class UserDAO
    {
        public static List<User> GetAll()
        {
            return CBO.FillCollection<User>(DataProvider.Instance.ExecuteReader("User_All"));
        }
        public static User Single(string Id)
        {
            return CBO.FillObject<User>(

            DataProvider.Instance.ExecuteReader("User_Single", Convert.ToInt32(Id)));
        }
        public static int Add(User data)
        {
            object rs =
            DataProvider.Instance.ExecuteNonQueryWithOutput("@UserID", "User_Insert",
            data.UserID, data.UserName, data.Password);
            int identity = rs != null ? Convert.ToInt32(rs) : 0;
            return identity;
        }
        public static bool Update(User data)
        {
            int rs = DataProvider.Instance.ExecuteNonQuery("User_Update",
            data.UserID, data.UserName, data.Password);
            return rs > 0;
        }
        public static bool Delete(string UserId)
        {
            try
            {
                int rs = DataProvider.Instance.ExecuteNonQuery("User_Delete",
                Convert.ToInt32(UserId));
                return rs > 0;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public static User Check_Login(string userName, string password)
        {
            return CBO.FillObject<User>(DataProvider.Instance.ExecuteReader("User_Check_Login",
                userName, password));
        }
        public static int CountByUserName(string userName)
        {
            return (int)DataProvider.Instance.ExecuteScalar("User_Count_UserName", userName);
        }
    }
}
