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
    public partial class frmRecipeList : Form
    {
        public frmRecipeList()
        {
            InitializeComponent();
            btnSearch.Click += BtnSearch_Click;
            gRecipe.CellDoubleClick += GRecipe_CellDoubleClick;
            FormatGrid();
            btnNew.Click += BtnNew_Click;
        }

       

        private void ShowRecipeForm(int rowindex)
        {
            int id = 0;
            if (rowindex >= 0)
            {
                id = (int)gRecipe.Rows[rowindex].Cells["RecipeId"].Value;
            }
            
            //Debug.Print(id.ToString());
            frmRecipe frm = new frmRecipe();
            frm.ShowForm(id);
        }

        private void SearchForRecipe(string lastname)
        {

            string sql = "Select RecipeId,RecipeName from recipe r where r.recipename like '%" + lastname + "%' ";
            //Debug.Print(sql);
            DataTable dt = SQLUtility.GetDataTable(sql);
            gRecipe.DataSource = dt;
            gRecipe.Columns["RecipeId"].Visible = false;
        }

        private void FormatGrid()
        {
            gRecipe.ReadOnly = true;
            gRecipe.AllowUserToAddRows = false;
            gRecipe.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
            gRecipe.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
        }


        private void GRecipe_CellDoubleClick(object? sender, DataGridViewCellEventArgs e)
        {
            ShowRecipeForm(e.RowIndex);
        }
        private void BtnSearch_Click(object? sender, EventArgs e)
        {
            SearchForRecipe(txtRecipeName.Text);
        }

        private void BtnNew_Click(object? sender, EventArgs e)
        {
            
            ShowRecipeForm(-1);
        }
    }
}
