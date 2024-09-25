<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="SriAmmanEngineeringAndWorks_ASPDotNet.feedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8"> 
    <meta name="viewport" 
          content="width=device-width,initial-scale=1.0"> 
    <title>Sri Amman Engineering/Feedback</title> 
    <link rel="stylesheet" href= "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"> 
    <link rel="stylesheet" href="index.css"> 
</head>
    <style>
        @import url( 
'https://fonts.googleapis.com/css2?family=Poppins&display=swap'); 
  
body { 
    margin: 0; 
    display: flex; 
    align-items: center; 
    justify-content: space-around; 
    flex-direction: column; 
    height: 100vh; 
    background-color: #bde5d2; 
    font-family: 'Poppins', sans-serif; 
  
} 
  
.textup { 
    text-align: center; 
    color: rgb(11, 118, 11); 
    font-weight: 700; 
} 
  
i { 
    margin-right: 3px; 
} 
  
.form-box { 
    background-color: #fff; 
    box-shadow: 0 0 10px rgba(36, 67, 40, 0.8); 
    padding: 15px; 
    border-radius: 8px; 
    width: 500px; 
} 
  
form { 
    max-width: 400px; 
    margin: 0 auto; 
} 
  
.radio-group { 
    display: flex; 
    margin-bottom: 16px; 
} 
  
input[type="radio"] { 
    margin-right: 8px; 
} 
  
label { 
    display: block; 
    margin-bottom: 8px; 
    font-size: 17px; 
    color: green; 
    font-weight: 600; 
} 
  
input, 
textarea { 
    width: 100%; 
    padding: 8px; 
    margin-bottom: 12px; 
    box-sizing: border-box; 
    border-radius: 10px; 
  
} 
  
button { 
    background-color: #368b44; 
    color: #fff; 
    padding: 10px; 
    border: none; 
    border-radius: 25px; 
    cursor: pointer; 
    width: 100%; 
    font-size: 15px; 
    transition: .2s linear; 
} 
  
button:hover { 
    background-color: #0a6808; 
    border: none; 
    transform: translateY(-10px); 
} 
  
h1 { 
    color: green; 
}
    </style>
<body>
<h1>Sri Amman Engineering and Labour Works</h1> 
    <h3>Feedback Form For Our Customer Satification 
    </h3> 
    <div class="form-box"> 
        <div class="textup"> 
            <i class="fa fa-solid fa-clock"></i> 
            It only takes two minutes!! 
        </div> 
        <form runat="server"> 
            <label for="uname"> 
                <i class="fa fa-solid fa-user"></i> 
                Name 
            </label> 
            <asp:TextBox ID="uname" runat="server" required></asp:TextBox>
            <label for="email"> 
                <i class="fa fa-solid fa-envelope"></i> 
                Email Address 
            </label> 
            <asp:TextBox ID="email" runat="server" required></asp:TextBox>
            <label for="phone"> 
                <i class="fa-solid fa-phone"></i> 
                Phone No 
            </label> 
            <asp:TextBox ID="phone" runat="server" required></asp:TextBox>
  
            <label> 
                <i class="fa-solid fa-face-smile"></i> 
                Do you satisfy with our service? 
            </label> 
            <div class="radio-group"> 

            <asp:RadioButtonList ID="Radio_feedback" runat="server" Height="81px" Width="16px">
                <asp:ListItem type="radio" id="yes" name="satisfy" Selected="True">Yes</asp:ListItem>
               
                 <asp:ListItem type="radio" id="no" name="satisfy">No</asp:ListItem>
               
                  </asp:RadioButtonList>
            </div> 
  
            <label for="msg"> 
                <i class="fa-solid fa-comments" 
                   style="margin-right: 3px;"></i> 
                Write your Suggestions: 
            </label> 
            <asp:TextBox ID="msg" runat="server"  rows="4" cols="10" required></asp:TextBox>
                   
            </textarea> 
             <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                 
        </form> 
    </div> 
</body>
</html>
