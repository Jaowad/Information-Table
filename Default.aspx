<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div >  
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowFooter="true" >
     <HeaderStyle ForeColor="White" Font-Bold="True"
       BackColor="black"></HeaderStyle>
    <Columns>
        <asp:TemplateField HeaderText="Id">
            <ItemTemplate>
                <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>' />
            </ItemTemplate>
            <FooterTemplate>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name">
            <ItemTemplate>
                
                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Name") %>' />
                
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtName" runat="server" Text="" />
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Country">
            <ItemTemplate>
                <asp:TextBox ID="lblCountry" runat="server" Text='<%# Eval("Country") %>' />
            </ItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtCountry" runat="server" Text="" />
                
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:DropDownList ID="drpGender" runat="server" Text='<%# Eval("Item") %>' >
                <asp:ListItem Text="select" Value=""></asp:ListItem>
                    <asp:ListItem Text="MALE" Value="MALE"></asp:ListItem>
                    <asp:ListItem Text="FEMALE" Value="FEMALE"></asp:ListItem>
                </asp:DropDownList>
            </ItemTemplate>
            <FooterTemplate>
                <asp:DropDownList ID="drpGender" runat="server" >
                <asp:ListItem Text="select" Value=""></asp:ListItem>
                    <asp:ListItem Text="MALE" Value="MALE"></asp:ListItem>
                    <asp:ListItem Text="FEMALE" Value="FEMALE"></asp:ListItem>
                </asp:DropDownList>
            </FooterTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="Button1" Text="Delete" runat="server" OnClick="Delete" CommandArgument='<%# Eval("Id") %>'
                    Width="75px" />
                </ItemTemplate>
            <FooterTemplate>
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Add" Width="75px" CommandName="Footer" />
            </FooterTemplate>
        </asp:TemplateField>
    </Columns>
    <EmptyDataTemplate>
        <table>
            <tr>
                <th scope="col" style="color:White;" bgcolor="Black">
                    Id
                </th>
                <th scope="col" style="color:White;" bgcolor="Black">
                    Name
                </th>
                <th scope="col" style="color:White;" bgcolor="Black">
                    Country
                </th>
                <th scope="col" style="color:White;" bgcolor="Black">
                    Gender
                </th>
                <th scope="col" style="color:White;" bgcolor="Black">
                    Action
                </th>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Text="" />
                </td>
                <td>
                    <asp:TextBox ID="txtCountry" runat="server" Text="" />
                </td>
                <td>
                    <asp:DropDownList ID="drpGender" runat="server" >
                    <asp:ListItem Text="select" Value=""></asp:ListItem>
                    <asp:ListItem Text="MALE" Value="MALE"></asp:ListItem>
                    <asp:ListItem Text="FEMALE" Value="FEMALE"></asp:ListItem>
                </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Add" Width="75px" CommandName="EmptyDataTemplate" />
                </td>
            </tr>
        </table>
    </EmptyDataTemplate>
</asp:GridView>
    </div>  
    </form>
</body>
</html>
