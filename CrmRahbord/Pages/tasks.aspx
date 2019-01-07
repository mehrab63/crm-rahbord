<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/SiteMaster.Master" AutoEventWireup="true" CodeBehind="tasks.aspx.cs" Inherits="CrmRahbord.Pages.tasks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>قـرار ملاقات ها</title>
    <link href="../Styles/mainstyle.css" rel="stylesheet" />
    <script  type="text/javascript">
        function SlideWindow()
    {
            var element = document.getElementById('Slidediv').style.display = "block";
            var element = document.getElementById('Slidecontent').style.display = "block";
            element.classList.add(SlideWindow)
    }
    </script>
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
                    <a class="btn btn-default" data-ember-action="4420">
                        <!--<i class="icon-calendar mg-r-5"></i> -->
                        اضافه کردن قـرار
                    </a>
                </li>
                <li>
                    <a onclick="SlideWindow()" class="btn btn-warning" data-ember-action="4425">
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
                            <a href="/appointments" >قـرارها</a>
                        </li>
                        <li class="ember-view"> 
                            <a class="active" style=" color:black; font-size:12px;    border-bottom: solid 2px #ffa800;"><strong>کـارها</strong></a>
                        </li>
                    </ul>
                </div>
                <div class="no-data no-data-lg">
                    <p class="no-data-text">
                        "کـاری یافت نشد."
                    </p>
                </div>
            </div>
        </div>
        <div class=" view view-s text-center">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class=" form-group mg-t-10">
                        <div class="col-md-12">
                            
                            <div class="text-left mg-t-30">
                                <h6 style="text-align:right"><strong>کـارهای باز</strong> </h6>
                                <div class="form-group radio-group">
                                    <label style="text-align:right" class="radio-group-item center-block">
                                        <input type="radio" value="past" />
                                        <span>عقب افتاده</span>
                                    </label>
                                    <label style="text-align:right" class="radio-group-item center-block">
                                        <input type="radio" value="upcoming" />
                                        <span>امـروز</span>
                                    </label>
                                    <label style="text-align:right" class="radio-group-item center-block">
                                        <input type="radio" value="upcoming" />
                                        <span>فـردا</span>
                                    </label>
                                </div>
                            </div>
                            <div class="text-left mg-t-30">
                                <h6 style="text-align:right"><strong>تمامی کـارهای </strong> </h6>
                                <div class="form-group radio-group">
                                    <label style="text-align:right" class="radio-group-item center-block">
                                        <input type="radio" value="past" />
                                        <span>باز</span>
                                    </label>
                                    <label style="text-align:right" class="radio-group-item center-block">
                                        <input type="radio" value="upcoming" />
                                        <span>تمام شده</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="slidepage" runat="server">
           <div id="Slidediv" style="display:none" class="modal-backdrop in"></div>
            <div id="Slidecontent" style="display:none; transition:all 0.01s" class="modal-slide" >
                <div class=" modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header" style="direction:rtl">
                            <span class="modal-title">اضافه کردن کـار</span>
                            <button type="cancel" class="close" aria-label="Close" style="left:20px">
                                <span aria-hidden="true" class="fa fa-close"></span>
                            </button>
                        </div>

                        <div class="ui-form-content pd-0">
                            
                            <div class="ui-form-split-rt">
                                <div class="form-group" data-test-task="Owner">
                                    <label class="control-label" for="owner">مـالک</label>
                                    <div id="ember4123" class="ember-view">
                                        <div id="ember4126" role="button" data-ebd-id="ember4125-trigger" tabindex="0" aria-owns="ember-basic-dropdown-content-ember4125" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger">
                                            <span class="ember-power-select-selected-item">meh rab


                                            </span>
                                            <span class="ember-power-select-status-icon"></span>
                                        </div>
                                        <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4125"></div>

                                    </div>
                                </div>
                                <div class="form-group" data-test-task="Related to">
                                    <div id="ember4139" class="ember-view ui-field form-field-required">
                                        <label id="ember4140" for="targetable_ember4139" class="ember-view control-label">مربوط به</label>
                                        <!---->
                                        <div id="ember4153" class="ember-view">
                                            <div class="select2-container ember-view form-control input-md" id="s2id_ember4154" style="display: hidden;">
                                                <a href="javascript:void(0)" class="select2-choice select2-default" tabindex="-1"><span class="select2-chosen" id="select2-chosen-4">اتصال این کار به ...</span><abbr class="select2-search-choice-close"></abbr>
                                                    <span class="select2-arrow" role="presentation"><b role="presentation"></b></span></a>
                                                <label for="s2id_autogen4" class="select2-offscreen"></label>
                                                <input class="select2-focusser select2-offscreen" type="text" aria-haspopup="true" role="button" aria-labelledby="select2-chosen-4" id="s2id_autogen4" tabindex="0"><div class="select2-drop select2-display-none select2-with-searchbox">
                                                    <div class="select2-search">
                                                        <label for="s2id_autogen4_search" class="select2-offscreen"></label>
                                                        <input type="text" autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false" class="select2-input" role="combobox" aria-expanded="true" aria-autocomplete="list" aria-owns="select2-results-4" id="s2id_autogen4_search" placeholder="">
                                                    </div>
                                                    <ul class="select2-results" role="listbox" id="select2-results-4"></ul>
                                                </div>
                                            </div>
                                            <input id="ember4154" style="display: none;" tabindex="-1" class="ember-view form-control input-md" title="">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group" data-test-task="Collaborators">
                                    <label for="owner">همکاران (<span>0</span>)</label>
                                    <div id="ember4171" class="ember-view tag-list">
                                        <select id="ember4180" multiple="multiple" autocomplete="off" class="ui-tags-list ember-view ember-selectize selectized" tabindex="-1" style="display: none;"></select><div class="selectize-control ui-tags-list ember-view ember-selectize multi plugin-stop_backspace_delete plugin-remove_button">
                                            <div class="selectize-input items not-full" style="">
                                                <input type="text" autocomplete="off" tabindex="0" placeholder="وارد کردن همکاران" style="width: 133.979px;">
                                            </div>
                                            <div class="selectize-dropdown multi ui-tags-list ember-view ember-selectize plugin-stop_backspace_delete plugin-remove_button" style="display: none; width: 252px; top: 35px; left: 0px;">
                                                <div class="selectize-dropdown-content"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="ui-form-split-lt">
                                <div class="ui-form-content-scroll">
                                    <div class="form-group" data-test-task-title="Title">
                                        <div id="ember4011" class="ember-view ui-field form-field-required">
                                            <label id="ember4020" for="title_ember4011" class="ember-view control-label">
                                                <!---->
                                                عنـوان</label>

                                            <input id="title_ember4011" autofocus="" placeholder="عنوان کار را وارد کنید" name="title" type="text" class="form-control  ember-view ember-text-field form-control">
                                        </div>
                                    </div>
                                    <div class="form-group row" data-test-task-date="Date">
                                        <div class="form-field-required">
                                            <label class="control-label col-md-12">تاریخ تحویل</label>
                                            <div id="ember4044" class="ember-view">
                                                <div class=" col-md-6">
                                                    <div id="ember4053" class="ember-view date-picker-widget input-group date">
                                                        <input id="ember4054" placeholder="ساعت" type="text" class="form-control ember-view ember-text-field"/>
                                                    </div>
                                                </div>
                                                <div class=" col-md-6">
                                                    <div class="timepicker-wrapper">
                                                        <label class="input-group">
                                                            <input id="ember4063" step="30" type="text" class="ember-view ember-text-field form-control date-time-input ui-timepicker-input" autocomplete="off">
                                                            <%--<span class="input-group-addon">
                                      <i class="icon-time"></i>
                                  </span>--%>
                                                        </label>
                                                    </div>
                                                </div>
                                                <!---->
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-md-6" data-test-task-type="TaskType">
                                            <label class="control-label" for="type">نوع کـار</label>
                                            <div id="ember4076" class="ember-view">
                                                <div id="ember4078" class="ember-view ember-basic-dropdown">
                                                    <div id="ember4079" role="button" data-ebd-id="ember4078-trigger" tabindex="0" aria-owns="ember-basic-dropdown-content-ember4078" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                        <span class="ember-power-select-placeholder">نوع</span>

                                                        <span class="ember-power-select-status-icon"></span>
                                                    </div>
                                                    <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4078"></div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6" data-test-task-outcome="Outcome">
                                            <label class="control-label" for="outcome">نتیجه</label>
                                            <div id="ember4087" class="ember-view">
                                                <div id="ember4089" class="ember-view ember-basic-dropdown">
                                                    <div id="ember4090" role="button" data-ebd-id="ember4089-trigger" tabindex="0" aria-owns="ember-basic-dropdown-content-ember4089" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                        <span class="ember-power-select-placeholder">نتیجه</span>

                                                        <span class="ember-power-select-status-icon"></span>
                                                    </div>
                                                    <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4089"></div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group" data-test-task="Description">
                                        <div id="ember4102" class="ember-view ui-field">
                                            <label id="ember4103" for="description_ember4102" class="ember-view control-label">توضیحات</label>
                                            <textarea id="ember4114" placeholder="شروع به تایپ کردن جزئیات مربوط به وظیفه کنید…" rows="5" name="description" class="  ember-view ember-text-area form-control"><!----></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            <div class="ui-form-footer">
                                <div class="ui-form-footer-desc small" style="left:0px">
                                    <!---->
                                    <!---->
                                </div>
                                <button id="ember4190" type="submit" class="btn-secondary ember-view btn">
                                    <span>ذخیـره</span>
                                </button>
                                <button id="ember4185" type="button" class="btn-default ember-view btn">
                                    <span>انصراف</span>
                                </button>
                                
                            </div>


                    </div>
                </div>
            </div>
</asp:Content>
