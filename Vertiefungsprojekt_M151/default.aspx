<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Vertiefungsprojekt_M151.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Registrieren</h1>

    <small>*Erforderlich</small>

        <asp:ValidationSummary ID="validationSummery1" HeaderText="Folgende Fehler sind aufgetreten" runat="server" 
            ForeColor="Red" DisplayMode="List"/>


        <div>
            <p>
                *Vorname:
                <asp:TextBox ID="vorname" runat="server" />
                <asp:RequiredFieldValidator id="requiredValidator1" ErrorMessage="Feld muss augefüllt sein!" ControlToValidate="vorname" runat="server" Display="None"/>
            </p>
            <p>
                *Name:
                <asp:TextBox ID="name" runat="server" />
                <asp:RequiredFieldValidator id="requiredValidator2" ErrorMessage="Feld muss ausgefüllt sein!" ControlToValidate="name" runat="server" />
            </p>
            <p>
                *Email-Adresse:
                <asp:TextBox ID="email" runat="server" />
                <asp:RequiredFieldValidator id="requiredValidator3" ErrorMessage="Feld muss ausgefüllt sein!" ControlToValidate="email" runat="server"/>
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
                <asp:CheckBox ID="geschaeftsbedingung" Text="*Ich akzeptiere die allgemeinen Geschäftsbedingungen." runat="server" />
                <asp:CustomValidator runat='server' ErrorMessage='Sie müssen die Geschäftsbedingungen akzeptieren um fortzufahren.' OnServerValidate='ServerValidation'
		        ID='Customvalidator1' />
            </p>

            <input type="submit" value="Registrieren" onserverclick="Registrieren" runat="server" />

            </div>

</asp:Content>
