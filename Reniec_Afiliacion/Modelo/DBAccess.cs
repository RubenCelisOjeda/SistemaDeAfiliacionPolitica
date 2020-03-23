using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DataTierGenerator;


namespace Data.Access.Layer
{
    public class DBAccess : IDisposable
    {
        private SqlCommand cmd = new SqlCommand();
        private string strConnectionString = "";
        private bool handleErrors = false;
        private string strLastError = "";

        public DBAccess()
        {
            strConnectionString = DConnectionString.Istance.connectionString;

            SqlConnection cnn = new SqlConnection();
            cnn.ConnectionString = strConnectionString;
            cmd.Connection = cnn;
            cmd.CommandType = CommandType.StoredProcedure;
        }

        public IDataReader ExecuteReader()
        {
            IDataReader reader = null;
            try
            {
                this.Open();
                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            return reader;
        }

        public IDataReader ExecuteReader(string commandtext)
        {
            IDataReader reader = null;
            try
            {
                cmd.CommandText = commandtext;
                reader = this.ExecuteReader();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }
            return reader;
        }

        public object ExecuteScalar()
        {
            object obj = null;
            try
            {
                this.Open();
                obj = cmd.ExecuteScalar();
                this.Close();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }
            return obj;
        }

        public object ExecuteScalar(string commandtext)
        {
            object obj = null;
            try
            {
                cmd.CommandText = commandtext;
                obj = this.ExecuteScalar();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }
            return obj;
        }

        public int ExecuteNonQuery()
        {
            int i = -1;
            try
            {
                this.Open();
                i = cmd.ExecuteNonQuery();
                this.Close();
                i = 1;
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }
            return i;
        }

        public int ExecuteNonQuery(string commandtext)
        {
            int i = -1;
            try
            {
                cmd.CommandText = commandtext;
                i = this.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }
            return i;
        }

        public DataTable ExecuteDataTable()
        {
            SqlDataAdapter da = null;
            DataTable dt = null;

            try
            {
                da = new SqlDataAdapter();
                da.SelectCommand = (SqlCommand)cmd;
                dt = new DataTable();
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                if (handleErrors)
                {
                    strLastError = ex.Message;
                }
                else
                {
                    throw;
                }
            }
            catch
            {
                throw;
            }
            return dt;
        }

        public DataTable ExecuteDataTable(string commandtext)
        {
            DataTable dt = null;

            try
            {
                cmd.CommandText = commandtext;
                dt = this.ExecuteDataTable();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                {
                    strLastError = ex.Message;
                }
                else
                {
                    throw;
                }
            }
            catch
            {
                throw;
            }
            return dt;
        }

        public DataSet ExecuteDataSet()
        {
            IDbDataAdapter da = null;
            DataSet ds = null;
            try
            {
                da = new SqlDataAdapter();
                da.SelectCommand = (IDbCommand)cmd;
                ds = new DataSet();
                da.Fill(ds);
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }
            return ds;
        }

        public DataSet ExecuteDataSet(string commandtext)
        {
            DataSet ds = null;
            try
            {
                cmd.CommandText = commandtext;
                ds = this.ExecuteDataSet();
            }
            catch (Exception ex)
            {
                if (handleErrors)
                    strLastError = ex.Message;
                else
                    throw;
            }
            catch
            {
                throw;
            }
            return ds;
        }

        public string CommandText
        {
            get
            {
                return cmd.CommandText;
            }
            set
            {
                cmd.CommandText = value;
                cmd.Parameters.Clear();
            }
        }

        public IDataParameterCollection Parameters
        {
            get
            {
                return cmd.Parameters;
            }
        }

        public void AddParameter(string paramname, object paramvalue)
        {
            SqlParameter param = new SqlParameter(paramname, paramvalue);
            cmd.Parameters.Add(param);
        }

        public void AddParameterOutput(string paramname, object paramvalue)
        {
            SqlParameter param = new SqlParameter(paramname, paramvalue);
            param.Direction = ParameterDirection.InputOutput;
            cmd.Parameters.Add(param);
        }

        public int GetParameterOutputInt(string paramname)
        {
            return (int)cmd.Parameters[paramname].Value;
        }

        public string GetParameterOutputString(string paramname)
        {
            return (string)cmd.Parameters[paramname].Value;
        }

        public void AddParameter(IDataParameter param)
        {
            cmd.Parameters.Add(param);
        }

        public string ConnectionString
        {
            get
            {
                return strConnectionString;
            }
            set
            {
                strConnectionString = value;
            }
        }

        public void Open()
        {
            cmd.Connection.Open();
        }

        public void Close()
        {
            cmd.Connection.Close();
        }

        public bool HandleExceptions
        {
            get
            {
                return handleErrors;
            }
            set
            {
                handleErrors = value;
            }
        }

        public string LastError
        {
            get
            {
                return strLastError;
            }
        }

        public void Dispose()
        {
            cmd.Dispose();
        }
    }
}