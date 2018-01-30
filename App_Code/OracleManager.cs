using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.IO;
using System.Xml;

/// <summary>
/// OracleManager 的摘要说明
/// </summary>
public class OracleManager
{
    public OracleManager()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    string ConnectStr;

    //从配置文件里取数据库连接字符串
    public bool getConnectString()
    {
        try
        {
            string ServerIP = "121.41.89.162";
            string ServerPort = "3306";
            string DBName = "utcs_web";
            string DBUsr = "root";
            string DBPwd = "ltgsadmin";

            ConnectStr = "";
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {

        }
    }

    public bool openSql(ref DataSet ds, string sqlstr)
    {
        return true;
    }

    public bool executeSql(string sqlstr)
    {
        return true;
    }
}