<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddGenre.aspx.cs" Inherits="Sunset_Rentals_Web_App.AddGenre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
       <div class="form-horizontal">
           <h2>Add Genre</h2>
           <hr />
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Genre Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtGenreName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is required" ControlToValidate="txtGenreName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                   <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="BtnAddd_Click" />
                      
                    </div>
                </div>
            <h1>Genre</h1>
        <hr />
        <div class="panel panel-default">
            <!-----DEfault panel contents--->
            <div class="panel-heading">ALL Genre</div>
             <asp:Repeater ID="rptrCategory" runat="server">
                  <HeaderTemplate>
                        <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Genre</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                      </HeaderTemplate>
                  <ItemTemplate>
                       <tr>
                        <th><%# Eval("GenreID")%></th>
                          <td><%# Eval("GenreName")%></td>
                          <td>Edit</td>
                    </tr>
                        </ItemTemplate>
                 <FooterTemplate>
                      </tbody>
            </table>      
                 </FooterTemplate>
                  </asp:Repeater>
             <!-----Table--->                    
            </div>
            </div> 
           </div>
        </div>
</asp:Content>
