<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication_Kaido17.WebForm1" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 1401px;
        }
        .auto-style1 {
            text-decoration: none;
        }
        .auto-style2 {
            color: #000000;
        }
    </style>
    </head>
        <body style="height: 436px">
            <form id="form1" runat="server">
                <div style="height: 5299px">


<ajaxToolkit:TabContainer ID="tab" runat="server">
  <ajaxToolkit:TabPanel runat="server" HeaderText="Controls_1">
    <ContentTemplate>

                        <p style="height: 37px">
                        1. Baloons
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-top: 0px; margin-bottom: 3px" Width="150px"></asp:TextBox>
                        </p>
                        <p style="height: 28px; margin-top: 19px;">
                        2. Check Boxes
                        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </p>
                        <p style="height: 26px; margin-top: 0px;">
                        3. Command Buttons
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Height="21px" style="margin-top: 0px" />
                &nbsp;
                            <asp:Label ID="Label6" runat="server"></asp:Label>
                        </p>
                        4. Command Links
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Button" />
                        <br />
                        <br />
                        5. Drop-down List &amp; Combo Boxes
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" style="margin-top: 0px" Width="93px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Value="いちご"></asp:ListItem>
                            <asp:ListItem>メロン</asp:ListItem>
                            <asp:ListItem>りんご</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox ID="TextBox2" runat="server" style="margin-top: 0px" Width="159px"></asp:TextBox>
                        <br />
                        <br />
                        6. Group Boxes<table style="height: 59px; width: 287px; margin-top: 5px">
                　　　                    <tr>
　　　　　　                    <td style="width: 100px">
　　　　　　　　                    <asp:Panel ID="Panel1" runat="server" GroupingText="Color" Height="80px" Width="248px" style="margin-top: 0px; margin-right: 3px;" Font-Names="ＭＳ ゴシック">
                                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Sample" Text="Red" OnCheckedChanged="RadioButton1_CheckedChanged" AutoPostBack="True" Font-Names="ＭＳ ゴシック" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" GroupName="Sample" OnCheckedChanged="RadioButton4_CheckedChanged" Text="Black" Font-Names="ＭＳ ゴシック" />
                                        <br />
                                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Sample" Text="Blue" OnCheckedChanged="RadioButton2_CheckedChanged" AutoPostBack="True" Font-Names="ＭＳ ゴシック" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RadioButton ID="RadioButton5" runat="server" AutoPostBack="True" GroupName="Sample" OnCheckedChanged="RadioButton5_CheckedChanged" Text="White" Font-Names="ＭＳ ゴシック" />
                                        <br />
                                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Sample" Text="Yellow" OnCheckedChanged="RadioButton3_CheckedChanged" AutoPostBack="True" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RadioButton ID="RadioButton6" runat="server" AutoPostBack="True" GroupName="Sample" OnCheckedChanged="RadioButton6_CheckedChanged" Text="Green" Font-Names="ＭＳ ゴシック" />
                                        　　　　　</asp:Panel>
