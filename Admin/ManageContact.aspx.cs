using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Admin
{
    public partial class ManageContact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadMessages();
            }
        }

        private void LoadMessages()
        {
            try
            {
                DataTable dt = ContactService.GetAllMessages();
                gvMessages.DataSource = dt;
                gvMessages.DataBind();

                if (dt != null)
                {
                    lblMsgCount.Text = $"{dt.Rows.Count} Message(s)";
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error loading contact messages: " + ex.Message);
            }
        }

        protected void btnCloseDetail_Click(object sender, EventArgs e)
        {
            pnlDetail.Visible = false;
        }

        protected void btnMarkRead_Click(object sender, EventArgs e)
        {
            try
            {
                int msgId = Convert.ToInt32(hfMessageId.Value);
                string reply = txtAdminReply.Text.Trim();

                bool marked = ContactService.MarkAsRead(msgId, reply);
                if (marked)
                {
                    ShowAlert("success", "Message marked as resolved/read.");
                    pnlDetail.Visible = false;
                    LoadMessages();
                }
            }
            catch (Exception ex)
            {
                ShowAlert("danger", "Error updating message status: " + ex.Message);
            }
        }

        protected void gvMessages_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int msgId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "ViewMessage")
            {
                DataTable dt = ContactService.GetAllMessages();
                DataRow[] rows = dt.Select("MessageId = " + msgId);
                if (rows.Length > 0)
                {
                    DataRow dr = rows[0];
                    pnlDetail.Visible = true;
                    lblMessageId.Text = msgId.ToString();
                    hfMessageId.Value = msgId.ToString();

                    litSender.Text = dr["SenderName"].ToString();
                    litEmail.Text = dr["Email"].ToString();
                    litPhone.Text = dr["Phone"] != DBNull.Value ? dr["Phone"].ToString() : "N/A";
                    litSubject.Text = dr["Subject"].ToString();
                    litMessageBody.Text = dr["Message"].ToString().Replace("\n", "<br />");
                    txtAdminReply.Text = dr["AdminReply"] != DBNull.Value ? dr["AdminReply"].ToString() : "";

                    // Auto-mark read on view
                    ContactService.MarkAsRead(msgId, dr["AdminReply"] != DBNull.Value ? dr["AdminReply"].ToString() : null);
                    LoadMessages();
                }
            }
            else if (e.CommandName == "DeleteMessage")
            {
                try
                {
                    ContactService.DeleteMessage(msgId);
                    ShowAlert("success", "Message deleted successfully.");
                    LoadMessages();
                }
                catch (Exception ex)
                {
                    ShowAlert("danger", "Error deleting message: " + ex.Message);
                }
            }
        }

        private void ShowAlert(string type, string message)
        {
            pnlAlert.Visible = true;
            pnlAlert.CssClass = $"alert alert-{type} alert-dismissible fade show mb-4";
            lblAlertMsg.Text = message;
        }
    }
}
