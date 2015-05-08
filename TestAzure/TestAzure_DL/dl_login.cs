using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.DataAccess.Client;
using System.Data;
using System.Configuration;

namespace TestAzure_DL
{
    public class dl_login
    {
        private static String conStr = System.Configuration.ConfigurationManager.ConnectionStrings["ora_sico_mancal"].ConnectionString;

        public String selectValidaLogin(String usr, String pwd)
        {
            String valida = "";

            using (OracleConnection con = new OracleConnection(conStr))
            {
                con.Open();
                String qry = "FN_TEST_VALIDA_LOGIN";
                using (OracleCommand cmd = new OracleCommand(qry, con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.Add(new OracleParameter("VALIDADOR", OracleDbType.Varchar2, 100)).Direction = ParameterDirection.ReturnValue;

                    cmd.Parameters.Add(new OracleParameter("USRNICK", OracleDbType.Varchar2)).Value = usr;
                    cmd.Parameters["USRNICK"].Direction = ParameterDirection.Input;

                    cmd.Parameters.Add(new OracleParameter("USRPASSWD", OracleDbType.Varchar2)).Value = pwd;
                    cmd.Parameters["USRPASSWD"].Direction = ParameterDirection.Input;

                    cmd.ExecuteNonQuery();

                    valida = cmd.Parameters["VALIDADOR"].Value.ToString();
                }
                con.Close();
            }

            return valida;
        }
    }
}