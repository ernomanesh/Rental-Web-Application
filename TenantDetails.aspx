<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="TenantDetails.aspx.cs" Inherits="Sunset_Rentals_Web_App.TenantDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <hr /><h4 style="">WELCOME TO OUR TENANT DETAILS FORM</h4><hr />
     <div class="form-horizontal">
     <div class="form-group">
         <p>PLEASE ENTER YOUR DETAILS IN THE FORM BELOW:</p>
         <div class="form-group">
                 <asp:label id="Label10" runat="server" cssclass="col-md-2 control-label" text="Booking No"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtbookNo" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtbookNo"></asp:RequiredFieldValidator>
                    </div>
             </div>
         <div class="form-group">
                 <asp:label id="Label6" runat="server" cssclass="col-md-2 control-label" text="All Name"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtAL" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtAL"></asp:RequiredFieldValidator>
                    </div>
             </div>
          <div class="form-group">
                 <asp:label id="Label5" runat="server" cssclass="col-md-2 control-label" text="UserName"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtUn" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtUn"></asp:RequiredFieldValidator>
                    </div>
             </div>
           
              <div class="form-group">
                 <asp:label id="Label8" runat="server" cssclass="col-md-2 control-label" text="Identification Number(ID)"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtID" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtID"></asp:RequiredFieldValidator>
                    </div>
             </div>
         
          <div class="form-group">
                 <asp:label id="Label2" runat="server" cssclass="col-md-2 control-label" text="Address"></asp:label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtaddre" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtaddre"></asp:RequiredFieldValidator>
                    </div>
                </div>
          <div class="form-group">
                 <asp:label id="Label3" runat="server" cssclass="col-md-2 control-label" text="Contact"></asp:label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtconta" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtconta"></asp:RequiredFieldValidator>
                    </div>
                </div>
         <div class="form-group">
                 <asp:label id="Label4" runat="server" cssclass="col-md-2 control-label" text="Payment Method"></asp:label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtpay" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtpay"></asp:RequiredFieldValidator>
                    </div>
             </div>
         <div class="form-group">
                 <asp:label id="Label1" runat="server" cssclass="col-md-2 control-label" text="House Name"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtHN" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtHN"></asp:RequiredFieldValidator>
                    </div>
             </div>
          <div class="form-group">
                 <asp:label id="Label7" runat="server" cssclass="col-md-2 control-label" text="From(Date)"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtFrom" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtFrom"></asp:RequiredFieldValidator>
                    </div>
             </div>
          <div class="form-group">
                 <asp:label id="Label9" runat="server" cssclass="col-md-2 control-label" text="To(Date)"></asp:label>
                    <div class="col-md-3">
                         <asp:TextBox ID="txtto" CssClass="form-control" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="text-danger" runat="server" ErrorMessage="This field is Required" ControlToValidate="txtto"></asp:RequiredFieldValidator>
                    </div>
             </div>
         <div>
                <asp:Button ID="btnCompleteOrder" runat="server" Text="Complete Booking" CssClass="buyNowBtn" OnClick="btnCompleteOrder_Click"/><p style="text-align:center;">
                  </ 
                
             </div>
         </div>
         </div>
</asp:Content>
