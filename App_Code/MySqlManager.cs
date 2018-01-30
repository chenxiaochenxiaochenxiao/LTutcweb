using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.IO;
using System.Xml;
using MySql.Data.MySqlClient;

/// <summary>
/// MySqlManager 的摘要说明
/// </summary>
public class MySqlManager
{
    public MySqlManager()
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

            ConnectStr = "Server=" + ServerIP + ";" +
                         "Port=" + ServerPort + ";" +
                         "Database=" + DBName + ";" +
                         "charset=gb2312;" +
                         "UserName=" + DBUsr + ";" +
                         "Password=" + DBPwd;

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

    //执行sql并得到数据集
    public bool openSql(ref DataSet ds, string sqlstr)
    {
        MySqlConnection DBConnect = null;
        try
        {
            if (!getConnectString())
                return false;

            DBConnect = new MySqlConnection(ConnectStr);

            //执行SQL取数据集
            MySqlDataAdapter da = new MySqlDataAdapter(sqlstr, DBConnect);
            da.Fill(ds);

            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            DBConnect.Close();
        }
    }

    //执行无返回值的Sql
    public bool executeSql(string sqlstr)
    {
        MySqlConnection DBConnect = null;
        try
        {
            if (!getConnectString())
                return false;

            DBConnect = new MySqlConnection(ConnectStr);
            DBConnect.Open();

            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = DBConnect;

            //执行SQL语句
            cmd.CommandText = sqlstr;
            cmd.ExecuteNonQuery();

            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            DBConnect.Close();
        }
    }
}