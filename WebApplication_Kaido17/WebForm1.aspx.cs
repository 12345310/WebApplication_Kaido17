using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Windows;
using System.Windows.Forms;
using MessageBox = System.Windows.Forms.MessageBox;
using System.IO;
using Microsoft.VisualBasic;
using IWshRuntimeLibrary;
using System.Diagnostics;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.Data;
using System.Runtime.InteropServices;
using System.Drawing;
using System.Media;
using System.ComponentModel;

namespace WebApplication_Kaido17
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Page.IsPostBack)
            {
                LastUpdate.Text = "Last update: " + DateTime.Now.ToLongTimeString();
            }

            GridView1.Visible = false;

 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Label6.Text == null | Label6.Text == "OFF")
            {
                Label6.Text = "ON";
            }
            else
            {
                Label6.Text = "OFF";
            }
        }

        protected void CheckBox1_CheckedChanged(Object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                CheckBox1.Text = "Checked";
            }
            else
            {
                CheckBox1.Text = "Unchecked";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = string.Format("{0:s}が選ばれました",
                DropDownList1.SelectedItem, DropDownList1.SelectedValue);
        }


        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        protected void Button5_Click(object sender, EventArgs e)
        {
            Thread.Sleep(10000);

        }

        protected void RadioButtonList1_CheckedChanged(object sender, EventArgs e)
        {  
            if (RadioButtonList1.SelectedValue == "Left")
            {
                TextBox5.Text = "Left Selected";
            }
            else if (RadioButtonList1.SelectedValue == "Center")
            {
                TextBox5.Text = "Center Selected";
            }
            else if (RadioButtonList1.SelectedValue == "Right")
            {
                TextBox5.Text = "Right Selected";
            }

        }

        // 表示するフォームのインスタンス変数
//        private Form _form;

        protected void Button7_Click(object sender, EventArgs e)
        {

            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            DialogResult dr = MessageBox.Show(dummyForm, "これはコマンド・リンクスです。よろしいですか。",
    "メッセージ", MessageBoxButtons.YesNoCancel);            
//            DialogResult dr = MessageBox.Show("ファイルが既に存在します。上書きしてよろしいですか。",
//  "メッセージ", MessageBoxButtons.YesNoCancel);

            if (dr == System.Windows.Forms.DialogResult.Yes)
            {
                MessageBox.Show("はいを押しました。");
            }
            else if (dr == System.Windows.Forms.DialogResult.No)
            {
                MessageBox.Show("いいえを押しました。");
            }
            else if (dr == System.Windows.Forms.DialogResult.Cancel)
            {
                MessageBox.Show("キャンセルを押しました。");
            }
            else
            {
                MessageBox.Show("それ以外の動作");
            }
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                TextBox6.Text = "Red が選ばれました";
            }
            else
            {
                TextBox6.Text = "";
            }

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
            {
                TextBox6.Text = "Blue が選ばれました";
            }
            else
            {
                TextBox6.Text = "";
            }

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton3.Checked)
            {
                TextBox6.Text = "Yellow が選ばれました";
            }
            else
            {
                TextBox6.Text = "";
            }

        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton4.Checked)
            {
                TextBox6.Text = "Black が選ばれました";
            }
            else
            {
                TextBox6.Text = "";
            }

        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton5.Checked)
            {
                TextBox6.Text = "White が選ばれました";
            }
            else
            {
                TextBox6.Text = "";
            }

        }

        protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton6.Checked)
            {
                TextBox6.Text = "Green が選ばれました";
            }
            else
            {
                TextBox6.Text = "";
            }

        }



        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            Label7.Text = TextBox7.Text;
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox3.Text = string.Format("{0:s}が選ばれました",
            ListBox1.SelectedItem, ListBox1.SelectedValue);

        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            DialogResult dr = MessageBox.Show(dummyForm, "これはダイアログボックスです。よろしいですか。",
  "メッセージ", MessageBoxButtons.YesNoCancel);
