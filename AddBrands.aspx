<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddBrands.aspx.cs" Inherits="Sunset_Rentals_Web_App.AddBrands" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
       <div class="form-horizontal">
           <h2>Add Brand</h2>
           <hr />
             <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Brand Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is required" ControlToValidate="txtBrandName"></asp:RequiredFieldValidator>
                    </div>
                </div>
            <div class="form-group">
                   <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="BtnAddd" runat="server" Text="Add" CssClass="btn btn-default" OnClick="BtnAddd_Click" />
                      
                    </div>
                </div>
           </div>
        <h1>Brands</h1>
        <hr />
        <div class="panel panel-default">
            <!-----DEfault panel contents--->
            <div class="panel-heading">ALL BRANDS</div>
             <asp:Repeater ID="rptrBrands" runat="server">
                  <HeaderTemplate>
                        <table class="table">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Brand</th>
                        <th>Edit</th>
                    </tr>
                </thead>
                <tbody>
                      </HeaderTemplate>
                  <ItemTemplate>
                       <tr>
                        <th><%# Eval("BrandID")%></th>
                          <td><%# Eval("Name")%></td>
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
</asp:Content>
