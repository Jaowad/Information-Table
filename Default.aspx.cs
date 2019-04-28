using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("Id"), new DataColumn("Name"), new DataColumn("Country"),new DataColumn("Item") });
            /*dt.Rows.Add(1, "name", "country","gender");
            dt.Rows.Add(2, "Mudassar Khan", "India", "Male");
            dt.Rows.Add(3, "Suzanne Mathews", "France", "Female");
            dt.Rows.Add(4, "Robert Schidner", "UK", "Male");*/
            ViewState["Data"] = dt;

            GridView1.DataSource = dt;
            GridView1.DataBind();
            BindGrid();
        }
    }


    protected void BindGrid()
    {
        if (GridView1.Rows.Count == 0)
        {
            //DataTable dt2 = new DataTable();
            //dt2.Columns.AddRange(new DataColumn[4] { new DataColumn("Id"), new DataColumn("Name"), new DataColumn("Country"), new DataColumn("Item") });
            //GridView1.DataSource = dt2;
            GridView1.DataBind();
        }
    }


    protected void Add(object sender, EventArgs e)
{
    Control control = null;
    if (GridView1.FooterRow != null)
    {
        control = GridView1.FooterRow;
    }
    else
    {
        control = GridView1.Controls[0].Controls[0];
    }
    string name = (control.FindControl("txtName") as TextBox).Text.Trim();
    string country = (control.FindControl("txtCountry") as TextBox).Text.Trim();
    DataTable dt = ViewState["Data"] as DataTable;
    int lastId;
    if (dt.Rows.Count == 0)
    {
        lastId = 1;
        dt.Rows.Add(lastId, name, country);
    }
    else
    {
        lastId = Convert.ToInt32(dt.Rows[dt.Rows.Count - 1]["Id"].ToString());
        dt.Rows.Add(lastId + 1, name, country);
    }
    GridView1.DataSource = dt;
    GridView1.DataBind();
    ViewState["Data"] = dt;
}
 
protected void Delete(object sender, EventArgs e)
{
    string id = ((sender as Button)).CommandArgument;
    DataTable dt = ViewState["Data"] as DataTable;
    DataRow dr = dt.Select("Id=" + id)[0];
    dt.Rows.Remove(dr);
    GridView1.DataSource = dt;
    GridView1.DataBind();
    ViewState["Data"] = dt;
}


   
        

}
