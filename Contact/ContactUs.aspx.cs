using System;
using System.Web.UI;
using Chetancbsewebsite.BLL;

namespace Chetancbsewebsite.Contact
{
    public partial class ContactUs : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    string name = txtName.Text.Trim();
                    string email = txtEmail.Text.Trim();
                    string phone = txtPhone.Text.Trim();
                    string subject = txtSubject.Text.Trim();
                    string message = txtMessage.Text.Trim();

                    int newId = ContactService.SubmitMessage(name, email, phone, subject, message);

                    if (newId > 0)
                    {
                        pnlAlert.Visible = true;
                        pnlAlert.CssClass = "alert alert-success alert-dismissible fade show mb-4";
                        lblAlertMsg.Text = "<strong>Thank you!</strong> Your message has been submitted successfully. Our admissions / administrative office will contact you soon.";

                        // Reset form
                        txtName.Text = string.Empty;
                        txtEmail.Text = string.Empty;
                        txtPhone.Text = string.Empty;
                        txtSubject.Text = string.Empty;
                        txtMessage.Text = string.Empty;
                    }
                    else
                    {
                        pnlAlert.Visible = true;
                        pnlAlert.CssClass = "alert alert-danger alert-dismissible fade show mb-4";
                        lblAlertMsg.Text = "Unable to send your message right now. Please try again or reach us directly at 0836-2955578.";
                    }
                }
                catch (Exception ex)
                {
                    pnlAlert.Visible = true;
                    pnlAlert.CssClass = "alert alert-danger alert-dismissible fade show mb-4";
                    lblAlertMsg.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }
}
