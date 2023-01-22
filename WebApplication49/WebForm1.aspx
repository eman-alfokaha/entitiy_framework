<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication49.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <%-- <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Textname" runat="server" Text="name"></asp:Label>
&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="TextAge" runat="server" Text="age"></asp:Label>
&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="city"></asp:Label>
&nbsp;<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Textphone" runat="server" Text="phone"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="TextEmail" runat="server" Text="Email"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label6" runat="server" Text="city"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="height: 29px" Text="search" />
&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="all city" />
&nbsp;
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="order" />
            <br />
            <br />
        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" Width="675px">
        </asp:GridView>
        <br />
    </form>--%>
     <form id="form1" runat="server">
        <div class="big_div">
            
        
        <div class="div_add">
            <h1>Add Customer</h1>
            <asp:TextBox ID="Textname" runat="server" placeholder="Name" CssClass="textbox" OnTextChanged="Textname_TextChanged"></asp:TextBox><br /><br />
            <asp:TextBox ID="TextEmail" runat="server" placeholder="Email"  CssClass="textbox"></asp:TextBox><br /><br />
            <asp:TextBox ID="Textphone" runat="server" placeholder="Phone"  CssClass="textbox"></asp:TextBox><br /><br />

            <asp:TextBox ID="TextAge" runat="server" placeholder="Age"  CssClass="textbox"></asp:TextBox><br /><br />
            <asp:Label ID="Label1" runat="server" Text="City" CssClass="lable"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop"></asp:DropDownList><br /><br />
             <asp:Label ID="Label3" runat="server" Text="Choose Image : " CssClass="lable3"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif"/><asp:Button ID="upload" runat="server" Text="upload" OnClick="upload_Click" class="btn" /><br /><br />
            <asp:Label ID="Label2" runat="server" Text="" Visible="false"></asp:Label> <br />
            <asp:Button ID="Button1" runat="server" Text="Add Customer" OnClick="Button1_Click" class="btn_Add"/>

          
                <asp:Button ID="ButtonShow" runat="server" Text="Show All Customers" OnClick="ButtonShow_Click" CssClass="btn_Show" /><br /><br />
            <asp:Label ID="Label4" runat="server" Text="Please Fill All Fields" Visible="false" CssClass="l"></asp:Label>


        </div>
     </div>
    </form>
</body>
</html>