　　　　　　                    </td>
　　　　                    </tr>
　　                    </table>
            <asp:TextBox ID="TextBox6" runat="server" style="margin-top: 0px; margin-left: 0px;" Height="16px" Width="242px"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        7. Links
                                      <ul class="nav navbar-nav">
                                        <li><a runat="server" href="~/About">About</a></li>
                                        <li><a runat="server" href="~/Contact">Contact</a></li>
                                    </ul>

                        8. List Boxes
                &nbsp;
                        <asp:ListBox ID="ListBox1" runat="server" Width="96px" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" >
                            <asp:ListItem Value="キャベツ"></asp:ListItem>
                            <asp:ListItem Value="茄子"></asp:ListItem>
                            <asp:ListItem>ピーマン</asp:ListItem>
                            <asp:ListItem Value="もやし"></asp:ListItem>
                            <asp:ListItem Value="トマト"></asp:ListItem>
                            <asp:ListItem Value="レタス"></asp:ListItem>
                        </asp:ListBox>
                &nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" Width="156px"></asp:TextBox>
                        <br />
                        <br />
                        9.
                        List Views&nbsp;
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                            <AlternatingItemTemplate>
                                <tr style="background-color: #FAFAD2;color: #284775;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                    </td>
                                </tr>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <tr style="background-color: #FFCC66;color: #000080;">
                                    <td>
                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="キャンセル" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                    </td>
                                </tr>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>データは返されませんでした。</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <tr style="">
                                    <td>
                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="挿入" />
                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="クリア" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                    </td>
                                    <td>
                                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                                    </td>
                                </tr>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <tr style="background-color: #FFFBD6;color: #333333;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                                    <th runat="server"></th>
                                                    <th runat="server">id</th>
                                                    <th runat="server">name</th>
                                                    <th runat="server">email</th>
                                                </tr>
                                                <tr id="itemPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                                    <td>
                                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="削除" />
                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編集" />
                                    </td>
                                    <td>
                                        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                    </td>
                                    <td>
                                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                                    </td>
                                </tr>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testdbConnectionString2 %>" DeleteCommand="DELETE FROM [Members] WHERE [id] = @id" InsertCommand="INSERT INTO [Members] ([name], [email]) VALUES (@name, @email)" SelectCommand="SELECT * FROM [Members]" UpdateCommand="UPDATE [Members] SET [name] = @name, [email] = @email WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="name" Type="String" />
                                <asp:Parameter Name="email" Type="String" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
                        </asp:EntityDataSource>
                        <br />
                        <br />
                        10. Progress Bars<br />
                    (1)<br />
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                            <img alt="" src="preloader.gif" style="height: 107px; width: 205px"/>
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                        <asp:Button ID="Button5" runat="server" Text="START" OnClick="Button5_Click" Height="31px" style="margin-top: 0px" />
                            <p style="height: 21px; margin-top: 0px">
                        </ContentTemplate>
                        </asp:UpdatePanel>

                    (2)<p>
                    進捗: <progress value="0" id="p" max=100></progress>
                        （<span id="pv" style="color:#00b200">0</span>）%
                    </p>
                    <script>
                        var progressBar = document.getElementById('p');
                        var progressValue = document.getElementById('pv');

                        function updateProgress(newValue) {
                            if (newValue > 100) {
                                return;
                            }
                            progressBar.value = newValue;
                            progressValue.innerHTML = newValue;
                            setTimeout(function () { updateProgress(newValue + 1); }, 1000);
                        }
                    </script>
                    <input type="button" value="START" onclick="updateProgress(0)" />



    </ContentTemplate>
  </ajaxToolkit:TabPanel>
  <ajaxToolkit:TabPanel runat="server" HeaderText="Controls_2">
    <ContentTemplate>

                 <br />
                 <br />
                 11. Progressive Disclosure Controls (command menu)
                    <br />
                    <asp:Label ID="lblTitle" runat="server" Text=" 検索サイトはこちら "
                      Font-Size="Small" Width="250px"></asp:Label><br />
                    <asp:Panel ID="popup" runat="server" BackColor="Gainsboro"
                      BorderColor="Black" BorderStyle="Solid"
                      BorderWidth="1px" Wrap="False">
                      <asp:HyperLink ID="lnk3" runat="server" Font-Size="Small"
                        Font-Underline="False" ForeColor="Navy"
                        NavigateUrl="https://www.google.co.jp">
                        Google
                        </asp:HyperLink><br />
                      <asp:HyperLink ID="lnk1" runat="server" Font-Size="Small"
                        Font-Underline="False" ForeColor="Navy"
                        NavigateUrl="https://www.yahoo.co.jp">
                        Yahoo! JAPAN
                        </asp:HyperLink><br />
                      <asp:HyperLink ID="lnk2" runat="server" Font-Size="Small"
                        Font-Underline="False" ForeColor="Navy"
                        NavigateUrl="https://www.bing.com">
                        Bing
                        </asp:HyperLink>
                    </asp:Panel>
                    <ajaxToolkit:DropDownExtender ID="dde" runat="server"
                      TargetControlID="lblTitle" DropDownControlID="popup"
                      HighlightBackColor="192, 192, 255" HighlightBorderColor="0, 0, 64">
                    </ajaxToolkit:DropDownExtender>
                <br />
                <br />
                12. Radio Buttons
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="80px" OnSelectedIndexChanged="RadioButtonList1_CheckedChanged" Width="95px" AutoPostBack="True">
                    <asp:ListItem>Left</asp:ListItem>
                    <asp:ListItem>Center</asp:ListItem>
                    <asp:ListItem>Right</asp:ListItem>
                </asp:RadioButtonList>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />

 
                13. Search Boxes<br />
    <div>    
   <table>  
    <tr>  
    <td>   
       Search  
        </td>  
        <td>  
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>  
        </td>  
        <td>   
        <asp:Button ID="Button12" runat="server" Text="Go" onclick="Button12_Click" />  
        </td>  
        </tr>  
