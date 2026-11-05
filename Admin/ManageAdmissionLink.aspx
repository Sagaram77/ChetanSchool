<%@ Page Title="Online Admission Link" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageAdmissionLink.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageAdmissionLink" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="fw-bold text-primary mb-1"><i class="bi bi-link-45deg me-2 text-warning"></i> Online Admission Form Link (Google Drive / School ERP)</h4>
            <p class="text-muted small m-0">Configure the central external ERP or Google Drive link used for online admissions across all sections of the school website.</p>
        </div>
        <a href="~/Default.aspx" target="_blank" runat="server" class="btn btn-outline-primary">
            <i class="bi bi-box-arrow-up-right me-1"></i> View Live Site
        </a>
    </div>

    <!-- Alert Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Literal ID="litAlertMsg" runat="server" />
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <div class="row g-4">
        <!-- Configuration Card -->
        <div class="col-lg-8">
            <div class="card border-0 shadow-sm rounded-4 p-4 p-md-5">
                <div class="d-flex align-items-center gap-3 mb-4">
                    <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center" style="width: 56px; height: 56px;">
                        <i class="bi bi-cloud-arrow-up-fill fs-3 text-warning"></i>
                    </div>
                    <div>
                        <h5 class="fw-bold text-primary mb-1">Set Admission Form Destination URL</h5>
                        <p class="small text-muted mb-0">Paste your School ERP online admission URL, Google Drive folder, or Google Form link.</p>
                    </div>
                </div>

                <div class="mb-4">
                    <label class="form-label fw-semibold text-secondary small">Admission Form URL <span class="text-danger">*</span></label>
                    <div class="input-group input-group-lg">
                        <span class="input-group-text bg-light"><i class="bi bi-link-45deg fs-4 text-primary"></i></span>
                        <asp:TextBox ID="txtAdmissionLink" runat="server" CssClass="form-control" placeholder="https://drive.google.com/... or https://erp.chetanpublicschool.com/admission" />
                    </div>
                    <div class="form-text small mt-2">
                        Must start with <code>http://</code> or <code>https://</code>. When parents click "Apply for Admission", they will be immediately directed to this destination.
                    </div>
                </div>

                <div class="d-flex flex-wrap gap-2 pt-2">
                    <asp:Button ID="btnSaveLink" runat="server" Text="Save Admission Link" OnClick="btnSaveLink_Click" CssClass="btn btn-primary btn-lg fw-bold px-4" />
                    <a id="btnTestLink" runat="server" target="_blank" class="btn btn-outline-secondary btn-lg px-4" title="Test link in new tab">
                        <i class="bi bi-box-arrow-up-right me-1"></i> Test Link
                    </a>
                </div>
            </div>
        </div>

        <!-- Touchpoints / Information Card -->
        <div class="col-lg-4">
            <div class="card border-0 shadow-sm rounded-4 p-4 mb-4 bg-light">
                <h6 class="fw-bold text-primary mb-3"><i class="bi bi-broadcast me-2 text-warning"></i> Website Touchpoints</h6>
                <p class="small text-muted mb-3">Updating this single setting automatically updates the destination URL across all of these buttons on the public website:</p>

                <ul class="list-group list-group-flush small bg-transparent">
                    <li class="list-group-item bg-transparent px-0 py-2 d-flex align-items-center gap-2">
                        <i class="bi bi-check-circle-fill text-success"></i>
                        <span>Top Header Bar <strong>"Admissions 2026-27"</strong> button</span>
                    </li>
                    <li class="list-group-item bg-transparent px-0 py-2 d-flex align-items-center gap-2">
                        <i class="bi bi-check-circle-fill text-success"></i>
                        <span>Main Navbar <strong>Admissions Dropdown</strong> link</span>
                    </li>
                    <li class="list-group-item bg-transparent px-0 py-2 d-flex align-items-center gap-2">
                        <i class="bi bi-check-circle-fill text-success"></i>
                        <span>Home Page <strong>Hero Banner</strong> CTA button</span>
                    </li>
                    <li class="list-group-item bg-transparent px-0 py-2 d-flex align-items-center gap-2">
                        <i class="bi bi-check-circle-fill text-success"></i>
                        <span>Admission Procedure Page <strong>ERP Form</strong> buttons</span>
                    </li>
                    <li class="list-group-item bg-transparent px-0 py-2 d-flex align-items-center gap-2">
                        <i class="bi bi-check-circle-fill text-success"></i>
                        <span>Footer <strong>Online Admission Form</strong> quick link</span>
                    </li>
                </ul>
            </div>

            <div class="card border-0 shadow-sm rounded-4 p-4">
                <h6 class="fw-bold text-dark mb-2"><i class="bi bi-info-circle-fill text-primary me-2"></i> How to use Google Drive</h6>
                <p class="small text-muted mb-0">
                    If using Google Drive: Create a folder containing the Admission Form PDF/Doc &gt; Click <strong>Share</strong> &gt; Set access to <strong>"Anyone with the link can view"</strong> &gt; Copy link &gt; Paste it into the box and click Save.
                </p>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
