<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign-up.aspx.cs" Inherits="SriAmmanEngineeringAndWorks_ASPDotNet.sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Sign Up Page</title>

        <!-- CSS FILES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;300;400;700;900&display=swap" rel="stylesheet">

        <link href="css2/bootstrap.min.css" rel="stylesheet">
        <link href="css2/bootstrap-icons.css" rel="stylesheet">

        <link rel="stylesheet" href="css2/slick.css"/>

        <link href="css2/tooplate-little-fashion.css" rel="stylesheet">
        
<!--

Tooplate 2127 Little Fashion

https://www.tooplate.com/view/2127-little-fashion

-->
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

                            <h1 class="hero-title text-center mb-5">Sign Up</h1>

                            <div class="social-login d-flex flex-column w-50 m-auto">
                                
                                <a href="#" class="btn custom-btn social-btn mb-4">
                                    <i class="bi bi-google me-3"></i>

                                    Continue with Google
                                </a>

                                <a href="#" class="btn custom-btn social-btn">
                                    <i class="bi bi-facebook me-3"></i>

                                    Continue with Facebook
                                </a>
                            </div>

                            <div class="div-separator w-50 m-auto my-5"><span>or</span></div>

                            <div class="row">
                                <div class="col-lg-8 col-11 mx-auto">
                                    <form role="form" method="post" runat="server">

                                        <div class="form-floating">
                                            <asp:TextBox type="name" name="name" id="txt_name" class="form-control" placeholder="Full Name" required runat="server"></asp:TextBox>
                                            <label for="email">Name</label>
                                        </div><br />
                                        <div class="form-floating">
                                            <asp:TextBox type="email" name="email" id="txt_email" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="Email address" required runat="server"></asp:TextBox>
                                            <label for="email">Email address</label>
                                        </div>

                                        <div class="form-floating my-4">
                                       
                                            <asp:TextBox type="password" name="password" id="txt_password" pattern="[0-9a-zA-Z]{4,10}" class="form-control" placeholder="Password" required runat="server"></asp:TextBox>
                                            <label for="password">Password</label>
                                            
                                            <p class="text-center">* shall include 0-9 a-z A-Z in 4 to 10 characters</p>
                                        </div>

                                        <div class="form-floating">
                                   
                                            <asp:TextBox type="password" name="confirm_password" id="confirm_password" pattern="[0-9a-zA-Z]{4,10}" class="form-control" placeholder="Password" required runat="server"></asp:TextBox>
                                            <label for="confirm_password">Password Confirmation</label>
                                        </div>

                                        <asp:Button ID="btn_create_account" runat="server" Text="Create account" type="submit" class="btn custom-btn form-control mt-4 mb-3" OnClick="btn_create_account_Click"/>
                                        <p class="text-center">Already have an account? Please <a href="sign-in.aspx">Sign In</a></p>

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
                        <h4 class="text-white mb-3"><a href="index.aspx">Little</a> Fashion</h4>
                        <p class="copyright-text text-muted mt-lg-5 mb-4 mb-lg-0">Copyright © 2022 <strong>Little Fashion</strong></p>
                        <br>
                        <p class="copyright-text">Designed by <a href="https://www.tooplate.com/" target="_blank">Tooplate</a></p>
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
