<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="ShortCourseReg.Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
           @import url('https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&display=swap');
           :root
           {
            --font-style: 'Nunito Sans', sans-serif;
           }
           *
           {
               border:0;
               padding:0;
               margin:0;
           }
        body
        {
           font-family: var(--font-style);
          
           padding: 5em;
           
           
        }
         button {
            display: inline-block;
            position: relative;
            background: none;
            border: none;
            color: #fff;
            font-size: 18px;
            cursor: pointer;
            margin: 20px 30px;
            background: green;
        }
        
        span {
            display: block;
            padding: 25px 80px;
        }
        
        button::before,
        button::after {
            content: "";
            width: 0;
            height: 2px;
            position: absolute;
            transition: all 0.2s linear;
            background: #54e765;
        }
        
        span::before,
        span::after {
            content: "";
            width: 2px;
            height: 0;
            position: absolute;
            transition: all 0.2s linear;
            background: #54e765;
        }
        
        button:hover::before,
        button:hover::after {
            width: 100%;
        }
        
        button:hover span::before,
        button:hover span::after {
            height: 100%;
        }
        
        button::after {
            right: 0;
            bottom: 0;
            transition-duration: 0.4s;
        }
        
        button span::after {
            right: 0;
            bottom: 0;
            transition-duration: 0.4s;
        }
        
        button::before {
            left: 0;
            top: 0;
            transition-duration: 0.4s;
        }
        
        button span::before {
            left: 0;
            top: 0;
            transition-duration: 0.4s;
        }
        .button
        {
            background:none;
            color:white;
            font-size:larger;
           font-family:var(--font-style);
           border:none;
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <button type="button">
                <span >
                    <asp:Button ID="Button1"  CssClass="button" runat="server" Text="<< Go Back"  OnClick="Button1_Click"/>
                </span>
            </button>
        <div style="background-color:white">
            <h1 style="color:green; font-size:64px; text-align:center">Dammam Community College Projects</h1>
            <br />
            <br />
            <h2 style="text-align:center; color:gray; font-size:32px;">Project Details</h2>
            <br />
            <p style="color:green; text-align:center; position:relative; right:150px">Project Name: </p>
            <p style="color:green; text-align:center; position:relative; right:150px">Developer: </p>
            <p style="color:green; text-align:center; position:relative; right:150px">Description: </p>
            <p style="color:green; text-align:center; position:relative; right:150px">Software: </p>
           
        </div>
        <button type="button">
                <span >
                    <asp:Button ID="Button2"  CssClass="button" runat="server" Text="Launch Project"  OnClick="Button1_Click"/>
                </span>
            </button>
    </form>
</body>
</html>
