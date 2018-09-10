<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="RentalHouses.aspx.cs" Inherits="Sunset_Rentals_Web_App.RentalHouses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="padding-top:50px">
        <asp:Repeater ID="rptrHouses" runat="server">
            <ItemTemplate>
        <div class="col-sm-3 col-md-3">
            <a style="text-decoration:none;" href="HouseDetails.aspx?HID=<%#Eval("HID") %>">
            <div class="thumbnail">
               <img src="House Images/ProductImages/<%#Eval("HID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='House Images/noimg.png'" >
                <div class="caption">
                    <div class="probrand"><%#Eval("BrandName") %></div>
                    <div class="proName"><%#Eval("HName") %></div>
                    <div class="poriginal"><span class="pooriginal"><%#Eval("HPrice") %></span><%#Eval("HSelPrice") %><span class="propriceDiscount">(<%#Eval("DiscAmount") %> off)</span></div>                   
                </div>
            </div>
                </a>
        </div>
                </ItemTemplate>
            </asp:Repeater>
    </div>
</asp:Content>
