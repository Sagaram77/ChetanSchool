<%@ Page Title="Change Password" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Chetancbsewebsite.Admin.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="AdminHead" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="AdminContent" runat="server">
    <div class="row justify-content-center">
        <div class="col-lg-6 col-md-8">
            <div class="card border-0 shadow-sm rounded-4 p-4 p-md-5">
                <div class="text-center mb-4">
                    <div class="bg-warning text-dark rounded-circle d-inline-flex align-items-center justify-content-center mb-2" style="width: 56px; height: 56px;">
                        <i class="bi bi-key-fill fs-3"></i>
                    </div>
                    <h4 class="fw-bold text-primary mb-1">Change Account Password</h4>
                    <p class="text-secondary small mb-0">Update your administrator account password. Use at least 6 characters with a combination of letters and numbers.</p>
                </div>

                <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-dismissible fade show mb-4" role="alert">
                    <asp:Label ID="lblAlertMsg" runat="server"></asp:Label>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </asp:Panel>

                <div class="mb-3">
                    <label class="form-label fw-semibold small">Current Password <span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" class="form-control" placeholder="Enter current password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCurrent" runat="server" ControlToValidate="txtCurrentPassword" ErrorMessage="Current password is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="PwdForm"></asp:RequiredFieldValidator>
                </div>

                <div class="mb-3">
                    <label class="form-label fw-semibold small">New Password <span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" class="form-control" placeholder="Enter new password (min. 6 characters)"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNew" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required" CssClass="text-danger small" Display="Dynamic" ValidationGroup="PwdForm"></asp:RequiredFieldValidator>
                </div>

                <div class="mb-4">
                    <label class="form-label fw-semibold small">Confirm New Password <span class="text-danger">*</span></label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" class="form-control" placeholder="Re-enter new password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Please confirm new password" CssClass="text-danger small" Display="Dynamic" ValidationGroup="PwdForm"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPwd" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword" ErrorMessage="Passwords do not match" CssClass="text-danger small" Display="Dynamic" ValidationGroup="PwdForm"></asp:CompareValidator>
                </div>

                <asp:Button ID="btnChangePassword" runat="server" Text="Update Password" class="btn btn-primary btn-lg w-100 fw-bold shadow-sm" ValidationGroup="PwdForm" OnClick="btnChangePassword_Click" />
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="AdminScripts" runat="server">
</asp:Content>
