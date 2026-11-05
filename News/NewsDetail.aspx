<%@ Page Title="Notice Detail" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="NewsDetail.aspx.cs" Inherits="Chetancbsewebsite.News.NewsDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Notice & Circular Details</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item"><a href="~/News/NewsEvents.aspx" runat="server" class="text-white text-decoration-none">News & Circulars</a></li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Detail</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <asp:Panel ID="pnlContent" runat="server" Visible="false">
            <div class="row justify-content-center">
                <div class="col-lg-9">
                    <div class="card border-0 shadow-sm rounded-4 p-4 p-md-5">
                        <div class="d-flex flex-wrap gap-2 align-items-center mb-3">
                            <asp:Label ID="lblCategory" runat="server" CssClass="badge bg-warning text-dark fw-bold px-3 py-2 rounded-pill"></asp:Label>
                            <span class="text-muted small">
                                <i class="bi bi-calendar3 me-1 text-primary"></i>
                                <asp:Label ID="lblDate" runat="server"></asp:Label>
                            </span>
                        </div>

                        <h2 class="fw-bold text-primary mb-4">
                            <asp:Literal ID="litTitle" runat="server"></asp:Literal>
                        </h2>

                        <asp:Image ID="imgThumbnail" runat="server" Visible="false" CssClass="img-fluid rounded-4 mb-4 w-100" style="max-height: 400px; object-fit: cover;" />

                        <div class="lead text-secondary mb-4 pb-3 border-bottom">
                            <asp:Literal ID="litSummary" runat="server"></asp:Literal>
                        </div>

                        <div class="text-secondary mb-5" style="line-height: 1.8;">
                            <asp:Literal ID="litDetails" runat="server"></asp:Literal>
                        </div>

                        <!-- Attachment link if present -->
                        <asp:Panel ID="pnlAttachment" runat="server" Visible="false" CssClass="p-4 bg-light rounded-4 border d-flex justify-content-between align-items-center mb-4">
                            <div class="d-flex align-items-center gap-3">
                                <i class="bi bi-file-earmark-pdf-fill text-danger fs-1"></i>
                                <div>
                                    <h6 class="fw-bold text-dark mb-0">Official Circular / Document Attached</h6>
                                    <small class="text-muted">Click the button to download or view the official document</small>
                                </div>
                            </div>
                            <asp:HyperLink ID="lnkAttachment" runat="server" Target="_blank" CssClass="btn btn-danger fw-bold px-4">
                                <i class="bi bi-download me-1"></i> Download PDF
                            </asp:HyperLink>
                        </asp:Panel>

                        <div>
                            <a href="~/News/NewsEvents.aspx" runat="server" class="btn btn-outline-primary fw-bold">
                                <i class="bi bi-arrow-left me-1"></i> Back to All Updates
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>

        <asp:Panel ID="pnlNotFound" runat="server" Visible="false" CssClass="text-center py-5">
            <i class="bi bi-exclamation-triangle display-1 text-warning mb-3 d-block"></i>
            <h3 class="fw-bold text-primary">Notice Not Found</h3>
            <p class="text-secondary mb-4">The notice or circular you are searching for does not exist or may have been archived.</p>
            <a href="~/News/NewsEvents.aspx" runat="server" class="btn btn-primary px-4 fw-bold">
                View All News & Updates
            </a>
        </asp:Panel>
    </div>
</asp:Content>
