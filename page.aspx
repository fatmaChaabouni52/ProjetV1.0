<%@ Page Language="C#" AutoEventWireup="true" CodeFile="page.aspx.cs" Inherits="page" %>

<%@ Register Assembly="Karpach.WebControls" Namespace="Karpach.WebControls" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Display Setting</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.3/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-colorpicker/2.3.3/js/bootstrap-colorpicker.min.js"></script>  
</head>
    
<body>
    <form id="form1" runat="server">
   <div class="container" style="padding-left:0px">
    <!--Row with two equal columns-->
       <div class="row">
                 <div class="col-lg-6">
            <h2  style="font-family:Roboto; font-weight:bold" > <asp:Label ID="Label1" runat="server" Text="Popup" ForeColor="#4ba9a0"></asp:Label></h2>
               <hr style="color:#4ba9a0;" />
                    
             <asp:RadioButton ID="disc" runat="server" GroupName="g1" Text="Discount" OnCheckedChanged="disc_CheckedChanged" AutoPostBack="True" />
             <asp:RadioButton ID="oth" runat="server" GroupName="g1" Text="Other" OnCheckedChanged="oth_CheckedChanged" AutoPostBack="True" />
       
            
                <asp:TextBox ID="other" runat="server" TextMode="MultiLine"  CssClass="form-control"></asp:TextBox>
           
             
           <asp:Panel ID="discount" runat="server">
               
                <div class="row">
                 <div class="col-lg-6">Value</div>
                <div class="col-lg-6"> Coupon Code</div>
            </div>
             <div class="row">
                 <div class="col-lg-6"><asp:TextBox ID="Value"  OnTextChanged="Value_TextChanged" Text="20" runat="server"  CssClass="form-control" AutoPostBack="True"></asp:TextBox> </div>
                <div class="col-lg-6"> <asp:TextBox ID="Coupon_Code" OnTextChanged="Coupon_Code_TextChanged" Text="NAMASTE" runat="server"  CssClass="form-control" AutoPostBack="False"></asp:TextBox></div>
            </div>
             <div class="row">
                 <div class="col-lg-6">Title</div>
                <div class="col-lg-6"> <asp:CheckBox ID="CheckBox1" runat="server" Text="Hide coupon code" AutoPostBack="True" /></div>
            </div>
             <div class="row">
                
                <div class="col-lg-6"><asp:TextBox ID="TitleText" OnTextChanged="TitleText_TextChanged" runat="server" Text="THE ENTIRE STORE"   CssClass="form-control" AutoPostBack="True"></asp:TextBox></div>
            </div>
            
           </asp:Panel>
           
           <asp:Panel ID="mainPageCode" runat="server">
                 <div class="row">
                    <div class="col-lg-6"><asp:CheckBox ID="CheckBox2" runat="server"   Text="Auto apply coupon code"/></div> </div>
                 
                  <div class="row">
                 <div class="col-lg-6">Time</div>
                  <div class="col-lg-6">Main color</div>
                  </div>

                  <div class="row">
                 <div class="col-lg-6">
                     <asp:TextBox ID="Time" style="display:inline;" Text="20" runat="server" Width="88px" CssClass="form-control" ></asp:TextBox>
                     <asp:DropDownList  ID="DropDownList1" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" runat="server" CssClass="btn btn-secondary dropdown-toggle" AutoPostBack="True" >
                         <asp:ListItem>Days</asp:ListItem>
                         <asp:ListItem>Hours</asp:ListItem>
                         <asp:ListItem>Minutes</asp:ListItem>
                     </asp:DropDownList></div>
                  <div class="col-lg-6">
                     
                         <asp:TextBox ID="mainCol" runat="server" CssClass="form-control" OnTextChanged="mainCol_TextChanged" AutoPostBack="True"></asp:TextBox>
                       
                              <script>
                                  $('#mainCol').colorpicker({});
                            </script>
                        
                     
                     
                  </div>
                  </div>

                  <div class="row">
                 <div class="col-lg-6">Background color</div>
                  <div class="col-lg-6">Border color</div>
                  </div>

                  <div class="row">
                 <div class="col-lg-6">
                     <asp:TextBox ID="Background_color" runat="server" Text="#ebebeb" Enabled="false" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                        <script>
                            $('#Background_color').colorpicker({});
                            </script>
                 </div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Border_color" runat="server" Text="#cacaca" Enabled="false" CssClass="form-control" ></asp:TextBox>
                     <script>
                         $('#Border_color').colorpicker({});
                            </script>
                  </div>
                  </div>

                 <div class="row">
                 <div class="col-lg-6">Button Text</div>
                  <div class="col-lg-6">Button Link</div>
                  </div>

                 <div class="row">
                 <div class="col-lg-6">
                     <asp:TextBox ID="Button_Text" runat="server" OnTextChanged="Button_Text_TextChanged"  CssClass="form-control" AutoPostBack="True"></asp:TextBox></div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Button_Link" runat="server" CssClass="form-control"></asp:TextBox></div>
                  </div>

                 <div class="row">
                 <div class="col-lg-6">Main Font</div>
                  <div class="col-lg-6">Text Color</div>
                  </div>

                 <div class="row">
                 <div class="col-lg-6">
                    <asp:DropDownList ID="Main_Font" runat="server" CssClass="form-control" OnSelectedIndexChanged="Main_Font_SelectedIndexChanged" AutoPostBack="True">
                         <asp:ListItem Text="Monotype Corsiva">Monotype Corsiva</asp:ListItem>
                         <asp:ListItem Text="Roboto">Roboto</asp:ListItem>
                         <asp:ListItem Text="Arial">Arial</asp:ListItem>
                         <asp:ListItem Text="Century">Century</asp:ListItem>
                         <asp:ListItem Text="Book Antiqua">Book Antiqua</asp:ListItem>
                         <asp:ListItem Text="Times New Roman">Times New Roman</asp:ListItem>
                     </asp:DropDownList></div>
                  <div class="col-lg-6"> 
                      <asp:TextBox ID="Text_Color" OnTextChanged="Text_Color_TextChanged" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                     <script>
                         $('#Text_Color').colorpicker({});
                            </script>
                  </div></div>

                 <div class="row">
                 <div class="col-lg-6">Timer Font</div>
                  <div class="col-lg-6">Timer Color</div>
                  </div>

                 <div class="row">
                 <div class="col-lg-6">
                     <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                         <asp:ListItem>Monotype Corsiva</asp:ListItem>
                         <asp:ListItem>Roboto</asp:ListItem>
                         <asp:ListItem>Arial</asp:ListItem>
                         <asp:ListItem>Century</asp:ListItem>
                         <asp:ListItem>Book Antiqua</asp:ListItem>
                         <asp:ListItem>Times New Roman</asp:ListItem>
                     </asp:DropDownList></div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Timer_Color" runat="server"  OnTextChanged="Timer_Color_TextChanged" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                     <script>
                         $('#Timer_Color').colorpicker({});
                            </script>
                  </div>
                  </div>

                 
                 <div class="row">
                 <div class="col-lg-6">Button Font</div>
                  <div class="col-lg-6">Button Color</div>
                  </div>

                 
                 <div class="row">
                 <div class="col-lg-6">
                    <asp:DropDownList ID="DropDownList3" runat="server"  CssClass="form-control" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                         <asp:ListItem>Monotype Corsiva</asp:ListItem>
                         <asp:ListItem>Roboto</asp:ListItem>
                         <asp:ListItem>Arial</asp:ListItem>
                         <asp:ListItem>Century</asp:ListItem>
                         <asp:ListItem>Book Antiqua</asp:ListItem>
                         <asp:ListItem>Times New Roman</asp:ListItem>
                     </asp:DropDownList></div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Button_Color" OnTextChanged="Button_Color_TextChanged" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                    <script>
                        $('#Button_Color').colorpicker({});
                            </script>
                  </div>
                  </div>
                 <div class="row">
                 <div class="col-lg-6">
                     <asp:CheckBox ID="fbshear" runat="server" Text="Facebbok share button" OnCheckedChanged="fbshear_CheckedChanged" AutoPostBack="True"  /></div>
                  </div>
           </asp:Panel>
           
           <asp:Panel ID="facebook" runat="server" Visible="False"><div class="row">
                 <div class="col-lg-6">Shared Link</div>
                  <div class="col-lg-6">Title</div>
                    </div>

                  <div class="row">
                 <div class="col-lg-6">
                     <asp:TextBox ID="Shared_Link" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Title" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></div>
                  </div>

                    <div class="row">
                 <div class="col-lg-6">Shared Image</div>
                  <div class="col-lg-6">Caption</div>
                  </div>

                    <div class="row">
                 <div class="col-lg-6">
                     <asp:TextBox ID="Shared_Image" runat="server" CssClass="form-control"></asp:TextBox></div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Caption" runat="server" CssClass="form-control"></asp:TextBox></div>
                  </div>

                    <div class="row">
                 <div class="col-lg-6"></div>
                  <div class="col-lg-6">Descreption</div>
                  </div>


                     <div class="row">
                 <div class="col-lg-6">
                     <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/></div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Descreption" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></div>
                  </div>

                     <div class="row">
                 <div class="col-lg-6">Share Button Text</div>
                  <div class="col-lg-6">Share Button Color</div>
                  </div>

                     <div class="row">
                 <div class="col-lg-6">
                     <asp:TextBox ID="Share_Button_Text" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox></div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Share_Button_Color" OnTextChanged="Share_Button_Color_TextChanged" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                       <script>
                           $('#Share_Button_Color').colorpicker({});
                            </script>
                  </div>
                  </div>

                    <div class="row">
                 <div class="col-lg-6">Share Button Font</div>
                  <div class="col-lg-6">Share Button Text Color</div>
                  </div>

                    <div class="row">
                 <div class="col-lg-6">
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                         <asp:ListItem>Monotype Corsiva</asp:ListItem>
                         <asp:ListItem>Roboto</asp:ListItem>
                         <asp:ListItem>Arial</asp:ListItem>
                         <asp:ListItem>Century</asp:ListItem>
                         <asp:ListItem>Book Antiqua</asp:ListItem>
                         <asp:ListItem>Times New Roman</asp:ListItem>
                     </asp:DropDownList></div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Share_Button_Text_Color" OnTextChanged="Share_Button_Text_Color_TextChanged" runat="server" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                    <script>
                        $('#Share_Button_Text_Color').colorpicker({});
                            </script>
                  </div>
            </div></asp:Panel>
            


            <div class="row">
                
                     <h2  style="font-family:Roboto; font-weight:bold" ><asp:Label ID="Label2" ForeColor="#4ba9a0" runat="server" Text="Label" >Promotion Bar</asp:Label></h2>
                   <hr style="color:#4ba9a0;" />
                  </div>
            

             <div class="row">
                 <div class="col-lg-6"> Text</div>
                  <div class="col-lg-6"> Background Color</div>
            </div>

             <div class="row">
                 <div class="col-lg-6">
                     <asp:TextBox ID="TextBar" runat="server" CssClass="form-control" OnTextChanged="TextBar_TextChanged" CausesValidation="False" AutoPostBack="True"></asp:TextBox></div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Background_Color2" runat="server"  OnTextChanged="Background_Color2_TextChanged" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                      <script>
                          $('#Background_Color2').colorpicker({});
                            </script>
                  </div>
            </div>

               <div class="row">
                 <div class="col-lg-6">Font </div>
                  <div class="col-lg-6">Color</div>
            </div>

               <div class="row">
                 <div class="col-lg-6">
                     <asp:DropDownList ID="FontLast" runat="server"  CssClass="form-control" OnSelectedIndexChanged="FontLast_SelectedIndexChanged" AutoPostBack="True">
                         <asp:ListItem>Monotype Corsiva</asp:ListItem>
                         <asp:ListItem>Roboto</asp:ListItem>
                         <asp:ListItem>Arial</asp:ListItem>
                         <asp:ListItem>Century</asp:ListItem>
                         <asp:ListItem>Book Antiqua</asp:ListItem>
                         <asp:ListItem>Times New Roman</asp:ListItem>
                     </asp:DropDownList>
                     </div>
                  <div class="col-lg-6">
                      <asp:TextBox ID="Color" runat="server" CssClass="form-control" OnTextChanged="Color_TextChanged"></asp:TextBox>
                    <script>
                        $('#Color').colorpicker({});
                            </script>
            </div></div>
           


            <div class="row">
                 <div class="col-lg-6">Descktop Position </div>
                  <div class="col-lg-6">Mobile Position</div>
            </div>

               <div class="row">
                 <div class="col-lg-6">
                     <asp:DropDownList ID="Descktop_Position" runat="server" OnSelectedIndexChanged="Descktop_Position_SelectedIndexChanged"  CssClass="form-control" AutoPostBack="True">
                         <asp:ListItem>Top of the page</asp:ListItem>
                         <asp:ListItem>Pin to top of the page</asp:ListItem>
                         <asp:ListItem>Pin to button of the page</asp:ListItem>
                     </asp:DropDownList>
                     <br /><asp:Button ID="Button2" OnClick="Button2_Click" runat="server" ForeColor="white" BackColor="#4ba9a0" Width="40%" Text="Save" CssClass="form-control" Font-Size="Larger" /></div>
                  <div class="col-lg-6">
                       <asp:DropDownList ID="Mobile_Position" runat="server"  CssClass="form-control" >
                         <asp:ListItem>Top of the page</asp:ListItem>
                         <asp:ListItem>Pin to top of the page</asp:ListItem>
                         <asp:ListItem>Pin to button of the page</asp:ListItem>
                     </asp:DropDownList>
                    </div>
                   
                    </div>
             <div class="col-lg-6">
                 <br />
                 <asp:Panel ID="Panel2" runat="server">
                      <textarea id="TextArea1" cols="50" rows="10"> <!--<link href='{{'thankyoupopup.css' |asset_url}}' rel='stylesheet' type='text/css' media='all' />
 <script src={{tmconfig.js | asset_url }}' type='text/javascript' ></script>
 <div class='rte'><div id='upsellModal' data-view='sizesModal' class='modaltm fade' aria-hidden='true'><div class='modal-dialog' style='max-width:600px;margin:30px auto'><div class='modal-content'>
 <div class='modal-heade' style='border:0'><button type='button' class='close'data-dismiss='modal'><span aria-hidden='true'>x</span><span class='sr-only'>Close</span></button>
 </div><div class="modal-body"><center><div id="timer" class="popupTimer"></div></center><div class="wrapper">
 <img src='{{'upsell.png'|asset_url}}' style='width:100%' /><a class=' href='#' type='button' id='shopnow'><img src='{{'shopnow.png' |asset_url }}' alt='SHOP NOW'/></a></div></div>
 </div></div></div></div><a style='display:none' id='psellModaltrigger' href='#' data-toggle='modal' data-target='#upsellModal'>show modal</a>!--></textarea></asp:Panel>
                
                </div>
             </div>
      
                
         
             
        <div class="col-lg-6">
            
               
            <div class="row" style="margin-top:26%">
                 <div style="position:fixed;">
                <asp:Panel ID="Panel1" runat="server" >
                <div>
                   
                   

                   <h1 style="font-family:Roboto"> <asp:Label ID="Timetit" runat="server" Text="00:00:20:00 LEFT" CssClass="auto-style1" ></asp:Label></h1>
                        
                    
                   <h1 style="font-family:Roboto"> <asp:Label ID="ButtonDec" runat="server"  Text="Shop Now" CssClass="auto-style1" ></asp:Label></h1>
                  
                   <h3 style="font-family:Roboto"> <asp:Label ID="Desc" runat="server" CssClass="auto-style1" ></asp:Label>
                       
                       <center><img src="test1.png" width="100%" height="100%" /></center>
                    </h3>
                  
            </div>
                    
                <style>
                
                    #Timetit { 
                       position: absolute; 
                      margin-top:2.5%;
                       margin-left:29%
                     
                        }
                    #ButtonDec { 
                       position: absolute; 
                     margin-top:45%;
                       margin-left:37%
                      
                        }
                     #Desc { 
                       position: absolute; 
                       text-align:center;
                       margin-top:12%;
                       margin-left:23%
                        }
                </style>
                    </asp:Panel>
           <div class="row" style=" margin-left:35%;margin-top:2%">
                        <asp:Button ID="fbButton" runat="server" Width="50%" CssClass="form-control" Text="Share with your friends !" />
                    </div>
                
            
             <br /><br />
                       <div class="row">
                           <div class="col-lg-12"><center> <asp:Label ID="ButtummmText" runat="server" Width="50%" BackColor="Red" Text="Share with your friends !" Font-Bold="True" Font-Size="Larger" CssClass="CssStyle2" /></center></div>
                       </div>
                       
             </div>    </div> 
                 <style>
                        .CssStyle1{
                       position: absolute; 
                       text-align:center;
                       margin-top:-85%;
                      margin-left:-43%;
                        }
                        .CssStyle2{  
                            
                          position: fixed; 
                       text-align:left;
                       padding-left:15%;
                       margin-top:0%;
                      margin-left:-23.5%;
                      	bottom: 0;
                        
                        }
                    </style>
            
        </div>

    </div>
   </div>
    
  </form>
</body>
</html>
