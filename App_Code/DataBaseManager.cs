using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;

/// <summary>
/// DataBaseManager 的摘要说明
/// </summary>
public class DataBaseManager
{
    public DataBaseManager()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public const string DataSourceType_Oracle = "Oracle";
    public const string DataSourceType_MySql = "MySql";

    public string DataSourceType;

    public DataBaseManager(string DataBaseType)
    {
        if (DataBaseType.ToUpper() == DataSourceType_Oracle.ToUpper())
            DataSourceType = DataSourceType_Oracle;
        else if (DataBaseType.ToUpper() == DataSourceType_MySql.ToUpper())
            DataSourceType = DataSourceType_MySql;
        else
            DataSourceType = "ErrorInput";
    }

    public bool openSql(ref DataSet ds, string sqlstr)
    {
        if (DataSourceType == DataSourceType_MySql)
        {
            MySqlManager msm = new MySqlManager();
            return msm.openSql(ref ds, sqlstr);
        }
        else if (DataSourceType == DataSourceType_Oracle)
        {
            OracleManager om = new OracleManager();
            return om.openSql(ref ds, sqlstr);
        }
        else
        {
            return false;
        }
    }

    public bool executeSql(string sqlstr)
    {
        if (DataSourceType == DataSourceType_MySql)
        {
            MySqlManager msm = new MySqlManager();
            return msm.executeSql(sqlstr);
        }
        else if (DataSourceType == DataSourceType_Oracle)
        {
            OracleManager om = new OracleManager();
            return om.executeSql(sqlstr);
        }
        else
        {
            return false;
        }
    }
}