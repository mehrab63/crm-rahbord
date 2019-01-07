using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Reflection;
using CRMCore.Repository;
namespace CRMCore.Repository
{
    public class Class_Users
    {
        

        
        public DataTable AuthenticateUser(string UserName, string Password)
        {
            UserName = Class_Statics.RemoveInjection(UserName);
            Password = Class_Statics.RemoveInjection(Password);

            List<ColumnDataType> _cols = new List<ColumnDataType>();
            _cols.Add(new ColumnDataType { ColumnName = "UserName", ColumnType = SqlDbType.VarChar, ColumnValue = UserName });
            _cols.Add(new ColumnDataType { ColumnName = "Password", ColumnType = SqlDbType.VarChar, ColumnValue = Password });

            Class_Ado _clsAdo = new Class_Ado();
            return _clsAdo.FillDataTable("select top 1 * from Users where UserName=@UserName and Password=@Password", _cols);

        }
    }
}
