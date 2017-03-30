using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

public partial class page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            other.Visible = true;
            oth.Checked = true;
            other.Text = "Did you want to grab something else?\n------------------\nUse coupon NAMESTE\n-------------------\n In the next 20 mins and get\n FREE SHIPPING";
            Desc.Text = "Did you want to grab something else?<br>------------------<br>Use coupon NAMESTE<br>-------------------<br> In the next 20 mins and get<br> FREE SHIPPING";
            CheckBox1.Checked = true;
            fbshear.Checked = false;
            facebook.Visible = false;
            fbButton.Visible = false;
            Panel2.Visible = false;
            
        }

    }


    protected void oth_CheckedChanged(object sender, EventArgs e)
    {

        if (oth.Checked == true)
        {
            discount.Visible = false;
            other.Visible = true;
            Desc.Text = "Did you want to grab something else?<br>------------------<br>Use coupon NAMESTE<br>-------------------<br> In the next 20 mins and get<br> FREE SHIPPING";

        }
        else
        {
            discount.Visible = true;
            other.Visible = false;
            Desc.Text = "<div style='font-size:120px;position:absolute;margin-left:-24%;margin-Top:12%'><b>" + Value.Text + "</div><div style='font-size:90px;;margin-Top:7%'>%</div><div style='font-size:40px;margin-Top:-7%'>OFF</div></b> <br/><div style='margin-left:50%;margin-Top:-55%; width:150%'><div style='font-stretch:ultra-expanded;font-weight:bold'>" + TitleText.Text + "</div> FOR " + Time.Text + " " + DropDownList1.Text + " ONLY <div style='font-stretch:ultra-expanded;font-weight:bold;margin-left:3%'> USE CODE: " + Coupon_Code.Text + " </div> DON'T MISS OUT</div>";

        }

    }

    protected void disc_CheckedChanged(object sender, EventArgs e)
    {
        
            if (disc.Checked == true)
            {
           
            discount.Visible = true;
                other.Visible = false;
            Desc.Text = "<div style='font-size:120px;position:absolute;margin-left:-24%;margin-Top:12%'><b>" + Value.Text + "</div><div style='font-size:90px;;margin-Top:7%'>%</div><div style='font-size:40px;margin-Top:-7%'>OFF</div></b> <br/><div style='margin-left:50%;margin-Top:-55%; width:150%'><div style='font-stretch:ultra-expanded;font-weight:bold'>" + TitleText.Text + "</div> FOR " + Time.Text + " " + DropDownList1.Text + " ONLY <div style='font-stretch:ultra-expanded;font-weight:bold;margin-left:3%'> USE CODE: " + Coupon_Code.Text + " </div> DON'T MISS OUT</div>";
            //"<b>" + Value.Text + "</b> OFF <br/><b>" + TitleText.Text + "<b><br>FOR " + Time.Text + " " + DropDownList1.Text + " ONLY<br/><h3>USE CODE:" + Coupon_Code.Text + "</h3>DON'T MISS OUT"

        }
        else
            {
          
            discount.Visible = false;
                other.Visible = true;
            Desc.Text = "Did you want to grab something else?<br>------------------<br>Use coupon NAMESTE<br>-------------------<br> In the next 20 mins and get<br> FREE SHIPPING";

        }






    }

    protected void fbshear_CheckedChanged(object sender, EventArgs e)
    {
        if (fbshear.Checked == true)
        { 
            facebook.Visible = true;
            fbButton.Visible = true;
        }
        else
        {
            facebook.Visible = false;
            fbButton.Visible = false;
        }
           
    }


    protected void mainCol_TextChanged(object sender, EventArgs e)
    {
        Panel1.BackColor= System.Drawing.ColorTranslator.FromHtml(mainCol.Text);
        mainCol.BackColor = System.Drawing.ColorTranslator.FromHtml(mainCol.Text);
    }

    protected void Text_Color_TextChanged(object sender, EventArgs e)
    {
        Desc.ForeColor= System.Drawing.ColorTranslator.FromHtml(Text_Color.Text);
        Text_Color.BackColor = System.Drawing.ColorTranslator.FromHtml(Text_Color.Text);
    }

    protected void Timer_Color_TextChanged(object sender, EventArgs e)
    {
        Timetit.ForeColor= System.Drawing.ColorTranslator.FromHtml(Timer_Color.Text);
        Timer_Color.BackColor = System.Drawing.ColorTranslator.FromHtml(Timer_Color.Text);
    }

    protected void Button_Color_TextChanged(object sender, EventArgs e)
    {
        ButtonDec.ForeColor = System.Drawing.ColorTranslator.FromHtml(Button_Color.Text);
        Button_Color.BackColor = System.Drawing.ColorTranslator.FromHtml(Button_Color.Text);
    }

    protected void Share_Button_Color_TextChanged(object sender, EventArgs e)
    {
        fbButton.BackColor = System.Drawing.ColorTranslator.FromHtml(Share_Button_Color.Text);
        Share_Button_Color.BackColor = System.Drawing.ColorTranslator.FromHtml(Share_Button_Color.Text);
    }

    protected void Share_Button_Text_Color_TextChanged(object sender, EventArgs e)
    {
        fbButton.ForeColor = System.Drawing.ColorTranslator.FromHtml(Share_Button_Text_Color.Text);
        Share_Button_Text_Color.BackColor = System.Drawing.ColorTranslator.FromHtml(Share_Button_Text_Color.Text);
    }

    protected void Background_Color2_TextChanged(object sender, EventArgs e)
    {
        ButtummmText.BackColor = System.Drawing.ColorTranslator.FromHtml(Background_Color2.Text);
        Background_Color2.BackColor = System.Drawing.ColorTranslator.FromHtml(Background_Color2.Text);

    }

    protected void Color_TextChanged(object sender, EventArgs e)
    {
        ButtummmText.ForeColor = System.Drawing.ColorTranslator.FromHtml(Color.Text);
        Color.BackColor = System.Drawing.ColorTranslator.FromHtml(Color.Text);
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            if (Time.Text.Length == 1)
            {
                Timetit.Text = "0" + Time.Text + ":00:00:00 LEFT";
            }
            else
                Timetit.Text =Time.Text + ":00:00:00 LEFT";
        }
        if (DropDownList1.SelectedIndex == 1)
        {
            if (Time.Text.Length == 1)
            {
                Timetit.Text = "00:" +"0"+ Time.Text + ":00:00 LEFT";
            }
            else
                Timetit.Text ="00:"+ Time.Text + ":00:00 LEFT";
        }
        if (DropDownList1.SelectedIndex == 2)
        {
            if (Time.Text.Length == 1)
            {
                Timetit.Text = "00:00:" +"0"+ Time.Text + ":00 LEFT";
            }
            else
                Timetit.Text = ":00:00"+ Time.Text + ":00 LEFT";
        }
    }



    protected void Main_Font_SelectedIndexChanged(object sender, EventArgs e)
    {
        Desc.Font.Name = Main_Font.SelectedValue;
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Timetit.Font.Name = DropDownList2.SelectedValue;
    }

    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        fbButton.Font.Name = DropDownList4.SelectedValue;
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        ButtonDec.Font.Name = DropDownList3.SelectedValue;
    }

    protected void FontLast_SelectedIndexChanged(object sender, EventArgs e)
    {
        ButtummmText.Font.Name = FontLast.SelectedValue;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       Panel2.Visible = true;
    }

    protected void Descktop_Position_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(Descktop_Position.SelectedIndex==1)
        ButtummmText.CssClass = "CssStyle1";
        else
            ButtummmText.CssClass = "CssStyle2";
    }

    protected void TextBar_TextChanged(object sender, EventArgs e)
    {
        ButtummmText.Text = TextBar.Text;
    }

    protected void Value_TextChanged(object sender, EventArgs e)
    {
        Desc.Text = "<div style='font-size:120px;position:absolute;margin-left:-24%;;margin-Top:12%'><b>" + Value.Text + "</div><div style='font-size:90px;;margin-Top:7%'>%</div><div style='font-size:40px;margin-Top:-7%'>OFF</div></b> <br/><div style='margin-left:50%;margin-Top:-55%; width:150%'><div style='font-stretch:ultra-expanded;font-weight:bold'>" + TitleText.Text + "</div> FOR " + Time.Text + " " + DropDownList1.Text + " ONLY <div style='font-stretch:ultra-expanded;font-weight:bold;margin-left:3%'> USE CODE: " + Coupon_Code.Text + " </div> DON'T MISS OUT</div>";
    }

    protected void Coupon_Code_TextChanged(object sender, EventArgs e)
    {
        Desc.Text = "<div style='font-size:120px;position:absolute;margin-left:-24%;;margin-Top:12%'><b>" + Value.Text + "</div><div style='font-size:90px;;margin-Top:7%'>%</div><div style='font-size:40px;margin-Top:-7%'>OFF</div></b> <br/><div style='margin-left:50%;margin-Top:-55%; width:150%'><div style='font-stretch:ultra-expanded;font-weight:bold'>" + TitleText.Text + "</div> FOR " + Time.Text + " " + DropDownList1.Text + " ONLY <div style='font-stretch:ultra-expanded;font-weight:bold;margin-left:3%'> USE CODE: " + Coupon_Code.Text + " </div> DON'T MISS OUT</div>";
    }

    protected void TitleText_TextChanged(object sender, EventArgs e)
    {
        Desc.Text = "<div style='font-size:120px;position:absolute;margin-left:-24%;;margin-Top:12%'><b>" + Value.Text + "</div><div style='font-size:90px;;margin-Top:7%'>%</div><div style='font-size:40px;margin-Top:-7%'>OFF</div></b> <br/><div style='margin-left:50%;margin-Top:-55%; width:150%'><div style='font-stretch:ultra-expanded;font-weight:bold'>" + TitleText.Text + "</div> FOR " + Time.Text + " " + DropDownList1.Text + " ONLY <div style='font-stretch:ultra-expanded;font-weight:bold;margin-left:3%'> USE CODE: " + Coupon_Code.Text + " </div> DON'T MISS OUT</div>";

    }

    protected void Button_Text_TextChanged(object sender, EventArgs e)
    {
        ButtonDec.Text = Button_Text.Text;
    }
}