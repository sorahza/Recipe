namespace RecipeWinForms
{
    partial class frmRecipe
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tblMain = new System.Windows.Forms.TableLayoutPanel();
            this.lblCaptionRecipeName = new System.Windows.Forms.Label();
            this.lblCaptionCuisine = new System.Windows.Forms.Label();
            this.lbCaptionCreateByUser = new System.Windows.Forms.Label();
            this.lblCaptionYields = new System.Windows.Forms.Label();
            this.lblCaptionCalories = new System.Windows.Forms.Label();
            this.lblCaptionCreateDate = new System.Windows.Forms.Label();
            this.lblCaptionPublishedDate = new System.Windows.Forms.Label();
            this.lblCaptionArchivedDate = new System.Windows.Forms.Label();
            this.lblCaptionCurrentStatus = new System.Windows.Forms.Label();
            this.lblCaptionPic = new System.Windows.Forms.Label();
            this.txtRecipeName = new System.Windows.Forms.TextBox();
            this.lblCuisine = new System.Windows.Forms.Label();
            this.lblUserCreated = new System.Windows.Forms.Label();
            this.txtYields = new System.Windows.Forms.TextBox();
            this.txtCalories = new System.Windows.Forms.TextBox();
            this.lblDateCreated = new System.Windows.Forms.Label();
            this.txtDatePublished = new System.Windows.Forms.TextBox();
            this.txtDateArchived = new System.Windows.Forms.TextBox();
            this.lblCurrentStatus = new System.Windows.Forms.Label();
            this.picRecipe = new System.Windows.Forms.PictureBox();
            this.tblMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picRecipe)).BeginInit();
            this.SuspendLayout();
            // 
            // tblMain
            // 
            this.tblMain.ColumnCount = 2;
            this.tblMain.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tblMain.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tblMain.Controls.Add(this.lblCaptionRecipeName, 0, 0);
            this.tblMain.Controls.Add(this.lblCaptionCuisine, 0, 1);
            this.tblMain.Controls.Add(this.lbCaptionCreateByUser, 0, 2);
            this.tblMain.Controls.Add(this.lblCaptionYields, 0, 3);
            this.tblMain.Controls.Add(this.lblCaptionCalories, 0, 4);
            this.tblMain.Controls.Add(this.lblCaptionCreateDate, 0, 5);
            this.tblMain.Controls.Add(this.lblCaptionPublishedDate, 0, 6);
            this.tblMain.Controls.Add(this.lblCaptionArchivedDate, 0, 7);
            this.tblMain.Controls.Add(this.lblCaptionCurrentStatus, 0, 8);
            this.tblMain.Controls.Add(this.lblCaptionPic, 0, 9);
            this.tblMain.Controls.Add(this.txtRecipeName, 1, 0);
            this.tblMain.Controls.Add(this.lblCuisine, 1, 1);
            this.tblMain.Controls.Add(this.lblUserCreated, 1, 2);
            this.tblMain.Controls.Add(this.txtYields, 1, 3);
            this.tblMain.Controls.Add(this.txtCalories, 1, 4);
            this.tblMain.Controls.Add(this.lblDateCreated, 1, 5);
            this.tblMain.Controls.Add(this.txtDatePublished, 1, 6);
            this.tblMain.Controls.Add(this.txtDateArchived, 1, 7);
            this.tblMain.Controls.Add(this.lblCurrentStatus, 1, 8);
            this.tblMain.Controls.Add(this.picRecipe, 1, 9);
            this.tblMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tblMain.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.tblMain.Location = new System.Drawing.Point(0, 0);
            this.tblMain.Name = "tblMain";
            this.tblMain.RowCount = 10;
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tblMain.Size = new System.Drawing.Size(483, 457);
            this.tblMain.TabIndex = 0;
            // 
            // lblCaptionRecipeName
            // 
            this.lblCaptionRecipeName.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblCaptionRecipeName.AutoSize = true;
            this.lblCaptionRecipeName.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCaptionRecipeName.Location = new System.Drawing.Point(7, 12);
            this.lblCaptionRecipeName.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lblCaptionRecipeName.Name = "lblCaptionRecipeName";
            this.lblCaptionRecipeName.Size = new System.Drawing.Size(102, 21);
            this.lblCaptionRecipeName.TabIndex = 0;
            this.lblCaptionRecipeName.Text = "Recipe Name";
            // 
            // lblCaptionCuisine
            // 
            this.lblCaptionCuisine.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblCaptionCuisine.AutoSize = true;
            this.lblCaptionCuisine.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCaptionCuisine.Location = new System.Drawing.Point(7, 57);
            this.lblCaptionCuisine.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lblCaptionCuisine.Name = "lblCaptionCuisine";
            this.lblCaptionCuisine.Size = new System.Drawing.Size(61, 21);
            this.lblCaptionCuisine.TabIndex = 1;
            this.lblCaptionCuisine.Text = "Cuisine";
            // 
            // lbCaptionCreateByUser
            // 
            this.lbCaptionCreateByUser.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lbCaptionCreateByUser.AutoSize = true;
            this.lbCaptionCreateByUser.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lbCaptionCreateByUser.Location = new System.Drawing.Point(7, 102);
            this.lbCaptionCreateByUser.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lbCaptionCreateByUser.Name = "lbCaptionCreateByUser";
            this.lbCaptionCreateByUser.Size = new System.Drawing.Size(100, 21);
            this.lbCaptionCreateByUser.TabIndex = 2;
            this.lbCaptionCreateByUser.Text = "User Created";
            // 
            // lblCaptionYields
            // 
            this.lblCaptionYields.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblCaptionYields.AutoSize = true;
            this.lblCaptionYields.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCaptionYields.Location = new System.Drawing.Point(7, 147);
            this.lblCaptionYields.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lblCaptionYields.Name = "lblCaptionYields";
            this.lblCaptionYields.Size = new System.Drawing.Size(51, 21);
            this.lblCaptionYields.TabIndex = 3;
            this.lblCaptionYields.Text = "Yields";
            // 
            // lblCaptionCalories
            // 
            this.lblCaptionCalories.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblCaptionCalories.AutoSize = true;
            this.lblCaptionCalories.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCaptionCalories.Location = new System.Drawing.Point(7, 192);
            this.lblCaptionCalories.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lblCaptionCalories.Name = "lblCaptionCalories";
            this.lblCaptionCalories.Size = new System.Drawing.Size(66, 21);
            this.lblCaptionCalories.TabIndex = 4;
            this.lblCaptionCalories.Text = "Calories";
            // 
            // lblCaptionCreateDate
            // 
            this.lblCaptionCreateDate.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblCaptionCreateDate.AutoSize = true;
            this.lblCaptionCreateDate.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCaptionCreateDate.Location = new System.Drawing.Point(7, 237);
            this.lblCaptionCreateDate.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lblCaptionCreateDate.Name = "lblCaptionCreateDate";
            this.lblCaptionCreateDate.Size = new System.Drawing.Size(100, 21);
            this.lblCaptionCreateDate.TabIndex = 5;
            this.lblCaptionCreateDate.Text = "Date Created";
            // 
            // lblCaptionPublishedDate
            // 
            this.lblCaptionPublishedDate.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblCaptionPublishedDate.AutoSize = true;
            this.lblCaptionPublishedDate.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCaptionPublishedDate.Location = new System.Drawing.Point(7, 282);
            this.lblCaptionPublishedDate.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lblCaptionPublishedDate.Name = "lblCaptionPublishedDate";
            this.lblCaptionPublishedDate.Size = new System.Drawing.Size(114, 21);
            this.lblCaptionPublishedDate.TabIndex = 6;
            this.lblCaptionPublishedDate.Text = "Date Published";
            // 
            // lblCaptionArchivedDate
            // 
            this.lblCaptionArchivedDate.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblCaptionArchivedDate.AutoSize = true;
            this.lblCaptionArchivedDate.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCaptionArchivedDate.Location = new System.Drawing.Point(7, 327);
            this.lblCaptionArchivedDate.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lblCaptionArchivedDate.Name = "lblCaptionArchivedDate";
            this.lblCaptionArchivedDate.Size = new System.Drawing.Size(107, 21);
            this.lblCaptionArchivedDate.TabIndex = 7;
            this.lblCaptionArchivedDate.Text = "Date Archived";
            // 
            // lblCaptionCurrentStatus
            // 
            this.lblCaptionCurrentStatus.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblCaptionCurrentStatus.AutoSize = true;
            this.lblCaptionCurrentStatus.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCaptionCurrentStatus.Location = new System.Drawing.Point(7, 372);
            this.lblCaptionCurrentStatus.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lblCaptionCurrentStatus.Name = "lblCaptionCurrentStatus";
            this.lblCaptionCurrentStatus.Size = new System.Drawing.Size(109, 21);
            this.lblCaptionCurrentStatus.TabIndex = 8;
            this.lblCaptionCurrentStatus.Text = "Current Status";
            // 
            // lblCaptionPic
            // 
            this.lblCaptionPic.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.lblCaptionPic.AutoSize = true;
            this.lblCaptionPic.Font = new System.Drawing.Font("Segoe UI", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCaptionPic.Location = new System.Drawing.Point(7, 420);
            this.lblCaptionPic.Margin = new System.Windows.Forms.Padding(7, 0, 3, 0);
            this.lblCaptionPic.Name = "lblCaptionPic";
            this.lblCaptionPic.Size = new System.Drawing.Size(58, 21);
            this.lblCaptionPic.TabIndex = 9;
            this.lblCaptionPic.Text = "Picture";
            // 
            // txtRecipeName
            // 
            this.txtRecipeName.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtRecipeName.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.txtRecipeName.Location = new System.Drawing.Point(244, 3);
            this.txtRecipeName.Name = "txtRecipeName";
            this.txtRecipeName.Size = new System.Drawing.Size(236, 25);
            this.txtRecipeName.TabIndex = 10;
            this.txtRecipeName.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // lblCuisine
            // 
            this.lblCuisine.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lblCuisine.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCuisine.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCuisine.Location = new System.Drawing.Point(244, 45);
            this.lblCuisine.Name = "lblCuisine";
            this.lblCuisine.Size = new System.Drawing.Size(236, 45);
            this.lblCuisine.TabIndex = 11;
            // 
            // lblUserCreated
            // 
            this.lblUserCreated.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lblUserCreated.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblUserCreated.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblUserCreated.Location = new System.Drawing.Point(244, 90);
            this.lblUserCreated.Name = "lblUserCreated";
            this.lblUserCreated.Size = new System.Drawing.Size(236, 45);
            this.lblUserCreated.TabIndex = 12;
            // 
            // txtYields
            // 
            this.txtYields.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtYields.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.txtYields.Location = new System.Drawing.Point(244, 138);
            this.txtYields.Name = "txtYields";
            this.txtYields.Size = new System.Drawing.Size(236, 25);
            this.txtYields.TabIndex = 13;
            this.txtYields.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtCalories
            // 
            this.txtCalories.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtCalories.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.txtCalories.Location = new System.Drawing.Point(244, 183);
            this.txtCalories.Name = "txtCalories";
            this.txtCalories.Size = new System.Drawing.Size(236, 25);
            this.txtCalories.TabIndex = 14;
            this.txtCalories.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // lblDateCreated
            // 
            this.lblDateCreated.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lblDateCreated.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblDateCreated.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblDateCreated.Location = new System.Drawing.Point(244, 225);
            this.lblDateCreated.Name = "lblDateCreated";
            this.lblDateCreated.Size = new System.Drawing.Size(236, 45);
            this.lblDateCreated.TabIndex = 15;
            // 
            // txtDatePublished
            // 
            this.txtDatePublished.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtDatePublished.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.txtDatePublished.Location = new System.Drawing.Point(244, 273);
            this.txtDatePublished.Name = "txtDatePublished";
            this.txtDatePublished.Size = new System.Drawing.Size(236, 25);
            this.txtDatePublished.TabIndex = 16;
            this.txtDatePublished.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtDateArchived
            // 
            this.txtDateArchived.Dock = System.Windows.Forms.DockStyle.Fill;
            this.txtDateArchived.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.txtDateArchived.Location = new System.Drawing.Point(244, 318);
            this.txtDateArchived.Name = "txtDateArchived";
            this.txtDateArchived.Size = new System.Drawing.Size(236, 25);
            this.txtDateArchived.TabIndex = 17;
            this.txtDateArchived.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // lblCurrentStatus
            // 
            this.lblCurrentStatus.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lblCurrentStatus.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lblCurrentStatus.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.lblCurrentStatus.Location = new System.Drawing.Point(244, 360);
            this.lblCurrentStatus.Name = "lblCurrentStatus";
            this.lblCurrentStatus.Size = new System.Drawing.Size(236, 45);
            this.lblCurrentStatus.TabIndex = 18;
            // 
            // picRecipe
            // 
            this.picRecipe.Location = new System.Drawing.Point(244, 408);
            this.picRecipe.Name = "picRecipe";
            this.picRecipe.Size = new System.Drawing.Size(227, 46);
            this.picRecipe.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.picRecipe.TabIndex = 19;
            this.picRecipe.TabStop = false;
            // 
            // frmRecipe
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(483, 457);
            this.Controls.Add(this.tblMain);
            this.Name = "frmRecipe";
            this.Text = "Recipe";
            this.tblMain.ResumeLayout(false);
            this.tblMain.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picRecipe)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private TableLayoutPanel tblMain;
        private Label lblCaptionRecipeName;
        private Label lblCaptionCuisine;
        private Label lbCaptionCreateByUser;
        private Label lblCaptionYields;
        private Label lblCaptionCalories;
        private Label lblCaptionCreateDate;
        private Label lblCaptionPublishedDate;
        private Label lblCaptionArchivedDate;
        private Label lblCaptionCurrentStatus;
        private Label lblCaptionPic;
        private TextBox txtRecipeName;
        private Label lblCuisine;
        private Label lblUserCreated;
        private TextBox txtYields;
        private TextBox txtCalories;
        private Label lblDateCreated;
        private TextBox txtDatePublished;
        private TextBox txtDateArchived;
        private Label lblCurrentStatus;
        private PictureBox picRecipe;
    }
}