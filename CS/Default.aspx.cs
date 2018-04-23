using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void buttonPrev_Init(object sender, EventArgs e)
    {
        ASPxButton button = sender as ASPxButton;
        GridViewDataItemTemplateContainer container = button.NamingContainer as GridViewDataItemTemplateContainer;
        button.ClientSideEvents.Click = string.Format("function(s, e){{ gridView.StartEditRow({0}-1); }}", container.VisibleIndex);
    }
    protected void buttonNext_Init(object sender, EventArgs e)
    {
        ASPxButton button = sender as ASPxButton;
        GridViewDataItemTemplateContainer container = button.NamingContainer as GridViewDataItemTemplateContainer;
        button.ClientSideEvents.Click = string.Format("function(s, e){{ gridView.StartEditRow({0}+1); }}", container.VisibleIndex);
    }
}