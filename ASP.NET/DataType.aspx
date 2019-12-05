﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataType.aspx.cs" Inherits="BackEndPortfolioWebApp.ASP.NET.DataType" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            background: #EEE;
            font: 10px/13px 'Lucida Sans',sans-serif;
        }

        .wrap {
            overflow: hidden;
            margin: 10px;
        }

        .box {
            float: left;
            position: relative;
            width: 20%;
            padding-bottom: 20%;
        }

        .boxInner {
            position: absolute;
            left: 10px;
            right: 10px;
            top: 10px;
            bottom: 10px;
            overflow: hidden;
        }

            .boxInner img {
                width: 100%;
            }

            .boxInner .titleBox {
                position: absolute;
                bottom: 0;
                left: 0;
                right: 0;
                margin-bottom: -50px;
                background: #000;
                background: rgba(0, 0, 0, 0.5);
                color: #FFF;
                padding: 10px;
                text-align: center;
                -webkit-transition: all 0.3s ease-out;
                -moz-transition: all 0.3s ease-out;
                -o-transition: all 0.3s ease-out;
                transition: all 0.3s ease-out;
            }

        body.no-touch .boxInner:hover .titleBox, body.touch .boxInner.touchFocus .titleBox {
            margin-bottom: 0;
        }

        @media only screen and (max-width : 480px) {
            /* Smartphone view: 1 tile */
            .box {
                width: 100%;
                padding-bottom: 100%;
            }
        }

        @media only screen and (max-width : 650px) and (min-width : 481px) {
            /* Tablet view: 2 tiles */
            .box {
                width: 50%;
                padding-bottom: 50%;
            }
        }

        @media only screen and (max-width : 1050px) and (min-width : 651px) {
            /* Small desktop / ipad view: 3 tiles */
            .box {
                width: 33.3%;
                padding-bottom: 33.3%;
            }
        }

        @media only screen and (max-width : 1290px) and (min-width : 1051px) {
            /* Medium desktop: 4 tiles */
            .box {
                width: 25%;
                padding-bottom: 25%;
            }
        }

        .header {
            background-color: #B0C4DE;
            border-top: solid 1px #9dbbcc;
            border-bottom: solid 1px #9dbbcc;
        }

        .separator {
            border-right: 1px solid #ccc;
            border-bottom-width: thick;
            border-left-width: thick;
        }

        .style1 {
            width: 1600px;
        }

        .style2 {
            font-size: xx-large;
            color: #FFFFFF;
            height: 50px;
        }

        .style3 {
            width: 100px;
        }

        .style4 {
            font-family: 微軟正黑體;
            background-color: #800000;
        }

        .style5 {
            font-size: xx-large;
        }

        .style6 {
            font-size: large;
        }

        .style7 {
            font-size: Small;
        }

        .left-page-style {
            width: 10%;
            height: 800px;
            background-color: lightgray;
        }

        .center-page-style {
            width: 80%;
            height: 800px;
            background-color: lightblue;
        }

        .right-page-style {
            width: 10%;
            height: 800px;
            background-color: lightgray;
        }

        .main-page-style {
            width: 80%;
            height: 800px;
            font-family: 微軟正黑體;
            background-color: lightblue;
            text-align: justify;
        }

        .textAlign {
            text-align: center;
        }
    </style>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %>- 我的 ASP.NET  作品集</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <style type="text/css">
        .auto-style1 {
            color: #B94FFF;
        }

        .auto-style2 {
            background-color: #99CCFF;
        }
    </style>
</head>
<body>
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <div class="navbar navbar-inverse navbar-fixed-top" style="left: 0; right: 0; top: 0; height: 115px; background-image: url('/images/3arrows_cyc.jpg'); color: #000000;">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/index.html">
                        <span class="auto-style1"><strong><span class="auto-style2">作品集</span></strong></span></a><br />
                    <br />
                    <br />
                    <br />
                    &nbsp;
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" href="~/Default" class="auto-style1"><span class="auto-style2">首頁</span></a></li>
                        <li><a runat="server" href="~/CollectionWeb1.aspx" class="auto-style1"><span class="auto-style2">ASP.NET作品集</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container body-content">
            <asp:Table ID="Table1" runat="server" Height="85" BackColor="Plum"></asp:Table>

            <div>
                <h1 class="textAlign">資料型別範例 </h1>
            </div>
            <div>
                <asp:Label ID="LabelName" runat="server" Text="Label"></asp:Label>
            </div>
            <br />
            <br />
            <br />
            <br />
            <hr />

            <footer>
                <p>&copy; <%--To learn more about bundling scripts in ScriptManager see https://go.microsoft.com/fwlink/?LinkID=301884 --%>- 我的 ASP.NET 作品集</p>
            </footer>
        </div>
    </form>
</body>
</html>