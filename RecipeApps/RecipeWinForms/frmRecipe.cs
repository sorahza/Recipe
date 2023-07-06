using CPUFramework;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace RecipeWinForms
{
    public partial class frmRecipe : Form
    {
        string path = Application.StartupPath+@"\images\";
        public frmRecipe()
        {
            InitializeComponent();
        }

        public void ShowForm(int recipeid)
        {
            string sql = "Select r.*,c.CuisineName,u.UserFirstName+' '+u.UserLastName as UserCreated" +
                " from recipe r join cuisine c on c.CuisineId = r.CuisineId " +
                "join users u on u.UserId=r.CreateByUserId where r.recipeid ="
                + recipeid.ToString();
            DataTable dt = SQLUtility.GetDataTable(sql);
            txtRecipeName.DataBindings.Add("Text", dt, "RecipeName");
            lblCuisine.DataBindings.Add("Text", dt, "CuisineName");
            lblUserCreated.DataBindings.Add("Text", dt, "UserCreated");
            txtYields.DataBindings.Add("Text", dt, "Yields");
            txtCalories.DataBindings.Add("Text", dt, "Calories");
            txtDatePublished.DataBindings.Add("Text", dt, "PublishedDate");
            txtDateArchived.DataBindings.Add("Text", dt, "ArchivedDate");
            lblCurrentStatus.DataBindings.Add("Text", dt, "CurrentStatus");
            string image =path+dt.Rows[0].Field<string>("RecipePic");
            if (File.Exists(image))
            {
                picRecipe.ImageLocation = image;
            }
            this.Show();
        }
    }
}
