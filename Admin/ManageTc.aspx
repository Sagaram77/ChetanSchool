<%@ Page Title="Manage Transfer Certificates" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageTc.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageTc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="fw-bold text-primary mb-1">Transfer Certificates (TC) Repository</h4>
            <p class="text-secondary small mb-0">Upload, record, and maintain digitally verifiable CBSE Transfer Certificates.</p>
        </div>
        <asp:Button ID="btnAddNew" runat="server" Text="+ Upload New TC" CssClass="btn btn-primary fw-bold" OnClick="btnAddNew_Click" />
    </div>

    <!-- Alert Message Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <!-- Upload TC Form Panel -->
    <asp:Panel ID="pnlForm" runat="server" Visible="false" CssClass="card border-0 shadow-sm rounded-4 p-4 mb-4 border-top border-4 border-primary">
        <h5 class="fw-bold text-primary mb-3">Upload Transfer Certificate</h5>
        
        <div class="row g-3">
            <div class="col-md-4">
                <label class="form-label fw-semibold small">TC Number <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtTcNumber" runat="server" CssClass="form-control" placeholder="e.g. CPS/TC/2026/045"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTcNo" runat="server" ControlToValidate="txtTcNumber" ErrorMessage="TC Number is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TcForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Admission Number <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtAdmissionNo" runat="server" CssClass="form-control" placeholder="e.g. 2020/0128"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAdmNo" runat="server" ControlToValidate="txtAdmissionNo" ErrorMessage="Admission No is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TcForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Academic Year <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtAcademicYear" runat="server" CssClass="form-control" placeholder="e.g. 2025-26"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvYear" runat="server" ControlToValidate="txtAcademicYear" ErrorMessage="Academic Year is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TcForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-semibold small">Student Full Name <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtStudentName" runat="server" CssClass="form-control" placeholder="Student name as per records"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtStudentName" ErrorMessage="Student name is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TcForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-6">
                <label class="form-label fw-semibold small">Father's Name <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control" placeholder="Father's / Guardian's name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFather" runat="server" ControlToValidate="txtFatherName" ErrorMessage="Father's name is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TcForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Class Left <span class="text-danger">*</span></label>
                <asp:DropDownList ID="ddlClassLeaving" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Class X" Value="Class X" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="Class IX" Value="Class IX"></asp:ListItem>
                    <asp:ListItem Text="Class VIII" Value="Class VIII"></asp:ListItem>
                    <asp:ListItem Text="Class VII" Value="Class VII"></asp:ListItem>
                    <asp:ListItem Text="Class VI" Value="Class VI"></asp:ListItem>
                    <asp:ListItem Text="Class V" Value="Class V"></asp:ListItem>
                    <asp:ListItem Text="Class IV" Value="Class IV"></asp:ListItem>
                    <asp:ListItem Text="Class III" Value="Class III"></asp:ListItem>
                    <asp:ListItem Text="Class II" Value="Class II"></asp:ListItem>
                    <asp:ListItem Text="Class I" Value="Class I"></asp:ListItem>
                    <asp:ListItem Text="UKG" Value="UKG"></asp:ListItem>
                    <asp:ListItem Text="LKG" Value="LKG"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Date of Issue <span class="text-danger">*</span></label>
                <asp:TextBox ID="txtDateOfIssue" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDateOfIssue" ErrorMessage="Date of issue is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TcForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-md-4">
                <label class="form-label fw-semibold small">Upload TC PDF Document <span class="text-danger">*</span></label>
                <asp:FileUpload ID="fuTcPdf" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvPdf" runat="server" ControlToValidate="fuTcPdf" ErrorMessage="PDF file is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="TcForm"></asp:RequiredFieldValidator>
            </div>

            <div class="col-12 d-flex gap-2 mt-4">
                <asp:Button ID="btnSave" runat="server" Text="Upload & Save TC" CssClass="btn btn-primary fw-bold px-4" ValidationGroup="TcForm" OnClick="btnSave_Click" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-outline-secondary px-3" CausesValidation="false" OnClick="btnCancel_Click" />
            </div>
        </div>
    </asp:Panel>

    <!-- Search Bar -->
    <div class="card border-0 shadow-sm rounded-4 p-3 mb-4">
        <div class="row g-2 align-items-center">
            <div class="col-md-9">
                <div class="input-group">
                    <span class="input-group-text bg-light border-end-0"><i class="bi bi-search text-muted"></i></span>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control border-start-0" placeholder="Filter by Student Name, Admission No, or TC No..."></asp:TextBox>
                </div>
            </div>
            <div class="col-md-3 d-flex gap-2">
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-outline-primary px-3 fw-bold flex-grow-1" OnClick="btnSearch_Click" />
                <asp:Button ID="btnShowAll" runat="server" Text="Show All" CssClass="btn btn-light border px-3" OnClick="btnShowAll_Click" />
            </div>
        </div>
    </div>

    <!-- TC Grid -->
    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
        <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h6 class="m-0 fw-bold text-primary"><i class="bi bi-file-earmark-check-fill text-success me-2"></i> Transfer Certificates Record</h6>
            <asp:Label ID="lblTcCount" runat="server" CssClass="badge bg-light text-dark border"></asp:Label>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="gvTc" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-hover align-middle mb-0" GridLines="None" 
                DataKeyNames="TcId" OnRowCommand="gvTc_RowCommand">
                <HeaderStyle CssClass="bg-light text-secondary py-3" />
                <Columns>
                    <asp:BoundField DataField="TcNumber" HeaderText="TC NUMBER" ItemStyle-CssClass="px-3 fw-bold text-primary" />
                    <asp:BoundField DataField="AdmissionNumber" HeaderText="ADMISSION NO" ItemStyle-CssClass="px-3" />

                    <asp:TemplateField HeaderText="STUDENT & FATHER" ItemStyle-CssClass="px-3">
                        <ItemTemplate>
                            <div class="fw-bold text-dark"><%# Eval("StudentName") %></div>
                            <div class="small text-muted">S/o, D/o: <%# Eval("FatherName") %></div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="ClassLeaving" HeaderText="CLASS LEFT" ItemStyle-CssClass="px-3 text-center" />
                    <asp:BoundField DataField="AcademicYear" HeaderText="SESSION" ItemStyle-CssClass="px-3 text-center" />
                    <asp:BoundField DataField="DateOfIssue" HeaderText="ISSUE DATE" DataFormatString="{0:dd-MMM-yyyy}" ItemStyle-CssClass="px-3 text-nowrap" />

                    <asp:TemplateField HeaderText="PDF" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="120px">
                        <ItemTemplate>
                            <%# !string.IsNullOrEmpty(Eval("TcPdfUrl") as string) ? 
                                "<a href='" + ResolveUrl(Eval("TcPdfUrl").ToString()) + "' target='_blank' class='btn btn-sm btn-outline-danger'><i class='bi bi-file-pdf'></i> PDF</a>" : "<span class='text-muted small'>None</span>" %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="ACTIONS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="100px">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="DeleteTc" CommandArgument='<%# Eval("TcId") %>' CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Delete this TC record?');" ToolTip="Delete">
                                <i class="bi bi-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="text-center p-4 text-muted">
                        <i class="bi bi-file-earmark-x fs-2 d-block mb-2"></i>
                        No Transfer Certificate records found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
