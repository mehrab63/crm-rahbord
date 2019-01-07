using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using CRMCore.Repository;
using System.Data.Sql;

namespace CRMCore.Repository
{
    public class Class_Ado
    {
        public DataTable FillDataTable(string query)
        {
            SqlConnection cnn = new SqlConnection(Properties.Settings.Default.myconn);

            try
            {
                query = Class_Statics.ConvertAscii(query);
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = query;
                cmd.CommandType = CommandType.Text;
                cmd.CommandTimeout = 9999999;
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);

                if (dt.TableName == "")
                {
                    dt.TableName = "TblData";
                }
                cnn.Close();
                return dt;
            }
            catch (Exception ex)
            {

                return null;
            }
            finally
            {
                cnn.Close();
                cnn.Dispose();
            }
        }
        public DataTable FillDataTable(string query,List<ColumnDataType> _params)
        {
            SqlConnection cnn = new SqlConnection(Properties.Settings.Default.myconn);

            try
            {
                query = Class_Statics.ConvertAscii(query);
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;
                cmd.CommandText = query;
                cmd.CommandType = CommandType.Text;
                cmd.CommandTimeout = 9999999;

                foreach(var _param in _params)
                {
                    if (_param.ColumnType == SqlDbType.Image)
                    {
                        cmd.Parameters.Add("@" + _param.ColumnName.Replace(" ", "_"), _param.ColumnType).Value = Class_Statics.GetBytes(_param.ColumnValue);
                    }
                    else if (_param.ColumnType == SqlDbType.UniqueIdentifier)
                    {
                        cmd.Parameters.Add("@" + _param.ColumnName.Replace(" ", "_"), _param.ColumnType).Value = new System.Data.SqlTypes.SqlGuid(_param.ColumnValue);

                    }
                    else if (_param.ColumnValue == null)
                    {
                        cmd.Parameters.Add("@" + _param.ColumnName.Replace(" ", "_"), _param.ColumnType).Value = DBNull.Value;
                    }
                    else
                    {
                        cmd.Parameters.Add("@" + _param.ColumnName.Replace(" ", "_"), _param.ColumnType).Value = _param.ColumnValue;
                    }
                }
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);

                if (dt.TableName == "")
                {
                    dt.TableName = "TblData";
                }
                cnn.Close();
                return dt;
            }
            catch (Exception ex)
            {

                return null;
            }
            finally
            {
                cnn.Close();
                cnn.Dispose();
            }
        }
        public DataTable FillDataTable(string cnnString, string query)
        {
            SqlConnection cnn = new SqlConnection(cnnString);

            try
            {

                cnn.Open();
                SqlDataAdapter dtr = new SqlDataAdapter();
                dtr.SelectCommand = new SqlCommand();
                dtr.SelectCommand.Connection = cnn;
                dtr.SelectCommand.CommandText = query;
                dtr.SelectCommand.CommandTimeout = 999999999;
                DataTable dt = new DataTable();
                dt.TableName = "TblData";
                dtr.Fill(dt);
                cnn.Close();
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
            finally
            {
                cnn.Close();
                cnn.Dispose();
            }
        }
        public bool ExecuteCommand(string query)
        {
            SqlConnection cnn = new SqlConnection(Class_Statics.MasterConnectionString);
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = cnn;
                cmd.CommandTimeout = 999999999;
                cmd.ExecuteNonQuery();
                cnn.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                cnn.Close();
                cnn.Dispose();
            }
        }
        public bool ExecuteCommand(string cnnString, string query)
        {
            SqlConnection cnn = new SqlConnection(cnnString);
            try
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = cnn;
                cmd.ExecuteNonQuery();
                cnn.Close();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
                cnn.Close();
                cnn.Dispose();
            }
        }

        public InsertUpdateResult InsertDatabaseRecord(string cnnString, string tableName, List<ColumnDataType> columns, bool OffIdentity = false)
        {
            SqlConnection cnn = new SqlConnection();
            InsertUpdateResult result = new InsertUpdateResult();

            try
            {
                cnn.ConnectionString = cnnString;
                cnn.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;


                string fields = "(";
                string values = "(";
                cmd.Parameters.Clear();
                foreach (var col in columns)
                {
                    fields += "[" + col.ColumnName + "],";
                    values += "@" + col.ColumnName.Replace(" ", "_") + ",";


                    if (col.ColumnType == SqlDbType.Image)
                    {
                        cmd.Parameters.Add("@" + col.ColumnName.Replace(" ", "_"), col.ColumnType).Value = Class_Statics.GetBytes(col.ColumnValue);
                    }
                    else if (col.ColumnType == SqlDbType.UniqueIdentifier)
                    {
                        cmd.Parameters.Add("@" + col.ColumnName.Replace(" ", "_"), col.ColumnType).Value = new System.Data.SqlTypes.SqlGuid(col.ColumnValue);

                    }
                    else if (col.ColumnValue == null)
                    {
                        cmd.Parameters.Add("@" + col.ColumnName.Replace(" ", "_"), col.ColumnType).Value = DBNull.Value;
                    }
                    else
                    {
                        cmd.Parameters.Add("@" + col.ColumnName.Replace(" ", "_"), col.ColumnType).Value = col.ColumnValue;
                    }


                }

                fields = fields.Substring(0, fields.Length - 1) + ")";
                values = values.Substring(0, values.Length - 1) + ")";

                if (OffIdentity == true)
                {


                    cmd.CommandText = "SET IDENTITY_INSERT {0} ON Insert Into {0} {1} values {2} SET IDENTITY_INSERT {0} OFF;select scope_identity()";
                }
                else
                {
                    cmd.CommandText = "Insert Into {0} {1} values {2};select scope_identity()";
                }
                cmd.CommandText = cmd.CommandText.Replace("{0}", tableName);
                cmd.CommandText = cmd.CommandText.Replace("{1}", fields);
                cmd.CommandText = cmd.CommandText.Replace("{2}", values);

                result.Identity = int.Parse(cmd.ExecuteScalar().ToString());
                result.ErrorMessage = null;



                try
                {
                    if (tableName.ToLower() != "Tbl_Sms_Spools".ToLower() && tableName.ToLower() != "Tbl_Sms_Status".ToLower())
                    {


                        DataTable dtPrimaryKeyFieldName = FillDataTable("SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE OBJECTPROPERTY(OBJECT_ID(CONSTRAINT_SCHEMA + '.' + CONSTRAINT_NAME), 'IsPrimaryKey') = 1 AND TABLE_NAME = '" + tableName + "'");
                        if (dtPrimaryKeyFieldName.Rows.Count > 0)
                        {
                            cmd.CommandText = "Insert Into Tbl_Replication (CreateDate,TableName,PrimaryKeyName,PrimaryKeyId,Mode) values (getdate(),'" + tableName + "','" + dtPrimaryKeyFieldName.Rows[0][0].ToString() + "'," + result.Identity.ToString() + ",0)";
                            cmd.ExecuteNonQuery();

                        }
                    }
                }
                catch
                {

                }
                return result;
            }
            catch (Exception ex)
            {
                result.Identity = 0;
                result.ErrorMessage = ex;
                return result;
            }
            finally
            {
                cnn.Close();
                cnn.Dispose();
            }
        }

        public InsertUpdateResult UpdateDatabaseRecord(string cnnString, string tableName, List<ColumnDataType> columns, string PrimaryFieldName, string PrimaryFieldValue)
        {
            SqlConnection cnn = new SqlConnection();
            InsertUpdateResult result = new InsertUpdateResult();

            try
            {
                cnn.ConnectionString = cnnString;
                cnn.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = cnn;


                string fields = "";
                cmd.Parameters.Clear();

                foreach (var col in columns)
                {
                    fields += "[" + col.ColumnName + "]=@" + col.ColumnName.Replace(" ", "_") + ",";




                    if (col.ColumnType == SqlDbType.Image)
                    {
                        cmd.Parameters.Add("@" + col.ColumnName.Replace(" ", "_"), col.ColumnType).Value = Class_Statics.GetBytes(col.ColumnValue);
                    }
                    else if (col.ColumnType == SqlDbType.UniqueIdentifier)
                    {
                        cmd.Parameters.Add("@" + col.ColumnName.Replace(" ", "_"), col.ColumnType).Value = new System.Data.SqlTypes.SqlGuid(col.ColumnValue);

                    }
                    else if (col.ColumnValue == null)
                    {
                        cmd.Parameters.Add("@" + col.ColumnName.Replace(" ", "_"), col.ColumnType).Value = DBNull.Value;
                    }
                    else
                    {
                        cmd.Parameters.Add("@" + col.ColumnName.Replace(" ", "_"), col.ColumnType).Value = col.ColumnValue;
                    }
                }

                fields = fields.Substring(0, fields.Length - 1);



                cmd.CommandText = "update {0} set {1} where {2} = {3}";
                cmd.CommandText = cmd.CommandText.Replace("{0}", tableName);
                cmd.CommandText = cmd.CommandText.Replace("{1}", fields);
                cmd.CommandText = cmd.CommandText.Replace("{2}", "[" + PrimaryFieldName + "]");
                cmd.CommandText = cmd.CommandText.Replace("{3}", PrimaryFieldValue);


                int affectedRows = cmd.ExecuteNonQuery();
                //result.Identity = null;
                result.Identity = int.Parse(PrimaryFieldValue);
                result.ErrorMessage = null;

                try
                {
                    if (tableName.ToLower() != "Tbl_Sms_Spools".ToLower() && tableName.ToLower() != "Tbl_Sms_Status".ToLower())
                    {



                        cmd.CommandText = "Insert Into Tbl_Replication (CreateDate,TableName,PrimaryKeyName,PrimaryKeyId,Mode) values (getdate(),'" + tableName + "','" + PrimaryFieldName + "'," + PrimaryFieldValue + ",1)";
                        cmd.ExecuteNonQuery();


                    }
                }
                catch
                {

                }

                return result;
            }
            catch (Exception ex)
            {
                result.Identity = null;
                result.ErrorMessage = ex;
                return result;
            }
            finally
            {
                cnn.Close();
                cnn.Dispose();
            }
        }

    }

    public class ColumnDataType
    {
        public string ColumnName { get; set; }
        public SqlDbType ColumnType { get; set; }
        public string ColumnValue { get; set; }
    }

    public class InsertUpdateResult
    {
        public int? Identity { get; set; }
        public Exception ErrorMessage { get; set; }

    }
}