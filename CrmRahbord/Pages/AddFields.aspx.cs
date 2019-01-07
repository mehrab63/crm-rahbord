using CRMCore.Repository;
using System;
using System.Collections.Generic;
using System.Data;

namespace CrmRahbord.Pages
{
    public partial class AddFields : System.Web.UI.Page
    {
        Class_Ado _ado = new Class_Ado();
        protected void Page_Load(object sender, EventArgs e)
        { 
            
            if (DropDownList1.SelectedIndex == 0)
            {
               // txtsiz.Visible = false;
            }
        }

        protected void btnCreateField_Click(object sender, EventArgs e)
        {
            string query="",fieldname="",fieldsiz="";
             string fieldtype="";
            int type;
            type = DropDownList1.SelectedIndex;
            fieldname = txtname.Text;
            fieldsiz = txtsiz.Text;
            switch (type)
            {
                case 0:
                    fieldtype = "varchar";
                    query = " ALTER TABLE Tbl_Customers ADD  [" + fieldname + "] " + fieldtype + "(" + fieldsiz + ")";//test
                    break;
                case 1:
                    fieldtype = "varchar";
                    query = " ALTER TABLE Tbl_Customers ADD  [" + fieldname + "] " + fieldtype + "(" + fieldsiz + ")";//test
                    break;
                case 2:
                    fieldtype = "int";
                    query = " ALTER TABLE Tbl_Customers ADD  [" + fieldname + "] " + fieldtype + "";//test
                    break;
                case 3:
                    fieldtype = "varchar";
                    query = " ALTER TABLE Tbl_Customers ADD  [" + fieldname + "] " + fieldtype + "(" + fieldsiz + ")";//test
                    break;
                case 4:
                    fieldtype = "bit";
                    query = " ALTER TABLE Tbl_Customers ADD  [" + fieldname + "] " + fieldtype + "";//test
                    break;
                case 5:
                    fieldtype = "bit";
                    query = " ALTER TABLE Tbl_Customers ADD  [" + fieldname + "] " + fieldtype + "";//test
                    break;
                case 6:
                    fieldtype = "bit";
                    query = " ALTER TABLE Tbl_Customers ADD  [" + fieldname + "] " + fieldtype + "";//test
                    break;
                case 7:
                    fieldtype = "bit";
                    query = " ALTER TABLE Tbl_Customers ADD  [" + fieldname + "] " + fieldtype + "";//test
                    break;
            }
            
          
            List<ColumnDataType> collist = new List<ColumnDataType>();
            collist.Add(new ColumnDataType { ColumnName = "Name", ColumnType = SqlDbType.VarChar, ColumnValue = fieldname });
            collist.Add(new ColumnDataType { ColumnName = "Type", ColumnType = SqlDbType.VarChar, ColumnValue = fieldtype });
            collist.Add(new ColumnDataType { ColumnName = "Length", ColumnType = SqlDbType.VarChar, ColumnValue = fieldsiz });
            collist.Add(new ColumnDataType { ColumnName = "RelatedTable", ColumnType = SqlDbType.VarChar, ColumnValue = "Tbl_Customers" });
            try
            {
                if (_ado.ExecuteCommand(query)==true)
                {
                    
                    Label1.Text = "Create Table Is OK";
                    _ado.InsertDatabaseRecord(Properties.Settings.Default.myconn, "Tbl_Customer_Fields", collist, false);
                    txtname.Text = "";
                    txtsiz.Visible = false;
                }
            }
            catch (Exception m)
            {

                 Label1.Text=m.ToString();
            }
           

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 2)
            {
                txtsiz.Visible = false;
            }

        }
        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 2)
            {
                txtsiz.Visible = false;
            }
        }
    }
}