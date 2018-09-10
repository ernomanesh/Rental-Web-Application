<%@ Page Title="RentalBookings" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="RentalBookings.aspx.cs" Inherits="Sunset_Rentals_Web_App.RentalBookings" %>

<script runat="server">

    protected void btncontinue_Click(object sender, EventArgs e)
    {

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top:20px;">
        <div class="col-md-9">
            <h5 class="proNameView" runat="server" id="h5NoteItems"></h5>

            <asp:Repeater ID="rptrbookingHouses" runat="server"> 
                <ItemTemplate>
            <div class="media" style="border: 1px solid #eaeaec;">
                <div class="media-left">
                    <a href="HouseDetails.aspx?HID=<%#Eval("HID") %> " target="_blank">
                        <img width="100px" class="media-object" src="House Images/ProductImages/<%#Eval("HID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>"  onerror="this.src='House Images/noimg.png'"   />
                    </a>
                </div>
                <div class="media-body">
<h5 class="media-heading proNameViewCart"><%#Eval("HName") %></h5>
                    <p class="propriceDiscountView">Size :<%#Eval("SizeNamee") %></p>
                    <span class="propriceView">ksh : <%#Eval("HSelPrice","{0:C}") %></span>
                    <span class="pooriginalView"> <%#Eval("HPrice","{0:0,00}") %></span>
                    <p>
                         <asp:Button CommandArgument='<%#Eval("HID") +"-"+ Eval("SizeIDD")%>' ID="BtnRemoveBooking" OnClick="BtnRemoveBooking_Click" CssClass="removeButton" runat="server" Text="REMOVE BOOKING" />
                    </p>
                </div>
            </div>
                    </ItemTemplate>
                </asp:Repeater>
        </div>
         <div class="col-md-3" runat="server" id="divRentDetails">
             <div style=" border-bottom: 1px solid #eaeaec;">
                 <h5 class="proNameView">Rental Details</h5>
                 <div>
                     <label>Rent Payable</label>
                     <span class="pull-right priceGray" id="spanBookingTotal" runat="server"></span>
                 </div>
                  <div>
                     <label>Other Amounts</label>
                     <span class="pull-right priceGreen " id="SpanDiscount" runat="server"></span>
                 </div>
             </div>
             <div>
                   <div class="propriceView">
                     <label>Total Rent Payable</label>
                     <span class="pull-right" id="SpanTotal" runat="server"></span>
                 </div>
                 <div>
                      <asp:Button ID="BtnBookNow" OnClick="BtnBookNow_Click" CssClass="buyNowBtn" runat="server" Text="BOOK NOW" /><p style="text-align:center;">OR</p>
                  <asp:Button ID="btncontinueBooking" runat="server" CssClass="buyNowBtn" OnClick="btncontinueBooking_Click" Text="CONTINUE BOOKING" />
                 </div>
             </div>
        </div>
    </div>
</asp:Content>
