<%@ Page Title="Vision & Mission" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="VisionMission.aspx.cs" Inherits="Chetancbsewebsite.About.VisionMission" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Vision, Mission & Core Values</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">About Us</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Vision & Mission</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <!-- Motto Card -->
                <div class="card border-0 bg-warning text-dark rounded-4 p-4 mb-5 shadow-sm">
                    <div class="d-flex align-items-center gap-3">
                        <div class="fs-1 text-primary"><i class="bi bi-compass-fill"></i></div>
                        <div>
                            <span class="small fw-bold text-uppercase text-dark-50">Our Official Motto</span>
                            <h3 class="fw-bold m-0 text-primary">"Moulding Minds to Excel"</h3>
                        </div>
                    </div>
                </div>

                <!-- Vision Section -->
                <div class="card border-0 shadow-sm rounded-4 mb-4 overflow-hidden">
                    <div class="card-header bg-primary text-white py-3">
                        <h4 class="fw-bold m-0"><i class="bi bi-eye-fill text-warning me-2"></i> Our Vision</h4>
                    </div>
                    <div class="card-body p-4">
                        <p class="lead text-primary fw-semibold mb-3">
                            To be a world-class educational benchmark that nurtures, inspires, and transforms young learners into visionary global citizens.
                        </p>
                        <ul class="list-unstyled">
                            <li class="d-flex align-items-start gap-3 mb-3">
                                <i class="bi bi-check-circle-fill text-warning fs-5 mt-1"></i>
                                <span><strong>Nurture & Enlighten:</strong> To nurture, inspire, enlighten, and mould young minds through dynamic, progressive pedagogy.</span>
                            </li>
                            <li class="d-flex align-items-start gap-3 mb-3">
                                <i class="bi bi-check-circle-fill text-warning fs-5 mt-1"></i>
                                <span><strong>Benchmark Performers:</strong> To train future citizens to be benchmark leaders in the fields of Science, Technology, Healthcare, Industry, and Governance.</span>
                            </li>
                            <li class="d-flex align-items-start gap-3 mb-3">
                                <i class="bi bi-check-circle-fill text-warning fs-5 mt-1"></i>
                                <span><strong>Innate Potential:</strong> To guide students in recognizing, enhancing, and utilizing their innate creative and analytical faculties to shape their own destinies.</span>
                            </li>
                            <li class="d-flex align-items-start gap-3 mb-3">
                                <i class="bi bi-check-circle-fill text-warning fs-5 mt-1"></i>
                                <span><strong>Value-Based Foundations:</strong> To impart value-based education that prepares students to shoulder their ethical and civic responsibilities with dignity.</span>
                            </li>
                            <li class="d-flex align-items-start gap-3">
                                <i class="bi bi-check-circle-fill text-warning fs-5 mt-1"></i>
                                <span><strong>Educational Innovation:</strong> To stand as an innovative, student-centric leader in holistic school education.</span>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- Mission Section -->
                <div class="card border-0 shadow-sm rounded-4 mb-4 overflow-hidden">
                    <div class="card-header bg-primary text-white py-3">
                        <h4 class="fw-bold m-0"><i class="bi bi-rocket-takeoff-fill text-warning me-2"></i> Our Mission</h4>
                    </div>
                    <div class="card-body p-4">
                        <ul class="list-unstyled">
                            <li class="d-flex align-items-start gap-3 mb-3">
                                <i class="bi bi-arrow-right-circle-fill text-primary fs-5 mt-1"></i>
                                <span><strong>Pursuit of Excellence:</strong> To strive incessantly to instruct, mentor, and inspire students to excel in an increasingly competitive world.</span>
                            </li>
                            <li class="d-flex align-items-start gap-3 mb-3">
                                <i class="bi bi-arrow-right-circle-fill text-primary fs-5 mt-1"></i>
                                <span><strong>Holistic Horizons:</strong> To provide every opportunity for students to blossom intellectually, physically, culturally, and emotionally.</span>
                            </li>
                            <li class="d-flex align-items-start gap-3 mb-3">
                                <i class="bi bi-arrow-right-circle-fill text-primary fs-5 mt-1"></i>
                                <span><strong>Cutting-Edge Facilities:</strong> To utilize state-of-the-art facilities, digital smart classes (Tata ClassEdge), and hands-on laboratory techniques to prepare students for career challenges.</span>
                            </li>
                            <li class="d-flex align-items-start gap-3">
                                <i class="bi bi-arrow-right-circle-fill text-primary fs-5 mt-1"></i>
                                <span><strong>Conducive Ambience:</strong> To maintain an inspiring, safe, and disciplined environment that fosters critical thinking and character building.</span>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- Core Values Grid -->
                <h4 class="fw-bold text-primary mt-4 mb-3">Our Core Values</h4>
                <div class="row g-3">
                    <div class="col-md-4">
                        <div class="feature-card text-center p-3">
                            <div class="feature-icon-box mx-auto mb-2"><i class="bi bi-shield-check"></i></div>
                            <h6 class="fw-bold text-primary">Discipline</h6>
                            <p class="small text-muted m-0">Discipline as a core virtue empowering self-control and focus.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature-card text-center p-3">
                            <div class="feature-icon-box mx-auto mb-2"><i class="bi bi-mortarboard"></i></div>
                            <h6 class="fw-bold text-primary">Scholastic Rigor</h6>
                            <p class="small text-muted m-0">Relentless pursuit of conceptual clarity and academic mastery.</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="feature-card text-center p-3">
                            <div class="feature-icon-box mx-auto mb-2"><i class="bi bi-heart-pulse"></i></div>
                            <h6 class="fw-bold text-primary">Social Integrity</h6>
                            <p class="small text-muted m-0">Respect for diversity, community service, and ethical living.</p>
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
                            <a href="~/About/VisionMission.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Vision & Mission</a>
                            <a href="~/About/PrincipalsDesk.aspx" runat="server" class="list-group-item list-group-item-action">Principal's Desk</a>
                            <a href="~/About/Management.aspx" runat="server" class="list-group-item list-group-item-action">Trust Management</a>
                            <a href="~/About/ManagingCommittee.aspx" runat="server" class="list-group-item list-group-item-action">Managing Committee (SMC)</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Admissions 2026-27</h5>
                    <p class="small text-white-50 mb-3">Join an academic institution that shapes character, intellect, and leadership.</p>
                    <a id="lnkSidebarAdmission" runat="server" target="_blank" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-box-arrow-up-right me-1"></i> Apply Online
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
