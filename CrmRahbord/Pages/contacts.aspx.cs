using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CRMCore.Repository;
using System.Data;

namespace CrmRahbord.Pages
{
    public partial class contacts1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        //public void ShowGrid()
        //{
        //    try
        //    {
        //        if (Class_Statics.GetPermission(2, true) == false)
        //        {
        //            return;
        //        }
        //        string fields = Class_Statics.CurrentUser["MemberGridSetting"].ToString();
        //        fields = fields.Replace("[select],", "");
        //        fields = fields.Replace(",[select]", "");
        //        if (fields == null)
        //        {
        //            if (FMessegeBox.FarsiMessegeBox.Show("خطا در نمایش ستون ها آیا تنظیمات به حالت پیش فرض برگردد ؟", "خطا", FMessegeBox.FMessegeBoxButtons.YesNo, FMessegeBox.FMessegeBoxIcons.Question) == System.Windows.Forms.DialogResult.Yes)
        //            {


        //                fields = "[کد یکتا], [وضعیت پرونده], مرحله, [وضعیت رسیدگی], [نوع پروانه], [تاریخ صدور], [تاریخ انقضاء], نام, [نام خانوادگی], [کد ملی], [شماره شناسنامه], رسته, [عنوان واحد صنفی], آدرس, [پلاک آبی], [پلاک ثبتی], [مبلغ بدهی],MemberId";
        //                _clsAdo.ExecuteCommand("update tbl_users set MemberGridSetting='" + fields + "' where UserId=" + Class_Statics.CurrentUser["UserId"].ToString());
        //            }
        //        }
        //        if (drp_page_count.Text == "تمامی موارد")
        //        {
        //            pageCount = 1000000;
        //        }
        //        else
        //        {
        //            pageCount = int.Parse(drp_page_count.Text);
        //        }
        //        int recordCount = 0;
        //        if (check_Makhtoomeh.Checked == false && StrSQL.IndexOf("[وضعیت پرونده] not like '%غیرفعال%'") == -1)
        //        {
        //            if (StrSQL == "")
        //            {
        //                StrSQL += "[وضعیت پرونده] not like '%غیرفعال%'";
        //            }
        //            else
        //            {
        //                StrSQL += " and [وضعیت پرونده] not like '%غیرفعال%'";
        //            }
        //        }
        //        DataTable result = _clsMember.GetAllMembers(fields, StrSQL, pageIndex, pageCount, StrSort, out recordCount);
        //        grid.SetDataBinding(result, "RootTable");
        //        grid.Tables[0].Columns.Clear();
        //        grid.Tables[0].Columns.Add("select");

        //        grid.Tables[0].Columns["select"].EditType = Janus.Windows.GridEX.EditType.CheckBox;
        //        grid.Tables[0].Columns["select"].ActAsSelector = true;
        //        grid.Tables[0].Columns["select"].Width = 30;
        //        foreach (DataColumn col in result.Columns)
        //        {
        //            Janus.Windows.GridEX.GridEXColumn newCol = new Janus.Windows.GridEX.GridEXColumn();
        //            newCol.DataMember = col.ColumnName;
        //            newCol.ColumnType = Janus.Windows.GridEX.ColumnType.Text;
        //            newCol.Caption = col.ColumnName.Replace('ی', 'ي');
        //            newCol.Key = col.ColumnName;
        //            if (col.ColumnName.ToLower() == "memberid" || col.ColumnName.ToLower() == "rownum")
        //            {
        //                newCol.Visible = false;
        //            }
        //            grid.Tables[0].Columns.Add(newCol);
        //        }
        //        totalCount = recordCount;
        //        lbl_rastehCount.Text = "تعداد موارد : " + recordCount;
        //        lbl_PageCount.Text = "(" + pageIndex + " / " + (totalCount / pageCount) + ")";
        //        timer1.Enabled = true;



        //        ShowGridByOrdersandSizes();


        //        FontSetting font = Class_Statics.GeWindowSetting(this.Name);
        //        if (font != null)
        //        {

        //            try
        //            {

        //                grid.Font = new System.Drawing.Font(font.FontName, font.FontSize, FontStyle.Regular);
        //            }
        //            catch
        //            {
        //                grid.Font = new System.Drawing.Font(font.FontName, font.FontSize, FontStyle.Bold);
        //            }
        //        }

        //    }
        //    catch (Exception ex)
        //    {
        //        MessageBox.Show(ex.Message);
        //        FMessegeBox.FarsiMessegeBox.Show("لطفا ستون های مورد نیاز خود را جهت نمایش تنظیم نمایید", "خطا", FMessegeBox.FMessegeBoxButtons.Ok, FMessegeBox.FMessegeBoxIcons.Exclamtion);
        //    }
        //}
        //public DataTable GetAllMembers(string fields, string strSql, int pageIndex, int PageCount, string order, out int recordCount)
        //{
        //    try
        //    {

        //        fields = Class_Statics.ConvertAscii(fields);
        //        order = Class_Statics.ConvertAscii(order);

        //        string query = "select * from (select ROW_NUMBER() Over (Order By  " + order + ") As RowNum," + fields + " from Tbl_Members {0}) tbl {2} {1}";
        //        //string query = "select * from (select ROW_NUMBER() Over (Order By  " + order + ") As RowNum," + fields + " from Tbl_Members {0}) {2} {1}";
        //        if (fields == string.Empty)
        //        {
        //            query = "select * from (select ROW_NUMBER() Over (Order By  " + order + ") As RowNum" + fields + " from Tbl_Members {0}) tbl {2} {1}";
        //            //query = "select * from (select ROW_NUMBER() Over (Order By  " + order + ") As RowNum" + fields + " from Tbl_Members {0}) {2} {1}";
        //        }
        //        string queryCount = "select count(*) from Tbl_Members {0}";


        //        if (strSql.Trim() != "") strSql = " where " + strSql;
        //        query = query.Replace("{0}", strSql);
        //        queryCount = queryCount.Replace("{0}", strSql);
        //        query = query.Replace("{1}", "order by " + order);

        //        if (pageIndex == 1)
        //        {
        //            query = query.Replace("{2}", " where RowNum between 1 and " + PageCount);
        //        }
        //        else
        //        {
        //            query = query.Replace("{2}", " where RowNum between " + ((pageIndex * PageCount) - PageCount + 1) + " and " + PageCount * pageIndex);
        //        }

        //        query = Class_Statics.ConvertAscii(query);

        //        DataTable dtCount = _clsAdo.FillDataTable(queryCount);
        //        recordCount = int.Parse(dtCount.Rows[0][0].ToString());
        //        return _clsAdo.FillDataTable(query);
        //    }
        //    catch
        //    {
        //        recordCount = 0;
        //        return null;
        //    }
        //}

    } 
 
    
}

    