//            DialogResult dr = MessageBox.Show("これはダイアログボックスです。よろしいですか。",
//  "メッセージ", MessageBoxButtons.YesNoCancel);
            if (dr == System.Windows.Forms.DialogResult.Yes)
            {
                MessageBox.Show("はいを押しました。");
            }
            else if (dr == System.Windows.Forms.DialogResult.No)
            {
                MessageBox.Show("いいえを押しました。");
            }
            else if (dr == System.Windows.Forms.DialogResult.Cancel)
            {
                MessageBox.Show("キャンセルを押しました。");
            }
            else
            {
                MessageBox.Show("それ以外の動作");
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            lblName.Text = txtName.Text;
            lblEmail.Text = txtEmail.Text;
            lblHobby.Text = txtHobby.Text;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            IWshShell3 wsh = (WshShell)Interaction.CreateObject("WScript.Shell", "");
            wsh.Run("%SystemRoot%\\System32\\calc.exe");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            // open a pop up window at the center of the page. 
//            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open('WebForm2.aspx', null, 'height=500,width=760,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'');", true);
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = " + TextBox8.Text + ";var Mtop = " + TextBox9.Text + ";window.open('WebForm2.aspx', null, 'height=500,width=760,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'');", true);

        }

        protected void Button12_Click(object sender, EventArgs e)
        {


            string connectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=testdb";
            string queryString = "SELECT * FROM dbo.Members";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
                connection.Open();

            using (SqlDataReader dr = command.ExecuteReader())
                    if (dr.HasRows)
                    {
                        dr.Read();
                        rep_bind();
                        GridView1.Visible = true;
                        TextBox10.Text = "";
                        Label8.Text = "";
                    }
                    else
                    {
                        GridView1.Visible = false;
                        Label8.Visible = true;
                        Label8.Text = "The search Term " + TextBox10.Text + " Is Not Available in the Records";
                    }
            }

        }

        protected void Menu1_MenuItemClick(object sender, EventArgs e)
        {
            Label9.Text = "「" + Menu1.SelectedValue + "」を選択しました。";
        }

        private void rep_bind()
        {
            string connectionString = "Data Source=(localdb)\\MSSQLlocaldb;Initial Catalog=testdb;Integrated Security=True";
            string queryString = "SELECT * FROM dbo.member;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(queryString, connection);
//                connection.Open();
//                connection();
            string query = "select * from dbo.Members where name like '" + TextBox10.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(query, connection);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.Visible = true;

            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            IWshShell3 wsh = (WshShell)Interaction.CreateObject("WScript.Shell", "");
            wsh.Run("%windir%\\system32\\control.exe desk.cpl");
        }

        // 表示するフォームのインスタンス変数
