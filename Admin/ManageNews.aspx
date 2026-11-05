<%@ Page Title="Manage News & Circulars" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageNews.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageNews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="fw-bold text-primary mb-1">News, Circulars & Announcements</h4>
            <p class="text-secondary small mb-0">Publish circulars, manage scrolling marquee tickers, and update school announcements.</p>
        </div>
        <asp:Button ID="btnAddNew" runat="server" Text="+ Add New Announcement" CssClass="btn btn-primary fw-bold" OnClick="btnAddNew_Click" />
    </div>

    <!-- Alert Message Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <!-- Add/Edit News Form Panel -->
    <asp:Panel ID="pnlForm" runat="server" Visible="false" CssClass="card border-0 shadow-sm rounded-4 p-4 mb-4 border-top border-4 border-primary">
        <h5 class="fw-bold text-primary mb-3">
            <asp:Literal ID="litFormTitle" runat="server" Text="Add New Announcement" />
        </h5>
        <asp:HiddenField ID="hfNewsId" runat="server" Value="0" />

        <div class="row g-3">
            <div class="col-md-8">
                <label class="form-label fw-semibold small">Title <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" placeholder="Announcement title"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="txtTitle" ErrorMessage="Title is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="NewsForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Category <span class="text-danger">*</span></label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Announcement" Value="Announcement" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Circular" Value="Circular"></asp:ListItem>
                    <asp:ListItem Text="Event" Value="Event"></asp:ListItem>
                    <asp:ListItem Text="Academic" Value="Academic"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Publish Date <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtPublishedDate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtPublishedDate" ErrorMessage="Date is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="NewsForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-8">
                <label class="form-label fw-semibold small">Short Summary (Displayed on homepage cards)</label>
                <asp:TextBox ID="txtSummary" runat="server" CssClass="form-control" placeholder="Brief summary (1-2 sentences)"></asp:TextBox>
            </div>

            <div class="col-12">
                <label class="form-label fw-semibold small">Full Content Details</label>
                <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" placeholder="Detailed content or notice description..."></asp:TextBox>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-semibold small">Thumbnail Image (Optional)</label>
                <asp:FileUpload ID="fuThumbnail" runat="server" CssClass="form-control mb-1" />
                <asp:HiddenField ID="hfExistingThumb" runat="server" />
                <small class="text-muted">JPG, PNG, WebP up to 5MB. Leave empty to keep existing.</small>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-semibold small">Attachment / Circular PDF (Optional)</label>
                <asp:FileUpload ID="fuAttachment" runat="server" CssClass="form-control mb-1" />
                <asp:HiddenField ID="hfExistingAttachment" runat="server" />
                <small class="text-muted">PDF circular up to 10MB. Leave empty to keep existing.</small>
            </div>

            <div class="col-12">
                <div class="d-flex flex-wrap gap-4 pt-2">
                    <div class="form-check">
                        <asp:CheckBox ID="chkIsTicker" runat="server" CssClass="form-check-input" />
                        <label class="form-check-label fw-semibold" for='<%= chkIsTicker.ClientID %>'>Show in Top Scrolling Ticker</label>
                    </div>
                    <div class="form-check">
                        <asp:CheckBox ID="chkIsFeatured" runat="server" CssClass="form-check-input" />
                        <label class="form-check-label fw-semibold" for='<%= chkIsFeatured.ClientID %>'>Featured on Homepage</label>
                    </div>
                    <div class="form-check">
                        <asp:CheckBox ID="chkIsActive" runat="server" CssClass="form-check-input" Checked="true" />
                        <label class="form-check-label fw-semibold" for='<%= chkIsActive.ClientID %>'>Active / Published</label>
                    </div>
                </div>
            </div>

            <div class="col-12 d-flex gap-2 mt-4">
                <asp:Button ID="btnSave" runat="server" Text="Save Announcement" CssClass="btn btn-primary fw-bold px-4" ValidationGroup="NewsForm" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-outline-secondary px-3" CausesValidation="false" OnClick="btnCancel_Click" />
            </div>
        </div>
    </asp:Panel>

    <!-- News List Grid -->
    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
        <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h6 class="m-0 fw-bold text-primary"><i class="bi bi-list-ul me-2"></i> All Published Items</h6>
            <asp:Label ID="lblNewsCount" runat="server" CssClass="badge bg-light text-dark border"></asp:Label>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="gvNews" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-hover align-middle mb-0" GridLines="None" 
                DataKeyNames="NewsId" OnRowCommand="gvNews_RowCommand">
                <HeaderStyle CssClass="bg-light text-secondary py-3" />
                <Columns>
                    <asp:BoundField DataField="NewsId" HeaderText="ID" ItemStyle-CssClass="px-3 fw-bold" ItemStyle-Width="60px" />
                    
                    <asp:TemplateField HeaderText="TITLE & CATEGORY" ItemStyle-CssClass="px-3">
                        <ItemTemplate>
                            <div class="fw-bold text-primary"><%# Eval("Title") %></div>
                            <div class="small text-muted">
                                <span class="badge bg-light text-dark border me-1"><%# Eval("Category") %></span>
                                <%# Eval("PublishedDate", "{0:dd MMM yyyy}") %>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="FLAGS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="180px">
                        <ItemTemplate>
                            <span class='<%# Convert.ToBoolean(Eval("IsTicker")) ? "badge bg-warning text-dark me-1" : "d-none" %>'>Ticker</span>
                            <span class='<%# Convert.ToBoolean(Eval("IsFeatured")) ? "badge bg-info text-dark me-1" : "d-none" %>'>Featured</span>
                            <span class='<%# Convert.ToBoolean(Eval("IsActive")) ? "badge bg-success" : "badge bg-secondary" %>'>
                                <%# Convert.ToBoolean(Eval("IsActive")) ? "Active" : "Draft" %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="ATTACHMENT" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="120px">
                        <ItemTemplate>
                            <%# !string.IsNullOrEmpty(Eval("AttachmentUrl") as string) ? 
                                "<a href='" + ResolveUrl(Eval("AttachmentUrl").ToString()) + "' target='_blank' class='btn btn-sm btn-outline-danger'><i class='bi bi-file-pdf'></i> PDF</a>" : "<span class='text-muted small'>None</span>" %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="ACTIONS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="140px">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="EditNews" CommandArgument='<%# Eval("NewsId") %>' CssClass="btn btn-sm btn-outline-primary me-1" ToolTip="Edit">
                                <i class="bi bi-pencil"></i>
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="DeleteNews" CommandArgument='<%# Eval("NewsId") %>' CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Are you sure you want to delete this announcement?');" ToolTip="Delete">
                                <i class="bi bi-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="text-center p-4 text-muted">
                        <i class="bi bi-megaphone fs-2 d-block mb-2"></i>
                        No announcements or news items added yet. Click "+ Add New Announcement" above.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
