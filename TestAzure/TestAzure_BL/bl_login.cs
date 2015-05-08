using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TestAzure_DL;
using TestAzure_Clases;

namespace TestAzure_BL
{
    public class bl_login
    {
        dl_login objLogin;

        public String selValidaLogin(String usr, String pwd) 
        {
            String msg = "";
            objLogin = new dl_login();

            msg = objLogin.selectValidaLogin(usr, pwd);

            return msg;
        }
    }
}
