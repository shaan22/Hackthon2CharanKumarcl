using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        HttpCookie searchinfo = new HttpCookie("searchinfo");
        protected void Page_Load(object sender, EventArgs e)
        {
           
            searchinfo["searchinfo"] = "Apple";
            searchinfo["searchinfo"] = "Banana";
            searchinfo.Expires.Add(new TimeSpan(0, 1, 0));
            Response.Cookies.Add(searchinfo);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            /* HttpCookie cookie = new HttpCookie("MyCookies");
             cookie.Values.Add("name", searchword.Text);

             Response.Cookies.Add(cookie);
             Response.Redirect("RecipientPage.aspx");*/

            HttpCookie cookie = Request.Cookies["searchinfo"];
            string search = searchword.Text;
            List<string> word = cookie.Value.Split(',').ToList();

           foreach(var item in word)
            {
                if(item.ToString() == search.ToString())
                {
                    lblText.Text = "Word FOund";
                   
                }

                Response.Redirect("~/searchword2.aspx");

            }

            

        }
    }
}