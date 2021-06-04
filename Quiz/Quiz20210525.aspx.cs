using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Quiz
{
    public partial class Quiz20210525 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CalSum_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Cal")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                int sum = 0;
                for (int i = 2; i <= 4; i++)
                {
                    sum += Convert.ToInt32(CalSum.Rows[index].Cells[i].Text);
                }
                lb_Show.Text = "第"+(index+1).ToString()+"位"+CalSum.Rows[index].Cells[1].Text+"同學總分：" + sum.ToString();
            }
        }
    }
}