//        private Form _form;

        protected void Button14_Click(object sender, EventArgs e)
        {
            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            DialogResult dr = MessageBox.Show(dummyForm, "フォーマットすると、このディスク上のすべてのデータが消去されます",
                "Format Local Disk (F:)",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Exclamation,
                MessageBoxDefaultButton.Button2);

            if (dr == System.Windows.Forms.DialogResult.Yes)
            {
                MessageBox.Show("はいを押しました。");
            }
            else if (dr == System.Windows.Forms.DialogResult.No)
            {
                MessageBox.Show("いいえを押しました。");
            }
            else
            {
                MessageBox.Show("それ以外の動作");
            }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text == "")
            {
                Label10.Text = "Please type your e-mail adress in the format yourname@example.com.";
                Label10.ForeColor = System.Drawing.Color.Red;  

            }
            else 
            {
                Label10.Text = "OK";
                Label10.ForeColor = System.Drawing.Color.Blue;
            }

            if (TextBox12.Text == "")
            {
                Label11.Text = "Please type your password.";
                Label11.ForeColor = System.Drawing.Color.Red;

                Label12.Text = "Forgot your password?";
                Label12.ForeColor = System.Drawing.Color.Blue;

            }
            else
            {
                Label11.Text = "OK";
                Label11.ForeColor = System.Drawing.Color.Blue;

                Label12.Text = "";
            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            MessageBox.Show(dummyForm, "既に登録されています。", "登録エラー", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            DialogResult result = MessageBox.Show(dummyForm, "ネットワークケーブルが繋がっていません。",
                "警告",
                MessageBoxButtons.OK,
                MessageBoxIcon.Exclamation,
                MessageBoxDefaultButton.Button1);

            if (result == DialogResult.OK)
            {
                //「OK」が選択された時
                MessageBox.Show("「OK」を押しました。");
            }
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            DialogResult result = MessageBox.Show(dummyForm, "実行します。よろしいですか？",
                "確認",
                MessageBoxButtons.YesNoCancel,
                MessageBoxIcon.Asterisk,
                MessageBoxDefaultButton.Button2);

            if (result == DialogResult.Yes)
            {
                //「はい」が選択された時
                MessageBox.Show("「はい」を押しました。");
            }
            else if (result == DialogResult.No)
            {
                //「いいえ」が選択された時
                MessageBox.Show("「いいえ」を押しました。");
            }
            else if (result == DialogResult.Cancel)
            {
                //「キャンセル」が選択された時
                MessageBox.Show("「キャンセル」を押しました。");
            }

        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            //            notifyIcon1.BalloonTipTitle = "おしらせ";
            //            notifyIcon1.BalloonTipText = "おしらせのメッセージ";
            //            notifyIcon1.ShowBalloonTip(3000);
            Response.Write("<script>alert('新しいメールが届きました。')</script>");
        }



        protected void Button20_Click(object sender, EventArgs e)
        {
            string progFiles = @"C:\Program Files\Common Files\Microsoft Shared\ink";
            string onScreenKeyboardPath = System.IO.Path.Combine(progFiles, "TabTip.exe");
            System.Diagnostics.Process.Start(onScreenKeyboardPath);
            //            onScreenKeyboardProc = System.Diagnostics.Process.Start(onScreenKeyboardPath);
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            Process[] oskProcessArray = Process.GetProcessesByName("TabTip");
            foreach (Process onscreenProcess in oskProcessArray)
            {
                onscreenProcess.Kill();
            }
        }

        protected void Button22_Click1(object sender, EventArgs e)
        {
            TextBox13.Font.Bold = true;
            TextBox13.Font.Italic = true;
            TextBox13.Font.Size = FontUnit.Small;
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            TextBox13.Font.Bold = true;
            TextBox13.Font.Italic = true;
            TextBox13.Font.Size = FontUnit.Larger;
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            TextBox13.Font.Bold = true;
            TextBox13.Font.Italic = false;
            TextBox13.Font.Size = FontUnit.XXLarge;
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            TextBox14.Font.Bold = true;
            TextBox14.Font.Italic = false;
            TextBox14.Font.Size = FontUnit.XXLarge;
            TextBox14.ForeColor = System.Drawing.Color.Red;
        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            TextBox14.Font.Bold = true;
            TextBox14.Font.Italic = false;
            TextBox14.Font.Size = FontUnit.XXLarge;
            TextBox14.ForeColor = System.Drawing.Color.Blue;
        }

        protected void Button27_Click(object sender, EventArgs e)
        {
            TextBox14.Font.Bold = true;
            TextBox14.Font.Italic = false;
            TextBox14.Font.Size = FontUnit.XXLarge;
            TextBox14.ForeColor = System.Drawing.Color.Yellow;
        }

        protected void Button28_Click(object sender, EventArgs e)
        {
            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            MessageBox.Show(dummyForm, "既に登録されています。", "登録エラー", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        protected void Button29_Click(object sender, EventArgs e)
        {
            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            DialogResult result = MessageBox.Show(dummyForm, "ネットワークケーブルが繋がっていません。",
            "警告",
            MessageBoxButtons.OK,
            MessageBoxIcon.Exclamation,
            MessageBoxDefaultButton.Button1);
        }

        protected void Button30_Click(object sender, EventArgs e)
        {
            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            DialogResult result = MessageBox.Show(dummyForm, "実行します。よろしいですか？",
            "実行確認",
            MessageBoxButtons.YesNo,
            MessageBoxIcon.Asterisk,
            MessageBoxDefaultButton.Button2);
        }

        protected void Button31_Click(object sender, EventArgs e)
        {
            Form dummyForm = new Form();
            dummyForm.TopMost = true;
            DialogResult result = MessageBox.Show(dummyForm, "終了してよろしいですか？",
            "終了確認",
            MessageBoxButtons.YesNo,
            MessageBoxIcon.Question,
            MessageBoxDefaultButton.Button2);

        }

        protected void Button32_Click(object sender, EventArgs e)
        {
            string path = @"C:\WINDOWS\Media\Alarm01.wav";
            SoundPlayer wavePlayer = new SoundPlayer(path);
            Console.WriteLine("再生開始");
            wavePlayer.Play();

            // サウンド再生中も以降の処理を実行する
            Thread.Sleep(500);
            Console.WriteLine("0.5秒経過");
            //wavePlayer.Stop(); // 再生をストップ
            Thread.Sleep(1000);
            Console.WriteLine("2秒経過");
        }

        protected void Button33_Click(object sender, EventArgs e)
        {
            IWshShell3 wsh = (WshShell)Interaction.CreateObject("WScript.Shell", "");
            //wsh.Run """%windir%\\system32\\Narrator.exe""";
            //           wsh.Run("Narrator.exe");
            wsh.Run("%windir%\\system32\\Magnify.exe");
//            wsh.Run("%windir%\\system32\\quickassist.exe");
            //            wsh.Run("%windir%\\system32\\notepad.exe");
            //Process.Start("%windir%\\system32\\Narrator.exe");
            //string NarratorPath = System.IO.Path.Combine(Environment.SystemDirectory, "Narrator.exe");
            //Process.Start(NarratorPath);
        }
    }
}