</table>  
<table><tr><td><p><asp:Label ID="Label8" runat="server"></asp:Label>  </p></td></tr></table>  
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" >
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
    </Columns>
    </asp:GridView>   
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>
    </div>
        <br />
            <br />
            <br />






                14. Sliders
                <asp:TextBox ID="Slider1" runat="server" AutoPostBack="true" />
                <asp:TextBox ID="SliderValue" runat="server" AutoPostBack="true" />
                <ajaxToolkit:SliderExtender ID="se1" runat="server"
                TargetControlID="Slider1" BoundControlID="SliderValue" />
                <asp:Label ID="LastUpdate" runat="server" />
                <br />
                <br />
                15. Spin Controls<br />
                <asp:TextBox ID="txtNum" runat="server" Columns="5"></asp:TextBox>
                <ajaxToolkit:NumericUpDownExtender ID="txtNum_NumericUpDownExtender" runat="server" BehaviorID="NumericUpDownExtender" Maximum="100" Minimum="0" TargetControlID="txtNum" Width="100" />
                <br />
            <br />
            <br />
            16. Status Bars<br />
                IEであればステータスバーに文字「ABC」を表示します。
                <br />
                    <script type="text/javascript">
                        window.status = "ABC";
                    </script>
                <br />
                <br />
            17. Tabs
                <br />
                <br />
            18. Text Boxes
                <br />
            <asp:TextBox ID="TextBox7" runat="server" BackColor="White" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" Width="200px"></asp:Label>
                <br />
            <br />
            19. Tooltips and Infotips<br />
            <asp:Button ID="Button8" runat="server" ToolTip="これはボタンです" Width="150px" />
            <br />
            <br />
            20. Tree Views<br />
            <asp:TreeView ID="TreeView1" runat="server">
               <Nodes>    
                   <asp:TreeNode Text="USC" NavigateUrl="~/Contact" Target="_blank"/>    
                   <asp:TreeNode Text="東日本" NavigateUrl="~/About" Target="_blank">    
                   <asp:TreeNode Text="仙台" NavigateUrl="~/Contact" Target="_blank" />    
                   <asp:TreeNode Text="山形" NavigateUrl="~/About" Target="_blank" />    
                   <asp:TreeNode Text="福島" NavigateUrl="~/Contact" Target="_blank" />    
                   </asp:TreeNode>    
                   <asp:TreeNode Text="首都圏" NavigateUrl="~/About" Target="_blank">    
                   <asp:TreeNode Text="東京" NavigateUrl="~/Contact" Target="_blank" />    
                   <asp:TreeNode Text="千葉" NavigateUrl="~/About" Target="_blank" />    
                   <asp:TreeNode Text="埼玉" NavigateUrl="~/Contact" Target="_blank" />    
                   </asp:TreeNode>    
                   <asp:TreeNode Text="西日本" NavigateUrl="~/About" Target="_blank">    
                   <asp:TreeNode Text="大阪" NavigateUrl="~/Contact" Target="_blank" />    
                   <asp:TreeNode Text="兵庫" NavigateUrl="~/About" Target="_blank" />    
                   <asp:TreeNode Text="名古屋" NavigateUrl="~/Contact" Target="_blank" />    
                   </asp:TreeNode>    
               </Nodes>    
            </asp:TreeView>
                <br />
                <br />


    </ContentTemplate>
  </ajaxToolkit:TabPanel>
  <ajaxToolkit:TabPanel runat="server" HeaderText="Windows">
    <ContentTemplate>
           <br />
           1. Window Management<br />
                &nbsp;&nbsp;
            Left
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Number" Width="50px">0</asp:TextBox>
            px&nbsp;&nbsp; Top
            <asp:TextBox ID="TextBox9" runat="server" TextMode="Number" Width="50px">0</asp:TextBox>
            px&nbsp;
            <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Form Open" Width="100px" />


                <br />
            

                <br />
            2. Windows Frame<br />
                &nbsp;&nbsp;
            <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="電卓" />

                <br />

            <br />
            3. Dialog Boxes<br />
