<%@ Page Title="Server Error (500)" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="500.aspx.cs" Inherits="Chetancbsewebsite.Errors._500" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5 my-5 text-center">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8">
                <div class="display-1 fw-bold text-danger mb-2">500</div>
                <div class="fs-2 fw-bold text-dark mb-3">Something Went Wrong</div>
                <p class="text-secondary lead mb-4">
                    An unexpected issue occurred while loading this page. Please refresh or try again in a moment. If the issue persists, our administrative office is available to assist you.
                </p>
                <div class="d-flex flex-wrap gap-2 justify-content-center mb-5">
                    <a href="~/Default.aspx" runat="server" class="btn btn-primary px-4 py-2 fw-bold">
                        <i class="bi bi-house-door-fill me-1"></i> Return to Home Page
                    </a>
                    <a href="~/Contact/ContactUs.aspx" runat="server" class="btn btn-outline-secondary px-4 py-2 fw-bold">
                        <i class="bi bi-telephone-fill me-1"></i> Helpline: 0836-2955578
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
