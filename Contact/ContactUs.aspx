<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Chetancbsewebsite.Contact.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Contact Us</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Reach Us</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Contact Us</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <!-- Contact Cards Row -->
        <div class="row g-4 mb-5">
            <div class="col-md-4">
                <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                    <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 64px; height: 64px; font-size: 1.8rem;">
                        <i class="bi bi-geo-alt-fill text-danger"></i>
                    </div>
                    <h5 class="fw-bold text-primary mb-2">Campus Address</h5>
                    <p class="text-secondary small mb-0">
                        Chetan Public School (CBSE)<br />
                        Akshay Nagar, Near Shirur Park,<br />
                        Hubballi &ndash; 580030, Karnataka, India
                    </p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                    <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 64px; height: 64px; font-size: 1.8rem;">
                        <i class="bi bi-telephone-inbound-fill text-primary"></i>
                    </div>
                    <h5 class="fw-bold text-primary mb-2">Phone Numbers</h5>
                    <p class="text-secondary small mb-1">Office: <strong>0836-2955578</strong></p>
                    <p class="text-secondary small mb-1">Helpline: <strong>0836-2330898</strong></p>
                    <p class="text-muted small mb-0">Mon &ndash; Sat: 9:00 AM &ndash; 4:30 PM</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                    <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 64px; height: 64px; font-size: 1.8rem;">
                        <i class="bi bi-envelope-check-fill text-success"></i>
                    </div>
                    <h5 class="fw-bold text-primary mb-2">Email Address</h5>
                    <p class="text-secondary small mb-1">General & Admissions:</p>
                    <p class="fw-bold text-primary small mb-0">
                        <a href="mailto:chetanschool2016@gmail.com" class="text-decoration-none">chetanschool2016@gmail.com</a>
                    </p>
                </div>
            </div>
        </div>

        <!-- Form & Map Row -->
        <div class="row g-4 mb-5">
            <!-- Contact Message Form -->
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm rounded-4 p-4 p-md-5">
                    <h3 class="fw-bold text-primary mb-2">Send Us a Message</h3>
                    <p class="text-secondary small mb-4">Have an inquiry regarding admissions, academics, or campus visits? Write to us and our office will get in touch promptly.</p>

                    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
                        <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </asp:Panel>

                    <div class="row g-3">
                        <div class="col-md-6">
                            <label class="form-label fw-semibold small">Your Name <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Full name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="ContactForm"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label fw-semibold small">Phone Number <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" placeholder="10-digit mobile number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="ContactForm"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-semibold small">Email Address <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="name@example.com"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="ContactForm"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-semibold small">Subject <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Subject of inquiry"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ControlToValidate="txtSubject" ErrorMessage="Subject is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="ContactForm"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12">
                            <label class="form-label fw-semibold small">Your Message <span class="text-danger">*</span></label>
                            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Write your message or inquiry here..."></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" ControlToValidate="txtMessage" ErrorMessage="Message is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="ContactForm"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12 mt-4">
                            <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn btn-primary btn-lg w-100 fw-bold shadow-sm" ValidationGroup="ContactForm" OnClick="btnSubmit_Click" />
                        </div>
                    </div>
                </div>
            </div>

            <!-- Google Map -->
            <div class="col-lg-6">
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden h-100">
                    <div class="card-header bg-primary text-white py-3">
                        <h5 class="fw-bold m-0"><i class="bi bi-map-fill text-warning me-2"></i> Campus Location Map</h5>
                    </div>
                    <div class="card-body p-0" style="min-height: 400px;">
                        
    <iframe
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d480.89856628466936!2d75.09912351672865!3d15.366272647663068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bb8d6d2df4dd7dd%3A0x5fab7ab56d0bb771!2sChetan%20Public%20School!5e0!3m2!1sen!2sin!4v1793893298410!5m2!1sen!2sin"
    width="100%"
    height="100%"
    style="border: 0; min-height: 450px;"
    allowfullscreen=""
    loading="lazy"
    referrerpolicy="no-referrer-when-downgrade">
                        </iframe>
                    </div>
                    <div class="card-footer bg-light p-3 small text-muted">
                        <i class="bi bi-geo-fill text-danger me-1"></i> Located conveniently at Akshay Nagar, Near Shirur Park, Hubballi &ndash; easily accessible via major Hubballi-Dharwad city transport routes.
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