&nbsp;&nbsp;
            <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Button" />
            <br />
            <br />
            4. Common Dialogs<br />
&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" Width="500px" />
            <br />
            <br />
            5. Wizards&nbsp;&nbsp;
<asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="0"
  BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px"
  Font-Names="Verdana" Font-Size="0.8em" Height="106px" Width="325px" OnFinishButtonClick="Wizard1_FinishButtonClick">
  <%--ステップ、サイトバー、ボタンなどのスタイルを設定--%>
  <StepStyle Font-Size="0.8em" ForeColor="#333333" />
  <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
  <NavigationButtonStyle BackColor="White"
    BorderColor="#507CD1" BorderStyle="Solid"
    BorderWidth="1px" Font-Names="Verdana"
    Font-Size="0.8em" ForeColor="#284E98" />
  <%--ウィザード・ステップ（<asp:WizardStep>）を定義--%>
  <WizardSteps>
    <asp:WizardStep runat="server" StepType="Start" Title="名前を入力して下さい。">
      名前：<asp:TextBox ID="txtName" runat="server" Width="175px">
        </asp:TextBox>
    </asp:WizardStep>
    <asp:WizardStep runat="server" StepType="Step" Title="E-Maiアドレスを入力して下さい。">
      E-Maiアドレス：<asp:TextBox ID="txtEmail" runat="server" Width="176px">
        </asp:TextBox>
    </asp:WizardStep>
    <asp:WizardStep runat="server" StepType="Finish" Title="趣味を入力して下さい。">
      趣味：<asp:TextBox ID="txtHobby" runat="server" Width="200px">
           </asp:TextBox>
    </asp:WizardStep>
    <asp:WizardStep runat="server" StepType="Complete" Title="結果">
      名前：<asp:Label ID="lblName" runat="server" Width="210px"></asp:Label>
      <br />
      E-Mail：<asp:Label ID="lblEmail" runat="server" Width="209px"></asp:Label>
      <br />
      趣味：<asp:Label ID="lblHobby" runat="server" Width="216px"></asp:Label>
    </asp:WizardStep>
  </WizardSteps>
  <%--サイトバーボタン、ヘッダのスタイルを設定--%>
  <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana"
    ForeColor="White" />
  <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB"
    BorderStyle="Solid" BorderWidth="2px" Font-Bold="True"
    Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
</asp:Wizard>
            <br />
            6. Property Windows<br />
            &nbsp;&nbsp;
                    <asp:Button ID="Button13" runat="server" Height="29px" OnClick="Button13_Click" Text="［画面のプロパティ］を起動" Width="196px" />
            <br />
                    <br />
            <br />


    </ContentTemplate>
  </ajaxToolkit:TabPanel>
  <ajaxToolkit:TabPanel runat="server" HeaderText=" Commands">
    <ContentTemplate>

                    1. Menus<br />

                    <asp:Menu ID="Menu1" runat="server" StaticSubMenuIndent="10px" onmenuitemclick="Menu1_MenuItemClick" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Bold="True" Font-Names="ＭＳ ゴシック" Font-Size="Medium" ForeColor="#990000" Orientation="Horizontal" 
>
                        <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#FFFBD6" />
                        <DynamicSelectedStyle BackColor="#FFCC66" />
                        <Items>
                            <asp:MenuItem Text="ホーム" Value="ホーム"></asp:MenuItem>
                            <asp:MenuItem Text="挿入" Value="挿入"></asp:MenuItem>
                            <asp:MenuItem Text="ページレイアウト" Value="ページレイアウト"></asp:MenuItem>
                            <asp:MenuItem Text="数式" Value="数式"></asp:MenuItem>
                            <asp:MenuItem Text="データ" Value="データ"></asp:MenuItem>
                            <asp:MenuItem Text="校閲" Value="校閲"></asp:MenuItem>
                            <asp:MenuItem Text="表示" Value="表示" Selected="True"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#FFCC66" />
                    </asp:Menu>

                    <asp:Label ID="Label9" runat="server"></asp:Label>

                    <br />
                    <br />
                    2. Ribbons
                    <br />
