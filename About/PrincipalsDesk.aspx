<%@ Page Title="Principal's Desk" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="PrincipalsDesk.aspx.cs" Inherits="Chetancbsewebsite.About.PrincipalsDesk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">From the Principal's Desk</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">About Us</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Principal's Desk</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <!-- Principal Profile Header Box -->
                <div class="card border-0 shadow-sm rounded-4 p-4 mb-4 border-start border-4 border-primary">
                    <div class="row align-items-center g-4">
                        <div class="col-md-3 text-center">
                            <div class="bg-primary text-white rounded-circle p-4 mx-auto d-flex align-items-center justify-content-center shadow" style="width: 120px; height: 120px;">
                                <i class="bi bi-person-badge-fill fs-1"></i>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <h3 class="fw-bold text-primary mb-1">Dr. Jerushah R. Nadugaddi</h3>
                            <div class="text-secondary fw-semibold mb-2">Principal & Member Secretary, SMC</div>
                            <div class="d-flex flex-wrap gap-2 mb-2">
                                <span class="badge bg-light text-primary border">Ph.D.</span>
                                <span class="badge bg-light text-primary border">M.Phil.</span>
                                <span class="badge bg-light text-primary border">M.Sc. (Botany/Biology)</span>
                                <span class="badge bg-light text-primary border">M.A.</span>
                                <span class="badge bg-light text-primary border">M.Ed.</span>
                            </div>
                            <p class="small text-muted m-0">24+ Years of Dedicated Service in CBSE & Higher Secondary Education</p>
                        </div>
                    </div>
                </div>

                <!-- Message Body -->
                <div class="bg-white p-4 rounded-4 shadow-sm">
                    <div class="quote-icon text-muted mb-2"><i class="bi bi-quote fs-1"></i></div>
                    
                    <h5 class="fw-bold text-primary mb-3 fst-italic">
                        "Education is not preparation for life; education is life itself."
                    </h5>

                    <p class="text-secondary">
                        Dear Parents, Students, and Well-Wishers,
                    </p>

                    <p class="text-secondary">
                        It gives me immense pleasure to welcome you to <strong>Chetan Public School, Hubballi</strong>. Under the aegis of the Dyavappanavar - Valasang Educational & Academic Trust, our campus is conceived as a vibrant sanctuary where curious minds are nurtured, challenged, and inspired to reach their highest potential.
                    </p>

                    <p class="text-secondary">
                        Today’s world demands far more than rote memorization. It requires young men and women of keen intellect, creative problem-solving capability, ethical conviction, and emotional resilience. At Chetan Public School, our pedagogy harmonizes rigorous academic study with holistic co-curricular opportunities:
                    </p>

                    <ul class="text-secondary mb-4">
                        <li class="mb-2"><strong>Value-Driven Discipline:</strong> We view discipline not as an external enforcement, but as an internal strength that gives our students focus, accountability, and empathy.</li>
                        <li class="mb-2"><strong>Smart Technology Integration:</strong> Every classroom is equipped with Tata ClassEdge smart digital whiteboards, converting abstract textbook theories into intuitive, 3D visual experiences.</li>
                        <li class="mb-2"><strong>Early Competitive Edge:</strong> With direct academic mentorship from Chetan Pre-University Science College, we offer integrated NTSE coaching and IIT-JEE/NEET foundational modules for high schoolers starting in Class 9.</li>
                        <li class="mb-2"><strong>Global Literature & Exploration:</strong> Our membership with the British Council Library and the American Library opens world-class knowledge frontiers for every learner.</li>
                    </ul>

                    <p class="text-secondary">
                        As parents, you entrust us with your most precious treasure—your children. We pledge to partner with you in their journey, fostering an atmosphere where they feel safe, respected, and driven to excel.
                    </p>

                    <p class="text-secondary mb-4">
                        I invite you to explore our campus, engage with our educators, and become an integral part of the vibrant Chetan family.
                    </p>

                    <div class="border-top pt-3 text-end">
                        <h6 class="fw-bold text-primary mb-0">Dr. Jerushah R. Nadugaddi</h6>
                        <small class="text-muted">Principal, Chetan Public School, Hubballi</small>
                    </div>
                </div>

                <!-- Vice Principal Box -->
                <div class="card border-0 shadow-sm rounded-4 p-4 mt-4 bg-light">
                    <div class="d-flex align-items-center gap-3">
                        <div class="bg-warning text-dark rounded-circle p-3 d-flex align-items-center justify-content-center shadow-sm" style="width: 70px; height: 70px;">
                            <i class="bi bi-person-fill fs-2"></i>
                        </div>
                        <div>
                            <h5 class="fw-bold text-primary mb-1">Mrs. Roopa Ramakantha Pai</h5>
                            <div class="small text-secondary fw-semibold">Vice Principal & Academic Coordinator</div>
                            <div class="small text-muted">Qualifications: M.Phil., M.A., B.Ed., DCA &bull; 18+ Years Experience</div>
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
                            <a href="~/About/PrincipalsDesk.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Principal's Desk</a>
                            <a href="~/About/Management.aspx" runat="server" class="list-group-item list-group-item-action">Trust Management</a>
                            <a href="~/About/ManagingCommittee.aspx" runat="server" class="list-group-item list-group-item-action">Managing Committee (SMC)</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Apply for Admission</h5>
                    <p class="small text-white-50 mb-3">Admissions are open for the 2026-27 academic session from Pre-Primary to Class X.</p>
                    <a id="lnkSidebarAdmission" runat="server" target="_blank" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-box-arrow-up-right me-1"></i> Online Admission Form
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
