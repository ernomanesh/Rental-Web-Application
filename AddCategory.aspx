<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="Sunset_Rentals_Web_App.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
       <div class="form-horizontal">
           <h2>Add Category</h2>
           <hr />
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Category Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtCatName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is required" ControlToValidate="txtCatName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                   <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="BtnAddd_Click" />
                      
                    </div>
                </div>
         
           </div>
         <h1>Categories</h1>
        <hr />
        <div class="panel panel-default">
            <!-----DEfault panel contents--->
            <div class="panel-heading">ALL Category</div>
             <asp:Repeater ID="rptrCategory" runat="server">
                  <HeaderTemplate>
                        <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Category</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                      </HeaderTemplate>
                  <ItemTemplate>
                       <tr>
                        <th><%# Eval("CatID")%></th>
                          <td><%# Eval("CatName")%></td>
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
</asp:Content>
