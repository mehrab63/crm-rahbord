
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddFields.aspx.cs" Inherits="CrmRahbord.Pages.AddFields" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">

            <ContentTemplate>
                <div role="dialog" tabindex="-1" class="modal slide modal-slide modal-sm in">
        <div class="modal-dialog">
            <div id="ember4229" class="modal-content ember-view">
                <form id="ember4236" class="ember-view ui-form">
                    <div class="ui-form-header">
                        <span class="modal-title">اضافه کردن فیلد</span>
                        <button id="ember4249" type="button" class="close ember-view btn">
                            <span aria-hidden="true" class="icon-close"></span>

                        </button>
                    </div>
                    <div class="ui-form-content">
                        <div class="form-group">
                            <div id="ember4258" class="ember-view ui-field form-field-required">
                                <label id="ember4259" for="label_ember4258" class="ember-view control-label">
                                    نام فیلد</label>

                                <asp:TextBox CssClass="form-control" ID="txtname" runat="server" placeholder="نام فیلد را وارد کنید"></asp:TextBox>
                            </div>
                        </div>

                        <!---->
                        <div class="form-group form-field-required ">
                            <label class="control-label">نوع فیلد</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control form-control-lg " AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnTextChanged="DropDownList1_TextChanged">
                                <asp:ListItem Value="0">Text</asp:ListItem>
                                <asp:ListItem Value="1">Text area</asp:ListItem>
                                <asp:ListItem Value="2">Number</asp:ListItem>
                                <asp:ListItem Value="3">Dropdown</asp:ListItem>
                                <asp:ListItem Value="4">Checkbox</asp:ListItem>
                                <asp:ListItem Value="5">Radio button</asp:ListItem>
                                <asp:ListItem Value="6">Date picker</asp:ListItem>
                                <asp:ListItem Value="7">Multi select</asp:ListItem>
                            </asp:DropDownList>
                            <div class="form-group">

                                <label>گروه یا زیرگروه</label>
                                <asp:DropDownList ID="GroupList" runat="server" CssClass="form-control form-control-lg " AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" OnTextChanged="DropDownList1_TextChanged">
                                    <asp:ListItem Value="0">اطلاعات پایه</asp:ListItem>
                                    <asp:ListItem Value="1">اطلاعات پایه- شماره تلفن ها</asp:ListItem>
                                    <asp:ListItem Value="2">اطلاعات پایه- آدرس ها</asp:ListItem>
                                    <asp:ListItem Value="3">اطلاعات پایه- اطلاعات سیستمی</asp:ListItem>
                                    <asp:ListItem Value="3">اطلاعات پایه- پرفایل اجتماعی</asp:ListItem>
                                    <asp:ListItem Value="4">اطلاعات اضافه</asp:ListItem>
                                    <asp:ListItem Value="5">سفارشی</asp:ListItem>
                                </asp:DropDownList>
                                <!---->

                                <div class="clearfix"></div>
                                <div class="form-group pull-right" data-test-required="">
                                    <div id="ember4299" class="pull-right ember-view custom-checkbox">
                                        <label class="control-label custom-checkbox-label ">
                                            <div class="custom-checkbox-wrap">
                                                <input id="ember4300" type="checkbox" class="checkbox form-control ember-view ember-checkbox">
                                                <span></span>
                                            </div>
                                            <div class="custom-checkbox-text">فیلد ضروری</div>
                                        </label>
                                    </div>
                                    <a class="pull-right mg-l-5" target="_blank" href="//support.freshsales.io/support/solutions/articles/226997-what-is-a-required-field-">
                                        <i class="icon-question-circled valign-inline"></i>
                                    </a>
                                </div>

                                <div class="clearfix"></div>
                                <div class="form-group pull-right" data-test-readonly="">
                                    <div id="ember4305" class="pull-right ember-view custom-checkbox">
                                        <label class="control-label custom-checkbox-label ">
                                            <div class="custom-checkbox-wrap">
                                                <input id="ember4306" type="checkbox" class="checkbox form-control ember-view ember-checkbox">
                                                <span></span>
                                            </div>
                                            <div class="custom-checkbox-text">فیلد فقط خواندنی</div>
                                        </label>
                                    </div>
                                    <a class="pull-right mg-l-5" target="_blank" href="//support.freshsales.io/support/solutions/articles/226998-what-is-a-read-only-field-">
                                        <i class="icon-question-circled valign-inline"></i>
                                    </a>
                                </div>
                                <div class="clearfix">

                                    <div class="alert-success">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </div>

                                </div>
                                <div class="clearfix">
                                    <div class="form-group">
                                        <asp:Label ID="lblSize" runat="server" Text="اندازه فیلد"></asp:Label>
                                        <asp:TextBox ID="txtsiz" runat="server" CssClass=" form-control">Size</asp:TextBox>
                                    </div>
                                </div>
                                <!---->
                                <!---->
                            </div>
                            <div class="ui-form-footer">
                                <asp:Button ID="btnCreateField" runat="server" CssClass="btn-secondary ember-view btn" Text="ذخیـره" OnClick="btnCreateField_Click" />
                                <button id="ember4318" type="button" class="btn-default ember-view btn">
                                    <span>لغو</span>
                                </button>
                            </div>
                </form>
            </div>
        </div>
    </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>

    </form>
</body>
</html>


        

