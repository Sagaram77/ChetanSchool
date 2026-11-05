<%@ Page Title="Photo Gallery" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="PhotoGallery.aspx.cs" Inherits="Chetancbsewebsite.Gallery.PhotoGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .album-card {
            background: #ffffff;
            border-radius: 14px;
            overflow: hidden;
            border: 1px solid var(--border-color);
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        .album-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow-md);
            border-color: var(--secondary-color);
        }
        .album-cover-placeholder {
            height: 200px;
            background: linear-gradient(135deg, var(--primary-color), var(--primary-light));
            display: flex;
            align-items: center;
            justify-content: center;
            color: #ffffff;
            font-size: 3rem;
        }
        .photo-card {
            background: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            border: 1px solid var(--border-color);
            box-shadow: var(--shadow-sm);
            transition: var(--transition);
        }
        .photo-card:hover {
            transform: scale(1.02);
            box-shadow: var(--shadow-md);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Campus Photo Albums & Events</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Gallery</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Photo Gallery</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <!-- View All Albums Mode -->
        <asp:Panel ID="pnlAlbumsView" runat="server">
            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                <div>
                    <span class="section-tag">Campus Memories</span>
                    <h2 class="fw-bold text-primary mb-0">Event Albums & Milestones</h2>
                </div>
            </div>

            <div class="row g-4">
                <asp:Repeater ID="rptAlbums" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6 col-lg-4">
                            <div class="album-card">
                                <div class="position-relative">
                                    <div class="album-cover-placeholder">
                                        <i class="bi bi-images opacity-75"></i>
                                    </div>
                                    <span class="badge bg-warning text-dark position-absolute top-0 end-0 m-3 fw-bold">
                                        <%# Eval("Category") %>
                                    </span>
                                </div>
                                <div class="p-4 flex-grow-1 d-flex flex-direction-column flex-column">
                                    <div class="d-flex justify-content-between small text-muted mb-2">
                                        <span><i class="bi bi-calendar3 me-1"></i> <%# Eval("EventDate") != DBNull.Value ? Convert.ToDateTime(Eval("EventDate")).ToString("MMM yyyy") : "Campus" %></span>
                                        <span><i class="bi bi-mortarboard me-1"></i> <%# Eval("AcademicYear") %></span>
                                    </div>
                                    <h5 class="fw-bold text-primary mb-2"><%# Eval("AlbumTitle") %></h5>
                                    <p class="small text-secondary flex-grow-1 mb-3">
                                        <%# Eval("Description") %>
                                    </p>
                                    <div class="border-top pt-3 d-flex justify-content-between align-items-center">
                                        <span class="badge bg-light text-primary border">
                                            <i class="bi bi-camera me-1"></i> Photo Album
                                        </span>
                                        <a href='<%# ResolveUrl("~/Gallery/PhotoGallery.aspx?albumId=" + Eval("AlbumId")) %>' class="btn btn-sm btn-outline-primary fw-bold">
                                            View Photos <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </asp:Panel>

        <!-- View Single Album Photos Mode -->
        <asp:Panel ID="pnlPhotosView" runat="server" Visible="false">
            <div class="mb-4">
                <a href="~/Gallery/PhotoGallery.aspx" runat="server" class="btn btn-outline-primary btn-sm mb-3">
                    <i class="bi bi-arrow-left me-1"></i> Back to All Albums
                </a>
                <span class="section-tag d-block">Album Showcase</span>
                <h2 class="fw-bold text-primary mb-2"><asp:Literal ID="litAlbumTitle" runat="server" /></h2>
                <p class="text-secondary mb-0"><asp:Literal ID="litAlbumDesc" runat="server" /></p>
            </div>

            <div class="row g-4">
                <asp:Repeater ID="rptPhotos" runat="server">
                    <ItemTemplate>
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="photo-card text-center p-2">
                                <div class="bg-secondary text-white rounded d-flex align-items-center justify-content-center mb-2" style="height: 180px;">
                                    <i class="bi bi-image fs-1 opacity-50"></i>
                                </div>
                                <div class="small fw-semibold text-primary text-truncate px-1">
                                    <%# Eval("Caption") != DBNull.Value && !string.IsNullOrEmpty(Eval("Caption").ToString()) ? Eval("Caption") : "Campus Event Photo" %>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <asp:Panel ID="pnlNoPhotos" runat="server" Visible="false" CssClass="col-12 text-center py-5">
                    <i class="bi bi-images fs-1 text-muted d-block mb-2"></i>
                    <h5 class="text-muted">No photos uploaded to this album yet.</h5>
                    <p class="small text-secondary">School administrators can upload event pictures from the Admin Control Panel.</p>
                </asp:Panel>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
