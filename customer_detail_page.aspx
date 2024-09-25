<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_detail_page.aspx.cs" Inherits="SriAmmanEngineeringAndWorks_ASPDotNet.customer_detail_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="images/fevicon.png" type="image/x-icon">
    <title>Sri Amman Weldings</title>

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <!--owl slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <!-- nice select -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
    <!-- font awesome style -->
    <link href="css/font-awesome.min.css" rel="stylesheet" />

    <link href="css/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="css/responsive.css" rel="stylesheet" />

</head>
    <style>
        /*#success_message{ display: none;}*/
        * {
            color:gray;
          }
    </style>
<body>

  <div class="hero_area">
   <div class="hero_bg_box">
      <img src="images/hero-bg.jpg" alt="">
    </div>
    <!-- header section strats -->
    <header class="header_section">
      <div class="header_top">
        <div class="container-fluid header_top_container">

          <div class="contact_nav">
            <a href="location.aspx" target="_blank">
              
              <i class="fa fa-map-marker" aria-hidden="true"></i>
              <span >
                Location
              </span>
            </a>
            <a href="">
              <i class="fa fa-phone" aria-hidden="true"></i>
              <span>
                Call : +91 9585295913
              </span>
            </a>
            <a href="">
              <i class="fa fa-envelope" aria-hidden="true"></i>
              
              <span>
                rudhranandha143@gmail.com
              </span>

            </a>
          </div>
          <div class="social_box">
            <a href="https://www.facebook.com/">
              <i class="fa fa-facebook" aria-hidden="true"></i>
            </a>
            <a href="https://twitter.com/?lang=en-in">
              <i class="fa fa-twitter" aria-hidden="true"></i>
            </a>
            <a href="https://www.linkedin.com/login">
              <i class="fa fa-linkedin" aria-hidden="true"></i>
            </a>
            <a href="https://www.instagram.com/?hl=en">
              <i class="fa fa-instagram" aria-hidden="true"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand " href="index.aspx"> Sri Amman Weldings </a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="index.aspx">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.aspx"> About</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="service.aspx">Services</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="team.aspx"> Team </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.aspx">Contact Us</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="sign-in.aspx">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <span>
                      Login
                    </span>
                  </a>
                </li>
                <form class="form-inline justify-content-center">
                  <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                    <i class="fa fa-search" aria-hidden="true"></i>
                  </button>
                </form>
              </ul>
            </div>
          </nav>
        </div>
      </div>
    </header>
    <!-- end header section -->

            <div class="container">

    <form class="well form-horizontal" action=" " method="post"  id="contact_form" runat="server">
<fieldset>

