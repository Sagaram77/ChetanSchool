<%@ Page Title="Online Messaging Discontinued" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageContact.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="card border-0 shadow-sm rounded-4 p-5 text-center my-4">
        <div class="rounded-circle bg-light text-secondary d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 80px; height: 80px; font-size: 2.2rem;">
            <i class="bi bi-envelope-x text-muted"></i>
        </div>
        <h4 class="fw-bold text-primary mb-2">"Send Us a Message" Option Has Been Removed</h4>
        <p class="text-secondary max-w-600 mx-auto mb-4" style="max-width: 600px;">
            In accordance with school policy, the online messaging form on the public Contact Us page has been decommissioned. Inquiries and admissions are managed directly via official phone, email, and the online admission portal.
        </p>
        <div class="d-flex justify-content-center gap-3">
            <a href="~/Admin/Dashboard.aspx" runat="server" class="btn btn-outline-primary px-4 fw-bold">
                <i class="bi bi-speedometer2 me-1"></i> Go to Dashboard
            </a>
            <a href="~/Admin/ManageTestimonials.aspx" runat="server" class="btn btn-primary px-4 fw-bold shadow-sm">
                <i class="bi bi-chat-heart me-1"></i> Manage Parent Testimonials
            </a>
        </div>
    </div>
</asp:Content>
