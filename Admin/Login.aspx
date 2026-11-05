<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Chetancbsewebsite.Admin.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Staff & Administrator Login - Chetan Public School</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" rel="stylesheet" />
    <link href="~/Assets/css/style.css" rel="stylesheet" />
</head>
<body class="bg-light d-flex align-items-center justify-content-center" style="min-height: 100vh;">
    <form id="loginForm" runat="server" class="w-100" style="max-width: 440px;">
        <div class="card shadow-lg border-0 rounded-4 overflow-hidden">
            <div class="card-header bg-primary text-white text-center p-4">
                <div class="bg-warning text-dark rounded-circle mx-auto mb-3 d-flex align-items-center justify-content-center shadow" style="width: 60px; height: 60px;">
                    <i class="bi bi-mortarboard-fill fs-3"></i>
                </div>
                <h4 class="fw-bold mb-1">Chetan Public School</h4>
                <p class="small text-white-50 m-0">Administrative Control Portal</p>
            </div>
            <div class="card-body p-4 p-md-5">
                <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="alert alert-danger alert-dismissible fade show" role="alert">
                    <i class="bi bi-exclamation-triangle-fill me-2"></i>
                    <asp:Literal ID="litErrorMsg" runat="server" />
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </asp:Panel>

                <div class="mb-3">
                    <label for="txtUsername" class="form-label fw-semibold">Username</label>
                    <div class="input-group">
                        <span class="input-group-text bg-white"><i class="bi bi-person text-secondary"></i></span>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username" Required="true" />
                    </div>
                </div>

                <div class="mb-4">
                    <label for="txtPassword" class="form-label fw-semibold">Password</label>
                    <div class="input-group">
                        <span class="input-group-text bg-white"><i class="bi bi-lock text-secondary"></i></span>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password" Required="true" />
                    </div>
                </div>

                <div class="d-grid mb-3">
                    <asp:Button ID="btnLogin" runat="server" Text="Sign In to Admin Panel" OnClick="btnLogin_Click" CssClass="btn btn-primary btn-lg fw-bold shadow-sm" />
                </div>

                <div class="text-center">
                    <a href="~/Default.aspx" runat="server" class="text-muted small text-decoration-none">
                        <i class="bi bi-arrow-left me-1"></i> Return to Public Website
                    </a>
                </div>
            </div>
            <div class="card-footer bg-white text-center py-3 border-0 small text-muted">
                CBSE Affiliation No: 831020 &bull; Hubballi
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