<!-- Form Name -->
    <br /><br />
                <legend>Customers!!!</legend>

                <!-- Text input-->

                <div class="form-group">
                  <label class="col-md-4 control-label">First Name</label>  
                  <div class="col-md-6 inputGroupContainer">
                  <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                      <asp:TextBox ID="txt_fname" runat="server" name="first_name" placeholder="First Name" class="form-control"  type="text"></asp:TextBox>
                    </div>
                  </div>
                </div>

                <!-- Text input-->

                <div class="form-group">
                  <label class="col-md-4 control-label" >Last Name</label> 
                    <div class="col-md-6 inputGroupContainer">
                    <div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                  <asp:TextBox ID="txt_lname" runat="server" name="last_name" placeholder="Last Name" class="form-control"  type="text"></asp:TextBox>
                    </div>
                  </div>
                </div>

                <!-- Text input-->
                       <div class="form-group">
                  <label class="col-md-4 control-label">E-Mail</label>  
                    <div class="col-md-6 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                 <asp:TextBox ID="txt_email" runat="server"  name="email" placeholder="E-Mail Address" class="form-control"  type="text"></asp:TextBox>
                    </div>
                  </div>
                </div>


                <!-- Text input-->
       
                <div class="form-group">
                  <label class="col-md-4 control-label">Phone #</label>  
                    <div class="col-md-6 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                  <asp:TextBox ID="txt_ph" runat="server"  name="phone" placeholder="(845)555-1212" class="form-control" type="text"></asp:TextBox>
                    </div>
                  </div>
                </div>

                <!-- Text input-->
      
                <div class="form-group">
                  <label class="col-md-4 control-label">Address</label>  
                    <div class="col-md-6 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                  <asp:TextBox ID="txt_address" runat="server" name="address" placeholder="Address" class="form-control" type="text"></asp:TextBox>
                    </div>
                  </div>
                </div>

                <!-- Text input-->
 
                <div class="form-group">
                  <label class="col-md-4 control-label">City</label>  
                    <div class="col-md-6 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                  <asp:TextBox ID="txt_city" runat="server"  name="city" placeholder="city" class="form-control"  type="text"></asp:TextBox>
                    </div>
                  </div>
                </div>

                <!-- Select Basic -->
   
                <div class="form-group"> 
                  <label class="col-md-4 control-label">State</label>
                    <div class="col-md-6 selectContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>

                        <asp:DropDownList   class="form-control selectpicker" ID="txt_state" runat="server" name="state" style="color:red;background-color:blue" BackColor="#CCCCCC" ForeColor="#0080C0" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                          
                            <asp:ListItem style="color:red;background-color:blue" Selected="True">Please select your state</asp:ListItem>
                            <asp:ListItem>Alabama</asp:ListItem>
                            <asp:ListItem>Alaska</asp:ListItem>
                            <asp:ListItem>Arizona</asp:ListItem>
                            <asp:ListItem>Arkansas</asp:ListItem>
                            <asp:ListItem>California</asp:ListItem>
                            <asp:ListItem>Colorado</asp:ListItem>
                            <asp:ListItem>Connecticut</asp:ListItem>
                            <asp:ListItem>Delaware</asp:ListItem>
                            <asp:ListItem>District of Columbia</asp:ListItem>
                            <asp:ListItem>Florida</asp:ListItem>
                            <asp:ListItem>Georgia</asp:ListItem>
                            <asp:ListItem>Hawaii</asp:ListItem>
                            <asp:ListItem>daho</asp:ListItem>
                            <asp:ListItem>Illinois</asp:ListItem>
                            <asp:ListItem>Indiana</asp:ListItem>
                            <asp:ListItem>Iowa</asp:ListItem>
                            <asp:ListItem>Kansas</asp:ListItem>
                            <asp:ListItem>Kentucky</asp:ListItem>
                            <asp:ListItem>Louisiana</asp:ListItem>
                            <asp:ListItem>Maine</asp:ListItem>
                            <asp:ListItem>Maryland</asp:ListItem>
                            <asp:ListItem>Mass</asp:ListItem>
                            <asp:ListItem>Michigan</asp:ListItem>
                            <asp:ListItem>Minnesota</asp:ListItem>
                            <asp:ListItem>Mississippi</asp:ListItem>
                            <asp:ListItem>Missouri</asp:ListItem>
                            <asp:ListItem>Montana</asp:ListItem>
                            <asp:ListItem>Nebraska</asp:ListItem>
                            <asp:ListItem>Nevada</asp:ListItem>
                            <asp:ListItem>New Hampshire</asp:ListItem>
                            <asp:ListItem>New Jersey</asp:ListItem>
                            <asp:ListItem>New Mexico</asp:ListItem>
                            <asp:ListItem>New York</asp:ListItem>
                            <asp:ListItem>North Carolina</asp:ListItem>
                            <asp:ListItem>Ohio</asp:ListItem>
                            <asp:ListItem>Pennsylvania</asp:ListItem>
                            <asp:ListItem>Rhode Island</asp:ListItem>
                            <asp:ListItem>Tennessee</asp:ListItem>
                            <asp:ListItem>Texas</asp:ListItem>
                            <asp:ListItem>Uttah</asp:ListItem>
                            <asp:ListItem>Vermont</asp:ListItem>
                            <asp:ListItem>Virginia</asp:ListItem>
                            <asp:ListItem>Washington</asp:ListItem>
                            <asp:ListItem>Wisconsin</asp:ListItem>
                            <asp:ListItem>Wyoming</asp:ListItem>
                        </asp:DropDownList>
                      
                  </div>
                </div>
                </div>

                <!-- Text input-->

                <div class="form-group">
                  <label class="col-md-4 control-label">Zip Code</label>  
                    <div class="col-md-6 inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                  <asp:TextBox ID="txt_zip" runat="server" name="zip" placeholder="Zip Code" class="form-control"  type="text"></asp:TextBox>
                    </div>
                </div>
                </div>

                <!-- radio checks -->
                 <div class="form-group">
                                        <label class="col-md-4 control-label">Gender</label>
                                        <div class="col-md-6">
                                            <div class="radio">
                                                <label>
                                                    <asp:RadioButtonList ID="Radio_gender" runat="server">
                                                        <asp:ListItem>Male</asp:ListItem>
                                                        <asp:ListItem>Female</asp:ListItem>
                                                        <asp:ListItem>Others</asp:ListItem>
                                                </asp:RadioButtonList>

                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>

                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>

                                                </label>
                                            </div>
                                        </div>
                                    </div>

                <!-- Text area -->
                <!-- Success message -->
                <div></div>
    <asp:Label ID="success_message" runat="server" Text="Success !&lt;i class=&quot;glyphicon glyphicon-thumbs-up&quot;&gt;&lt;/i&gt; Thanks for MAke you As a customer With US!!!" class="alert alert-success" role="alert" Visible="False"></asp:Label>
                <!-- Button -->
    <br />
                <div class="form-group">
                  <label class="col-md-4 control-label"></label>
                  <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-warning" OnClick="Button1_Click" /><br />
                  </div>
                </div>
                </fieldset>
                         <asp:GridView ID="data_grid_Customers" runat="server" margin-left="0px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="16px" Width="544px">
                     <AlternatingRowStyle BackColor="White" />
                     <EmptyDataTemplate>
                         &nbsp;
                     </EmptyDataTemplate>
                     <FooterStyle BackColor="#CCCC99" />
                     <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                     <RowStyle BackColor="#F7F7DE" />
                     <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                     <SortedAscendingCellStyle BackColor="#FBFBF2" />
                     <SortedAscendingHeaderStyle BackColor="#848384" />
                     <SortedDescendingCellStyle BackColor="#EAEAD3" />
                     <SortedDescendingHeaderStyle BackColor="#575357" />
               </asp:GridView>
        <br /><br />
        <div class="btn_box" >
        <asp:Button ID="Button2" runat="server" Text="Show Customer Detail" style="padding:12px 204px;background-color:lightseagreen; color:white" OnClick="Button2_Click"/> <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Use Email ID to edit Customer Details *"></asp:Label><br />
                    <asp:Button ID="Button3" runat="server" Text="Update Customer Detail" style="padding:12px 196px;background-color:lightseagreen; color:white" OnClick="Button3_Click"/><br /><br />
                 <asp:Label ID="Label2" runat="server" Text="Use Email ID to Delate a Customer Details *"></asp:Label><br />
                    <asp:Button ID="Button5" runat="server" Text="Delete All" style="padding:12px 253px;background-color:lightseagreen; color:white" OnClick="Button5_Click"/><br /><br />
                    <asp:Button ID="Button6" runat="server" Text="Refresh" style="padding:12px 260px;background-color:lightseagreen; color:white" OnClick="Button6_Click"/>
            </div>
                </form>
                
                </div>
      <!-- /.container -->
      
  <!-- info section -->
  <section class="info_section " style="margin:0px;margin-top:530px" >
    <div class="container">
      <div class="info_top">
        <div class="row">
          <div class="col-md-3 ">
            <a class="navbar-brand" href="index.aspx">
              Sri Amman Weldings
            </a>
          </div>
          <div class="col-md-5 ">
            <div class="info_contact">
              <a href="location.aspx" target="_blank">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  Location
              </span>
                </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  +91 9585295913
                </span>
              </a>
            </div>
          </div>
          <div class="col-md-4 ">
            <div class="social_box">
              <a href="https://www.facebook.com/">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="https://twitter.com/?lang=en-in">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="https://www.linkedin.com/login">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
              </a>
              <a href="https://www.instagram.com/?hl=en">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="info_bottom">
        <div class="row">
          <div class="col-lg-3 col-md-6">
            <div class="info_detail">
              <h5>
                Company
              </h5>
              <p>

                we provide good and quality works to our belongs comapny with new ideas to increase the designs in nature and our professional weldings works are neet and clean with duariablity welding to withstand the joints in any temperature.
              </p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6">
            <div class="info_form">
              <h5>
                NEWSLETTER
              </h5>
              <form action="">
                <input type="text" placeholder="Enter Your Email" />
                <button type="submit">
                  Subscribe
                </button>
              </form>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="info_detail">
              <h5>
                Services
              </h5>
              <p>

                Sri Amman Works Provides a maximum all kind of Services , that makes a Alloy or a Iron to join or split to Make a withstandle metals usings arcs.
              </p>
            </div>
          </div>
          <div class="col-lg-2 col-md-6">
            <div class="">
              <h5>
                Useful links
              </h5>
              <ul class="info_menu">
                <li>
                  <a href="index.aspx">
                    Home
                  </a>
                </li>
                <li>
                  <a href="about.aspx">
                    About
                  </a>
                </li>
                <li>
                  <a href="service.aspx">
                    Services
                  </a>
                </li>
                <li>
                  <a href="team.aspx">
                    Team
                  </a>
                </li>
                <li class="mb-0">
                  <a href="contact.aspx">
                    Contact Us
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info_section -->

  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="">Nandha </a>
      </p>
    </div>
  </footer>
  <!-- footer section -->
  <!-- jQery -->
  <script src="js/jquery-3.4.1.min.js"></script>
  <!-- popper js -->
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <!-- bootstrap js -->
  <script src="js/bootstrap.js"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <!-- nice select -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha256-Zr3vByTlMGQhvMfgkQ5BtWRSKBGa2QlspKYJnkjZTmo=" crossorigin="anonymous"></script>
  <!-- custom js -->
  <script src="js/custom.js"></script>
  <!-- Google Map -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap"></script>
  <!-- End Google Map -->
</body>
</html>
