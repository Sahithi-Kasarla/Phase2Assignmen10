<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Assignment10.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 212px;
        }
        .auto-style3 {
            width: 215px;
        }
        .auto-style4 {
            width: 667px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:Image ID="Productimg" runat="server" Height="160px" ImageUrl="~/Images/pink-comboa-600x600.jpg" Width="232px" />
                    </td>                  
                </tr>
                <tr>
                    <td class="auto-style2">Product Name</td>
                    <td>
                        <asp:TextBox ID="PName" runat="server"></asp:TextBox>
                    </td>
                     <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PName" ErrorMessage="Enter Product Name" ForeColor="Red"></asp:RequiredFieldValidator>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style2">Category</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DdProduct" runat="server">
                            <asp:ListItem>Headphone</asp:ListItem>
                            <asp:ListItem>Mobile</asp:ListItem>
                            <asp:ListItem>Laptop</asp:ListItem>
                            <asp:ListItem>Books</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DdProduct" ErrorMessage="Select Category" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Price</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="PPrice" runat="server"></asp:TextBox>
                    </td>              
                     <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PPrice" ErrorMessage="Enter Price" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    </tr>
                <tr>
                    <td class="auto-style2">Description</td>
                    <td class="auto-style3">
                       <asp:TextBox ID="Description" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Description" ErrorMessage="Text is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                   </td>
                     
                </tr>
                <tr>
                    <td class="auto-style2">Release Date</td>
                    <td class="auto-style3">
                        <asp:Calendar ID="Calendar" runat="server">
                             <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register Product" ForeColor="Black" />
                    </td>
                </tr>
                <tr>
                 <td colspan="3">
                      <asp:Label ID="LblMsg" runat="server" ></asp:Label>
                 </td>  
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