<%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls"
  Assembly="FreeTextBox" %>
<body>
                    <FTB:FreeTextBox id="FreeTextBox1" runat="Server" Language="ja-JP"
                      ToolbarStyleConfiguration="Office2003"
                      ToolbarLayout="
ParagraphMenu, FontFacesMenu, FontSizesMenu, FontForeColorsMenu | 
FontForeColorPicker, FontBackColorsMenu, FontBackColorPicker, Bold, Italic, Underline, Strikethrough | 
Superscript, Subscript, CreateLink, Unlink, RemoveFormat | 
JustifyLeft, JustifyRight, JustifyCenter, JustifyFull |
BulletedList, NumberedList | 
Indent, Outdent, Cut,Copy, Paste, Delete, Undo, Redo |  
Print, Save | 
SymbolsMenu, StylesMenu, InsertHtmlMenu | 
InsertRule, InsertDate, InsertTime |
ieSpellCheck, NetSpell |
InsertImageFromGallery, InsertTable, InsertTableRowBelow, InsertTableRowAbove, DeleteTableRow, InsertTableColumnBelow, InsertTableColumnAbove, DeleteTableColumn, InsertForm, InsertTextBox,
InsertTextArea, InsertRadioButton, InsertCheckBox, InsertDropDownList, InsertButton, InsertDiv
 ; Superscript, Subscript" />
  
</body>
 
                    <br />
                    <br />
                    3. ToolBars
                    <br />
                    <%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls"
                      Assembly="FreeTextBox" %>
                    <html>
                    <body>
                    <FTB:FreeTextBox id="ftb" runat="Server" Language="ja-JP"
                      ToolbarStyleConfiguration="Office2003"
                      ToolbarLayout="Cut, Copy, Paste, Delete, Undo, Redo | Bold, Italic, Underline, Strikethrough ; Superscript, Subscript" />
                    </body>
                    </html> 
                    <br />
                    <br />


    </ContentTemplate>
  </ajaxToolkit:TabPanel>
  <ajaxToolkit:TabPanel runat="server" HeaderText="Text">
    <ContentTemplate>

                    1. User Interface Text<br />
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Button" />
                    <br />
                    <br />
                    2. Style and Tone<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label10" runat="server" Font-Names="ＭＳ ゴシック" ForeColor="Black"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    Windows Live ID: 
                    <asp:TextBox ID="TextBox11" runat="server" Font-Names="ＭＳ ゴシック"></asp:TextBox>
                    <a class="auto-style1" href="(example555@hotmail.com)"><span class="auto-style2">&nbsp;(example555@hotmail.com</span></a>)<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Font-Names="ＭＳ ゴシック" ForeColor="Black"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Password:
                    <asp:TextBox ID="TextBox12" runat="server" Font-Names="ＭＳ ゴシック"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Font-Names="ＭＳ ゴシック" ForeColor="Black"></asp:Label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Sign in" />


    </ContentTemplate>
  </ajaxToolkit:TabPanel>
  <ajaxToolkit:TabPanel runat="server" HeaderText="Messages">
    <ContentTemplate>


                    <br />
                    1. Error Messages<br />
                    <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" Text="Button" />
                    <br />
                    <br />
                    2. Warning Messages<br />
                    <asp:Button ID="Button17" runat="server" OnClick="Button17_Click" Text="Button" />
                    <br />
                    <br />
                    3. Confirmations<br />
                    <asp:Button ID="Button18" runat="server" OnClick="Button18_Click" Text="Button" />
                    <br />
                    <br />
                    4. Notifications<br />
                    <asp:Button ID="Button19" runat="server" OnClick="Button19_Click" Text="Button" />
                    <br />
                    <br />


    </ContentTemplate>
  </ajaxToolkit:TabPanel>
  <ajaxToolkit:TabPanel runat="server" HeaderText="Interaction">
    <ContentTemplate>

                    1. Touch
                     <!doctype html>
                    <head>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=0" />
