using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vertiefungsprojekt_M151
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected override void OnInit(System.EventArgs e)
        {
            base.OnInit(e);

            //load Scriptmanager at Applicytion Start (jquery used in ASP-Validator-Controls)
            // https://msdn.microsoft.com/de-de/library/system.web.ui.scriptmanager.scriptresourcemapping(v=vs.110).aspx            
            //
            ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
            myScriptResDef.Path = "~/scripts/jquery-3.5.0.min.js";
            myScriptResDef.DebugPath = "~/scripts/jquery-3.5.0.js";
            myScriptResDef.CdnPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.5.0.min.js";
            myScriptResDef.CdnDebugPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.5.0.js";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myScriptResDef);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                HttpCookie cookie = new HttpCookie("RegistrationData");
                cookie.Values.Add("Name", name.Text);
                cookie.Values.Add("Vorname", vorname.Text);
                Response.AppendCookie(cookie);

                Session["Email"] = email.Text;
                Session["Geburtsjahr"] = geburtsjahr.Text;
            }
        }

        protected void Registrieren(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;
            Response.Redirect("Confirmation.aspx");

        }

        protected void ServerValidation(object source, ServerValidateEventArgs args)
        {
            args.IsValid = geschaeftsbedingung.Checked;
        }



    }
}