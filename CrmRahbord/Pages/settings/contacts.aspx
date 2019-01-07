<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/SiteMaster.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="CrmRahbord.Pages.contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <link href="../Styles/mainstyle.css" rel="stylesheet" />
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="actionpagepanel" runat="server">
    <div class="page-actions-panel" style="direction: rtl">
        <div style="direction: rtl">
            <ul class="list-inline " style="padding-right: 0px">
                <li style="text-align: right; font-weight: 200"><a href="/settings">تنظیمات مدیریتی </a></li>
                <li class="active" style="color: #808080"><span style="padding-right: 10px; padding-left: 10px;"><i class="fa fa-angle-left fa-lg"></i></span><strong>مشتریـان</strong></li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class=" view view-l ">
            <div class="panel panel-default panel--custom-fields" style="margin: 0px">
                <div class="panel-body pd-0">
                    <div class="field-wrapper">
                        <div class="field-section" style="font-size: 13px">
                            <ul class="list-field-category ui-sortable-handle" style="padding-right: 0px; margin-bottom: 8px;">
                                <li class="ui-state-default ui-sortable-handle">
                                    <div class="text-default list-field-category-item active">
                                        <div class="tr-action"><i class="fa fa-th"></i></div>
                                        <div class="text-ellipsis">اطلاعات پایه</div>
                                        <ul class="options-list" style="left: 0px">
                                            <li class="options-list-item">
                                                <a class="options-list-item-link"><i class="fa fa-trash"></i></a>
                                            </li>
                                            <li class="options-list-item">
                                                <a class="options-list-item-link"><i class="fa fa-edit"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="ui-state-default ui-sortable-handle">
                                    <div class="text-default list-field-category-item ">
                                        <div class="tr-action"><i class="fa fa-th"></i></div>
                                        <div class="text-ellipsis">اطلاعات اضافه</div>
                                        <ul class="options-list" style="left: 0px">
                                            <li class="options-list-item">
                                                <a class="options-list-item-link"><i class="fa fa-trash"></i></a>
                                            </li>
                                            <li class="options-list-item">
                                                <a class="options-list-item-link"><i class="fa fa-edit"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="ui-state-default ui-sortable-handle">
                                    <div class="text-default list-field-category-item ">
                                        <div class="tr-action"><i class="fa fa-th"></i></div>
                                        <div class="text-ellipsis">سفارشـی</div>
                                        <ul class="options-list" style="left: 0px">
                                            <li class="options-list-item">
                                                <a class="options-list-item-link"><i class="fa fa-trash"></i></a>
                                            </li>
                                            <li class="options-list-item">
                                                <a class="options-list-item-link"><i class="fa fa-edit"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                            <ul class="list-inline text-center clearfix">
                                <li class="col-md-6">
                                    <a class="add-item" id="addfield" data-ember-action="" onclick="addFeild()"><i class="fa fa-plus-circle"></i>فیـلد</a>
                                </li>
                                <li class="col-md-6">
                                    <a class="add-item"><i class="fa fa-plus-circle"></i>گـروه</a>
                                </li>
                            </ul>
                        </div>
                        <div class="field-list">
                            <div class="field-list-wrapper">
                                <div id="testii">test</div>
                                <ul class="list-unstyled list-field list-field--container section ui-sortable-handle">
                                    <li class="list-field-empty-placeholder">
                                        <div>فیلد مورد نظر را به اینجا بکشید</div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class=" view view-s ">
            <div class="panel panel-default" style="margin: 0px">
                <div class="panel-body pd-vt-0">
                    <div class="settings-details affix cf-drag-wrapper " style="padding: 0 0px 15px 30px;">
                        <h5 class="settings-details-title"><strong>اضافه کردن فیلد سفارشی</strong> </h5>
                        <p style="font-size: 12px;">
                            برای سازماندهی فرم گروه اضافه کنید
هر نوع فیلد را به یک گروه کشانده و رها کنید.<br />
                            حداکثر تعداد فیلدها: 300
                        </p>
                        <a class="media-capsule mg-b-15">
                            <span class="media-capsule-preview"><i class="fa fa-play fa-lg"></i></span>
                            <span class="media-capsule-text strong" style="padding-left: 0px; padding-right: 15px; font-size: 12px">آموزش سفارشی سازی و طرح بندی</span>
                        </a>
                        <ul class="cf-drag-area">
                            <li class="ui-state-default cf-draggable ui-draggable ui-draggable-handle">
                                <i class="fa fa-text-height fa-lg"></i>
                                <div class="small">کادر متنی</div>
                            </li>
                            <li class="ui-state-default cf-draggable ui-draggable ui-draggable-handle">
                                <i class="fa fa-text-width fa-lg"></i>
                                <div class="small">محیط متنی</div>
                            </li>
                            <li class="ui-state-default cf-draggable ui-draggable ui-draggable-handle">
                                <i class="fa fa-i-cursor fa-lg"></i>
                                <div class="small">عـددی</div>
                            </li>
                            <li class="ui-state-default cf-draggable ui-draggable ui-draggable-handle">
                                <i class="fa fa-check-square-o fa-lg"></i>
                                <div class="small">کادر انتخاب</div>
                            </li>
                            <li class="ui-state-default cf-draggable ui-draggable ui-draggable-handle">
                                <i class="fa fa-caret-square-down fa-lg"></i>
                                <div class="small">کادر کشویی</div>
                            </li>
                            <li class="ui-state-default cf-draggable ui-draggable ui-draggable-handle">
                                <i class="fa fa-dot-circle-o"></i>
                                <div class="small">انتخابی</div>
                            </li>
                            <li class="ui-state-default cf-draggable ui-draggable ui-draggable-handle">
                                <i class="fa fa-calendar fa-lg"></i>
                                <div class="small">کادر تقویم</div>
                            </li>
                            <li class="ui-state-default cf-draggable ui-draggable ui-draggable-handle">
                                <i class="fa fa-text-height fa-sm"></i>
                                <div class="small">کادر متنی</div>
                            </li>
                            <li class="ui-state-default cf-draggable ui-draggable ui-draggable-handle">
                                <i class="fa fa-align-justify "></i>
                                <div class="small">چند انتخابی</div>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="slidepage" runat="server">
   
    
</asp:Content>
