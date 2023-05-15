<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchword2.aspx.cs" Inherits="WebApplication2.WebForm2" %>

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
        <div>
            <%-- <div class="container">
       English Word
       <asp:TextBox runat="server" ID="searchword" />
        <asp:Button runat="server" ID="btnRegister" Text="Search" OnClick="btnRegister_Click"/>
      </div>
        <p><asp:Label runat="server" ID="lblText" /></p>--%>
            <table>
                <tr>
                      <th>
                    word
                </th>
                 <th>
                    Translation
                </th>
                 <th>
                    Action
                </th>
                </tr>
                <tr>
                    <td><asp:Label runat="server" ID="lbltext" /></td>
                    <td><asp:TextBox runat="server" ID="displayword" /></td>
                    <td><asp:Button  runat="server" ID="btnRegister" Text="Add to my Words" /></td>
                </tr>
              
            </table>
        </div>
    </form>
</body>
</html>
