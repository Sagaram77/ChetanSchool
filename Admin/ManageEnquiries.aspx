<%@ Page Title="Manage Admission Enquiries" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageEnquiries.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageEnquiries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="fw-bold text-primary mb-1">Admission Enquiries & Applications</h4>
            <p class="text-secondary small mb-0">Review student applications, manage follow-up status, and maintain admission pipeline records.</p>
        </div>
        <div class="d-flex gap-2">
            <asp:DropDownList ID="ddlStatusFilter" runat="server" CssClass="form-select form-select-sm" AutoPostBack="true" OnSelectedIndexChanged="ddlStatusFilter_SelectedIndexChanged">
                <asp:ListItem Text="All Enquiries" Value="All" Selected="True"></asp:ListItem>
                <asp:ListItem Text="New" Value="New"></asp:ListItem>
                <asp:ListItem Text="Contacted" Value="Contacted"></asp:ListItem>
                <asp:ListItem Text="Enrolled" Value="Enrolled"></asp:ListItem>
                <asp:ListItem Text="Closed" Value="Closed"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>

    <!-- Alert Message Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <!-- Detail & Update Status Panel -->
    <asp:Panel ID="pnlDetail" runat="server" Visible="false" CssClass="card border-0 shadow-sm rounded-4 p-4 mb-4 border-top border-4 border-warning">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5 class="fw-bold text-primary m-0">
                <i class="bi bi-person-lines-fill text-warning me-2"></i> Review Enquiry #<asp:Label ID="lblEnquiryId" runat="server"></asp:Label>
            </h5>
            <asp:Button ID="btnCloseDetail" runat="server" Text="Close Panel" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnCloseDetail_Click" />
        </div>
        <asp:HiddenField ID="hfEnquiryId" runat="server" />

        <div class="row g-3 mb-3">
            <div class="col-md-4">
                <small class="text-muted d-block">Student Name</small>
                <strong class="text-dark"><asp:Literal ID="litStudentName" runat="server" /></strong>
            </div>
            <div class="col-md-4">
                <small class="text-muted d-block">Grade Applied</small>
                <strong class="text-primary"><asp:Literal ID="litClassApplied" runat="server" /></strong>
            </div>
            <div class="col-md-4">
                <small class="text-muted d-block">Date of Birth</small>
                <span><asp:Literal ID="litDob" runat="server" /></span>
            </div>
            <div class="col-md-4">
                <small class="text-muted d-block">Parent Name</small>
                <span><asp:Literal ID="litParentName" runat="server" /></span>
            </div>
            <div class="col-md-4">
                <small class="text-muted d-block">Contact Phone</small>
                <span><asp:Literal ID="litPhone" runat="server" /></span>
            </div>
            <div class="col-md-4">
                <small class="text-muted d-block">Email</small>
                <span><asp:Literal ID="litEmail" runat="server" /></span>
            </div>
            <div class="col-md-6">
                <small class="text-muted d-block">Previous School</small>
                <span><asp:Literal ID="litCurrentSchool" runat="server" /></span>
            </div>
            <div class="col-md-6">
                <small class="text-muted d-block">Residential Address</small>
                <span><asp:Literal ID="litAddress" runat="server" /></span>
            </div>
            <div class="col-12">
                <small class="text-muted d-block">Parent's Message / Notes</small>
                <div class="p-3 bg-light rounded-3 text-secondary small">
                    <asp:Literal ID="litMessage" runat="server" />
                </div>
            </div>
        </div>

        <hr />

        <div class="row g-3 align-items-end">
            <div class="col-md-4">
                <label class="form-label fw-semibold small">Update Status</label>
                <asp:DropDownList ID="ddlUpdateStatus" runat="server" CssClass="form-select">
                    <asp:ListItem Text="New" Value="New"></asp:ListItem>
                    <asp:ListItem Text="Contacted" Value="Contacted"></asp:ListItem>
                    <asp:ListItem Text="Enrolled" Value="Enrolled"></asp:ListItem>
                    <asp:ListItem Text="Closed" Value="Closed"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-6">
                <label class="form-label fw-semibold small">Administrative Remarks / Follow-up Notes</label>
                <asp:TextBox ID="txtAdminRemarks" runat="server" CssClass="form-control" placeholder="Add remarks or notes..."></asp:TextBox>
            </div>
            <div class="col-md-2">
                <asp:Button ID="btnSaveStatus" runat="server" Text="Save Status" CssClass="btn btn-warning fw-bold text-dark w-100" OnClick="btnSaveStatus_Click" />
            </div>
        </div>
    </asp:Panel>

    <!-- Enquiries Grid -->
    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
        <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h6 class="m-0 fw-bold text-primary"><i class="bi bi-pencil-square text-warning me-2"></i> Received Admission Inquiries</h6>
            <asp:Label ID="lblEnquiryCount" runat="server" CssClass="badge bg-light text-dark border"></asp:Label>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="gvEnquiries" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-hover align-middle mb-0" GridLines="None" 
                DataKeyNames="EnquiryId" OnRowCommand="gvEnquiries_RowCommand">
                <HeaderStyle CssClass="bg-light text-secondary py-3" />
                <Columns>
                    <asp:BoundField DataField="EnquiryId" HeaderText="ID" ItemStyle-CssClass="px-3 fw-bold" ItemStyle-Width="60px" />

                    <asp:TemplateField HeaderText="STUDENT & GRADE" ItemStyle-CssClass="px-3">
                        <ItemTemplate>
                            <div class="fw-bold text-primary"><%# Eval("StudentName") %></div>
                            <div class="small text-muted">Grade: <strong><%# Eval("ClassAppliedFor") %></strong></div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="ParentName" HeaderText="PARENT" ItemStyle-CssClass="px-3" />
                    
                    <asp:TemplateField HeaderText="CONTACT" ItemStyle-CssClass="px-3">
                        <ItemTemplate>
                            <div><i class="bi bi-telephone me-1 text-primary"></i> <%# Eval("Phone") %></div>
                            <div class="small text-muted"><%# Eval("Email") %></div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="STATUS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="120px">
                        <ItemTemplate>
                            <span class='<%# Eval("EnquiryStatus").ToString() == "New" ? "badge bg-danger" : 
                                            Eval("EnquiryStatus").ToString() == "Enrolled" ? "badge bg-success" : 
                                            Eval("EnquiryStatus").ToString() == "Contacted" ? "badge bg-info text-dark" : "badge bg-secondary" %>'>
                                <%# Eval("EnquiryStatus") %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="CreatedDate" HeaderText="DATE" DataFormatString="{0:dd MMM yyyy}" ItemStyle-CssClass="px-3 text-muted small" />

                    <asp:TemplateField HeaderText="ACTIONS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="140px">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnView" runat="server" CommandName="ViewEnquiry" CommandArgument='<%# Eval("EnquiryId") %>' CssClass="btn btn-sm btn-outline-primary me-1" ToolTip="View Details">
                                <i class="bi bi-eye"></i> View
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="DeleteEnquiry" CommandArgument='<%# Eval("EnquiryId") %>' CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Delete this enquiry record?');" ToolTip="Delete">
                                <i class="bi bi-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="text-center p-4 text-muted">
                        <i class="bi bi-inbox fs-2 d-block mb-2"></i>
                        No admission enquiry records found.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
