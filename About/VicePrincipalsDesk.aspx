<%@ Page Title="Vice Principal's Desk" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="VicePrincipalsDesk.aspx.cs" Inherits="Chetancbsewebsite.About.VicePrincipalsDesk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">From the Vice Principal's Desk</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">About Us</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Vice Principal's Desk</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <!-- Vice Principal Profile Header Box -->
                <div class="card border-0 shadow-sm rounded-4 p-4 mb-4 border-start border-4 border-warning">
                    <div class="row align-items-center g-4">
                        <div class="col-md-3 text-center">
                            <div class="position-relative mx-auto" style="width: 125px; height: 125px;">
                                <asp:Image ID="imgVicePrincipalPhoto" runat="server" CssClass="rounded-circle border border-3 border-warning shadow object-fit-cover w-100 h-100" />
                                <div id="divVicePrincipalIcon" runat="server" class="bg-warning text-dark rounded-circle p-4 mx-auto d-flex align-items-center justify-content-center shadow w-100 h-100">
                                    <i class="bi bi-person-fill fs-1"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <h3 class="fw-bold text-primary mb-1">
                                <asp:Literal ID="litVicePrincipalName" runat="server">Mrs. Roopa Ramakantha Pai</asp:Literal>
                            </h3>
                            <div class="text-secondary fw-semibold mb-2">
                                <asp:Literal ID="litVicePrincipalDesignation" runat="server">Vice Principal & Academic Coordinator</asp:Literal>
                            </div>
                            <div class="d-flex flex-wrap gap-2 mb-2">
                                <asp:Literal ID="litVicePrincipalQualifications" runat="server">
                                    <span class="badge bg-light text-primary border">M.Phil.</span>
                                    <span class="badge bg-light text-primary border">M.A.</span>
                                    <span class="badge bg-light text-primary border">B.Ed.</span>
                                    <span class="badge bg-light text-primary border">DCA</span>
                                </asp:Literal>
                            </div>
                            <p class="small text-muted m-0">
                                <asp:Literal ID="litVicePrincipalExp" runat="server">18+ Years of Academic Leadership & Pedagogical Coordination</asp:Literal>
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Message Body -->
                <div class="bg-white p-4 rounded-4 shadow-sm">
                    <div class="quote-icon text-muted mb-2"><i class="bi bi-quote fs-1"></i></div>
                    
                    <h5 class="fw-bold text-primary mb-3 fst-italic">
                        "Discipline, exploration, and self-confidence form the cornerstone of true education."
                    </h5>

                    <p class="text-secondary">
                        Warm greetings to all students, parents, and members of the Chetan family.
                    </p>

                    <p class="text-secondary">
                        <strong>Chetan Public School</strong> emphasizes the all-round development of our students through an integrated balance of academic excellence and extra-curricular engagement that inculcates team spirit, joyful exploration, and the full development of each student's unique potential and confidence.
                    </p>

                    <p class="text-secondary">
                        Through the avenue of our website, I commend the Management of the <strong>Dyavappanavar - Valasang Educational & Academic Trust</strong> for being the visionary architects of our success. I also express my heartfelt appreciation to our entire dedicated teaching faculty and staff, whose relentless commitment and empathetic mentorship shape young minds day after day.
                    </p>

                    <h6 class="fw-bold text-primary mt-4 mb-2">
                        <i class="bi bi-shield-check text-warning me-2"></i> Core Pillars of Our Student Experience
                    </h6>

                    <ul class="text-secondary mb-4">
                        <li class="mb-2"><strong>Discipline as a Foundational Value:</strong> We give prime importance to making self-discipline a core personal value, encouraging students to develop accountability, focus, and empathy.</li>
                        <li class="mb-2"><strong>Well-Planned Academic Schedule:</strong> Our structured curriculum pacing and continuous assessments ensure steady progress and deep conceptual clarity from primary classes to Grade 10.</li>
                        <li class="mb-2"><strong>The House System:</strong> Through our four vibrant houses—<em>Ganga, Yamuna, Kaveri, and Godavari</em>—students imbibe leadership, camaraderie, healthy competition, and mutual respect.</li>
                        <li class="mb-2"><strong>Inter & Intra-School Arenas:</strong> Regular debates, science exhibitions, cultural festivals, and athletic tournaments provide platforms for every learner to shine.</li>
                    </ul>

                    <p class="text-secondary">
                        I deeply appreciate the parents of our students for their warm, positive involvement and proactive partnership. We continually accentuate the academic, cultural, and sporting dimensions throughout our pupils' time with us. The development of self-confidence and respect for self and others is nurtured on a daily basis across every classroom and playground.
                    </p>

                    <p class="text-secondary mb-4">
                        Together, let us continue to inspire our young learners to dream big, work with integrity, and achieve excellence in every stride.
                    </p>

                    <div class="border-top pt-3 text-end">
                        <h6 class="fw-bold text-primary mb-0"><asp:Literal ID="litSignOffName" runat="server">Mrs. Roopa Ramakantha Pai</asp:Literal></h6>
                        <small class="text-muted"><asp:Literal ID="litSignOffDesig" runat="server">Vice Principal & Academic Coordinator, Chetan Public School, Hubballi</asp:Literal></small>
                    </div>
                </div>

                <!-- Link to Principal's Desk -->
                <div class="card border-0 shadow-sm rounded-4 p-4 mt-4 bg-light border-start border-4 border-primary">
                    <div class="d-flex flex-wrap justify-content-between align-items-center gap-3">
                        <div class="d-flex align-items-center gap-3">
                            <div class="bg-primary text-white rounded-circle d-flex align-items-center justify-content-center shadow-sm flex-shrink-0" style="width: 55px; height: 55px;">
                                <i class="bi bi-person-badge fs-3"></i>
                            </div>
                            <div>
                                <h6 class="fw-bold text-primary mb-1">Message from the Principal's Desk</h6>
                                <p class="small text-muted mb-0">Read the overarching institutional philosophy from Dr. Jerushah R. Nadugaddi.</p>
                            </div>
                        </div>
                        <a href="~/About/PrincipalsDesk.aspx" runat="server" class="btn btn-outline-primary btn-sm px-3 fw-bold">
                            Visit Principal's Desk <i class="bi bi-arrow-right ms-1"></i>
                        </a>
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
                            <a href="~/About/VicePrincipalsDesk.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Vice Principal's Desk</a>
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