<meta charset="utf-8">
<title></title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link href="../../lib/smartphon.css" rel="stylesheet" type="text/css">
<style type="text/css">
#touch {
	background-color: #0000ff;
	width: 80%;
	margin-right: auto;
	margin-left: auto;
	color: #FFFFFF;
	text-align: center;
	margin-bottom: 15px;
	height: 70px;
	line-height: 70px;
}
#message{
	color: #000080;
}
#event{
	color: #0000ff;
	font-weight: bold;
	font-size: 120%;
}
</style>
<script type="text/javascript">
    jQuery(document).ready(function () {

        /*
         * タップ、スワイプ、指を離した時のイベントハンドラ
         */
        $("#touch").bind("touchstart", TouchStart);
        $("#touch").bind("touchmove", TouchMove);
        $("#touch").bind("touchend", TouchLeave);


        /*
         * タップした位置をメモリーする
         */
        function TouchStart(event) {
            $("#event").html('タップしました');
            var pos = Position(event);
            $("#touch").data("memory", pos.x);
        }

        /*
         * スワイプ
         * タップした位置からプラスかマイナスかで左右移動を判断
         */
        function TouchMove(event) {
            var pos = Position(event); //X,Yを得る

            if (pos.x < $("#touch").data("memory")) {
                $("#event").html('左に移動');
            } else {
                $("#event").html('右に移動');
            }

           // $("#leave").html('移動距離 X=' + pos.x + ' , Y=' + pos.y);
        }

        /*
         * 指を離す
         */
        function TouchLeave(event) {
            $("#event").html('指を離しました');
        }

        /*
         * 現在位置を得る
         */
        function Position(e) {
            var x = e.originalEvent.touches[0].pageX;
            var y = e.originalEvent.touches[0].pageY;
            x = Math.floor(x);
            y = Math.floor(y);
            var pos = { 'x': x, 'y': y };
            return pos;
        }


    });
</script>
</head>

<body>&nbsp;
<div id="container">

  <p><span id="message">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;イベント：</span> <span id="event"></span></p>
  <div id="touch" data-memory=''>こちらをタッチして下さい。</div>
  </div>




