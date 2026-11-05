<%@ Page Title="About Our School" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Chetancbsewebsite.About.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">About Chetan Public School</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">About Us</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">About School</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <!-- Main Content Column -->
            <div class="col-lg-8">
                <span class="section-tag">Institutional Profile</span>
                <h2 class="fw-bold text-primary mb-3">Moulding Minds to Excel in Every Walk of Life</h2>
                
                <p class="lead text-primary fw-semibold">
                    Chetan Public School, Hubballi is a premier co-educational CBSE affiliated institution (Affiliation No: 831020, School Code: 45914) managed by the renowned Dyavappanavar - Valasang Educational & Academic Trust.
                </p>

                <p class="text-secondary">
                    Established with the profound conviction that quality education is the bedrock of individual and societal transformation, Chetan Public School provides an intellectually stimulating, emotionally secure, and morally upright learning environment from Pre-Primary (Nursery, LKG, UKG) up to Secondary School (Class X).
                </p>

                <div class="card border-0 bg-light rounded-4 p-4 my-4 border-start border-4 border-warning shadow-sm">
                    <div class="d-flex align-items-center gap-3">
                        <div class="fs-1 text-warning"><i class="bi bi-quote"></i></div>
                        <div>
                            <h5 class="fw-bold text-primary m-0">Our Core Philosophy</h5>
                            <p class="fst-italic text-secondary m-0">"Moulding Minds to Excel — We believe education is not mere book learning, but the harmonious cultivation of mind, character, physical vitality, and human compassion."</p>
                        </div>
                    </div>
                </div>

                <h4 class="fw-bold text-primary mt-4 mb-3">Our Founding Trust</h4>
                <p class="text-secondary">
                    The <strong>Dyavappanavar - Valasang Educational & Academic Trust (DVEA Trust)</strong> was founded by visionary academicians and philanthropists who recognized the need for top-tier competitive education in North Karnataka. The Trust also operates the celebrated <em>Chetan Pre-University Science College</em>, renowned across the state for consistently producing Karnataka State Board rank holders, IIT-JEE qualifiers, and NEET toppers.
                </p>
                <p class="text-secondary">
                    Leveraging the Trust's exceptional academic depth, Chetan Public School integrates senior science and mathematics professors to mentor high school students early with specialized foundation modules, ensuring our learners possess unmatched conceptual clarity.
                </p>

                <h4 class="fw-bold text-primary mt-4 mb-3">Salient Institutional Features</h4>
                <div class="row g-3">
                    <div class="col-md-6">
                        <div class="d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success fs-5 mt-1"></i>
                            <div>
                                <strong class="text-dark">CBSE Affiliated Excellence</strong>
                                <p class="small text-muted m-0">Structured, holistic CBSE syllabus with continuous, comprehensive assessment.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success fs-5 mt-1"></i>
                            <div>
                                <strong class="text-dark">Tata ClassEdge Smart Learning</strong>
                                <p class="small text-muted m-0">100% digital classrooms with interactive audio-visual modules.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success fs-5 mt-1"></i>
                            <div>
                                <strong class="text-dark">British Council & American Library Link</strong>
                                <p class="small text-muted m-0">Institutional member providing world-class literature and encyclopedias.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success fs-5 mt-1"></i>
                            <div>
                                <strong class="text-dark">Integrated IIT / NTSE Foundation</strong>
                                <p class="small text-muted m-0">In-sourced faculty training starting from junior high school.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="mt-4 pt-3 border-top">
                    <a id="lnkApplyAdmission" runat="server" target="_blank" class="btn btn-warning fw-bold text-dark px-4 py-2 shadow-sm me-2">
                        <i class="bi bi-pencil-square me-1"></i> Apply for Admission
                    </a>
                    <a href="~/About/VisionMission.aspx" runat="server" class="btn btn-outline-primary px-4 py-2">
                        View Vision & Mission <i class="bi bi-arrow-right ms-1"></i>
                    </a>
                </div>
            </div>

            <!-- Sidebar Column -->
            <div class="col-lg-4">
                <!-- Quick Info Box -->
                <div class="card border-0 shadow-sm rounded-4 mb-4">
                    <div class="card-header bg-primary text-white py-3">
                        <h6 class="fw-bold m-0"><i class="bi bi-info-circle-fill text-warning me-2"></i> Institutional Snapshot</h6>
                    </div>
                    <div class="card-body p-4">
                        <ul class="list-unstyled mb-0">
                            <li class="mb-3 border-bottom pb-2">
                                <span class="small text-muted d-block">Institution Name</span>
                                <strong>Chetan Public School (CPS)</strong>
                            </li>
                            <li class="mb-3 border-bottom pb-2">
                                <span class="small text-muted d-block">Managing Trust</span>
                                <strong>Dyavappanavar - Valasang Trust</strong>
                            </li>
                            <li class="mb-3 border-bottom pb-2">
                                <span class="small text-muted d-block">CBSE Affiliation No.</span>
                                <strong class="text-primary">831020</strong>
                            </li>
                            <li class="mb-3 border-bottom pb-2">
                                <span class="small text-muted d-block">CBSE School Code</span>
                                <strong class="text-primary">45914</strong>
                            </li>
                            <li class="mb-3 border-bottom pb-2">
                                <span class="small text-muted d-block">Campus Location</span>
                                <strong>Akshay Nagar, Hubballi - 580030</strong>
                            </li>
                            <li class="mb-0">
                                <span class="small text-muted d-block">Medium of Instruction</span>
                                <strong>English</strong>
                            </li>
                        </ul>
                    </div>
                </div>

                <!-- Navigation Links -->
                <div class="card border-0 shadow-sm rounded-4">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h6 class="fw-bold text-primary m-0"><i class="bi bi-compass me-2"></i> In This Section</h6>
                    </div>
                    <div class="card-body p-3">
                        <div class="list-group list-group-flush">
                            <a href="~/About/AboutUs.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">About School</a>
                            <a href="~/About/VisionMission.aspx" runat="server" class="list-group-item list-group-item-action">Vision & Mission</a>
                            <a href="~/About/PrincipalsDesk.aspx" runat="server" class="list-group-item list-group-item-action">Principal's Desk</a>
                            <a href="~/About/Management.aspx" runat="server" class="list-group-item list-group-item-action">Trust Management</a>
                            <a href="~/About/ManagingCommittee.aspx" runat="server" class="list-group-item list-group-item-action">Managing Committee (SMC)</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
