<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stock_detail_page.aspx.cs" Inherits="SriAmmanEngineeringAndWorks_ASPDotNet.stock_detail_page" %>

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
 * {
  box-sizing: border-box;
}
:root {
  --background-color: black;
  --text-color: hsl(0, 0%, 100%);
}
body {
  margin: 0;
}
.wrapper {
  display: grid;
  place-content: center;
  background-color: var(--background-color);
  min-height: 100vh;
  font-family: "Oswald", sans-serif;
  font-size: clamp(1rem, 1rem + 18vw, 6rem);
  font-weight: 700;
  text-transform: uppercase;
  color: var(--text-color);
}

.wrapper > div {
  grid-area: 1/1/-1/-1;
}
.top {
  clip-path: polygon(0% 0%, 100% 0%, 100% 48%, 0% 58%);
}
.bottom {
  clip-path: polygon(0% 60%, 100% 50%, 100% 100%, 0% 100%);
  color: transparent;
  background: -webkit-linear-gradient(177deg, black 53%, var(--text-color) 65%);
  background: linear-gradient(177deg, black 53%, var(--text-color) 65%);
  background-clip: text;
  -webkit-background-clip: text;
  transform: translateX(-0.02em);
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

      
      <!-- Stock section -->
      
  <br><br>
  <section class="contact_section ">
    <div class="container-fluid">

      <div class="row">
          <div class="col-md-6 px-0">
              <br />
             <div class="img-box ">
               <section class="wrapper">
                  <div class="top">Total Stock</div>
                  <div class="bottom" aria-hidden="true">Total Stock</div>
                   <asp:Label ID="Label1" runat="server" style="text-align:center" Text="2"></asp:Label>
                   <asp:Label ID="Label2" runat="server" style="text-align:center; font-size:20px; color:red"></asp:Label>
               </section>
              </div>
              </div>
  
        <div class="col-md-5 mx-auto">
          <div class="form_container">
            <div class="heading_container heading_center">
              <h2>Stock Detail Page</h2>
            </div>
            <form action="" runat="server">
              <div class="form-row">
                <div class="form-group col">
                   <asp:TextBox ID="Txt_item_name" runat="server" type="text" class="form-control" placeholder="Item Name"></asp:TextBox>
                </div>
                 
              </div>
              <div class="form-row">
                <div class="form-group col-lg-6">
                   <asp:TextBox ID="Txt_id" runat="server" type="text" class="form-control" placeholder="ID"></asp:TextBox>
                </div>
                <div class="form-group col-lg-6">
                <asp:DropDownList ID="txt_category" runat="server" class="form-control wide">
                    <asp:ListItem>Select Category</asp:ListItem>
                    <asp:ListItem>Machinery </asp:ListItem>
                    <asp:ListItem>Testing Equipment</asp:ListItem>
                    <asp:ListItem>Vehicle</asp:ListItem>
                    <asp:ListItem>Gas </asp:ListItem>
                    <asp:ListItem>Oil</asp:ListItem>
                    <asp:ListItem>Mess Items</asp:ListItem>
                    <asp:ListItem>Welding Items</asp:ListItem>

                </asp:DropDownList>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col">
                    <asp:TextBox ID="Txt_description" runat="server" class="message-box form-control" placeholder="Description"></asp:TextBox>
                </div>
              </div>
              <div class="form-row">
                <div class="form-group col">
                    <asp:TextBox ID="Txt_location" runat="server" class="form-control" placeholder="Item's Current Location"></asp:TextBox>
                </div>
              </div>

              <div class="btn_box" >
                 
                   <asp:Button ID="Button1" runat="server" Text="ADD" style="padding:12px 33px;background-color:lightseagreen; color:white" OnClick="Button1_Click" />
                  <asp:Button ID="Button2" runat="server" Text="FETCH" style="margin-left:10px;padding:12px 33px;background-color:lightseagreen; color:white" OnClick="Button2_Click" />
                  <asp:Button ID="Button3" runat="server" Text="UPDATE" style="margin-left:10px;padding:12px 29px;background-color:lightseagreen; color:white" OnClick="Button3_Click" />
                  <asp:Button ID="Button4" runat="server" Text="DELETE" style="margin-left:10px;padding:12px 33px;background-color:lightseagreen; color:white" OnClick="Button4_Click" />
                 
                              </div>
                <br />
                 <asp:Button ID="Button5" runat="server" Text="RE-FRESH" style="padding:12px 213px;background-color:lightseagreen; color:white" OnClick="Button5_Click" />
 
                <br /><br />
                  <asp:GridView ID="data_grid_stockdetails" runat="server" margin-left="0px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="16px" Width="544px">
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
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
  <br><br>
   
  <!-- info section -->
  <section class="info_section ">
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
