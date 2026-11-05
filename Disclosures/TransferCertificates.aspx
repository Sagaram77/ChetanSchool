<%@ Page Title="Transfer Certificates (TC)" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="TransferCertificates.aspx.cs" Inherits="Chetancbsewebsite.Disclosures.TransferCertificates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Transfer Certificates (TC)</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Disclosures</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Transfer Certificates</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <!-- Info Banner -->
        <div class="card border-0 bg-light rounded-4 p-4 mb-4 shadow-sm border-start border-4 border-primary">
            <div class="row align-items-center">
                <div class="col-md-8">
                    <h5 class="fw-bold text-primary mb-1"><i class="bi bi-shield-check me-2"></i> Official Transfer Certificate Repository</h5>
                    <p class="small text-secondary m-0">In compliance with CBSE guidelines, Transfer Certificates issued to students leaving Chetan Public School, Hubballi are publicly verifiable here. Search using Admission Number, TC Number, or Student Name.</p>
                </div>
                <div class="col-md-4 text-md-end mt-3 mt-md-0">
                    <span class="badge bg-primary px-3 py-2 fs-6"><i class="bi bi-patch-check-fill me-1"></i> CBSE Affiliation: 831020</span>
                </div>
            </div>
        </div>

        <!-- Search Card -->
        <div class="card border-0 shadow-sm rounded-4 p-4 mb-4">
            <div class="row g-3 align-items-end">
                <div class="col-md-8">
                    <label class="form-label fw-semibold text-secondary small">Search TC by Admission No, TC No, or Student Name</label>
                    <div class="input-group">
                        <span class="input-group-text bg-light border-end-0"><i class="bi bi-search text-muted"></i></span>
                        <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control border-start-0" placeholder="e.g. 2024/001, CPS/TC/2024, or Student Name..."></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4 d-flex gap-2">
                    <asp:Button ID="btnSearch" runat="server" Text="Search TC" CssClass="btn btn-primary px-4 fw-bold flex-grow-1" OnClick="btnSearch_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="Show All" CssClass="btn btn-outline-secondary px-3" OnClick="btnReset_Click" />
                </div>
            </div>
        </div>

        <!-- TC Results Table -->
        <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-4">
            <div class="card-header bg-primary text-white py-3 d-flex justify-content-between align-items-center">
                <h5 class="fw-bold m-0"><i class="bi bi-file-earmark-person-fill text-warning me-2"></i> Issued Transfer Certificates</h5>
                <asp:Label ID="lblResultCount" runat="server" CssClass="badge bg-warning text-dark px-3 py-2 fw-bold"></asp:Label>
            </div>
            <div class="table-responsive">
                <asp:GridView ID="gvTcList" runat="server" AutoGenerateColumns="False" 
                    CssClass="table table-hover align-middle mb-0" GridLines="None" 
                    EmptyDataText="No Transfer Certificate records found matching your search query.">
                    <EmptyDataRowStyle CssClass="text-center py-4 text-muted fst-italic" />
                    <HeaderStyle CssClass="bg-light text-secondary py-3" />
                    <Columns>
                        <asp:TemplateField HeaderText="SL NO." ItemStyle-Width="70px" ItemStyle-CssClass="px-3 fw-bold">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="TcNumber" HeaderText="TC NUMBER" ItemStyle-CssClass="px-3 fw-bold text-primary" />
                        <asp:BoundField DataField="AdmissionNumber" HeaderText="ADMISSION NO." ItemStyle-CssClass="px-3" />
                        <asp:BoundField DataField="StudentName" HeaderText="STUDENT NAME" ItemStyle-CssClass="px-3 fw-semibold" />
                        <asp:BoundField DataField="FatherName" HeaderText="FATHER'S NAME" ItemStyle-CssClass="px-3 text-muted" />
                        <asp:BoundField DataField="ClassLeaving" HeaderText="CLASS LEFT" ItemStyle-CssClass="px-3 text-center" />
                        <asp:BoundField DataField="AcademicYear" HeaderText="ACADEMIC YEAR" ItemStyle-CssClass="px-3 text-center" />
                        <asp:BoundField DataField="DateOfIssue" HeaderText="DATE OF ISSUE" DataFormatString="{0:dd-MMM-yyyy}" ItemStyle-CssClass="px-3 text-nowrap" />

                        <asp:TemplateField HeaderText="DOWNLOAD" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="140px">
                            <ItemTemplate>
                                <a href='<%# ResolveUrl(Eval("TcPdfUrl").ToString()) %>' target="_blank" class="btn btn-sm btn-outline-danger fw-semibold px-3">
                                    <i class="bi bi-file-pdf me-1"></i> View TC
                                </a>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <!-- Note section -->
        <div class="alert alert-secondary rounded-4 border-0 p-4">
            <h6 class="fw-bold text-dark mb-2"><i class="bi bi-info-circle-fill text-primary me-2"></i> Verification & Original Certificate Note</h6>
            <p class="small text-muted mb-0">
                The digital copies provided here are authentic verification references issued by Chetan Public School, Hubballi. For receiving physical stamped and signed copies, please contact the administrative school office during working hours (09:00 AM – 04:30 PM, Mon–Sat) along with the student’s clearance clearance slip.
            </p>
        </div>
    </div>
</asp:Content>
