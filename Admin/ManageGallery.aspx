<%@ Page Title="Manage Photo Gallery" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageGallery.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="fw-bold text-primary mb-1">Photo Gallery & Albums</h4>
            <p class="text-secondary small mb-0">Manage albums, events, celebrations, and upload high-resolution campus photos.</p>
        </div>
        <div>
            <asp:Button ID="btnNewAlbum" runat="server" Text="+ Create New Album" CssClass="btn btn-primary fw-bold" OnClick="btnNewAlbum_Click" />
        </div>
    </div>

    <!-- Alert Message Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <!-- Create Album Panel -->
    <asp:Panel ID="pnlAlbumForm" runat="server" Visible="false" CssClass="card border-0 shadow-sm rounded-4 p-4 mb-4 border-top border-4 border-primary">
        <h5 class="fw-bold text-primary mb-3">Create New Photo Album</h5>
        <div class="row g-3">
            <div class="col-md-6">
                <label class="form-label fw-semibold small">Album Title <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtAlbumTitle" runat="server" CssClass="form-control" placeholder="e.g. Annual Day 2026"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="txtAlbumTitle" ErrorMessage="Title is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="AlbumForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-3">
                <label class="form-label fw-semibold small">Category <span class="text-danger">*</span></label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Campus Life" Value="Campus Life"></asp:ListItem>
                    <asp:ListItem Text="Annual Day" Value="Annual Day"></asp:ListItem>
                    <asp:ListItem Text="Sports Day" Value="Sports Day"></asp:ListItem>
                    <asp:ListItem Text="Science Exhibition" Value="Science Exhibition"></asp:ListItem>
                    <asp:ListItem Text="National Festivals" Value="National Festivals"></asp:ListItem>
                    <asp:ListItem Text="Cultural & Arts" Value="Cultural & Arts"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-3">
                <label class="form-label fw-semibold small">Academic Year</label>
                <asp:TextBox ID="txtAcademicYear" runat="server" CssClass="form-control" placeholder="e.g. 2025-26"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-semibold small">Cover Image</label>
                <asp:FileUpload ID="fuCoverImage" runat="server" CssClass="form-control" />
                <small class="text-muted">JPG, PNG, WebP up to 5MB.</small>
            </div>

            <div class="col-md-3">
                <label class="form-label fw-semibold small">Event Date</label>
                <asp:TextBox ID="txtEventDate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-3">
                <label class="form-label fw-semibold small">Display Order</label>
                <asp:TextBox ID="txtDisplayOrder" runat="server" TextMode="Number" CssClass="form-control" Text="1"></asp:TextBox>
            </div>

            <div class="col-12">
                <label class="form-label fw-semibold small">Description</label>
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="Brief note about this album..."></asp:TextBox>
            </div>

            <div class="col-12 d-flex gap-2 mt-3">
                <asp:Button ID="btnSaveAlbum" runat="server" Text="Save Album" CssClass="btn btn-primary fw-bold px-4" ValidationGroup="AlbumForm" OnClick="btnSaveAlbum_Click" />
                <asp:Button ID="btnCancelAlbum" runat="server" Text="Cancel" CssClass="btn btn-outline-secondary px-3" CausesValidation="false" OnClick="btnCancelAlbum_Click" />
            </div>
        </div>
    </asp:Panel>

    <!-- Album Photos Manager Panel (Shown when viewing/managing an album) -->
    <asp:Panel ID="pnlPhotosManager" runat="server" Visible="false" CssClass="card border-0 shadow-sm rounded-4 p-4 mb-4 border-top border-4 border-warning">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <div>
                <h5 class="fw-bold text-primary mb-1">
                    <i class="bi bi-images me-2 text-warning"></i> Managing Photos for: <asp:Label ID="lblCurrentAlbumTitle" runat="server" CssClass="text-dark"></asp:Label>
                </h5>
                <asp:HiddenField ID="hfCurrentAlbumId" runat="server" />
            </div>
            <asp:Button ID="btnClosePhotos" runat="server" Text="Back to Albums" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnClosePhotos_Click" />
        </div>

        <!-- Add Photo to Album -->
        <div class="bg-light p-3 rounded-4 mb-4">
            <h6 class="fw-bold text-primary mb-2">Upload Photo to This Album</h6>
            <div class="row g-2 align-items-end">
                <div class="col-md-5">
                    <label class="form-label small fw-semibold">Select Photo File <span class="text-danger">*</span></label>
                    <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control" />
                </div>
                <div class="col-md-5">
                    <label class="form-label small fw-semibold">Photo Caption (Optional)</label>
                    <asp:TextBox ID="txtPhotoCaption" runat="server" CssClass="form-control" placeholder="Short description of the photo..."></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnUploadPhoto" runat="server" Text="Upload" CssClass="btn btn-warning fw-bold text-dark w-100" OnClick="btnUploadPhoto_Click" />
                </div>
            </div>
        </div>

        <!-- Photos Grid in this album -->
        <div class="row g-3">
            <asp:Repeater ID="rptAlbumPhotos" runat="server" OnItemCommand="rptAlbumPhotos_ItemCommand">
                <ItemTemplate>
                    <div class="col-md-4 col-lg-3">
                        <div class="card h-100 border shadow-sm rounded-3 overflow-hidden">
                            <img src='<%# ResolveUrl(Eval("PhotoUrl").ToString()) %>' class="card-img-top" style="height: 160px; object-fit: cover;" alt="Photo" />
                            <div class="card-body p-2 d-flex justify-content-between align-items-center">
                                <small class="text-truncate text-muted" style="max-width: 140px;" title='<%# Eval("Caption") %>'>
                                    <%# Eval("Caption") != DBNull.Value && !string.IsNullOrEmpty(Eval("Caption").ToString()) ? Eval("Caption") : "No caption" %>
                                </small>
                                <asp:LinkButton ID="btnDelPhoto" runat="server" CommandName="DeletePhoto" CommandArgument='<%# Eval("PhotoId") %>' CssClass="btn btn-sm btn-outline-danger py-0 px-2" OnClientClick="return confirm('Delete this photo?');">
                                    <i class="bi bi-trash"></i>
                                </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <asp:Panel ID="pnlNoPhotos" runat="server" Visible="false" CssClass="text-center py-4 text-muted">
            <i class="bi bi-card-image fs-1 d-block mb-1"></i>
            No photos uploaded to this album yet. Use the upload box above.
        </asp:Panel>
    </asp:Panel>

    <!-- Albums List Grid -->
    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
        <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h6 class="m-0 fw-bold text-primary"><i class="bi bi-folder-fill text-warning me-2"></i> School Photo Albums</h6>
            <asp:Label ID="lblAlbumCount" runat="server" CssClass="badge bg-light text-dark border"></asp:Label>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="gvAlbums" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-hover align-middle mb-0" GridLines="None" 
                DataKeyNames="AlbumId" OnRowCommand="gvAlbums_RowCommand">
                <HeaderStyle CssClass="bg-light text-secondary py-3" />
                <Columns>
                    <asp:BoundField DataField="AlbumId" HeaderText="ID" ItemStyle-CssClass="px-3 fw-bold" ItemStyle-Width="60px" />
                    
                    <asp:TemplateField HeaderText="ALBUM" ItemStyle-CssClass="px-3">
                        <ItemTemplate>
                            <div class="fw-bold text-primary"><%# Eval("AlbumTitle") %></div>
                            <div class="small text-muted"><%# Eval("Description") %></div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Category" HeaderText="CATEGORY" ItemStyle-CssClass="px-3" />
                    <asp:BoundField DataField="AcademicYear" HeaderText="YEAR" ItemStyle-CssClass="px-3 text-center" />
                    
                    <asp:TemplateField HeaderText="PHOTOS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="100px">
                        <ItemTemplate>
                            <span class="badge bg-primary px-2 py-1"><%# Eval("PhotoCount") %> Photos</span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="ACTIONS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="200px">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnManagePhotos" runat="server" CommandName="ManagePhotos" CommandArgument='<%# Eval("AlbumId") %>' CssClass="btn btn-sm btn-outline-warning me-1 fw-semibold text-dark">
                                <i class="bi bi-images me-1"></i> Photos
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnDeleteAlbum" runat="server" CommandName="DeleteAlbum" CommandArgument='<%# Eval("AlbumId") %>' CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Delete this entire album and its photos?');">
                                <i class="bi bi-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="text-center p-4 text-muted">
                        <i class="bi bi-folder-x fs-2 d-block mb-2"></i>
                        No photo albums found. Click "+ Create New Album" above.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
