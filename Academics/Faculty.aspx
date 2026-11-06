<%@ Page Title="Faculty & Staff Directory" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="Chetancbsewebsite.Academics.Faculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Faculty & Staff Directory</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Academics</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Faculty Directory</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
            <div>
                <span class="section-tag">Our Academic Pillars</span>
                <h2 class="fw-bold text-primary mb-0">Experienced & Dedicated Educators</h2>
            </div>
            <!-- Department Filter Dropdown / Buttons -->
            <div class="mt-3 mt-md-0 d-flex gap-2">
                <asp:DropDownList ID="ddlDepartmentFilter" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlDepartmentFilter_SelectedIndexChanged" CssClass="form-select fw-semibold border-primary">
                    <asp:ListItem Text="All Departments" Value="All" Selected="True" />
                    <asp:ListItem Text="Administration & Leadership" Value="Administration" />
                    <asp:ListItem Text="Science Faculty" Value="Science" />
                    <asp:ListItem Text="Mathematics Faculty" Value="Mathematics" />
                    <asp:ListItem Text="Languages (English, Hindi, Kannada)" Value="Languages" />
                    <asp:ListItem Text="Social Sciences" Value="Social Science" />
                    <asp:ListItem Text="Co-Curricular & Sports" Value="Co-Curricular & Sports" />
                    <asp:ListItem Text="Support & Wellness" Value="Support" />
                </asp:DropDownList>
            </div>
        </div>

        <p class="text-secondary mb-4">
            Chetan Public School takes immense pride in its cadre of highly qualified, compassionate, and experienced teachers who go beyond textbooks to inspire lifelong learning, curiosity, and ethical responsibility in every child.
        </p>

        <!-- Faculty Grid (Dynamic Binding) -->
        <div class="row g-4">
            <asp:Repeater ID="rptFaculty" runat="server">
                <ItemTemplate>
                    <div class="col-sm-6 col-lg-3">
                        <div class="faculty-card">
                            <div class="position-relative mx-auto mb-3" style="width: 100px; height: 100px;">
                                <%# !string.IsNullOrEmpty(Eval("PhotoUrl") as string) ? 
                                    "<img src='" + ResolveUrl(Eval("PhotoUrl").ToString()) + "' alt='" + Eval("FullName") + "' class='faculty-photo rounded-circle border border-2 border-warning shadow-sm object-fit-cover w-100 h-100 m-0' onerror=\"this.style.display='none';this.nextElementSibling.style.display='flex';\" />" : "" %>
                                <div class="bg-light rounded-circle align-items-center justify-content-center border border-2 border-warning shadow-sm w-100 h-100" style='<%# !string.IsNullOrEmpty(Eval("PhotoUrl") as string) ? "display:none;" : "display:flex;" %>'>
                                    <i class="bi bi-person-fill fs-1 text-primary"></i>
                                </div>
                            </div>
                            <h6 class="faculty-name"><%# Eval("FullName") %></h6>
                            <div class="faculty-designation"><%# Eval("Designation") %></div>
                            <div class="badge bg-light text-secondary border mb-2"><%# Eval("Department") %></div>
                            <div class="faculty-qual"><%# Eval("Qualifications") %></div>
                            <%# Eval("ExperienceYears") != DBNull.Value ? "<div class='small text-muted mt-2'><i class='bi bi-clock-history me-1 text-warning'></i> " + Eval("ExperienceYears") + "+ Years Exp.</div>" : "" %>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <asp:Panel ID="pnlNoFaculty" runat="server" Visible="false" CssClass="col-12 text-center py-5">
                <i class="bi bi-person-slash fs-1 text-muted d-block mb-2"></i>
                <h5 class="text-muted">No staff found for this department.</h5>
            </asp:Panel>
        </div>

        <!-- CBSE Teacher-to-Student Ratio Compliance Box -->
        <div class="card border-0 bg-light rounded-4 p-4 mt-5">
            <div class="row align-items-center g-3">
                <div class="col-md-8">
                    <h5 class="fw-bold text-primary mb-1"><i class="bi bi-check-circle-fill text-success me-2"></i> CBSE Affiliation Compliance</h5>
                    <p class="small text-muted mb-0">Our faculty members are appointed strictly in accordance with CBSE norms, possessing requisite NTT, PRT, TGT, and PGT qualifications with optimal teacher-to-student ratios across all wings.</p>
                </div>
                <div class="col-md-4 text-md-end">
                    <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-outline-primary btn-sm px-3">
                        <i class="bi bi-file-earmark-pdf me-1"></i> View Staff Disclosures
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
