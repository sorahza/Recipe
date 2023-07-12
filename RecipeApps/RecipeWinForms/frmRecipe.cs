using CPUFramework;
using CPUWindowsFormFramework;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
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
        DataTable dtrecipe;
        public frmRecipe()
        {
            InitializeComponent();
            btnDelete.Click += BtnDelete_Click;
            btnSave.Click += BtnSave_Click;
        }

       

        public void ShowForm(int recipeid)
        {
            string sql = "Select r.*,c.CuisineName,u.UserFirstName+' '+u.UserLastName as UserCreated" +
                " from recipe r join cuisine c on c.CuisineId = r.CuisineId " +
                "join users u on u.UserId=r.CreateByUserId where r.recipeid ="
                + recipeid.ToString();
            dtrecipe = SQLUtility.GetDataTable(sql);
            if (recipeid == 0)
            {
                dtrecipe.Rows.Add();
            }
            DataTable dtcuisine = SQLUtility.GetDataTable("Select CuisineId,CuisineName from cuisine");
            WindowsFormUtility.SetListBinding(lstCuisineName, dtcuisine, "CuisineId", dtrecipe);
            DataTable dtusers = SQLUtility.GetDataTable("Select UserId as CreateByUserId,u.UserFirstName+' '+u.UserLastName as UserCreated from users u");
            WindowsFormUtility.SetListBinding(lstUserCreated, dtusers, "CreateByUserId", dtrecipe);
            WindowsFormUtility.SetControlBinding(txtRecipeName, dtrecipe);
            WindowsFormUtility.SetControlBinding(txtYields, dtrecipe);
            WindowsFormUtility.SetControlBinding(txtCalories, dtrecipe);
            WindowsFormUtility.SetControlBinding(txtPublishedDate, dtrecipe);
            WindowsFormUtility.SetControlBinding(txtArchivedDate, dtrecipe);
            WindowsFormUtility.SetControlBinding(lblCreatedDate, dtrecipe);
            WindowsFormUtility.SetControlBinding(lblCurrentStatus, dtrecipe);
            string image =path+dtrecipe.Rows[0].Field<string>("RecipePic");
            if (File.Exists(image))
            {
                picRecipe.ImageLocation = image;
            }
            this.Show();
           
        }
        private void Save() {
            SQLUtility.DebugPrintDataTable(dtrecipe);
            DataRow r = dtrecipe.Rows[0];
            int id = (int)r["RecipeId"];
            //string archdate = r["ArchivedDate"].ToString();
            string sql = "";
            if (id > 0)
            {
                sql = string.Join(Environment.NewLine, $"update recipe set",
                    $"CuisineId ={r["CuisineId"]},",
                    $"CreateByUserId = {r["CreateByUserId"]},",
                    $"RecipeName ='{r["RecipeName"]}',",
                    $"Yields ='{r["Yields"]}',",
                    //$"ArchivedDate ='{r["ArchivedDate"]}',",
                    //$"ArchivedDate = null,",
                    //$"ArchivedDate = {archdate},",
                    //$"PublishedDate ='{r["PublishedDate"]}',",
                    $"Calories ={r["Calories"]}",
                    $"where RecipeId={r["RecipeId"]}");
            }
            else
            {

                sql = "insert into Recipe (CuisineId,CreateByUserId,RecipeName,Yields,Calories,CreatedDate) ";
                sql += $"select '{r["CuisineId"]}',{r["CreateByUserId"]},'{r["RecipeName"]}','{r["Yields"]}',{r["Calories"]},getdate()";
            }
            Debug.Print(sql);
            SQLUtility.ExecuteSql(sql);
        }
        private void Delete() {
            
                int id = (int)dtrecipe.Rows[0]["RecipeId"];
                string sql = "delete from recipe where RecipeId =" + id;
                SQLUtility.ExecuteSql(sql);
                this.Close();
            
        }
        private void BtnSave_Click(object? sender, EventArgs e)
        {
            Save();
        }

        private void BtnDelete_Click(object? sender, EventArgs e)
        {
            Delete();
        }
    }
}
