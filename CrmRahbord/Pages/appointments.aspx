<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/SiteMaster.Master" AutoEventWireup="true" CodeBehind="appointments.aspx.cs" Inherits="CrmRahbord.Pages.appointments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>قـرار ملاقات ها</title>
    <link href="../Styles/mainstyle.css" rel="stylesheet" />
    <script src="../Scripts/core.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="actionpagepanel" runat="server">
    <div class="page-actions-panel" style="direction: rtl">
        <div style="direction: rtl">
            <ul class="list-inline " style="padding-right: 0px">
                <li style="text-align: right; font-weight: 200"><strong>قـرار ملاقات ها و کـارها</strong></li>
            </ul>
        </div>
        <div class="page-actions-panel-cell" id="pageaction-area" data-test-add-deal="">
            <ul class="list-inline mg-b-0">
                <li>
                    <a onclick="SlideWindow" class="btn btn-warning " data-ember-action="4420">
                        <!--<i class="icon-calendar mg-r-5"></i> -->
                        اضافه کردن قـرار
                    </a>
                </li>
                <li>
                    <a class="btn btn-default" data-ember-action="4425">
                        <!--<i class="icon-task mg-r-5"></i> -->
                        اضافه کردن کـار
                    </a>
                </li>
            </ul>

        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
        <div class=" view view-l">
            <div class="panel panel-default">
                <div class="panel-title">
                    <ul class="ui-form-tabs nav nav-tabs">
                        <li class="ember-view">
                            <a class="active"style=" color:black; font-size:12px;    border-bottom: solid 2px #ffa800;"><strong>قـرارها</strong></a>
                        </li>
                        <li class="ember-view"> 
                            <a href="/tasks">کارها</a>
                        </li>
                    </ul>
                </div>
                <div class="no-data no-data-lg">
                    <p class="no-data-text">
                        "قرار ملاقاتی یافت نشد."
                        <a>آیا میخواهید قرار ملاقات ثبت کنید؟</a>
                    </p>
                </div>
            </div>
        </div>
        <div class=" view view-s text-center">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="mg-t-20">نمایش در منطقه زمانی</div>
                    <div class=" form-group mg-t-10">
                        <div class="col-md-12">
                            <div>
                                <div class="ember-view">
                                    <div class="select2-container ember-view form-control input-md" style="display: hidden;"><a href="javascript:void(0)" class="select2-choice" tabindex="-1"><span class="select2-chosen" id="select2-chosen-8">(GMT+00:00) UTC</span><abbr class="select2-search-choice-close"></abbr>
                                        <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a>
                                        <label for="s2id_autogen8" class="select2-offscreen"></label>
                                        <input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-8" id="s2id_autogen8" tabindex="0"><div class="select2-drop select2-display-none select2-with-searchbox">
                                            <div class="select2-search">
                                                <label for="s2id_autogen8_search" class="select2-offscreen"></label>
                                                <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-8" id="s2id_autogen8_search" placeholder="">
                                            </div>
                                            <ul class="select2-results" role="listbox" ></ul>
                                        </div>
                                    </div>
                                    <input  style="display: none;" tabindex="-1" class="ember-view form-control input-md" title="">
                                </div>
                            </div>
                            <div class="text-left mg-t-30">
                                <h6 style="text-align:right"><strong>قـرارها</strong> </h6>
                                <div class="form-group radio-group">
                                    <label style="text-align:right" class="radio-group-item center-block">
                                        <input type="radio" value="past" />
                                        <span>اضافه کردن</span>
                                    </label>
                                    <label style="text-align:right" class="radio-group-item center-block">
                                        <input type="radio" value="upcoming" />
                                        <span>به زودی</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
</asp:Content>
