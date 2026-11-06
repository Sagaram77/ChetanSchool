<%@ Page Title="Manage Faculty Directory" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageStaff.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="fw-bold text-primary mb-1">Faculty & Staff Directory</h4>
            <p class="text-secondary small mb-0">Manage teaching faculty, coordinators, leadership team, and administrative staff members.</p>
        </div>
        <asp:Button ID="btnAddNew" runat="server" Text="+ Add Faculty Member" CssClass="btn btn-primary fw-bold" OnClick="btnAddNew_Click" />
    </div>

    <!-- Alert Message Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <!-- Add/Edit Staff Form Panel -->
    <asp:Panel ID="pnlForm" runat="server" Visible="false" CssClass="card border-0 shadow-sm rounded-4 p-4 mb-4 border-top border-4 border-primary">
        <h5 class="fw-bold text-primary mb-3">
            <asp:Literal ID="litFormTitle" runat="server" Text="Add Faculty Member" />
        </h5>
        <asp:HiddenField ID="hfStaffId" runat="server" Value="0" />

        <div class="row g-3">
            <div class="col-md-6">
                <label class="form-label fw-semibold small">Full Name <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="e.g. Dr. Ramesh Patil"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full name is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="StaffForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-semibold small">Designation <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control" placeholder="e.g. Senior Science Teacher / PGT"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDesig" runat="server" ControlToValidate="txtDesignation" ErrorMessage="Designation is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="StaffForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Department <span class="text-danger">*</span></label>
                <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Administration" Value="Administration"></asp:ListItem>
                    <asp:ListItem Text="Science" Value="Science" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Mathematics" Value="Mathematics"></asp:ListItem>
                    <asp:ListItem Text="Languages" Value="Languages"></asp:ListItem>
                    <asp:ListItem Text="Social Science" Value="Social Science"></asp:ListItem>
                    <asp:ListItem Text="Computer Science" Value="Computer Science"></asp:ListItem>
                    <asp:ListItem Text="Physical Education" Value="Physical Education"></asp:ListItem>
                    <asp:ListItem Text="Arts & Co-Curricular" Value="Arts & Co-Curricular"></asp:ListItem>
                    <asp:ListItem Text="Pre-Primary" Value="Pre-Primary"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-5">
                <label class="form-label fw-semibold small">Qualifications</label>
                <asp:TextBox ID="txtQualifications" runat="server" CssClass="form-control" placeholder="e.g. M.Sc., B.Ed."></asp:TextBox>
            </div>

            <div class="col-md-3">
                <label class="form-label fw-semibold small">Experience (Years)</label>
                <asp:TextBox ID="txtExperience" runat="server" TextMode="Number" CssClass="form-control" placeholder="e.g. 8"></asp:TextBox>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-semibold small">Photo Upload & Live Preview</label>
                <div class="d-flex align-items-center gap-3 p-2 bg-light rounded-3 border">
                    <div class="position-relative flex-shrink-0" style="width: 75px; height: 75px;">
                        <asp:Image ID="imgPhotoPreview" runat="server" CssClass="rounded-circle border border-2 border-primary shadow-sm object-fit-cover w-100 h-100" Style="display: none;" />
                        <div id="divPlaceholderIcon" runat="server" class="bg-white rounded-circle border border-2 border-secondary-subtle d-flex align-items-center justify-content-center w-100 h-100 shadow-sm">
                            <i class="bi bi-person-bounding-box fs-3 text-secondary"></i>
                        </div>
                    </div>
                    <div class="flex-grow-1">
                        <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control form-control-sm mb-1" onchange="previewStaffPhoto(this);" />
                        <asp:HiddenField ID="hfExistingPhoto" runat="server" />
                        <small class="text-muted d-block" style="font-size: 0.78rem;">Passport photo (JPG, PNG, WebP). Max 2MB. Leave blank to keep existing.</small>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <label class="form-label fw-semibold small">Display Order</label>
                <asp:TextBox ID="txtDisplayOrder" runat="server" TextMode="Number" CssClass="form-control" Text="1"></asp:TextBox>
            </div>

            <div class="col-md-3 d-flex align-items-center pt-4">
                <div class="form-check">
                    <asp:CheckBox ID="chkIsActive" runat="server" CssClass="form-check-input" Checked="true" />
                    <label class="form-check-label fw-semibold" for='<%= chkIsActive.ClientID %>'>Active Status</label>
                </div>
            </div>

            <div class="col-12 d-flex gap-2 mt-4">
                <asp:Button ID="btnSave" runat="server" Text="Save Faculty Record" CssClass="btn btn-primary fw-bold px-4" ValidationGroup="StaffForm" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-outline-secondary px-3" CausesValidation="false" OnClick="btnCancel_Click" />
            </div>
        </div>
    </asp:Panel>

    <!-- Staff List Grid -->
    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
        <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h6 class="m-0 fw-bold text-primary"><i class="bi bi-people-fill text-warning me-2"></i> Faculty Members</h6>
            <asp:Label ID="lblStaffCount" runat="server" CssClass="badge bg-light text-dark border"></asp:Label>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="gvStaff" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-hover align-middle mb-0" GridLines="None" 
                DataKeyNames="StaffId" OnRowCommand="gvStaff_RowCommand">
                <HeaderStyle CssClass="bg-light text-secondary py-3" />
                <Columns>
                    <asp:BoundField DataField="DisplayOrder" HeaderText="ORDER" ItemStyle-CssClass="px-3 fw-bold" ItemStyle-Width="60px" />
                    
                    <asp:TemplateField HeaderText="PHOTO" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="70px">
                        <ItemTemplate>
                            <%# !string.IsNullOrEmpty(Eval("PhotoUrl") as string) ?
                                "<img src='" + ResolveUrl(Eval("PhotoUrl").ToString()) + "' class='rounded-circle border border-2 border-primary shadow-sm object-fit-cover' style='width: 44px; height: 44px;' onerror=\"this.style.display='none';this.nextElementSibling.style.display='inline-flex';\" />" : "" %>
                            <div class="rounded-circle bg-light border text-secondary align-items-center justify-content-center" style='<%# !string.IsNullOrEmpty(Eval("PhotoUrl") as string) ? "display:none; width: 44px; height: 44px;" : "display:inline-flex; width: 44px; height: 44px;" %>'>
                                <i class="bi bi-person-fill fs-5"></i>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="MEMBER" ItemStyle-CssClass="px-3">
                        <ItemTemplate>
                            <div class="fw-bold text-primary"><%# Eval("FullName") %></div>
                            <div class="small text-muted"><%# Eval("Qualifications") %></div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Designation" HeaderText="DESIGNATION" ItemStyle-CssClass="px-3" />
                    <asp:BoundField DataField="Department" HeaderText="DEPARTMENT" ItemStyle-CssClass="px-3" />
                    <asp:BoundField DataField="ExperienceYears" HeaderText="EXP (YRS)" ItemStyle-CssClass="px-3 text-center" />

                    <asp:TemplateField HeaderText="STATUS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="100px">
                        <ItemTemplate>
                            <span class='<%# Convert.ToBoolean(Eval("IsActive")) ? "badge bg-success" : "badge bg-secondary" %>'>
                                <%# Convert.ToBoolean(Eval("IsActive")) ? "Active" : "Inactive" %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="ACTIONS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="140px">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="EditStaff" CommandArgument='<%# Eval("StaffId") %>' CssClass="btn btn-sm btn-outline-primary me-1" ToolTip="Edit">
                                <i class="bi bi-pencil"></i>
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="DeleteStaff" CommandArgument='<%# Eval("StaffId") %>' CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Are you sure you want to remove this staff record?');" ToolTip="Delete">
                                <i class="bi bi-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="text-center p-4 text-muted">
                        <i class="bi bi-person-x fs-2 d-block mb-2"></i>
                        No faculty members added yet. Click "+ Add Faculty Member" above.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
    <script>
        function previewStaffPhoto(input) {
            if (input.files && input.files[0]) {
                var file = input.files[0];
                if (!file.type.match('image.*')) {
                    alert('Please select an image file (JPG, PNG, WebP).');
                    input.value = '';
                    return;
                }
                var reader = new FileReader();
                reader.onload = function (e) {
                    var img = document.getElementById('<%= imgPhotoPreview.ClientID %>');
                    var placeholder = document.getElementById('<%= divPlaceholderIcon.ClientID %>');
                    if (img) {
                        img.src = e.target.result;
                        img.style.display = 'block';
                    }
                    if (placeholder) {
                        placeholder.style.display = 'none';
                    }
                };
                reader.readAsDataURL(file);
            }
        }
    </script>
</asp:Content>
