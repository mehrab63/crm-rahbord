using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace CrmRahbord
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.MapPageRoute("dashboard","dashboard","~/Pages/Default.aspx");
            RouteTable.Routes.MapPageRoute("settings", "settings", "~/Pages/settings.aspx");
            RouteTable.Routes.MapPageRoute("index", "index", "~/Pages/dashboards.aspx");
            RouteTable.Routes.MapPageRoute("settings/contacts", "settings/contacts", "~/Pages/settings/contacts.aspx");
            RouteTable.Routes.MapPageRoute("contacts", "contacts", "~/Pages/contacts.aspx");
            RouteTable.Routes.MapPageRoute("settings/email", "settings/email", "~/Pages/settings/email.aspx");
            RouteTable.Routes.MapPageRoute("appointments", "appointments", "~/Pages/appointments.aspx");
            RouteTable.Routes.MapPageRoute("tasks", "tasks", "~/Pages/tasks.aspx");

            ScriptManager.ScriptResourceMapping.AddDefinition("jquery",
      new System.Web.UI.ScriptResourceDefinition
      {
          Path = "~/Scripts/jquery-1.10.2.js",
          DebugPath = "~/Scripts/jquery-1.10.2.min.js",
          CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.4.1.min.js",
          CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.4.1.js"
      });
        }
    }
}