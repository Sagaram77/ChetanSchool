<%@ Page Title="Manage Contact Messages" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageContact.aspx.cs" Inherits="Chetancbsewebsite.Admin.ManageContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <div>
            <h4 class="fw-bold text-primary mb-1">Contact Inquiries & Feedback</h4>
            <p class="text-secondary small mb-0">Messages submitted by parents, visitors, and students via the public Contact Us page.</p>
        </div>
    </div>

    <!-- Alert Message Panel -->
    <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
        <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </asp:Panel>

    <!-- Message Detail Panel -->
    <asp:Panel ID="pnlDetail" runat="server" Visible="false" CssClass="card border-0 shadow-sm rounded-4 p-4 mb-4 border-top border-4 border-primary">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h5 class="fw-bold text-primary m-0">
                <i class="bi bi-chat-text-fill text-warning me-2"></i> Message #<asp:Label ID="lblMessageId" runat="server"></asp:Label>
            </h5>
            <asp:Button ID="btnCloseDetail" runat="server" Text="Close Panel" CssClass="btn btn-sm btn-outline-secondary" OnClick="btnCloseDetail_Click" />
        </div>
        <asp:HiddenField ID="hfMessageId" runat="server" />

        <div class="row g-3 mb-3">
            <div class="col-md-4">
                <small class="text-muted d-block">Sender Name</small>
                <strong class="text-dark"><asp:Literal ID="litSender" runat="server" /></strong>
            </div>
            <div class="col-md-4">
                <small class="text-muted d-block">Phone Number</small>
                <span><asp:Literal ID="litPhone" runat="server" /></span>
            </div>
            <div class="col-md-4">
                <small class="text-muted d-block">Email Address</small>
                <span><asp:Literal ID="litEmail" runat="server" /></span>
            </div>
            <div class="col-12">
                <small class="text-muted d-block">Subject</small>
                <h6 class="fw-bold text-primary mb-0"><asp:Literal ID="litSubject" runat="server" /></h6>
            </div>
            <div class="col-12">
                <small class="text-muted d-block">Message Content</small>
                <div class="p-3 bg-light rounded-3 text-secondary">
                    <asp:Literal ID="litMessageBody" runat="server" />
                </div>
            </div>
        </div>

        <hr />

        <div class="row g-2 align-items-end">
            <div class="col-md-9">
                <label class="form-label fw-semibold small">Administrative Action / Follow-up Reply Note</label>
                <asp:TextBox ID="txtAdminReply" runat="server" CssClass="form-control" placeholder="Optional internal notes or resolution remarks..."></asp:TextBox>
            </div>
            <div class="col-md-3">
                <asp:Button ID="btnMarkRead" runat="server" Text="Mark as Resolved / Read" CssClass="btn btn-success fw-bold w-100" OnClick="btnMarkRead_Click" />
            </div>
        </div>
    </asp:Panel>

    <!-- Messages Grid -->
    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
        <div class="card-header bg-white py-3 border-bottom d-flex justify-content-between align-items-center">
            <h6 class="m-0 fw-bold text-primary"><i class="bi bi-inbox-fill text-warning me-2"></i> Received Messages</h6>
            <asp:Label ID="lblMsgCount" runat="server" CssClass="badge bg-light text-dark border"></asp:Label>
        </div>
        <div class="table-responsive">
            <asp:GridView ID="gvMessages" runat="server" AutoGenerateColumns="False" 
                CssClass="table table-hover align-middle mb-0" GridLines="None" 
                DataKeyNames="MessageId" OnRowCommand="gvMessages_RowCommand">
                <HeaderStyle CssClass="bg-light text-secondary py-3" />
                <Columns>
                    <asp:BoundField DataField="MessageId" HeaderText="ID" ItemStyle-CssClass="px-3 fw-bold" ItemStyle-Width="60px" />

                    <asp:TemplateField HeaderText="SENDER" ItemStyle-CssClass="px-3">
                        <ItemTemplate>
                            <div class="fw-bold text-primary"><%# Eval("SenderName") %></div>
                            <div class="small text-muted"><%# Eval("Email") %> &bull; <%# Eval("Phone") %></div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="SUBJECT & PREVIEW" ItemStyle-CssClass="px-3">
                        <ItemTemplate>
                            <div class="fw-semibold text-dark"><%# Eval("Subject") %></div>
                            <div class="small text-truncate text-secondary" style="max-width: 300px;"><%# Eval("Message") %></div>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="STATUS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="100px">
                        <ItemTemplate>
                            <span class='<%# Convert.ToBoolean(Eval("IsRead")) ? "badge bg-light text-secondary border" : "badge bg-danger" %>'>
                                <%# Convert.ToBoolean(Eval("IsRead")) ? "Read" : "Unread" %>
                            </span>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="SubmittedDate" HeaderText="DATE" DataFormatString="{0:dd MMM yyyy HH:mm}" ItemStyle-CssClass="px-3 text-muted small" />

                    <asp:TemplateField HeaderText="ACTIONS" ItemStyle-CssClass="px-3 text-center" ItemStyle-Width="140px">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnView" runat="server" CommandName="ViewMessage" CommandArgument='<%# Eval("MessageId") %>' CssClass="btn btn-sm btn-outline-primary me-1" ToolTip="View Message">
                                <i class="bi bi-eye"></i> View
                            </asp:LinkButton>
                            <asp:LinkButton ID="btnDelete" runat="server" CommandName="DeleteMessage" CommandArgument='<%# Eval("MessageId") %>' CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Delete this message?');" ToolTip="Delete">
                                <i class="bi bi-trash"></i>
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <div class="text-center p-4 text-muted">
                        <i class="bi bi-envelope-open fs-2 d-block mb-2"></i>
                        No contact messages received yet.
                    </div>
                </EmptyDataTemplate>
            </asp:GridView>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
