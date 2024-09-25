<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign-in.aspx.cs" Inherits="SriAmmanEngineeringAndWorks_ASPDotNet.sign_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Sign In Page</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">

        <link href="css2/bootstrap.min.css" rel="stylesheet">
        <link href="css2/bootstrap-icons.css" rel="stylesheet">

        <link rel="stylesheet" href="css2/slick.css"/>

        <link href="css2/tooplate-little-fashion.css" rel="stylesheet">
   
</head>
    <body>

        <section class="preloader">
            <div class="spinner">
                <span class="sk-inner-circle"></span>
            </div>
        </section>
    
        <main>

            <section class="sign-in-form section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-8 mx-auto col-12">

                            <h1 class="hero-title text-center mb-5">Sign In</h1>

                            <div class="row">
                                <div class="col-lg-8 col-11 mx-auto">
                                    <form role="form" method="post" runat="server">

                                        <div class="form-floating mb-4 p-0">
  
                                             <asp:TextBox type="email" name="email" ID="txt_email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required runat="server"></asp:TextBox>
                                            <label for="email">Email address</label>
                                        </div>


                                        <div class="form-floating p-0">
                                         
                                             <asp:TextBox type="password" name="password" ID="txt_password" class="form-control" placeholder="Password" required runat="server"></asp:TextBox>
                                            <label for="password">Password</label>
                                            <p class="text-center" > <a href="forgot_password.aspx"style ="margin-left:380px">Forgot password</a></p>
                                        </div> 

                                        <asp:Button ID="Button1" runat="server" Text="Sign in"  type="submit" class="btn custom-btn form-control mt-4 mb-3" OnClick="Button1_Click"/>

                                        <p class="text-center">Don’t have an account? <a href="sign-up.aspx">Create One</a></p>

                                    </form>
                                </div>
                            </div>
                            
                        </div>

                    </div>
                </div>
            </section>

        </main>

        <footer class="site-footer">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-10 me-auto mb-4">
                        <h4 class="text-white mb-3"><a href="index.aspx">Sri Amman</a> Engineering</h4>
                        <p class="copyright-text text-muted mt-lg-5 mb-4 mb-lg-0">Copyright © 2024 <strong>Sri Amman Engineering</strong></p>
                        <br>
                        <p class="copyright-text">Designed by <a href="https://www.tooplate.com/" target="_blank">Nandha</a></p>
                    </div>

                    <div class="col-lg-5 col-8">
                        <h5 class="text-white mb-3">Sitemap</h5>

                        <ul class="footer-menu d-flex flex-wrap">
                            <li class="footer-menu-item"><a href="about.aspx" class="footer-menu-link">Story</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Products</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Privacy policy</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">FAQs</a></li>

                            <li class="footer-menu-item"><a href="#" class="footer-menu-link">Contact</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-4">
                        <h5 class="text-white mb-3">Social</h5>

                        <ul class="social-icon">

                            <li><a href="#" class="social-icon-link bi-youtube"></a></li>

                            <li><a href="#" class="social-icon-link bi-whatsapp"></a></li>

                            <li><a href="#" class="social-icon-link bi-instagram"></a></li>

                            <li><a href="#" class="social-icon-link bi-skype"></a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </footer>

        <!-- JAVASCRIPT FILES -->
        <script src="js2/jquery.min.js"></script>
        <script src="js2/bootstrap.bundle.min.js"></script>
        <script src="js2/Headroom.js"></script>
        <script src="js2/jQuery.headroom.js"></script>
        <script src="js2/slick.min.js"></script>
        <script src="js2/custom.js"></script>

    </body>
</html>
