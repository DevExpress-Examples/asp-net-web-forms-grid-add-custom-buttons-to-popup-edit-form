<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .prevButton {
            left: -3px;
        }
        .nextButton {
            right: -3px;
        }
        .navButtons {
            position: absolute;
            top: 40%;
            background-color: rgba(0, 0, 0, 0.15);
            background-image: none !important;
        }
        .navButtons .dxb {
            width: 10px;
            height: 50px;
            padding-left: 3px !important;
            padding-right: 3px !important;
        }
        .navButtons:hover {
            background-color: rgba(0, 0, 0, 0.75);
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="gridView" runat="server" AutoGenerateColumns="False" DataSourceID="ads"
            KeyFieldName="ProductID" ClientInstanceName="gridView" EnableCallbackAnimation="false">
            <SettingsLoadingPanel Delay="0" Mode="ShowAsPopup" />
            <Columns>
                <dx:GridViewCommandColumn ShowEditButton="True" />
                <dx:GridViewDataTextColumn FieldName="ProductID" ReadOnly="True" >
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" />
                <dx:GridViewDataTextColumn FieldName="SupplierID" />
                <dx:GridViewDataTextColumn FieldName="CategoryID" />
                <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" />
                <dx:GridViewDataTextColumn FieldName="UnitPrice" />
                <dx:GridViewDataTextColumn FieldName="UnitsInStock" />
                <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" />
                <dx:GridViewDataTextColumn FieldName="ReorderLevel" />
                <dx:GridViewDataCheckColumn FieldName="Discontinued" />
                <dx:GridViewDataColumn Visible="false">
                    <EditFormSettings Visible="True" />
                    <EditItemTemplate>
                        <dx:ASPxButton ID="buttonPrev" runat="server" Text="<" CssClass="navButtons prevButton" AutoPostBack="false" OnInit="buttonPrev_Init" />
                        <dx:ASPxButton ID="buttonNext" runat="server" Text=">" CssClass="navButtons nextButton" AutoPostBack="false" OnInit="buttonNext_Init" />
                    </EditItemTemplate>
                </dx:GridViewDataColumn>
            </Columns>
            <SettingsEditing Mode="PopupEditForm" />
            <SettingsPopup>
                <EditForm VerticalAlign="WindowCenter" HorizontalAlign="WindowCenter" />
            </SettingsPopup>
            <StylesPopup>
                <EditForm>
                    <Content>
                        <Paddings PaddingLeft="30px"></Paddings>
                    </Content>
                </EditForm>
            </StylesPopup>
        </dx:ASPxGridView>
        <asp:AccessDataSource ID="ads" runat="server" DataFile="~/App_Data/nwind.mdb" SelectCommand="SELECT * FROM [Products]" />
    </form>
</body>
</html>
