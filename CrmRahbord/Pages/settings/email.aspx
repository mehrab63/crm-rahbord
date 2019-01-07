<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/SiteMaster.Master" AutoEventWireup="true" CodeBehind="email.aspx.cs" Inherits="CrmRahbord.Pages.email" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/mainstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="actionpagepanel" runat="server">
      <div class="page-actions-panel" style="direction:rtl">
                <div style="direction: rtl">
                    <ul class="list-inline " style="padding-right: 0px">
                        <li style="text-align: right; font-weight: 200"><a href="/settings">تنظیمات مدیریتی </a></li>
                        <li class="active" style="color:#808080"><span style="padding-right: 10px;padding-left: 10px;"><i class="fa fa-angle-left fa-lg"></i></span><strong>تنظیمات ایمیل</strong></li>
                    </ul>
                </div>

            </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="view view-l">
            <form class="ui-form">
                <div class="panel panel-default form-horizontal">
                    <div class="panel-body">
                        <h5 class="settings-header" style="font-size: 15px">ارسال خودکار ایمیل ها</h5>
                        <p class="pd-b-20">
                            <b>چرا باید ارسال خودکار را فعال کنید؟</b>
                            <br />
                            <ui>
                                <li>راهبرد به صورت خودکار سرنخ ها را از ایمیل های شما ایجاد میکند. و</li>
                                <li>شما میتوانید به تمام سرنخ ها به صورت مستقیم از راهبرد پاسخ دهید.</li>
                            </ui>
                            <br />
                            <b>نمونه ای از نحوه کارکرد آن</b>
                            <br />
                            اگر شما یک ایمیل، ایمیل فروش در زیر "تماس با ما" در وب سایت خود داشته باشید. در راهبرد به طور خودکار از هر ایمیل برای شما ایجاد می شود.
                        </p>
                        <div class="form-horizontal">
                            <div class="form-group row" style="direction: rtl">
                                <label class="control-label col-md-3">ارسال ایمیل های شما به </label>
                                <div class="pull-left"><button>کپـی</button></div>
                                <div class="col-md-5"><div class="form-conrol" aria-readonly="true">sals@rahbord.org</div></div>
                                
                            </div>
                            <p>لیست ایمیل های فروش:</p>


                        </div>
                        <table>
                            <tbody></tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="3">
                                        <a class="add-item"><i class="fa fa-plus-circle"></i>اضافه کردن آدرس ایمیل</a>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </form>
        </div>
        <div class="view view-s view--settings">
            <div class="panel panel-default" style="margin: 0px">
                <div class="panel-body pd-vt-0">
                    <div class="settings-details affix cf-drag-wrapper " style="padding: 0 0px 15px 30px;">
                        <h5 class="settings-details-title"><strong>تنظیمات ایمیل</strong> </h5>
                        <p style="font-size: 12px;">راهبرد به هر حساب پیشفرض فروش یه آدرس ایمیل میدهد.</p>
                        <p style="font-size: 12px;">آدرس ایمیل برای حساب شما: <strong>Email Addres ...</strong></p>
                        <p style="font-size: 12px;">هر ایمیل فرستاده شده به صورت خودکار به عنوان یک مکالمه به رکورد مرتبط در راهبرد به صورت خودکار لینک می شود.</p>
                        <p style="font-size: 12px;">اگر فرستنده در سیستم نباشد، سرنخ جدید به طور خودکار ایجاد شده و ایمیل به آن اختصاص داده می شود.</p>
                        <p style="font-size: 12px;">اگر فرستنده در راهبرد حضور داشته باشد، می توانید این ایمیل را به تمام سوابق یا قدیمی ترین سابقه  موجود یا به رکوردی که بیشترین فعالیت را دارد، مرتبط کنید.</p>
                        <p style="font-size: 12px;"><a>محدودیت های روزانه ایمیل من چیست؟</a></p>
                    </div>
                </div>
            </div>
        </div>
        
   
</asp:Content>
