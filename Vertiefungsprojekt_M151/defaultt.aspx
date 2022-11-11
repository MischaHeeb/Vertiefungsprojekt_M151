<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="defaultt.aspx.cs" Inherits="Vertiefungsprojekt_M151.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <h1>Registrieren</h1>

        <asp:ValidationSummary ID="validationSummery1" HeaderText="Folgende Fehler sind aufgetreten" runat="server" 
            ForeColor="Red" />


        <div>
            <p>
                *Vorname:
                <asp:TextBox ID="vorname" runat="server" />
                <asp:RequiredFieldValidator id="requiredValidator1" ErrorMessage="Feld muss augefüllt sein!" ControlToValidate="vorname" runat="server" />
            </p>
            <p>
                *Name:
                <asp:TextBox ID="name" runat="server" />
                <asp:RequiredFieldValidator id="requiredValidator2" ErrorMessage="Feld muss ausgefüllt sein!" ControlToValidate="name" runat="server" />
            </p>
            <p>
                *Email-Adresse:
                <asp:TextBox ID="email" runat="server" />
                <asp:RequiredFieldValidator id="requiredValidator3" ErrorMessage="Feld muss ausgefüllt sein!" ControlToValidate="email" runat="server" />
                <asp:RegularExpressionValidator id="regexValidator1" ControlToValidate="email"
            ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"
            ErrorMessage="Email-Adresse besitzt nicht korrekte Syntax." runat="server"/>

            </p>
            <p>
                *Geburtsjahr:
                <asp:TextBox ID="geburtsjahr" runat="server" />
                <asp:RequiredFieldValidator id="requiredValidator4" ErrorMessage="Feld muss ausgefüllt sein!" ControlToValidate="geburtsjahr" runat="server" />

                <asp:RegularExpressionValidator id="regexValidator2" ControlToValidate="geburtsjahr"
                    ValidationExpression="[0-9][0-9][0-9][0-9]"
                    ErrorMessage="Geburtsjahr-Syntax nicht korrekt! Syntax: XXXX" 
                    runat="server" />
            </p>
            <p>
                *Interesse:
            </p>
            <p>
                <input id="desktop" type="radio" name="interesse" checked="true" runat="server" /> Desktop Applikationen
                <input id="web" type="radio" name="interesse" runat="server" /> Web-Applikationen
                <input id="phone" type="radio" name="interesse" runat="server" /> Phone App
            </p>
            <p>
                <asp:CheckBox ID="geschaeftsbedingung" Text="Ich akzeptiere die allgemeinen Geschäftsbedingungen.*" runat="server" />
                <asp:CustomValidator runat='server' ErrorMessage='Sie müssen die Geschäftsbedingungen akzeptieren um fortzufahren.' OnServerValidate='ServerValidation' ClientValidationFunction='ClientValidation'
		        ID='Customvalidator1' />
                <script language='javascript'> 
                function ClientValidation(source, args) 
                { 
	                args.IsValid = document.all['chkbox'].checked; 
                } 
                </script>
            </p>

            <input type="submit" value="Registrieren" onserverclick="Registrieren" runat="server" />

        </div>
    </form>
</body>
</html>
