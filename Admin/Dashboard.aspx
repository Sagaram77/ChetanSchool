<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Chetancbsewebsite.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <!-- Welcome Banner -->
    <div class="card border-0 shadow-sm rounded-4 mb-4 bg-primary text-white">
        <div class="card-body p-4 d-flex flex-wrap justify-content-between align-items-center">
            <div>
                <h3 class="fw-bold mb-1">Welcome back, <asp:Literal ID="litAdminName" runat="server" />!</h3>
                <p class="text-white-50 m-0">Chetan Public School Administrative Control Portal &bull; Hubballi</p>
            </div>
            <div class="mt-3 mt-md-0 d-flex flex-wrap gap-2">
                <a href="~/Admin/ManageNews.aspx" runat="server" class="btn btn-warning fw-bold text-dark">
                    <i class="bi bi-plus-circle me-1"></i> Post Announcement
                </a>
                <a href="~/Admin/ManagePopup.aspx" runat="server" class="btn btn-light fw-bold text-primary">
                    <i class="bi bi-window-stack me-1"></i> Notice Modal
                </a>
                <a href="~/Admin/ManageAdmissionLink.aspx" runat="server" class="btn btn-outline-light fw-bold">
                    <i class="bi bi-link-45deg me-1"></i> Admission ERP Link
                </a>
            </div>
        </div>
    </div>

    <!-- Quick Metric Cards -->
    <div class="row g-4 mb-4">
        <!-- Faculty Staff -->
        <div class="col-xl-3 col-md-6">
            <div class="admin-metric-card">
                <div>
                    <div class="admin-metric-value text-primary"><asp:Literal ID="litTotalStaff" runat="server" Text="0" /></div>
                    <div class="admin-metric-label">Faculty Members</div>
                    <a href="~/Admin/ManageStaff.aspx" runat="server" class="small text-decoration-none mt-2 d-inline-block text-primary">
                        Manage Directory <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
                <div class="fs-1 text-primary opacity-25">
                    <i class="bi bi-people-fill"></i>
                </div>
            </div>
        </div>

        <!-- News & Announcements -->
        <div class="col-xl-3 col-md-6">
            <div class="admin-metric-card">
                <div>
                    <div class="admin-metric-value text-success"><asp:Literal ID="litTotalNews" runat="server" Text="0" /></div>
                    <div class="admin-metric-label">Notices & Circulars</div>
                    <a href="~/Admin/ManageNews.aspx" runat="server" class="small text-decoration-none mt-2 d-inline-block text-success">
                        Manage News <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
                <div class="fs-1 text-success opacity-25">
                    <i class="bi bi-megaphone"></i>
                </div>
            </div>
        </div>

        <!-- Photo Albums -->
        <div class="col-xl-3 col-md-6">
            <div class="admin-metric-card">
                <div>
                    <div class="admin-metric-value text-warning"><asp:Literal ID="litTotalAlbums" runat="server" Text="0" /></div>
                    <div class="admin-metric-label">Photo Albums</div>
                    <a href="~/Admin/ManageGallery.aspx" runat="server" class="small text-decoration-none mt-2 d-inline-block text-warning">
                        View Albums <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
                <div class="fs-1 text-warning opacity-25">
                    <i class="bi bi-images"></i>
                </div>
            </div>
        </div>

        <!-- CBSE Disclosures -->
        <div class="col-xl-3 col-md-6">
            <div class="admin-metric-card">
                <div>
                    <div class="admin-metric-value text-danger"><asp:Literal ID="litTotalDisclosures" runat="server" Text="0" /></div>
                    <div class="admin-metric-label">CBSE Disclosures</div>
                    <a href="~/Admin/ManageDisclosures.aspx" runat="server" class="small text-decoration-none mt-2 d-inline-block text-danger">
                        Update Disclosures <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
                <div class="fs-1 text-danger opacity-25">
                    <i class="bi bi-file-earmark-pdf"></i>
                </div>
            </div>
        </div>
    </div>

    <!-- Quick Shortcuts & Recent Inquiries -->
    <div class="row g-4">
        <!-- Parent Testimonials Table -->
        <div class="col-lg-8">
            <div class="card border-0 shadow-sm rounded-4">
                <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
                    <h6 class="m-0 fw-bold text-primary"><i class="bi bi-chat-heart-fill text-danger me-2"></i> Parent Feedback & Testimonials</h6>
                    <a href="~/Admin/ManageTestimonials.aspx" runat="server" class="btn btn-sm btn-outline-primary">Manage Testimonials</a>
                </div>
                <div class="card-body p-0">
                    <div class="table-responsive">
                        <asp:GridView ID="gvRecentTestimonials" runat="server" AutoGenerateColumns="false" CssClass="table table-hover align-middle mb-0" GridLines="None">
                            <Columns>
                                <asp:TemplateField HeaderText="Parent" HeaderStyle-CssClass="px-3" ItemStyle-CssClass="px-3">
                                    <ItemTemplate>
                                        <div class="fw-bold text-dark"><%# Eval("ParentName") %></div>
                                        <div class="small text-muted"><%# Eval("ChildClass") %></div>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Rating" HeaderStyle-CssClass="px-3 text-center" ItemStyle-CssClass="px-3 text-center">
                                    <ItemTemplate>
                                        <span class="text-warning small">
                                            <i class="bi bi-star-fill"></i> <%# Eval("Rating") %>/5
                                        </span>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Feedback Quote" HeaderStyle-CssClass="px-3" ItemStyle-CssClass="px-3">
                                    <ItemTemplate>
                                        <div class="text-truncate small text-secondary" style="max-width: 280px;" title='<%# Eval("TestimonialText") %>'>
                                            "<%# Eval("TestimonialText") %>"
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Status" HeaderStyle-CssClass="px-3" ItemStyle-CssClass="px-3 text-center">
                                    <ItemTemplate>
                                        <span class='<%# Convert.ToBoolean(Eval("IsActive")) ? "badge bg-success" : "badge bg-secondary" %>'>
                                            <%# Convert.ToBoolean(Eval("IsActive")) ? "Active" : "Hidden" %>
                                        </span>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EmptyDataTemplate>
                                <div class="text-center p-4 text-muted">
                                    <i class="bi bi-chat-heart fs-2 d-block mb-2 text-secondary opacity-50"></i>
                                    No testimonials added yet.
                                </div>
                            </EmptyDataTemplate>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>

        <!-- Administration Quick Shortcuts -->
        <div class="col-lg-4">
            <div class="card border-0 shadow-sm rounded-4 mb-4">
                <div class="card-header bg-white py-3 border-bottom">
                    <h6 class="m-0 fw-bold text-primary"><i class="bi bi-lightning-charge me-2"></i> Quick Actions</h6>
                </div>
                <div class="card-body p-3">
                    <div class="d-grid gap-2">
                        <a href="~/Admin/ManageNews.aspx?action=new" runat="server" class="btn btn-outline-primary text-start p-2">
                            <i class="bi bi-megaphone-fill text-warning me-2"></i> Add News or Announcement
                        </a>
                        <a href="~/Admin/ManagePopup.aspx" runat="server" class="btn btn-outline-primary text-start p-2">
                            <i class="bi bi-window-stack text-warning me-2"></i> Home Notice Modal Settings
                        </a>
                        <a href="~/Admin/ManageAdmissionLink.aspx" runat="server" class="btn btn-outline-primary text-start p-2">
                            <i class="bi bi-link-45deg text-info me-2"></i> Update Admission ERP Link
                        </a>
                        <a href="~/Admin/ManageStaff.aspx?action=new" runat="server" class="btn btn-outline-primary text-start p-2">
                            <i class="bi bi-person-plus-fill text-primary me-2"></i> Add Faculty Member
                        </a>
                        <a href="~/Admin/ManageDisclosures.aspx" runat="server" class="btn btn-outline-primary text-start p-2">
                            <i class="bi bi-file-earmark-arrow-up-fill text-danger me-2"></i> Update CBSE Disclosure PDF
                        </a>
                        <a href="~/Admin/ManageContact.aspx" runat="server" class="btn btn-outline-primary text-start p-2">
                            <i class="bi bi-chat-left-dots-fill text-success me-2"></i> View Contact Messages
                        </a>
                    </div>
                </div>
            </div>

            <!-- School Identity Card -->
            <div class="card border-0 shadow-sm rounded-4 bg-light">
                <div class="card-body p-3">
                    <div class="small fw-bold text-muted mb-1 text-uppercase">CBSE Institution Identity</div>
                    <div class="fw-bold text-primary">Chetan Public School</div>
                    <div class="small text-muted mb-2">Akshay Nagar, Hubballi - 580030</div>
                    <div class="d-flex justify-content-between small border-top pt-2">
                        <span>Affiliation No: <strong>831020</strong></span>
                        <span>School Code: <strong>45914</strong></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