<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-11800613-7']);
    _gaq.push(['_trackPageview']);
    (function () {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>

<script type="text/javascript" src="http://studio-key.com/ra/script.php"></script><noscript><p><img src="http://studio-key.com/ra/track.php" alt="" width="1" height="1" /></p></noscript> 
                    </body>
                    </html>

                    2. Mouse and Pointers
                    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                    <html>
                    <head>
                    <title></title>
                    <style type="text/css">
                    .wait { cursor: wait; }
                    .help { cursor: help; }
                    </style>
                    </head>
                    </html>
                    <body>
                    <p><span class="wait">&nbsp;&nbsp; ・「処理中」のカーソル</span></p>
                    <p style="height: 17px"><span class="help">&nbsp;&nbsp; ・「ヘルプ」のカーソル</span></p>
                    </body>
                    </html>

                    3. Pen<br />
                    <br />
<!DOCTYPE html>
    <html lang="ja">
        <head>
            <meta charset="utf-8">
            <title>シンプルペイント</title>
            <link rel="stylesheet" href="css/main.css" type="text/css" media="all">
            <script type="text/javascript" src="js/draw.js"></script>
        </head>
        <body>
       <canvas id="myCanvas" width="640" height="480">
            HTML5　Canvasに対応したブラウザーを使用してください。
        </canvas>
    </body>
</html>

<script type="text/javascript">

    window.addEventListener("load", function(){
        var can = document.getElementById("myCanvas");
        can.addEventListener("mousemove", draw, true);
    }, true);
    // 描画処理
    function draw(e){
        var x = e.clientX;
        var y = e.clientY - 21;
        var can = document.getElementById("myCanvas");
        var context = can.getContext("2d");
        context.fillStyle = "rgba(0,255,0,1)";
        context.fillRect(x,y,5,5);
    }

</script>


                    <br />
                    <br />
                    4. Keyboard
                    <br />
                    <asp:Button ID="Button20" runat="server" OnClick="Button20_Click" Text="起動" />
                    <asp:Button ID="Button21" runat="server" OnClick="Button21_Click" Text="終了" />
                    <br />
                    <br />
                    5. Accessibility<br />
                <asp:Button ID="Button33" runat="server" OnClick="Button33_Click" Text="拡大鏡" />
                    <br />
                    <br />


    </ContentTemplate>
  </ajaxToolkit:TabPanel>
  <ajaxToolkit:TabPanel runat="server" HeaderText="Visuals">
    <ContentTemplate>

                       1. Layout; (Resizable Text)<br />
                    <head>
                      <meta charset="utf-8">
                      <meta name="viewport" content="width=device-width, initial-scale=1">
                      <title>jQuery UI Resizable - Textarea</title>
                      <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
                      <link rel="stylesheet" href="/resources/demos/style.css">
                      <style>
                      .ui-resizable-se {
                        bottom: 17px;
                      }
                      </style>
                      <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
                      <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
                      <script>
                          $(function () {
                              $("#resizable").resizable({
                                  handles: "se"
                              });
                          });
                      </script>
                    </head>
                    <body>
 
                    <textarea id="resizable" rows="5" cols="20"></textarea><br />
&nbsp;<br />
                        2. Fonts<br />
                        <asp:TextBox ID="TextBox13" runat="server" AutoPostBack="True">Text</asp:TextBox>
&nbsp;
                        <asp:Button ID="Button22" runat="server" OnClick="Button22_Click1" style="height: 27px" Text="S" Width="100px" />
                        <asp:Button ID="Button23" runat="server" OnClick="Button23_Click" Text="M" Width="100px" />
                        <asp:Button ID="Button24" runat="server" OnClick="Button24_Click" Text="L" Width="100px" />
                        <br />
                        <br />
                        3. Color<br />
                        <asp:TextBox ID="TextBox14" runat="server">Text</asp:TextBox>
                        <asp:Button ID="Button25" runat="server" OnClick="Button25_Click" Text="Red" Width="100px" />
                        <asp:Button ID="Button26" runat="server" OnClick="Button26_Click" Text="Blue" Width="100px" />
                        <asp:Button ID="Button27" runat="server" OnClick="Button27_Click" Text="Yellow" Width="100px" />

                        <br />
                        <br />

                        4. Icon<br />
                        <asp:TreeView ID="TreeView2" runat="server">
                           <Nodes>    
                               <asp:TreeNode Text="USC" NavigateUrl="~/Contact" Target="_blank" ImageUrl="~/jpg/USC.JPG" ShowCheckBox="False" Expanded="False"/>    
                               <asp:TreeNode Text="東日本" NavigateUrl="~/About" Target="_blank" ImageUrl="~/jpg/Folder.jpg">    
                               <asp:TreeNode Text="仙台" NavigateUrl="~/Contact" Target="_blank" ImageUrl="~/jpg/File.jpg" />    
                               <asp:TreeNode Text="山形" NavigateUrl="~/About" Target="_blank" ImageUrl="~/jpg/File.jpg" />    
                               <asp:TreeNode Text="福島" NavigateUrl="~/Contact" Target="_blank" ImageUrl="~/jpg/File.jpg" />    
                               </asp:TreeNode>    
                               <asp:TreeNode Text="首都圏" NavigateUrl="~/About" Target="_blank" ImageUrl="~/jpg/Folder.jpg">    
                               <asp:TreeNode Text="東京" NavigateUrl="~/Contact" Target="_blank" ImageUrl="~/jpg/File.jpg" />    
                               <asp:TreeNode Text="千葉" NavigateUrl="~/About" Target="_blank" ImageUrl="~/jpg/File.jpg" />    
                               <asp:TreeNode Text="埼玉" NavigateUrl="~/Contact" Target="_blank" ImageUrl="~/jpg/File.jpg" />    
                               </asp:TreeNode>    
                               <asp:TreeNode Text="西日本" NavigateUrl="~/About" Target="_blank" ImageUrl="~/jpg/Folder.jpg">    
                               <asp:TreeNode Text="大阪" NavigateUrl="~/Contact" Target="_blank" ImageUrl="~/jpg/File.jpg" />    
                               <asp:TreeNode Text="兵庫" NavigateUrl="~/About" Target="_blank" ImageUrl="~/jpg/File.jpg" />    
                               <asp:TreeNode Text="名古屋" NavigateUrl="~/Contact" Target="_blank" ImageUrl="~/jpg/File.jpg" />    
                               </asp:TreeNode>    
                           </Nodes>    
                       </asp:TreeView>
                        <br />
                        5. Standard Icons
                        <br />
                        <asp:Button ID="Button28" runat="server" OnClick="Button28_Click" Text="Error icon" Width="200px" />
                        <asp:Button ID="Button29" runat="server" OnClick="Button29_Click" Text="Warning icon" Width="200px" />
                        <asp:Button ID="Button30" runat="server" OnClick="Button30_Click" Text="Information icon" Width="200px" />
                        <asp:Button ID="Button31" runat="server" OnClick="Button31_Click" Text="Question mark icon" Width="200px" />
                        <br />
                        <br />
                        6. Animations and Transitions
                        <br />
                        <asp:Panel ID="pnl" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Height="50px" style="margin-top: 0px" Width="200px">
                        </asp:Panel>
                        <br />
                        <ajaxToolkit:AnimationExtender ID="ae" runat="server" TargetControlID="pnl">
                          <Animations>
                            <OnClick>
                              <Color Duration="10" Fps="50"
                                Property="style" PropertyKey="backgroundColor"
                                StartValue="#00ffff" EndValue="#191970" />
                            </OnClick>
                          </Animations>
                        </ajaxToolkit:AnimationExtender>
                        <br />
                        7. Graphic Elements
                        <br />
<!doctype html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Effects - Effect demo</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
    .toggler { width: 500px; height: 200px; position: relative; }
    #button { padding: .5em 1em; text-decoration: none; }
    #effect { width: 240px; height: 170px; padding: 0.4em; position: relative; }
    #effect h3 { margin: 0; padding: 0.4em; text-align: center;
          height: 21px;
      }
    .ui-effects-transfer { border: 2px dotted gray; }
      #wkPg {
          height: 46px;
          margin-top: 15px;
      }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
      $(function () {
          // run the currently selected effect
          function runEffect() {
              // get effect type from
              var selectedEffect = $("#effectTypes").val();

              // Most effect types need no options passed by default
              var options = {};
              // some effects have required parameters
              if (selectedEffect === "scale") {
                  options = { percent: 50 };
              } else if (selectedEffect === "transfer") {
                  options = { to: "#button", className: "ui-effects-transfer" };
              } else if (selectedEffect === "size") {
                  options = { to: { width: 200, height: 60 } };
              }

              // Run the effect
              $("#effect").effect(selectedEffect, options, 500, callback);
          };

          // Callback function to bring a hidden box back
          function callback() {
              setTimeout(function () {
                  $("#effect").removeAttr("style").hide().fadeIn();
              }, 1000);
          };

          // Set effect from select menu value
          $("#button").on("click", function () {
              runEffect();
              return false;
          });
      });
  </script>
