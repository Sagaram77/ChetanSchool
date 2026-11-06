<%@ Page Title="Manage Parent Testimonials" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageTestimonials.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageTestimonials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
    <script type="text/javascript">
        function previewParentPhoto(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var preview = document.getElementById('<%= imgPhotoPreview.ClientID %>');
                    if (preview) {
                        preview.src = e.target.result;
                        preview.style.display = 'block';
                    }
                    var placeholder = document.getElementById('previewPlaceholder');
                    if (placeholder) {
                        placeholder.style.display = 'none';
                    }
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4 flex-wrap gap-2">
        <div>
            <h4 class="fw-bold text-primary mb-1"><i class="bi bi-chat-heart-fill text-danger me-2"></i> Parent Testimonials Management</h4>
            <p class="text-secondary small mb-0">Manage parent reviews and feedback displayed on the homepage "Voices of Our School Family" section.</p>
        </div>
        <div>
            <asp:Button ID="btnToggleForm" runat="server" Text="+ Add New Testimonial" CssClass="btn btn-primary fw-bold" OnClick="btnToggleForm_Click" />
        </div>
    </div>

    <!-- Alert Notifications -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <!-- Add / Edit Form Panel -->
    <asp:Panel ID="pnlForm" runat="server" Visible="false" CssClass="card border-0 shadow-sm rounded-4 p-4 mb-4 border-top border-4 border-primary">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5 class="fw-bold text-primary m-0">
                <asp:Literal ID="litFormTitle" runat="server" Text="Add New Parent Testimonial" />
            </h5>
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnCancel_Click" CausesValidation="false" />
        </div>
        <asp:HiddenField ID="hfTestimonialId" runat="server" />
        <asp:HiddenField ID="hfExistingPhoto" runat="server" />

        <div class="row g-3">
            <div class="col-md-6">
                <label class="form-label fw-semibold small">Parent Name <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtParentName" runat="server" CssClass="form-control" placeholder="e.g. Rajesh Shinde" MaxLength="150" />
                <asp:RequiredFieldValidator ID="rfvParentName" runat="server" ControlToValidate="txtParentName" ErrorMessage="Parent name is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TestimonialForm" />
            </div>

            <div class="col-md-6">
                <label class="form-label fw-semibold small">Child's Class / Student Relation <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtChildClass" runat="server" CssClass="form-control" placeholder="e.g. Parent of Class VII Student" MaxLength="100" />
                <asp:RequiredFieldValidator ID="rfvChildClass" runat="server" ControlToValidate="txtChildClass" ErrorMessage="Child's class is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TestimonialForm" />
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Star Rating (1 - 5) <span class="text-danger">*</span></label>
                <asp:DropDownList ID="ddlRating" runat="server" CssClass="form-select">
                    <asp:ListItem Value="5" Selected="True">&#9733;&#9733;&#9733;&#9733;&#9733; (5 Stars - Exceptional)</asp:ListItem>
                    <asp:ListItem Value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4 Stars - Very Good)</asp:ListItem>
                    <asp:ListItem Value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3 Stars - Good)</asp:ListItem>
                    <asp:ListItem Value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2 Stars - Average)</asp:ListItem>
                    <asp:ListItem Value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1 Star)</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Display Order</label>
                <asp:TextBox ID="txtDisplayOrder" runat="server" CssClass="form-control" TextMode="Number" Text="1" />
            </div>

            <div class="col-md-4 d-flex align-items-end">
                <div class="form-check form-switch mb-2">
                    <asp:CheckBox ID="chkIsActive" runat="server" Checked="true" CssClass="form-check-input" />
                    <label class="form-check-label fw-semibold" for="<%= chkIsActive.ClientID %>">Active & Display on Website</label>
                </div>
            </div>

            <div class="col-12">
                <label class="form-label fw-semibold small">Testimonial / Review Quote <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtTestimonialText" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Enter the parent's statement, feedback, or quotation..." />
                <asp:RequiredFieldValidator ID="rfvTestimonialText" runat="server" ControlToValidate="txtTestimonialText" ErrorMessage="Testimonial message is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TestimonialForm" />
            </div>

            <!-- Photo Upload with Preview -->
            <div class="col-md-8">
                <label class="form-label fw-semibold small">Parent Photo (Optional)</label>
                <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control" accept="image/*" onchange="previewParentPhoto(this);" />
                <div class="form-text small">Accepted formats: JPG, PNG, WEBP. If no photo is uploaded, the parent's initials will be displayed automatically.</div>
            </div>

            <div class="col-md-4 text-center">
                <div class="p-2 border rounded-3 bg-light d-inline-block">
                    <asp:Image ID="imgPhotoPreview" runat="server" CssClass="rounded-circle shadow-sm" Style="width: 70px; height: 70px; object-fit: cover; display: none;" />
                    <div id="previewPlaceholder" runat="server" class="rounded-circle bg-secondary text-white d-flex align-items-center justify-content-center fw-bold mx-auto" style="width: 70px; height: 70px; font-size: 1.5rem;">
                        <i class="bi bi-person"></i>
                    </div>
                    <small class="d-block text-muted mt-1" style="font-size: 0.75rem;">Photo Preview</small>
                </div>
            </div>

            <div class="col-12 mt-4 pt-2 border-top">
                <asp:Button ID="btnSave" runat="server" Text="Save Testimonial" CssClass="btn btn-primary px-4 fw-bold shadow-sm" ValidationGroup="TestimonialForm" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancelBottom" runat="server" Text="Cancel" CssClass="btn btn-light ms-2" OnClick="btnCancel_Click" CausesValidation="false" />
            </div>
        </div>
    </asp:Panel>

    <!-- Testimonials List Table -->
    <div class="card border-0 shadow-sm rounded-4">
        <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h6 class="m-0 fw-bold text-primary"><i class="bi bi-list-stars text-warning me-2"></i> All Parent Testimonials</h6>
            <asp:Label ID="lblCount" runat="server" CssClass="badge bg-primary px-3 py-2"></asp:Label>
        </div>
        <div class="card-body p-0">
            <div class="table-responsive">
                <asp:GridView ID="gvTestimonials" runat="server" AutoGenerateColumns="false" CssClass="table table-hover align-middle mb-0" GridLines="None" OnRowCommand="gvTestimonials_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Parent" HeaderStyle-CssClass="px-3" ItemStyle-CssClass="px-3">
                            <ItemTemplate>
                                <div class="d-flex align-items-center gap-3">
                                    <%# !string.IsNullOrEmpty(Eval("PhotoUrl") as string) ? 
                                        "<img src='" + ResolveUrl(Eval("PhotoUrl").ToString()) + "' class='rounded-circle shadow-sm' style='width: 44px; height: 44px; object-fit: cover;' />" :
                                        "<div class='rounded-circle bg-primary text-white d-flex align-items-center justify-content-center fw-bold' style='width: 44px; height: 44px; font-size: 0.9rem;'>" + 
                                        Chetancbsewebsite.BLL.TestimonialService.GetInitials(Eval("ParentName").ToString()) + "</div>" %>
                                    <div>
                                        <div class="fw-bold text-dark"><%# Eval("ParentName") %></div>
                                        <div class="small text-muted"><%# Eval("ChildClass") %></div>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Rating" HeaderStyle-CssClass="px-3 text-center" ItemStyle-CssClass="px-3 text-center">
                            <ItemTemplate>
                                <div class="text-warning">
                                    <%# GetStarHtml(Convert.ToInt32(Eval("Rating"))) %>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Testimonial Quote" HeaderStyle-CssClass="px-3" ItemStyle-CssClass="px-3">
                            <ItemTemplate>
                                <div class="small text-secondary text-truncate" style="max-width: 380px;" title='<%# Eval("TestimonialText") %>'>
                                    "<%# Eval("TestimonialText") %>"
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="DisplayOrder" HeaderText="Order" HeaderStyle-CssClass="px-3 text-center" ItemStyle-CssClass="px-3 text-center fw-bold" />

                        <asp:TemplateField HeaderText="Status" HeaderStyle-CssClass="px-3 text-center" ItemStyle-CssClass="px-3 text-center">
                            <ItemTemplate>
                                <span class='<%# Convert.ToBoolean(Eval("IsActive")) ? "badge bg-success" : "badge bg-secondary" %>'>
                                    <%# Convert.ToBoolean(Eval("IsActive")) ? "Active" : "Hidden" %>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Actions" HeaderStyle-CssClass="px-3 text-end" ItemStyle-CssClass="px-3 text-end">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnEdit" runat="server" CommandName="EditTestimonial" CommandArgument='<%# Eval("TestimonialId") %>' CssClass="btn btn-sm btn-outline-primary me-1" ToolTip="Edit">
                                    <i class="bi bi-pencil-square"></i>
                                </asp:LinkButton>
                                <asp:LinkButton ID="btnDelete" runat="server" CommandName="DeleteTestimonial" CommandArgument='<%# Eval("TestimonialId") %>' CssClass="btn btn-sm btn-outline-danger" ToolTip="Delete" OnClientClick="return confirm('Are you sure you want to permanently delete this testimonial?');">
                                    <i class="bi bi-trash"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        <div class="text-center p-5 text-muted">
                            <i class="bi bi-chat-heart fs-1 d-block mb-2 text-secondary opacity-50"></i>
                            No parent testimonials added yet. Click "+ Add New Testimonial" to create one.
                        </div>
                    </EmptyDataTemplate>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
