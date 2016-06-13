<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EP_TRA_Level.aspx.cs" EnableEventValidation="false" Inherits="EP_TRA_Level" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="..\css\styles.css" type="text/css" />
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">

       
        
        
        function temp(str1,str2,sign)
        {         
            opener.reload(str1,str2,sign);
            window.close();
        }
        function gd()
        {
            
             w1 = document.getElementById("GridView1").rows[1].cells[0].offsetWidth;
             w2 = document.getElementById("GridView1").rows[1].cells[1].offsetWidth;
             w3 = document.getElementById("GridView1").rows[1].cells[2].offsetWidth;
             w4 = document.getElementById("GridView1").rows[1].cells[3].offsetWidth;



             document.getElementById("put_but").rows[0].cells[0].style.width = "450px";
             



        }


        //gd();

    </script>
</head>
<body>
    <form id="tra_lv" runat="server">
    <div id="dis_err" >
        <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
    </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="EP_Cate_Iiitems" HeaderText="KeyItem" />
                <asp:BoundField DataField="EP_Cate_Stage" HeaderText="Stage" />
                <asp:BoundField DataField="EP_Cate_SpeChar" HeaderText="Special Characteristics" />
                <asp:TemplateField HeaderText="EPTRA_LV">
                   
                <ItemTemplate>
                        <asp:DropDownList ID="Doe_Lv" runat="server" Width="100px">
                           
                        </asp:DropDownList>
                </ItemTemplate>
                    
                    
                </asp:TemplateField>
                 
                
            </Columns>
           
          
           

            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Height="60px" Width="600px" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        </div>
        <div>
            <table id ="put_but">
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td><asp:Button ID="btnInsert" runat="server" CausesValidation="False" class="blueButton button2" CommandName="Insert" Text="Save" OnClick="btnInsert_Click"  /> </td>
            </tr>
             </table>
        </div>

        
    </form>
</body>
</html>
