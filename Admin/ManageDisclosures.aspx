<%@ Page Title="Manage CBSE Mandatory Disclosures" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageDisclosures.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageDisclosures" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="fw-bold text-primary mb-1">CBSE Appendix IX Disclosures</h4>
            <p class="text-secondary small mb-0">Upload and update statutory affiliation, trust, NOC, building safety, and academic certificates.</p>
        </div>
        <asp:Button ID="btnAddNew" runat="server" Text="+ Add Disclosure Document" CssClass="btn btn-primary fw-bold" OnClick="btnAddNew_Click" />
    </div>

    <!-- Alert Message Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <!-- Add/Edit Form Panel -->
    <asp:Panel ID="pnlForm" runat="server" Visible="false" CssClass="card border-0 shadow-sm rounded-4 p-4 mb-4 border-top border-4 border-danger">
        <h5 class="fw-bold text-primary mb-3">
            <asp:Literal ID="litFormTitle" runat="server" Text="Add Disclosure Document" />
        </h5>
        <asp:HiddenField ID="hfDisclosureId" runat="server" Value="0" />

        <div class="row g-3">
            <div class="col-md-6">
                <label class="form-label fw-semibold small">Category <span class="text-danger">*</span></label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Documents and Information" Value="Documents and Information" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Result and Academics" Value="Result and Academics"></asp:ListItem>
                    <asp:ListItem Text="General Information" Value="General Information"></asp:ListItem>
                    <asp:ListItem Text="Staff (Teaching)" Value="Staff (Teaching)"></asp:ListItem>
                    <asp:ListItem Text="School Infrastructure" Value="School Infrastructure"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-semibold small">Document Title <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtDocumentTitle" runat="server" CssClass="form-control" placeholder="e.g. Copies of Affiliation Letter"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="txtDocumentTitle" ErrorMessage="Title is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="DiscForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Document / Ref Number</label>
                <asp:TextBox ID="txtDocNumber" runat="server" CssClass="form-control" placeholder="e.g. CBSE/AFF/831020"></asp:TextBox>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Academic Session (If Applicable)</label>
                <asp:TextBox ID="txtSession" runat="server" CssClass="form-control" placeholder="e.g. 2025-26"></asp:TextBox>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Display Order</label>
                <asp:TextBox ID="txtDisplayOrder" runat="server" TextMode="Number" CssClass="form-control" Text="1"></asp:TextBox>
            </div>

            <div class="col-md-8">
                <label class="form-label fw-semibold small">Upload PDF Document</label>
                <asp:FileUpload ID="fuPdf" runat="server" CssClass="form-control mb-1" />
                <asp:HiddenField ID="hfExistingPdf" runat="server" />
                <small class="text-muted">Upload authentic PDF document. Leave blank to keep existing file.</small>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Approx. File Size</label>
                <asp:TextBox ID="txtFileSize" runat="server" CssClass="form-control" placeholder="e.g. 1.2 MB"></asp:TextBox>
            </div>

            <div class="col-12 d-flex gap-2 mt-4">
                <asp:Button ID="btnSave" runat="server" Text="Save Document Record" CssClass="btn btn-primary fw-bold px-4" ValidationGroup="DiscForm" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-outline-secondary px-3" CausesValidation="false" OnClick="btnCancel_Click" />
            </div>
        </div>
    </asp:Panel>

    <!-- Disclosures List Grid -->
    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
        <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h6 class="m-0 fw-bold text-primary"><i class="bi bi-file-earmark-check-fill text-danger me-2"></i> Current Mandatory Disclosures</h6>
            <asp:Label ID="lblDiscCount" runat="server" CssClass="badge bg-light text-dark border"></asp:Label>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="gvDisclosures" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-hover align-middle mb-0" GridLines="None" 
                DataKeyNames="DisclosureId" OnRowCommand="gvDisclosures_RowCommand">
                <HeaderStyle CssClass="bg-light text-secondary py-3" />
                <Columns>
                    <asp:BoundField DataField="DisplayOrder" HeaderText="ORDER" ItemStyle-CssClass="px-3 fw-bold" ItemStyle-Width="60px" />
                    
                    <asp:TemplateField HeaderText="DOCUMENT TITLE" ItemStyle-CssClass="px-3">
                        <ItemTemplate>
                            <div class="fw-bold text-primary"><%# Eval("DocumentTitle") %></div>
                            <div class="small text-muted">
                                <span class="badge bg-light text-dark border me-1"><%# Eval("Category") %></span>
                                <%# Eval("DocumentNumber") != DBNull.Value ? "Ref: " + Eval("DocumentNumber") : "" %>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="AcademicSession" HeaderText="SESSION" ItemStyle-CssClass="px-3" />
                    <asp:BoundField DataField="FileSize" HeaderText="SIZE" ItemStyle-CssClass="px-3" />

                    <asp:TemplateField HeaderText="PDF LINK" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="120px">
                        <ItemTemplate>
                            <%# !string.IsNullOrEmpty(Eval("PdfFileUrl") as string) ? 
                                "<a href='" + ResolveUrl(Eval("PdfFileUrl").ToString()) + "' target='_blank' class='btn btn-sm btn-outline-danger'><i class='bi bi-file-pdf'></i> View</a>" : "<span class='text-muted small'>None</span>" %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="ACTIONS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="140px">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEdit" runat="server" CommandName="EditDisc" CommandArgument='<%# Eval("DisclosureId") %>' CssClass="btn btn-sm btn-outline-primary me-1" ToolTip="Edit">
                                <i class="bi bi-pencil"></i>
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="DeleteDisc" CommandArgument='<%# Eval("DisclosureId") %>' CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Are you sure you want to delete this document?');" ToolTip="Delete">
                                <i class="bi bi-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="text-center p-4 text-muted">
                        <i class="bi bi-file-earmark-x fs-2 d-block mb-2"></i>
                        No CBSE disclosure documents added yet.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
