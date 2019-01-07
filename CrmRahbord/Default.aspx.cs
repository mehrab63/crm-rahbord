using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using CRMCore.Repository;
using System.Web.Security;

namespace CrmRahbord.Pages
{
    public partial class login : System.Web.UI.Page
    {
        Class_Users _Users = new Class_Users();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_click(object sender, EventArgs e)
        {
            //if(FormsAuthentication.Authenticate(UserName.Text, UserPass.Text))
            //{
            //    FormsAuthentication.RedirectFromLoginPage(UserName.Text, CheckBox_login.Checked);
            //}
            //else
            //{
            //    lblError.Text = "نام کاربری یا کلمه عبور درست نیست";
            //}
            if (Page.IsValid == false) return;
            DataTable userDt = _Users.AuthenticateUser(UserName.Text, UserPass.Text);
            if (userDt == null)
            {
                lblError.Visible = true;
                lblError.Text = "نام کاربری یا کلمه عبور درست نیست";
                UserName.Text = "";
                UserPass.Text = "";
                return;
            }
            if (userDt.Rows.Count == 0)
            {
                lblError.Visible = true;
                lblError.Text = "نام کاربری یا کلمه عبور درست نیست";
                UserName.Text = "";
                UserPass.Text = "";
                return;
            }
            if (CheckBox_login.Checked)
            {
                HttpCookie cookie = new HttpCookie("CurrntUser");
                cookie.Value = Class_Statics.Encrypt(UserName.Text + "|" + UserPass.Text, "SET!@#");
                cookie.Expires = DateTime.Now.AddDays(30);
                Response.SetCookie(cookie);
            }

            FormsAuthentication.SetAuthCookie(UserName.Text, CheckBox_login.Checked);

            FormsAuthentication.RedirectFromLoginPage("WebUserPortal", CheckBox_login.Checked);
            Session["CurrentUser"] = userDt;
            //Response.Redirect("/Pages/index.aspx");
        }
    }
}