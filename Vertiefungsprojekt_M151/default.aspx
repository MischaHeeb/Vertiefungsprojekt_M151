<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Vertiefungsprojekt_M151.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/LoginStyle.css?v=@Guid.NewGuid().ToString()" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="title">
        <h1>Registrieren</h1>
    </div>

        <asp:ValidationSummary ID="validationSummery1" HeaderText="Folgende Fehler sind aufgetreten" runat="server" 
            ForeColor="Red" DisplayMode="BulletList" Enabled="false" />


        <section class="input-section">
            <asp:Label Text="*Erforderlich" Font-Size="X-Small" runat="server" />
            <div>
                <p>*Vorname:</p>
                <asp:TextBox ID="vorname" CssClass="input-field" runat="server" />
                <p class="error-message">
                    <asp:RequiredFieldValidator id="requiredValidator1" ErrorMessage="Feld muss augefüllt sein!" ControlToValidate="vorname" ForeColor="Red" Font-Size="X-Small" Display="Dynamic" runat="server"/>
                </p>
            </div>
            <div>
                <p>*Name:</p>
                <asp:TextBox ID="name" CssClass="input-field" runat="server" />
                <p class="error-message">
                    <asp:RequiredFieldValidator id="requiredValidator2" ErrorMessage="Feld muss ausgefüllt sein!" ControlToValidate="name" ForeColor="Red" Font-Size="X-Small" Display="Dynamic" runat="server" />
                </p>
            </div>
            <div>
                <p>*Email-Adresse:</p>
                <asp:TextBox ID="email" CssClass="input-field" runat="server" />
                <p class="error-message">
                    <asp:RequiredFieldValidator id="requiredValidator3" ErrorMessage="Feld muss ausgefüllt sein!" ControlToValidate="email" ForeColor="Red" Font-Size="X-Small" Display="Dynamic" runat="server"/>
                </p>
                <p class="error-message">
                    <asp:RegularExpressionValidator id="regexValidator1" ControlToValidate="email"
            ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"
            ErrorMessage="Email-Adresse besitzt nicht korrekte Syntax." ForeColor="Red" Font-Size="X-Small" Display="Dynamic" runat="server"/>
                </p>

            </div>
            <div>
                <p>*Geburtsjahr:</p>
                <asp:TextBox ID="geburtsjahr" CssClass="input-field" runat="server" />
                

                <p class="error-message">
                    <asp:RequiredFieldValidator id="requiredValidator4" ErrorMessage="Feld muss ausgefüllt sein!" ControlToValidate="geburtsjahr" ForeColor="Red" Font-Size="X-Small" Display="Dynamic" runat="server" />
                    <asp:RegularExpressionValidator id="regexValidator2" ControlToValidate="geburtsjahr"
                    ValidationExpression="[0-9][0-9][0-9][0-9]"
                    ErrorMessage="Geburtsjahr-Syntax nicht korrekt! Syntax: XXXX" ForeColor="Red" Font-Size="X-Small" Display="Dynamic"
                    runat="server" />
                </p>
            </div>
            <div>
                <asp:CheckBox ID="geschaeftsbedingung" Text="*Ich akzeptiere die allgemeinen Geschäftsbedingungen." runat="server" />
                <p class="error-message">
                    <asp:CustomValidator runat='server' ErrorMessage='Sie müssen die Geschäftsbedingungen akzeptieren um fortzufahren.' OnServerValidate='ServerValidation' ForeColor="Red" Font-Size="X-Small"
		        ID='Customvalidator1' />
                </p>
            </div>

            <div class="register-btn">
                <input class="button" type="submit" value="Registrieren" onserverclick="Registrieren" runat="server" />
            </div>
        </section>

</asp:Content>
