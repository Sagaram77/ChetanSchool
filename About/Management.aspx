<%@ Page Title="Trust Management" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="Chetancbsewebsite.About.Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Trust Management & Governance</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">About Us</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Trust Management</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Governance & Vision</span>
                <h2 class="fw-bold text-primary mb-3">Dyavappanavar - Valasang Educational & Academic Trust</h2>

                <p class="lead text-primary fw-semibold">
                    The Dyavappanavar - Valasang Educational & Academic Trust (DVEA Trust) was established in Hubballi with the singular aim of creating premier centers of academic excellence in North Karnataka.
                </p>

                <p class="text-secondary">
                    Guided by senior educators, university professors, and scientists, the Trust operates multiple distinguished institutions including <strong>Chetan Pre-University Science College</strong> and <strong>Chetan Public School</strong>. The Trust's ethos is rooted in empowering students from all walks of life with disciplined knowledge, moral rectitude, and competitive brilliance.
                </p>

                <!-- Leadership Cards Grid -->
                <h4 class="fw-bold text-primary mt-5 mb-4">Trust Executive Board</h4>

                <div class="row g-4">
                    <!-- President -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="d-flex align-items-center gap-3 mb-3">
                                <div class="bg-primary text-white rounded-circle p-3 d-flex align-items-center justify-content-center" style="width: 65px; height: 65px;">
                                    <i class="bi bi-person-fill fs-2"></i>
                                </div>
                                <div>
                                    <h5 class="fw-bold text-primary mb-0">Prof. Gurushant V. Valasang</h5>
                                    <span class="badge bg-warning text-dark">President</span>
                                    <div class="small text-muted mt-1">M.Sc.</div>
                                </div>
                            </div>
                            <p class="small text-secondary mb-0">
                                An eminent academician with decades of visionary educational leadership. Championing value-based instruction and student empowerment throughout North Karnataka.
                            </p>
                        </div>
                    </div>

                    <!-- Chairman -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="d-flex align-items-center gap-3 mb-3">
                                <div class="bg-primary text-white rounded-circle p-3 d-flex align-items-center justify-content-center" style="width: 65px; height: 65px;">
                                    <i class="bi bi-person-fill fs-2"></i>
                                </div>
                                <div>
                                    <h5 class="fw-bold text-primary mb-0">Dr. Ramanagouda R. Patil</h5>
                                    <span class="badge bg-warning text-dark">Chairman</span>
                                    <div class="small text-muted mt-1">M.Sc., Ph.D.</div>
                                </div>
                            </div>
                            <p class="small text-secondary mb-0">
                                Renowned educator and researcher driving institutional strategy, scientific pedagogy, and high academic performance across all trust institutions.
                            </p>
                        </div>
                    </div>

                    <!-- Secretary -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="d-flex align-items-center gap-3 mb-3">
                                <div class="bg-primary text-white rounded-circle p-3 d-flex align-items-center justify-content-center" style="width: 65px; height: 65px;">
                                    <i class="bi bi-person-fill fs-2"></i>
                                </div>
                                <div>
                                    <h5 class="fw-bold text-primary mb-0">Prof. Mahesh H. Dyavappanavar</h5>
                                    <span class="badge bg-warning text-dark">Secretary</span>
                                    <div class="small text-muted mt-1">M.Sc.</div>
                                </div>
                            </div>
                            <p class="small text-secondary mb-0">
                                Leading operational excellence, campus infrastructure expansion, digital classroom modernization, and student welfare initiatives.
                            </p>
                        </div>
                    </div>

                    <!-- Academic Advisor -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="d-flex align-items-center gap-3 mb-3">
                                <div class="bg-primary text-white rounded-circle p-3 d-flex align-items-center justify-content-center" style="width: 65px; height: 65px;">
                                    <i class="bi bi-person-fill fs-2"></i>
                                </div>
                                <div>
                                    <h5 class="fw-bold text-primary mb-0">Dr. Channappa S. Hasabi</h5>
                                    <span class="badge bg-warning text-dark">Academic Advisor</span>
                                    <div class="small text-muted mt-1">M.A., Ph.D.</div>
                                </div>
                            </div>
                            <p class="small text-secondary mb-0">
                                Veteran scholar with over 30 years in curriculum oversight, pedagogical review, teacher development workshops, and ethical school leadership.
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sidebar Column -->
            <div class="col-lg-4">
                <div class="card border-0 shadow-sm rounded-4 mb-4">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h6 class="fw-bold text-primary m-0"><i class="bi bi-compass me-2"></i> In This Section</h6>
                    </div>
                    <div class="card-body p-3">
                        <div class="list-group list-group-flush">
                            <a href="~/About/AboutUs.aspx" runat="server" class="list-group-item list-group-item-action">About School</a>
                            <a href="~/About/VisionMission.aspx" runat="server" class="list-group-item list-group-item-action">Vision & Mission</a>
                            <a href="~/About/PrincipalsDesk.aspx" runat="server" class="list-group-item list-group-item-action">Principal's Desk</a>
                            <a href="~/About/Management.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Trust Management</a>
                            <a href="~/About/ManagingCommittee.aspx" runat="server" class="list-group-item list-group-item-action">Managing Committee (SMC)</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">School Managing Committee</h5>
                    <p class="small text-white-50 mb-3">View the complete regulatory list of School Managing Committee members constituted under CBSE norms.</p>
                    <a href="~/About/ManagingCommittee.aspx" runat="server" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-people-fill me-1"></i> View SMC Details
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
