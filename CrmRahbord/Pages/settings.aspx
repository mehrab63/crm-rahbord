<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/SiteMaster.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="CrmRahbord.Pages.settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../Styles/mainstyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Actionpage" ContentPlaceHolderID="actionpagepanel" runat="server">
            <div class="page-actions-panel" style="direction:rtl">
                <div style="direction:rtl">
                    <ul class="list-inline" style="padding:0px">
                        <li style="text-align:right; font-weight:200 ">تنظیمات مدیریتـی</li>
                    </ul>
                </div>

            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <div class="panel-body" style="direction:rtl;padding-top:0px;">
            <div class="settings-list-wrapper">
                <p class="hdr-lined"><span class="hdr-lined-txt">ایمیل و تلفن</span></p>
                <ul class="settings-list">
                    <li class="settings-list-item">
                        <a href="settings/email">
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>تنظیمات ایمیل</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>قالب ایمیل</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-phone-square fa-lg"></i></span>
                            <p>تنظیمات تلفن</p>
                        </a>
                    </li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <div class="settings-list-wrapper">
                <p class="hdr-lined"><span class="hdr-lined-txt">سفارشی سازی</span></p>
                <ul class="settings-list">
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>ماژول سفارشی سازی</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-user fa-lg"></i></span>
                            <p>ماژول سرنخ ها</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a href="settings/contacts">
                            <span><i class="fa fa-users fa-lg"></i></span>
                            <p>ماژول مشتریان </p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-user fa-lg"></i></span>
                            <p>ماژول حساب کاربری </p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-dollar fa-lg"></i></span>
                            <p>ماژول مالی </p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-line-chart fa-lg"></i></span>
                            <p>خط مسیرها </p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-dollar-sign fa-lg"></i></span>
                            <p>فعالیت های فروش</p>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="settings-list-wrapper">
                <p class="hdr-lined"><span class="hdr-lined-txt">اتوماسیون</span></p>
                <ul class="settings-list">
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>سفارشی سازی سرنخ ها</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>گردش کاری</p>
                        </a>
                    </li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <div class="settings-list-wrapper">
                <p class="hdr-lined"><span class="hdr-lined-txt">یکپارچه سازی</span></p>
                <ul class="settings-list">
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>فرم های وب</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>راهبرد برای وب</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-phone-square fa-lg"></i></span>
                            <p>اپلیکیشن ها</p>
                        </a>
                    </li>
                     <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-phone-square fa-lg"></i></span>
                            <p>راهبرد API</p>
                        </a>
                    </li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <div class="settings-list-wrapper">
                <p class="hdr-lined"><span class="hdr-lined-txt">ورود اطلاعات</span></p>
                <ul class="settings-list">
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>ورود سرنخ ها</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>ورود مشتریان</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-phone-square fa-lg"></i></span>
                            <p> ورود حساب های کاربری</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>ورود حساب ها</p>
                        </a>
                    </li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
            <div class="settings-list-wrapper">
                <p class="hdr-lined"><span class="hdr-lined-txt"> مهاجرت اطلاعات</span></p>
                <ul class="settings-list">
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>تنظیمات ایمیل</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>قالب ایمیل</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-phone-square fa-lg"></i></span>
                            <p>تنظیمات تلفن</p>
                        </a>
                    </li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
             <div class="settings-list-wrapper">
                <p class="hdr-lined"><span class="hdr-lined-txt">تنظیمات کاربـری</span></p>
                <ul class="settings-list">
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-envelope-o fa-lg"></i></span>
                            <p>قلمروها</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-users fa-lg"></i></span>
                            <p>کاربران</p>
                        </a>
                    </li>
                    <li class="settings-list-item">
                        <a>
                            <span><i class="fa fa-cogs fa-lg"></i></span>
                            <p>تنظیمات CRM</p>
                        </a>
                    </li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div>
   
    
</asp:Content>
