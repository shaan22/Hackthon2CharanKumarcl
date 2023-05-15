﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchWord.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
         body {
          margin: 10%;
          font-family: Arial, Helvetica, sans-serif;
        }
        
        .container {
            height:60%;
            display: inline-block;
            width: 50%;
          overflow: hidden;
          background-color: #e9e9e9;
        }
        
        
        
        
        
        .container input[type=text] {
          
          padding: 6px;
          margin-top: 1px;
          margin-right: 1px;
          margin-left: 60px;
          border: none;
          font-size: 17px;
        }

        .container button{
            background-color: blue;
            color: white;
            display: inline-block;
            width: 80px;
            height: 35px;
            margin-left: 20px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
               <div class="container">
       English Word
       <asp:TextBox runat="server" ID="searchword" />
        <asp:Button runat="server" ID="btnRegister" Text="Search" OnClick="btnRegister_Click"/>
      </div>
        <p><asp:Label runat="server" ID="lblText" /></p>
    </form>
</body>
</html>
