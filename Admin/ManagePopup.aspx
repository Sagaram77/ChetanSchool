<%@ Page Title="Home Notice Modal Settings" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManagePopup.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManagePopup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="fw-bold text-primary mb-1"><i class="bi bi-window-stack me-2 text-warning"></i> Home Page Announcement Modal Settings</h4>
            <p class="text-muted small m-0">Configure the interactive modal popup that displays important circulars, flyers, and urgent notices to visitors upon opening the website.</p>
        </div>
        <a href="~/Default.aspx" target="_blank" runat="server" class="btn btn-outline-primary">
            <i class="bi bi-box-arrow-up-right me-1"></i> Preview Home Page
        </a>
    </div>

    <!-- Alert Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Literal ID="litAlertMsg" runat="server" />
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <div class="row g-4">
        <!-- 1. Home Page Important Notice Modal Settings -->
        <div class="col-lg-7">
            <div class="card border-0 shadow-sm rounded-4">
                <div class="card-header bg-white py-3 d-flex justify-content-between align-items-center">
                    <h6 class="fw-bold text-primary m-0">
                        <i class="bi bi-megaphone-fill me-2 text-primary"></i> Modal Notice Content & Flyer Upload
                    </h6>
                    <div class="form-check form-switch m-0">
                        <asp:CheckBox ID="chkIsActive" runat="server" CssClass="form-check-input" />
                        <label class="form-check-label fw-bold text-success small" for="<%= chkIsActive.ClientID %>">Enable Modal on Home Page</label>
                    </div>
                </div>
                <div class="card-body p-4">
                    <asp:HiddenField ID="hfPopupId" runat="server" Value="0" />
                    <asp:HiddenField ID="hfExistingImageUrl" runat="server" Value="" />

                    <!-- Title -->
                    <div class="mb-3">
                        <label for="txtTitle" class="form-label fw-semibold">Announcement Title <span class="text-danger">*</span></label>
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="e.g. Admissions Open for Academic Year 2026-27" Required="true" />
                    </div>

                    <!-- Photo Upload -->
                    <div class="mb-3">
                        <label for="fuPopupPhoto" class="form-label fw-semibold">Notice Photo / Flyer / Poster Upload</label>
                        <asp:FileUpload ID="fuPopupPhoto" runat="server" CssClass="form-control" accept="image/*" />
                        <div class="form-text small">Accepted formats: JPG, JPEG, PNG, WEBP. Upload high-res notice circular, admission banner, or greeting poster.</div>
                    </div>

                    <!-- Description -->
                    <div class="mb-3">
                        <label for="txtDescription" class="form-label fw-semibold">Notice Details / Message</label>
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Enter notice details, instructions, or guidelines for students and parents..." />
                    </div>

                    <!-- Action Link & Button Text -->
                    <div class="row g-3 mb-4">
                        <div class="col-md-7">
                            <label for="txtActionUrl" class="form-label fw-semibold">Action Button URL (Optional)</label>
                            <asp:TextBox ID="txtActionUrl" runat="server" CssClass="form-control" placeholder="e.g. /Admissions/AdmissionProcedure.aspx or external link" />
                        </div>
                        <div class="col-md-5">
                            <label for="txtActionText" class="form-label fw-semibold">Button Label</label>
                            <asp:TextBox ID="txtActionText" runat="server" CssClass="form-control" placeholder="e.g. View Guidelines" />
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <div class="d-flex gap-2">
                        <asp:Button ID="btnSavePopup" runat="server" Text="Update Home Notice Modal" OnClick="btnSavePopup_Click" CssClass="btn btn-primary fw-bold px-4 py-2" />
                    </div>
                </div>
            </div>
        </div>

        <!-- 2. Current Live Preview Card -->
        <div class="col-lg-5">
            <div class="card border-0 shadow-sm rounded-4">
                <div class="card-header bg-white py-3">
                    <h6 class="fw-bold text-primary m-0"><i class="bi bi-eye me-2"></i> Live Modal Preview</h6>
                </div>
                <div class="card-body p-4 text-center">
                    <div class="border rounded-4 p-3 bg-light text-start shadow-sm">
                        <div class="d-flex justify-content-between align-items-center mb-2 pb-2 border-bottom">
                            <div class="fw-bold text-primary small">
                                <i class="bi bi-megaphone-fill text-warning me-1"></i>
                                <asp:Literal ID="litPreviewTitle" runat="server" Text="Announcement Title Preview" />
                            </div>
                            <span class="badge bg-secondary small">Preview</span>
                        </div>
                        
                        <div class="text-center mb-3">
                            <asp:Image ID="imgPreview" runat="server" CssClass="img-fluid rounded-3 border" Style="max-height: 220px; object-fit: contain; width: 100%;" />
                        </div>

                        <p class="small text-secondary mb-3">
                            <asp:Literal ID="litPreviewDescription" runat="server" Text="Notice details will appear here..." />
                        </p>

                        <div class="d-flex justify-content-between align-items-center pt-2 border-top">
                            <span class="badge bg-light text-muted border">Notice Modal</span>
                            <span class="btn btn-sm btn-warning fw-bold text-dark disabled">
                                <asp:Literal ID="litPreviewActionText" runat="server" Text="Action Button" />
                            </span>
                        </div>
                    </div>

                    <div class="mt-3 text-start small text-muted">
                        <i class="bi bi-info-circle me-1"></i>
                        When enabled, visitors to <a href="~/Default.aspx" target="_blank" runat="server">Home Page (Default.aspx)</a> will automatically see this modal on window load.
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
