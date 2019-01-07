    <%@ Page Title="" Language="C#" MasterPageFile="~/Pages/SiteMaster.Master" AutoEventWireup="true" CodeBehind="contacts.aspx.cs" Inherits="CrmRahbord.Pages.contacts1" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="actionpagepanel" runat="server">
    <div class="page-actions-panel" style="direction: rtl">
        <div style="direction: rtl">
            <ul class="list-inline " style="padding-right: 0px">
                <li style="text-align: right; font-weight: 200"><a href="/contacts">مشتریان </a></li>
                <li class="active" style="color: #808080"><span style="padding-right: 10px; padding-left: 10px;"><i class="fa fa-angle-left fa-lg"></i></span><strong>مشتریـان من</strong></li>
            </ul>
        </div>
    </div>
 </asp:Content>
<%--<asp:Content ID="Content3" ContentPlaceHolderID="slidepage" runat="server">
    <div id="Slidediv" class="modal-backdrop in" style="display:none" ></div>
    <div class="modal-slide" style=" transition:all 0.01s">
        <div id="Slidecontent" >
        </div>
    </div>
       <div id="Slidediv" style="display:none" class="modal-backdrop in"></div>
            <div id="Slidecontent" style="display:none; transition:all 0.01s" class="modal-slide" >
                <div class=" modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header" style="direction:rtl">
                            <span class="modal-title">اضافه مشتری</span>
                            <button type="button" onclick="CloseSlide()" class="close" aria-label="Close" style="left:20px">
                                <span aria-hidden="true" class="fa fa-close"></span>
                            </button>
                        </div>

                        <div class="ui-form-content pd-0" style="margin-top: 14px;">
                            <div class="entity-form modal-split-pane modal-split-pane--lg" style="direction:rtl">
                                <div class="modal-split-pane-scroll" data-spy="scroll" data-target=".js-scrollspy-parent">
                                    <div id="ember3766" class="modal-form-content ember-view">
                                        <form class="ember-view">
                                            <h6 class="fieldset-title hide js-search-result-hdr">نتایج جستجو
                                            </h6>
                                            <div id="ember4099" class="ember-view">
                                                <div class="fieldset-wrapper ">
                                                    <div id="ember4114" class="nested-section ember-view" style="direction:rtl">
                                                        <h6 id="form-ee2bb31b-3e6b-47ec-bbc4-804375a06188" class="ember-view fieldset-title" style=""><span><strong>اطلاعات پایه</strong></span>

                                                            <!---->
                                                        </h6>
                                                        <div class="fieldset-wrapper " data-test-section-name="Basic information">
                                                            <div id="ember4144" data-test-field-name="First name" data-field-name="First name" class="text-field ember-view form-group">
                                                                <label id="ember4168" for="ember4144_firstName" form="[object Object]" class="ember-view control-label">
                                                                    نام
                                                                </label>
                                                                <input id="ember4144_firstName" type="text" name="contact[firstName]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                
                                                            </div>
                                                            <div id="ember4180" data-test-field-name="Last name" data-field-name="Last name" class="text-field ember-view form-group">
                                                                <label id="ember4181" for="ember4180_lastName" form="[object Object]" class="ember-view control-label">
                                                                    نام خانوادگی
                                                                    <span class="star">*</span>
                                                                </label>
                                                                <input id="ember4180_lastName" type="text" name="contact[lastName]" required="" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                <!---->
                                                                <!---->

                                                            </div>
                                                            <div id="ember4291" data-test-field-name="Job title" data-field-name="Job title" class="text-field ember-view form-group">
                                                                <label id="ember4292" for="ember4291_jobTitle" form="[object Object]" class="ember-view control-label">
                                                                    عنوان شغلی
                                                                   
                                                                </label>
                                                                <input id="ember4291_jobTitle" type="text" name="contact[jobTitle]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                               
                                                            </div>
                                                            <div id="ember4298" data-test-field-name="Department" data-field-name="Department" class="text-field ember-view form-group">
                                                                <label id="ember4299" for="ember4298_department" form="[object Object]" class="ember-view control-label">
                                                                    گروه
                                                                    <!---->
                                                                </label>
                                                                <input id="ember4298_department" type="text" name="contact[department]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                               
                                                            </div>
                                                            <div id="ember4306" class="group-field ember-view __form-fields__group-field__39a08">
                                                                <div id="ember4320" data-test-field-name="Emails" data-field-name="Emails" class="group-field ember-view form-group">
                                                                    <label id="ember4321" for="ember4320_emails" form="[object Object]" class="ember-view control-label">
                                                                        ایمیل ها
                                                                        <!---->
                                                                    </label>
                                                                    <div class="controls-container primary-item">
                                                                        <span data-toggle="tooltip" data-placement="right" data-title="Marked as primary">
                                                                            <div id="ember4334" data-test-field-name="Non-Displayed Label" data-field-name="Non-Displayed Label" class="radio-field ember-view form-group">
                                                                                <label id="ember4342" for="ember4334_is_primary" class="ember-view control-label">
                                                                                    <input id="ember4334_is_primary" type="radio" value="true" name="fragments/email-address[is_primary]" invalid="false" aria-invalid="false" paramvalue="true" class="ember-view form-control">
                                                                                    
                                                                                </label>
                                                                            </div>
                                                                        </span>
                                                                        <div id="ember4351" data-test-field-name="Non-Displayed Label" data-field-name="Non-Displayed Label" class="email-field ember-view field-type-control emails-0 form-group">
                                                                            <!---->
                                                                            <input id="ember4351_value" type="email" name="fragments/email-address[value]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                            <!---->
                                                                            <!---->

                                                                        </div>
                                                                        <!---->
                                                                    </div>
                                                                    <button id="ember4373" type="submit" class="add-button-control ember-view async-button default">
                                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" width="14px" height="14px" class="text-success valign-tbottom">
                                                                            <path d="M254.8 0C114.1 0 0 114.1 0 254.8s114.1 254.8 254.8 254.8 254.8-114.1 254.8-254.8S395.5 0 254.8 0zm31 285.8V408h-62V285.8H101.6v-62h122.2V101.6h62v122.2H408v62H285.8z" fill="currentColor"></path></svg>
                                                                        <a class="pd-l-5">اضافه کردن ایمیل</a>

                                                                    </button>
                                                                    <!---->
                                                                    <!---->

                                                                </div>
                                                            </div>
                                                            <div id="ember4376" class="nested-section ember-view">
                                                                <h6 id="form-398f28db-c574-4b8f-b123-bf17b49cadf8" class="fieldset-legend ember-view fieldset-title" style=""><span><strong>شماره تلفن ها</strong></span>

                                                                </h6>
                                                                <div class="fieldset-wrapper " data-test-section-name="Telephone numbers">
                                                                    <div id="ember4380" data-test-field-name="Work" data-field-name="Work" class="text-field ember-view form-group">
                                                                        <label id="ember4381" for="ember4380_workNumber" form="[object Object]" class="ember-view control-label">
                                                                            محل کار
                                                                        </label>
                                                                        <input id="ember4380_workNumber" type="text" name="contact[workNumber]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                       
                                                                    </div>
                                                                    <div id="ember4387" data-test-field-name="Mobile" data-field-name="Mobile" class="text-field ember-view form-group">
                                                                        <label id="ember4388" for="ember4387_mobileNumber" form="[object Object]" class="ember-view control-label">
                                                                            همراه
                                                                        </label>
                                                                        <input id="ember4387_mobileNumber" type="text" name="contact[mobileNumber]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                        
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div id="ember4395" data-test-field-name="Status" data-field-name="Status" class="select-field ember-view form-group">
                                                                <label id="ember4396" for="ember4395_contactStatus" form="[object Object]" class="ember-view control-label">
                                                                    وضعیت
                                                                    
                                                                </label>
                                                                <div id="ember4399" class="ember-view ember-basic-dropdown">
                                                                    <div id="ember4400" role="button" data-ebd-id="ember4399-trigger" tabindex="0" aria-owns="ember-basic-dropdown-content-ember4399" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                        <span class="ember-power-select-placeholder">انتخاب</span>

                                                                        <span class="ember-power-select-status-icon"></span>
                                                                    </div>
                                                                    <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4399"></div>

                                                                </div>
                                                            </div>
                                                            <div id="ember4410" data-test-field-name="Has authority" data-field-name="Has authority" class="checkbox-field custom-checkbox   ember-view form-group">
                                                                <label style="float:none" id="ember4418" for="ember4410_hasAuthority" form="[object Object]" class="custom-checkbox-label ember-view control-label">
                                                                    <div class="custom-checkbox-wrap">
                                                                        <input id="ember4410_hasAuthority" type="checkbox" name="contact[hasAuthority]" invalid="false" aria-invalid="false" form="[object Object]" class="form-control ember-checkbox checkbox ember-view form-control">
                                                                        <span></span>
                                                                    </div>
                                                                    <div class="custom-checkbox-text">مجاز </div>

                                                                    <!---->
                                                                </label>
                                                            </div>
                                                            <div id="ember4426" data-test-field-name="Do not disturb" data-field-name="Do not disturb" class="checkbox-field custom-checkbox   ember-view form-group">
                                                                <label style="float:none" id="ember4427" for="ember4426_doNotDisturb" form="[object Object]" class="custom-checkbox-label ember-view control-label">
                                                                    <div class="custom-checkbox-wrap">
                                                                        <input id="ember4426_doNotDisturb" type="checkbox" name="contact[doNotDisturb]" invalid="false" aria-invalid="false" form="[object Object]" class="form-control ember-checkbox checkbox ember-view form-control">
                                                                        <span></span>
                                                                    </div>
                                                                    <div class="custom-checkbox-text">غیرمجاز</div>

                                                                    <!---->
                                                                </label>
                                                                <!---->
                                                                <!---->

                                                            </div>
                                                            <div id="ember4434" data-test-field-name="Time zone" data-field-name="Time zone" class="select-field ember-view form-group">
                                                                <label id="ember4435" for="ember4434_timeZone" form="[object Object]" class="ember-view control-label">
                                                                   منطقه زمانی
                                                                </label>
                                                                <div id="ember4438" class="ember-view ember-basic-dropdown">
                                                                    <div id="ember4439" role="button" data-ebd-id="ember4438-trigger" tabindex="0" aria-owns="ember-basic-dropdown-content-ember4438" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                        <span class="ember-power-select-placeholder">انتخاب</span>
                                                                        <span class="ember-power-select-status-icon"></span>
                                                                    </div>
                                                                    <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4438"></div>

                                                                </div>
                                                            </div>
                                                            <div id="ember4445" class="nested-section ember-view" style="direction:rtl">
                                                                <h6 id="form-471f9e56-447f-4d23-863a-4ffde409d332" class="fieldset-legend ember-view fieldset-title" style=""><span><strong>اطلاعات تماس</strong></span>
                                                                </h6>
                                                                <div class="fieldset-wrapper " data-test-section-name="Location">
                                                                    <div id="ember4450" data-test-field-name="Address" data-field-name="Address" class="text-field ember-view form-group">
                                                                        <label id="ember4451" for="ember4450_address" form="[object Object]" class="ember-view control-label">
                                                                            آدرس
                                                                            <!---->
                                                                        </label>
                                                                        <input id="ember4450_address" type="text" name="contact[address]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                        
                                                                    </div>
                                                                    <div id="ember4457" data-test-field-name="City" data-field-name="City" class="text-field ember-view form-group">
                                                                        <label id="ember4458" for="ember4457_city" form="[object Object]" class="ember-view control-label">
                                                                            شهر
                                                                            <!---->
                                                                        </label>
                                                                        <input id="ember4457_city" type="text" name="contact[city]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                        
                                                                    </div>
                                                                    <div id="ember4464" data-test-field-name="State" data-field-name="State" class="text-field ember-view form-group">
                                                                        <label id="ember4465" for="ember4464_state" form="[object Object]" class="ember-view control-label">
                                                                           منطقه
                                                                        </label>
                                                                        <input id="ember4464_state" type="text" name="contact[state]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                    
                                                                    </div>
                                                                    <div id="ember4471" data-test-field-name="Zipcode" data-field-name="Zipcode" class="text-field ember-view form-group">
                                                                        <label id="ember4472" for="ember4471_zipcode" form="[object Object]" class="ember-view control-label">
                                                                            کد پستی
                                                                        </label>
                                                                        <input id="ember4471_zipcode" type="text" name="contact[zipcode]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                        
                                                                    </div>
                                                                    <div id="ember4478" data-test-field-name="Country" data-field-name="Country" class="text-field ember-view form-group">
                                                                        <label id="ember4479" for="ember4478_country" form="[object Object]" class="ember-view control-label">
                                                                           کشور
                                                                        </label>
                                                                        <input id="ember4478_country" type="text" name="contact[country]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                      
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div id="ember4483" class="nested-section ember-view" style="direction:rtl">
                                                                <h6 id="form-f43ba4f9-cfa3-4015-99b4-81bc8d8a4fa1" class="fieldset-legend ember-view fieldset-title" style=""><span><strong>شبکه های اجتماعی</strong></span>
                                                                </h6>
                                                                <div class="fieldset-wrapper " data-test-section-name="Social profiles">
                                                                    <div id="ember4488" data-test-field-name="Facebook" data-field-name="Facebook" class="text-field ember-view form-group">
                                                                        <label id="ember4489" for="ember4488_facebook" form="[object Object]" class="ember-view control-label">
                                                                            Facebook
                                                                            <!---->
                                                                        </label>
                                                                        <input id="ember4488_facebook" type="text" name="contact[facebook]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                     
                                                                    </div>
                                                                    <div id="ember4495" data-test-field-name="Twitter" data-field-name="Twitter" class="text-field ember-view form-group">
                                                                        <label id="ember4496" for="ember4495_twitter" form="[object Object]" class="ember-view control-label">
                                                                            Twitter
                                                                            <!---->
                                                                        </label>
                                                                        <input id="ember4495_twitter" type="text" name="contact[twitter]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                  
                                                                    </div>
                                                                    <div id="ember4502" data-test-field-name="LinkedIn" data-field-name="LinkedIn" class="text-field ember-view form-group">
                                                                        <label id="ember4503" for="ember4502_linkedin" form="[object Object]" class="ember-view control-label">
                                                                            LinkedIn
                                                                            <!---->
                                                                        </label>
                                                                        <input id="ember4502_linkedin" type="text" name="contact[linkedin]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                       
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div id="ember4520" class="nested-section ember-view" style="direction:rtl">
                                                                <h6 id="form-c17f5d9f-9ca1-4584-8daf-14cf02082ce1" class="fieldset-legend ember-view fieldset-title" style=""><span><strong>اطلاعات منابع</strong></span>

                                                                    <!---->
                                                                </h6>
                                                                <div class="fieldset-wrapper " data-test-section-name="Source information">
                                                                    <div id="ember4526" data-test-field-name="Source" data-field-name="Source" class="select-field ember-view form-group">
                                                                        <label id="ember4527" for="ember4526_leadSource" form="[object Object]" class="ember-view control-label">
                                                                            منبع
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4530" class="ember-view ember-basic-dropdown">
                                                                            <div id="ember4531" role="button" data-ebd-id="ember4530-trigger" tabindex="0" aria-owns="ember-basic-dropdown-content-ember4530" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                                <span class="ember-power-select-placeholder">Choose a value</span>

                                                                                <span class="ember-power-select-status-icon"></span>
                                                                            </div>
                                                                            <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4530"></div>

                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4539" data-test-field-name="Campaign" data-field-name="Campaign" class="select-field ember-view form-group">
                                                                        <label id="ember4540" for="ember4539_campaign" form="[object Object]" class="ember-view control-label">
                                                                            کـارگروه
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4543" class="ember-view ember-basic-dropdown">
                                                                            <div id="ember4544" role="button" data-ebd-id="ember4543-trigger" tabindex="0" aria-owns="ember-basic-dropdown-content-ember4543" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                                <span class="ember-power-select-placeholder">Choose a value</span>

                                                                                <span class="ember-power-select-status-icon"></span>
                                                                            </div>
                                                                            <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4543"></div>

                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4552" data-test-field-name="Medium" data-field-name="Medium" class="text-field ember-view form-group">
                                                                        <label id="ember4553" for="ember4552_medium" form="[object Object]" class="ember-view control-label">
                                                                            واسطه
                                                                            <!---->
                                                                        </label>
                                                                        <input id="ember4552_medium" type="text" name="contact[medium]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4559" data-test-field-name="Keyword" data-field-name="Keyword" class="text-field ember-view form-group">
                                                                        <label id="ember4560" for="ember4559_keyword" form="[object Object]" class="ember-view control-label">
                                                                            کلیدواژه
                                                                            <!---->
                                                                        </label>
                                                                        <input id="ember4559_keyword" type="text" name="contact[keyword]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="" class="ember-view form-control">
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div id="ember4564" class="nested-section ember-view" style="direction:rtl">
                                                                <h6 id="form-a43548c8-dd35-46b9-8759-2ecbaa8b0506" class="fieldset-legend ember-view fieldset-title" style=""><span><strong>اطلاعات سیستمی</strong></span>

                                                                    <!---->
                                                                </h6>
                                                                <div class="fieldset-wrapper " data-test-section-name="System information">
                                                                    <div id="ember4570" data-test-field-name="Last contacted time" data-field-name="Last contacted time" class="datetime-field ember-view form-group" hidden="">
                                                                        <label id="ember4578" for="ember4570_lastContacted" form="[object Object]" class="control-label ember-view control-label">
                                                                            آخرین ورود
                                                                        </label>
                                                                        <div id="ember4570_lastContacted" class="ember-view form-control">
                                                                            <div id="ember4590" class="ember-view">
                                                                                <div class=" ">
                                                                                    <div id="ember4599" class="ember-view date-picker-widget input-group date">
                                                                                        <input id="ember4600" disabled="" placeholder="mm/dd/yyyy" readonly="readonly" type="text" class="form-control ember-view ember-text-field">
                                                                                        <span class="input-group-addon">
                                                                                            <i class="icon-calendar"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4606" data-test-field-name="Last contacted mode" data-field-name="Last contacted mode" class="select-field ember-view form-group" hidden="">
                                                                        <label id="ember4607" for="ember4606_lastContactedMode" form="[object Object]" class="ember-view control-label">
                                                                            آخرین وضعیت اتصال
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4610" class="ember-view ember-basic-dropdown">
                                                                            <div id="ember4611" role="button" data-ebd-id="ember4610-trigger" aria-owns="ember-basic-dropdown-content-ember4610" aria-disabled="true" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                                <!---->
                                                                                <span class="ember-power-select-status-icon"></span>
                                                                            </div>
                                                                            <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4610"></div>

                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4619" data-test-field-name="Last contacted via chat" data-field-name="Last contacted via chat" class="datetime-field ember-view form-group" hidden="">
                                                                        <label id="ember4620" for="ember4619_lastContactedViaChat" form="[object Object]" class="control-label ember-view control-label">
                                                                            آخرین وضعیت گفتگو
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4619_lastContactedViaChat" class="ember-view form-control">
                                                                            <div id="ember4622" class="ember-view">
                                                                                <div class=" ">
                                                                                    <div id="ember4623" class="ember-view date-picker-widget input-group date">
                                                                                        <input id="ember4624" disabled="" placeholder="mm/dd/yyyy" readonly="readonly" type="text" class="form-control ember-view ember-text-field">
                                                                                        <span class="input-group-addon">
                                                                                            <i class="icon-calendar"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <!---->
                                                                                <!---->
                                                                            </div>
                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4630" data-test-field-name="Last activity type" data-field-name="Last activity type" class="select-field ember-view form-group" hidden="">
                                                                        <label id="ember4631" for="ember4630_lastContactedSalesActivityMode" form="[object Object]" class="ember-view control-label">
                                                                            آخرین نوع فعالیت
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4634" class="ember-view ember-basic-dropdown">
                                                                            <div id="ember4635" role="button" data-ebd-id="ember4634-trigger" aria-owns="ember-basic-dropdown-content-ember4634" aria-disabled="true" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                                <!---->
                                                                                <span class="ember-power-select-status-icon"></span>
                                                                            </div>
                                                                            <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4634"></div>

                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4643" data-test-field-name="Last activity date" data-field-name="Last activity date" class="datetime-field ember-view form-group" hidden="">
                                                                        <label id="ember4644" for="ember4643_lastContactedViaSalesActivity" form="[object Object]" class="control-label ember-view control-label">
                                                                            آخرین تاریخ فعالیت
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4643_lastContactedViaSalesActivity" class="ember-view form-control">
                                                                            <div id="ember4646" class="ember-view">
                                                                                <div class=" ">
                                                                                    <div id="ember4647" class="ember-view date-picker-widget input-group date">
                                                                                        <input id="ember4648" disabled="" placeholder="mm/dd/yyyy" readonly="readonly" type="text" class="form-control ember-view ember-text-field">
                                                                                        <span class="input-group-addon">
                                                                                            <i class="icon-calendar"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <!---->
                                                                                <!---->
                                                                            </div>
                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <!---->
                                                                    <!---->
                                                                    <div id="ember4659" data-test-field-name="Last seen" data-field-name="Last seen" class="datetime-field ember-view form-group" hidden="">
                                                                        <label id="ember4660" for="ember4659_lastSeen" form="[object Object]" class="control-label ember-view control-label">
                                                                            آخرین بازدید
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4659_lastSeen" class="ember-view form-control">
                                                                            <div id="ember4662" class="ember-view">
                                                                                <div class=" ">
                                                                                    <div id="ember4663" class="ember-view date-picker-widget input-group date">
                                                                                        <input id="ember4664" disabled="" placeholder="mm/dd/yyyy" readonly="readonly" type="text" class="form-control ember-view ember-text-field">
                                                                                        <span class="input-group-addon">
                                                                                            <i class="icon-calendar"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <!---->
                                                                                <!---->
                                                                            </div>
                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4671" data-test-field-name="Lead score" data-field-name="Lead score" class="text-field ember-view form-group" hidden="">
                                                                        <label id="ember4678" for="ember4671_leadScore" form="[object Object]" class="ember-view control-label">
                                                                            امتیاز
                                                                            <!---->
                                                                        </label>
                                                                        <input id="ember4671_leadScore" type="number" name="contact[leadScore]" invalid="false" aria-invalid="false" form="[object Object]" disabled="" placeholder="" class="ember-view form-control">
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4687" data-test-field-name="Lead quality" data-field-name="Lead quality" class="select-field ember-view form-group" hidden="">
                                                                        <label id="ember4688" for="ember4687_leadQuality" form="[object Object]" class="ember-view control-label">
                                                                            کیفیت سرنخ
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4691" class="ember-view ember-basic-dropdown">
                                                                            <div id="ember4692" role="button" data-ebd-id="ember4691-trigger" aria-owns="ember-basic-dropdown-content-ember4691" aria-disabled="true" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                                <!---->
                                                                                <span class="ember-power-select-status-icon"></span>
                                                                            </div>
                                                                            <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4691"></div>

                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4702" data-test-field-name="Recent note" data-field-name="Recent note" class="textarea-field ember-view form-group" hidden="">
                                                                        <label id="ember4709" for="ember4702_recentNote" form="[object Object]" class="ember-view control-label">
                                                                            نظرات اخیر
                                                                            <!---->
                                                                        </label>
                                                                        <textarea id="ember4702_recentNote" name="contact[recentNote]" invalid="false" aria-invalid="false" form="[object Object]" disabled="" placeholder="" class="ember-view form-control"><!----></textarea>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4718" data-test-field-name="Created by" data-field-name="Created by" class="select-field ember-view form-group" hidden="">
                                                                        <label id="ember4719" for="ember4718_creater" form="[object Object]" class="ember-view control-label">
                                                                            ایجاد شده توسط
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4722" class="ember-view ember-basic-dropdown">
                                                                            <div id="ember4723" role="button" data-ebd-id="ember4722-trigger" aria-owns="ember-basic-dropdown-content-ember4722" aria-disabled="true" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                                <!---->
                                                                                <span class="ember-power-select-status-icon"></span>
                                                                            </div>
                                                                            <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4722"></div>

                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4731" data-test-field-name="Created at" data-field-name="Created at" class="datetime-field ember-view form-group" hidden="">
                                                                        <label id="ember4732" for="ember4731_createdAt" form="[object Object]" class="control-label ember-view control-label">
                                                                            ایجاد شده در
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4731_createdAt" class="ember-view form-control">
                                                                            <div id="ember4734" class="ember-view">
                                                                                <div class=" ">
                                                                                    <div id="ember4735" class="ember-view date-picker-widget input-group date">
                                                                                        <input id="ember4736" disabled="" placeholder="mm/dd/yyyy" readonly="readonly" type="text" class="form-control ember-view ember-text-field">
                                                                                        <span class="input-group-addon">
                                                                                            <i class="icon-calendar"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <!---->
                                                                                <!---->
                                                                            </div>
                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4742" data-test-field-name="Updated by" data-field-name="Updated by" class="select-field ember-view form-group" hidden="">
                                                                        <label id="ember4743" for="ember4742_updater" form="[object Object]" class="ember-view control-label">
                                                                            به روز شده توسط
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4746" class="ember-view ember-basic-dropdown">
                                                                            <div id="ember4747" role="button" data-ebd-id="ember4746-trigger" aria-owns="ember-basic-dropdown-content-ember4746" aria-disabled="true" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                                <!---->
                                                                                <span class="ember-power-select-status-icon"></span>
                                                                            </div>
                                                                            <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4746"></div>

                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4755" data-test-field-name="Updated at" data-field-name="Updated at" class="datetime-field ember-view form-group" hidden="">
                                                                        <label id="ember4756" for="ember4755_updatedAt" form="[object Object]" class="control-label ember-view control-label">
                                                                            به روز شده در
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4755_updatedAt" class="ember-view form-control">
                                                                            <div id="ember4758" class="ember-view">
                                                                                <div class=" ">
                                                                                    <div id="ember4759" class="ember-view date-picker-widget input-group date">
                                                                                        <input id="ember4760" disabled="" placeholder="mm/dd/yyyy" readonly="readonly" type="text" class="form-control ember-view ember-text-field">
                                                                                        <span class="input-group-addon">
                                                                                            <i class="icon-calendar"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <!---->
                                                                                <!---->
                                                                            </div>
                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <!---->
                                                                    <div id="ember4768" data-test-field-name="Email status" data-field-name="Email status" class="select-field ember-view form-group" hidden="">
                                                                        <label id="ember4769" for="ember4768_emailStatus" form="[object Object]" class="ember-view control-label">
                                                                            وضعیت ایمیل 
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4772" class="ember-view ember-basic-dropdown">
                                                                            <div id="ember4773" role="button" data-ebd-id="ember4772-trigger" aria-owns="ember-basic-dropdown-content-ember4772" aria-disabled="true" dir="ltr" class="ember-power-select-trigger ember-view ember-basic-dropdown-trigger ember-basic-dropdown-trigger--in-place">
                                                                                <!---->
                                                                                <span class="ember-power-select-status-icon"></span>
                                                                            </div>
                                                                            <div class="ember-basic-dropdown-content-placeholder" style="display: none;" id="ember-basic-dropdown-content-ember4772"></div>

                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                    <div id="ember4781" data-test-field-name="Last assigned at" data-field-name="Last assigned at" class="datetime-field ember-view form-group" hidden="">
                                                                        <label id="ember4782" for="ember4781_lastAssignedAt" form="[object Object]" class="control-label ember-view control-label">
                                                                            آخرین اختصاص
                                                                            <!---->
                                                                        </label>
                                                                        <div id="ember4781_lastAssignedAt" class="ember-view form-control">
                                                                            <div id="ember4784" class="ember-view">
                                                                                <div class=" ">
                                                                                    <div id="ember4785" class="ember-view date-picker-widget input-group date">
                                                                                        <input id="ember4786" disabled="" placeholder="mm/dd/yyyy" readonly="readonly" type="text" class="form-control ember-view ember-text-field">
                                                                                        <span class="input-group-addon">
                                                                                            <i class="icon-calendar"></i>
                                                                                        </span>
                                                                                    </div>
                                                                                </div>
                                                                                <!---->
                                                                                <!---->
                                                                            </div>
                                                                        </div>
                                                                        <!---->
                                                                        <!---->

                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div id="ember4789" class="nested-section ember-view" style="direction:rtl">
                                                        <h6 id="form-205b3d7f-8976-4749-9f11-70c81c209bca" class="ember-view fieldset-title" style=""><span><strong>اطلاعات اضافه</strong></span>

                                                            <!---->
                                                        </h6>
                                                        <!---->
                                                        <div class="fieldset-wrapper " data-test-section-name="Additional information">
                                                            <!---->
                                                        </div>

                                                    </div>
                                                    <div id="ember4792" class="nested-section ember-view" style="direction:rtl">
                                                        <h6 id="form-9b70b98e-c016-47cc-8de8-9017b202f704" class="ember-view fieldset-title" style=""><span><strong>سفـارشی</strong></span>

                                                            <!---->
                                                        </h6>
                                                        <div class="fieldset-wrapper " data-test-section-name="costom">
                                                            <div id="ember4797" data-test-field-name="name" data-field-name="name" class="text-field ember-view form-group">
                                                                <label id="ember4798" for="ember4797_customField.cf_name" form="[object Object]" class="ember-view control-label">
                                                                    نام
                                                                </label>
                                                                <input id="ember4797_customField.cf_name" type="text" name="contact[customField.cf_name]" invalid="false" aria-invalid="false" form="[object Object]" placeholder="نام را وارد کنید" class="ember-view form-control">
                                                               
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                            <div id="ember4802" class="ember-view"></div>

                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-split-pane modal-split-pane--sm" style="direction:rtl">
                                <div class="modal-split-pane-scroll">
                                    <div class="modal-dir-search">
                                        <div id="ember3711" class="ember-view __entity-form-search__fafd3">
                                            <form role="search" onsubmit="return false;" class="__entity-form-search__fafd3">
                                                <div class="form-group">
                                                    <div class="input-group" data-test-form-search-input="">
                                                        <input id="ember3730" autofocus="" placeholder="جستجوی فیلد" autocomplete="off" type="text" class="form-control ember-view ember-text-field">
                                                                                                                <i class="fa fa-search"></i>

                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div id="ember3739" class="js-scrollspy-parent ember-view tree-list">
                                        <ul class="nav">
                                            <li class="tree-list-item active">
                                                <a style="padding-left:2px;padding-right:2px" class="tree-list-item-header" href="#form-ee2bb31b-3e6b-47ec-bbc4-804375a06188" data-test-tree-group-name="Basic information" data-ember-action="3741">
                                                    <span role="button" data-toggle="collapse" class=" " aria-expanded="true" aria-controls="basic_information_18" href="#basic_information_18">
                                                        <i class="tree-list-item-icon"></i>
                                                       <strong>اطلاعات پایه</strong> 
                                                    </span>
                                                </a>
                                                <div class="collapse in" id="basic_information_18">
                                                    <div id="ember3742" class="ember-view tree-list js-scrollspy-parent">
                                                        <ul class="nav">
                                                            <li class="tree-list-item">
                                                                <a style="padding-left:2px;padding-right:2px" class="tree-list-item-header " href="#form-398f28db-c574-4b8f-b123-bf17b49cadf8" data-test-tree-group-name="Telephone numbers" data-ember-action="3744">
                                                                    <span aria-expanded="false">
                                                                        <i class="invisible tree-list-item-icon"></i>شماره تلفن ها
                                                                    </span>
                                                                </a>
                                                            </li>
                                                            <li class="tree-list-item">
                                                                <a  style="padding-left:2px;padding-right:2px" class="tree-list-item-header " href="#form-471f9e56-447f-4d23-863a-4ffde409d332" data-test-tree-group-name="Location" data-ember-action="3746">
                                                                    <span aria-expanded="false">
                                                                        <i class="invisible tree-list-item-icon"></i>موقعیت
                                                                    </span>
                                                                </a>
                                                            </li>
                                                            <li class="tree-list-item">
                                                                <a style="padding-left:2px;padding-right:2px" class="tree-list-item-header " href="#form-f43ba4f9-cfa3-4015-99b4-81bc8d8a4fa1" data-test-tree-group-name="Social profiles" data-ember-action="3748">
                                                                    <span aria-expanded="false">
                                                                        <i class="invisible tree-list-item-icon"></i>شبکه های اجتماعی
                                                                    </span>
                                                                </a>
                                                            </li>
                                                            <li class="tree-list-item">
                                                                <a style="padding-left:2px;padding-right:2px" class="tree-list-item-header " href="#form-c17f5d9f-9ca1-4584-8daf-14cf02082ce1" data-test-tree-group-name="Source information" data-ember-action="3750">
                                                                    <span aria-expanded="false">
                                                                        <i class="invisible tree-list-item-icon"></i>اطلاعات اصلی
                                                                    </span>
                                                                </a>
                                                            </li>
                                                            <li class="tree-list-item">
                                                                <a style="padding-left:2px;padding-right:2px" class="tree-list-item-header " href="#form-a43548c8-dd35-46b9-8759-2ecbaa8b0506" data-test-tree-group-name="System information" data-ember-action="3752">
                                                                    <span aria-expanded="false">
                                                                        <i class="invisible tree-list-item-icon"></i>اطلاعات سیستمی
                                                                    </span>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="tree-list-item">
                                                <a class="tree-list-item-header " href="#form-205b3d7f-8976-4749-9f11-70c81c209bca" data-test-tree-group-name="Additional information" data-ember-action="3754">
                                                    <span aria-expanded="false">
                                                        <i class="invisible tree-list-item-icon"></i>اطلاعات اضافه
                                                    </span>
                                                </a>
                                            </li>
                                            <li class="tree-list-item">
                                                <a class="tree-list-item-header " href="#form-9b70b98e-c016-47cc-8de8-9017b202f704" data-test-tree-group-name="costom" data-ember-action="3756">
                                                    <span aria-expanded="false">
                                                        <i class="invisible tree-list-item-icon"></i>سفارشی
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="ui-form-footer">
                            <div class="ui-form-footer-desc small" style="left: 0px">
                                <!---->
                                <!---->
                            </div>
                            <asp:Button ID="Button1" runat="server" CssClass="btn-secondary ember-view btn" Text="ذخیـره" />

                            <button id="ember4185" type="button" onclick="CloseSlide()" class="btn-default ember-view btn">
                                <span>انصراف</span>
                            </button>

                        </div>


                    </div>
                </div>
            </div>
</asp:Content>--%>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div dir="rtl" style="width:100%">
    <div class="options">
        <div class="options-item">
            hio
        </div>
    </div>
    </div> &nbsp;
</asp:Content>
