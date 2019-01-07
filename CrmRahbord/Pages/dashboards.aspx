<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/SiteMaster.Master" AutoEventWireup="true" CodeBehind="dashboards.aspx.cs" Inherits="CrmRahbord.Pages.dashboards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../Styles/mainstyle.css" rel="stylesheet" />
    <title>داشبرد</title>
</asp:Content>
<asp:Content ID="Actionpage" ContentPlaceHolderID="actionpagepanel" runat="server">
<div class="page-actions-panel">
                <div>
                    <ul class="list-inline">
                        <li>
                            
                        </li>

                        <li>
                            <a class="btn btn-default" data-ember-action="2435">
                                <svg viewBox="0 0 13 13" xmlns="http://www.w3.org/2000/svg" width="12px" class="valign-inline">
                                    <g stroke="#000" fill="none" fill-rule="evenodd" opacity=".5">
                                        <rect x=".5" y=".5" width="12" height="12" rx="1"></rect>
                                        <path fill="#D8D8D8" d="M.5 4.375h12V1a.5.5 0 0 0-.5-.5H1a.5.5 0 0 0-.5.5v3.375z"></path>
                                        <path d="M4.469 1.406v10.375M8.531 1.406v10.375" stroke-linecap="square"></path>
                                    </g></svg>
                                ویرایش ستون ها
                            </a>
                            <div id="ember2441" role="button" data-ebd-id="ember2440-trigger" aria-owns="ember-basic-dropdown-content-ember2440" class="btn btn-default pd-hr-10 ember-view ember-basic-dropdown-trigger" tabindex="0">
                                <span class="caret"></span>
                            </div>
                            <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember2440"></div>
                        </li>
                        <li>
                            <button data-toggle="tooltip" data-placement="bottom" data-test-search-facet-toggle="" class="btn btn-default pd-hr-10 " data-original-title="Show filters" data-ember-action="2447">
                                <svg viewBox="0 0 14 13" xmlns="http://www.w3.org/2000/svg" width="12px" class="valign-inline">
                                    <path d="M13 1H1l4.8 5.676V10.6l2.4 1.2V6.676z" stroke="#000" stroke-width="1.3" fill="none" fill-rule="evenodd" opacity=".5" stroke-linecap="round" stroke-linejoin="round"></path></svg>
                                فیلتر
                            </button>
                        </li>
                    </ul>
                </div>

                <div>
                    <ul class="list-inline">
                        <li></li>
                        <li></li>
                    </ul>
                </div>

            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard-view">
        <div class="dashboard-card">
            <div class="dashboard-card-header">
                <span class="dashboard-card-header-title strong" title="Won deals versus Lost deals">معاملات انجام شده در مقابل معاملات از دست رفته</span>
                <div class="dashboard-card-actions">
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4091" data-original-title="Zoom">
                        <i class="fa fa-search"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4096" data-original-title="Edit">
                        <i class="fa fa-edit"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4101" data-original-title="Delete">
                        <i class="fa fa-remove"></i>
                    </a>
                </div>
            </div>
            <div class="dashboard-card-content"></div>
            <div class="dashboard-card-footer"></div>

        </div>
        <div class="dashboard-card">
            <div class="dashboard-card-header">
                <span class="dashboard-card-header-title strong" title="Won deals versus Lost deals">گزارش روند فروش</span>
                <div class="dashboard-card-actions">
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4091" data-original-title="Zoom">
                        <i class="fa fa-search"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4096" data-original-title="Edit">
                        <i class="fa fa-edit"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4101" data-original-title="Delete">
                        <i class="fa fa-remove"></i>
                    </a>
                </div>
            </div>
            <div class="dashboard-card-content"></div>
            <div class="dashboard-card-footer"></div>

        </div>
        <div class="dashboard-card">
            <div class="dashboard-card-header">
                <span class="dashboard-card-header-title strong" title="Won deals versus Lost deals">روند فروش - 90 روز گذشته</span>
                <div class="dashboard-card-actions">
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4091" data-original-title="Zoom">
                        <i class="fa fa-search"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4096" data-original-title="Edit">
                        <i class="fa fa-edit"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4101" data-original-title="Delete">
                        <i class="fa fa-remove"></i>
                    </a>
                </div>
            </div>
            <div class="dashboard-card-content"></div>
            <div class="dashboard-card-footer"></div>

        </div>
        <div class="dashboard-card">
            <div class="dashboard-card-header">
                <span class="dashboard-card-header-title strong" title="Won deals versus Lost deals">فروش مورد انتظار - این ماه</span>
                <div class="dashboard-card-actions">
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4091" data-original-title="Zoom">
                        <i class="fa fa-search"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4096" data-original-title="Edit">
                        <i class="fa fa-edit"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4101" data-original-title="Delete">
                        <i class="fa fa-remove"></i>
                    </a>
                </div>
            </div>
            <div class="dashboard-card-content"></div>
            <div class="dashboard-card-footer"></div>

        </div>
        <div class="dashboard-card">
            <div class="dashboard-card-header">
                <span class="dashboard-card-header-title strong" title="Won deals versus Lost deals">فروش در این ماه</span>
                <div class="dashboard-card-actions">
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4091" data-original-title="Zoom">
                        <i class="fa fa-search"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4096" data-original-title="Edit">
                        <i class="fa fa-edit"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4101" data-original-title="Delete">
                        <i class="fa fa-remove"></i>
                    </a>
                </div>
            </div>
            <div class="dashboard-card-content"></div>
            <div class="dashboard-card-footer"></div>

        </div>
        <div class="dashboard-card">
            <div class="dashboard-card-header">
                <span class="dashboard-card-header-title strong" title="Won deals versus Lost deals">گزارش سر نخ ها</span>
                <div class="dashboard-card-actions">
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4091" data-original-title="Zoom">
                        <i class="fa fa-search"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4096" data-original-title="Edit">
                        <i class="fa fa-edit"></i>
                    </a>
                    <a data-toggle="tooltip" data-placement="bottom" role="menuitem" tabindex="-1" class="options-list-item-link" title="" data-ember-action="4101" data-original-title="Delete">
                        <i class="fa fa-remove"></i>
                    </a>
                </div>
            </div>
            <div class="dashboard-card-content"></div>
            <div class="dashboard-card-footer"></div>

        </div>
    </div>
</asp:Content>
