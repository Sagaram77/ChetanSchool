<%@ Page Title="News, Events & Circulars" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="NewsEvents.aspx.cs" Inherits="Chetancbsewebsite.News.NewsEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">News, Events & Circulars</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">News & Circulars</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <!-- Filter Tabs / Buttons -->
        <div class="d-flex flex-wrap gap-2 justify-content-center mb-5">
            <asp:LinkButton ID="btnFilterAll" runat="server" CssClass="btn btn-outline-primary px-4 rounded-pill fw-bold" OnClick="FilterCategory_Click" CommandArgument="All">All Updates</asp:LinkButton>
            <asp:LinkButton ID="btnFilterAnnounce" runat="server" CssClass="btn btn-outline-primary px-4 rounded-pill fw-bold" OnClick="FilterCategory_Click" CommandArgument="Announcement">Announcements</asp:LinkButton>
            <asp:LinkButton ID="btnFilterCircular" runat="server" CssClass="btn btn-outline-primary px-4 rounded-pill fw-bold" OnClick="FilterCategory_Click" CommandArgument="Circular">Circulars</asp:LinkButton>
            <asp:LinkButton ID="btnFilterEvents" runat="server" CssClass="btn btn-outline-primary px-4 rounded-pill fw-bold" OnClick="FilterCategory_Click" CommandArgument="Event">Events</asp:LinkButton>
            <asp:LinkButton ID="btnFilterAcademics" runat="server" CssClass="btn btn-outline-primary px-4 rounded-pill fw-bold" OnClick="FilterCategory_Click" CommandArgument="Academic">Academics</asp:LinkButton>
        </div>

        <!-- News Cards Repeater -->
        <div class="row g-4">
            <asp:Repeater ID="rptNews" runat="server">
                <ItemTemplate>
                    <div class="col-md-6 col-lg-4">
                        <div class="card h-100 border-0 shadow-sm rounded-4 overflow-hidden d-flex flex-column">
                            <div class="position-relative">
                                <img src='<%# !string.IsNullOrEmpty(Eval("ThumbnailUrl") as string) ? ResolveUrl(Eval("ThumbnailUrl").ToString()) : "https://images.unsplash.com/photo-1577896851231-70ef18881754?auto=format&fit=crop&w=600&q=80" %>' 
                                     class="card-img-top" alt='<%# Eval("Title") %>' style="height: 200px; object-fit: cover;" />
                                <span class="badge bg-warning text-dark fw-bold position-absolute top-0 start-0 m-3 px-3 py-1 rounded-pill">
                                    <%# Eval("Category") %>
                                </span>
                            </div>
                            <div class="card-body p-4 d-flex flex-column flex-grow-1">
                                <div class="text-muted small mb-2">
                                    <i class="bi bi-calendar-event me-1 text-primary"></i>
                                    <%# Eval("PublishedDate", "{0:dd MMMM yyyy}") %>
                                </div>
                                <h5 class="fw-bold text-primary mb-2 line-clamp-2">
                                    <a href='<%# ResolveUrl("~/News/NewsDetail.aspx?id=" + Eval("NewsId")) %>' class="text-decoration-none text-primary">
                                        <%# Eval("Title") %>
                                    </a>
                                </h5>
                                <p class="text-secondary small mb-4 flex-grow-1">
                                    <%# Eval("Summary") %>
                                </p>
                                <div class="d-flex justify-content-between align-items-center pt-3 border-top mt-auto">
                                    <a href='<%# ResolveUrl("~/News/NewsDetail.aspx?id=" + Eval("NewsId")) %>' class="btn btn-sm btn-outline-primary fw-bold">
                                        Read More <i class="bi bi-arrow-right ms-1"></i>
                                    </a>
                                    <%# !string.IsNullOrEmpty(Eval("AttachmentUrl") as string) ? 
                                        "<a href='" + ResolveUrl(Eval("AttachmentUrl").ToString()) + "' target='_blank' class='btn btn-sm btn-outline-danger fw-bold'><i class='bi bi-file-earmark-pdf me-1'></i> Circular</a>" : "" %>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <asp:Panel ID="pnlNoNews" runat="server" Visible="false" CssClass="text-center py-5">
            <i class="bi bi-newspaper display-1 text-muted mb-3 d-block"></i>
            <h4 class="fw-bold text-secondary">No notices or circulars in this category</h4>
            <p class="text-muted">Please check back soon or browse all updates.</p>
        </asp:Panel>
    </div>
</asp:Content>
