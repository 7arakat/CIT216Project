<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ShortCourseReg.WebForm1" %>

<!-- 
    Data base code 
    CREATE TABLE [dbo].[Items] (
    [ItemID]          INT            IDENTITY (1, 1) NOT NULL,
    [ItemName]        NVARCHAR (100) NULL,
    [ItemDescription] TEXT           NULL,
    [ItemCategory]    NVARCHAR (50)  NULL,
    [ItemCreator]     NVARCHAR (50)  NULL,
    [ItemImage]       IMAGE          NULL,
    CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED ([ItemID] ASC)
);
    -->



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
    <style type="text/css">
                @import url('https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200&display=swap');
        :root{
            --font-style: 'Nunito Sans', sans-serif;
        }
        body
        {
           font-family: var(--font-style);
           background-color:white;
        }
        #menu
        {
            margin:5%;
            width:450px;
            display:flex;
            flex-direction:row;
            list-style:none;
            padding:25px 0;
            border-radius: 25px;
            border: 0.1px solid #0dff09;
            background-color:white;
            box-shadow: 0 4px 8px 0 #0dff09, 0 6px 20px 0 green;
            position:relative;
            left:425px;
            bottom:50px;
        }
        a
        {
            margin:auto;
            color:green;
            font-size: 20px;
            cursor:pointer;
        }
        a:after
        {
             display: block;
             content: '';
            border-bottom: solid 1px green;
            padding-bottom: 1%;
            transform: scaleX(0);
            transition: transform 300ms ease-in-out;

        }
        a:hover:after
        {
            transform:scaleX(1);
        }
        a:link, a:visited
        {
            color: green;
            text-decoration:none;
            cursor: auto;
        }
        a:link:active, a:visited:active
        {
            color:green;
        }
        #slider
        {
            position:relative;
            width:1280px;
            height:720px;
            left:125px;
            overflow:hidden;
            box-shadow: 0 0 30px rgba(0,0,0,0.3);
        }

        #slider ul
        {
            position: relative;
            list-style: none;
            height: 100%;
            width: 10000%;
            padding: 0;
            margin: 0;
            transition: all 750ms ease;
            left:0;
        }
        #slider ul li
        {
            position:relative;
            height:100%;
            float: left;
        }
        #slider ul li img 
        {
            width: 1280px;
            height: 720px;
            filter:opacity(0.6);
        }
            
         
            .text
            {
                position:relative;
                top:300px;
                width:50%;
                left: 450px;
                font-size:48px;
                color:green;
                z-index:1;
            }
            .container 
            {
                position: relative;
                top: 350px;
                left: 600px;
                z-index:1;
                width:50%;
                 
                /*transform: translate(-50%, -50%);*/
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
        .project h1
        {
            width:25%;
            position:relative;
            font-size:48px;
            top: 100px;
            left:600px;
            color:green;
        }
        .project p
        {
            position:relative;
            top: 100px;
            font-size:24px;
            left:400px;
            text-align:center;
            width:50%;
        }
        .auto-style1 {
            width: 200px;
        }
        /*Projects*/
        .container_button
        {
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 10%;
        }
        .card
        {
            padding: 30px;
            margin: 2%;
            background: #69bf78;
            width: 100px;
            height: 100px;
            box-shadow: 0 2px 3px 0px rgba(0, 0, 0, 0.25);
            border-radius: 3px;
            transition: .2s all;
            cursor: pointer;
        }
        .container_button:hover .card
        {
            filter: blur(3px);
            opacity: .5;
            transform: scale(.98);
            box-shadow: none;
        }
        .container_button:hover .card:hover
        {
             transform: scale(1);
            filter: blur(0px);
            opacity: 1;
            box-shadow: 0 8px 20px 0px rgba(0, 0, 0, 0.125);
            background: #2ca82c;
            color: white;
        }
        tbody
        {
            position:relative;
            top:200px;
            left:600px;
        }
        .img
        {
            position:relative;
            bottom: 10px;
        }
       .Team
       {
           position:relative;
           top:250px;
           right:80px;
       }
       .member
       {
           position:relative;
           left:250px;
           /*width:55%;*/
           display:inline-block;
          
       }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="title">
            <h1 style="color:green; font-size:64px; text-align:center">Dammam Community College Projects</h1>
            <ul id="menu">
                <a href="default.aspx"><li>Home</li></a>
                <a href="Monke.aspx"><li>Projects</li></a>
                <a href="default.aspx"><li>The Team</li></a>
                <a href="default.aspx"><li>CIT</li></a>
            </ul>
        </div>
       

         <h1 class="text">Dammam Community College</h1>
        <div class="container">

            <button type="button">
                <span >
                    <asp:Button ID="Button1"  CssClass="button" runat="server" Text="Visit Website"  OnClick="Button1_Click"/>
                </span>
            </button>
        </div>
        <div id="slider">
           
                <ul id="slideWrap">
                    <li>
                        <img src="img/dcc.jfif" alt="" />
                    </li>
                </ul>
            </div>
            <div class="project">
            <h1>
                The Projects
            </h1>

            <p>
                This project helds a webiste where Computer & Information Technology students can upload their projects on this webiste. This allows for more public exposure to all DCC students and Instructors, where useful projects that solve certain problems be used for a good cause.
            </p>
            
        </div>
            <asp:Panel ID="Panel1" runat="server">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" CellPadding="3">
                    <ItemTemplate>
                        <div class="container_button">   
                            
                                <div class="card">
                                <p class="auto-style1">Name: <%# Eval("ItemName") %></p>

                                <p class="auto-style1"><asp:Image ID="Image1" CssClass="img" runat="server" ImageUrl='<%# mm((int)Eval("ItemID")) %>' Height="75px" Width="75px"/></p>
                            
                                </div>
                                
                            </div>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
            <div class="Team">
                <h1 style="color:green; text-align:center">Meet The Team</h1>
                <div class="member">
                    <img src="img/gehad.jfif" height="300" width="200" style="border:2px solid green"/>
                    <h2 style="color:green;">Gehad M. Aqel</h2>
                    <p style="color: gray;">Designer</p>
                    </div>
                <div class="member" style="position:relative; left:350px;">
                    <img src="img/Ziad.jpg" height="300" width="200" style="border:2px solid green"/>
                    <h2 style="color:green; ">Ziad Harakat</h2>
                    <p style="color: gray;">Designer & Developer</p>

                </div>

                <div class="member" style="position:relative; left:450px;">
                    <img src="img/azooz.jfif" height="300" width="200" style="border:2px solid green"/>
                    <h2 style="color:green;">Abdulaziz Al-Nashawati</h2>
                    <p style="color: gray; position:relative; left:50px">Developer</p>

                </div>

                <div class="member" style="position:relative; left:550px;">
                    <img src="img/salamon.jfif" height="300" width="200" style="border:2px solid green"/>
                    <h2 style="color:green;">Salmeen Binmahfooz</h2>
                    <p style="color: gray; position:relative; left:50px">Developer & Designer</p>

                </div>
                
                
            </div>
        </div>
       
    </form>
</body>
</html>
