using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fleet1
{
    public class ServiceImpl:IService1
    {
        LoginInterface lo = new LoginInterfaceImpl();
        public void  SetData(int userId, string pass, string role)
        {
           return  lo.SetMyData(userId, pass, role);
        }
    }
}