</head>
 
<div class="toggler">
  <div id="effect" class="ui-widget-content ui-corner-all">
    <h3 class="ui-widget-header ui-corner-all" title="Test"></h3>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      テスト
    </p>
  </div>
</div>
 
<select name="effects" id="effectTypes">
  <option value="blind">ブラインド</option>
  <option value="bounce">弾む</option>
  <option value="clip">クリップ</option>
  <option value="drop">左スライド</option>
  <option value="slide">右スライド</option>
  <option value="explode">爆発</option>
  <option value="fade">フェード</option>
  <option value="fold">折りたたむ</option>
  <option value="highlight">ハイライト</option>
  <option value="puff">パフ</option>
  <option value="pulsate">脈動</option>
  <option value="scale">スケール</option>
  <option value="shake">揺れる</option>
  <option value="size">大きさ</option>
  <option value="transfer">転送</option>
</select>
 
<button id="button" class="ui-state-default ui-corner-all">実行</button>
 
 
</body>

                        
                        <br />
                        <br />
                        8. Sound<br />
                        <br />
                        
                        <asp:Button ID="Button32" runat="server" OnClick="Button32_Click" Text="再生" />


    </ContentTemplate>
  </ajaxToolkit:TabPanel>
</ajaxToolkit:TabContainer> 

                        
      </div>
    </form>
  </body>
</html>
