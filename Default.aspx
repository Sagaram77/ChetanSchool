<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Chetancbsewebsite.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .carousel-item {
            min-height: 520px;
            background-color: #0b2545;
            background-position: center;
            background-size: cover;
        }
        .slide-bg-1 {
            background: linear-gradient(rgba(11, 37, 69, 0.85), rgba(11, 37, 69, 0.7)), url('https://images.unsplash.com/photo-1580582932707-520aed937b7b?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
        }
        .slide-bg-2 {
            background: linear-gradient(rgba(11, 37, 69, 0.85), rgba(11, 37, 69, 0.7)), url('https://images.unsplash.com/photo-1509062522246-3755977927d7?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
        }
        .slide-bg-3 {
            background: linear-gradient(rgba(11, 37, 69, 0.85), rgba(11, 37, 69, 0.7)), url('https://images.unsplash.com/photo-1577896851231-70ef18881754?auto=format&fit=crop&w=1600&q=80') center/cover no-repeat;
        }
    </style>
    <link href="~/Assets/css/modern-concepts.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Principal's Presentation Switcher Toolbar -->
    <div class="concept-preview-bar">
        <div class="container d-flex flex-wrap justify-content-between align-items-center gap-2">
            <div class="d-flex align-items-center gap-2 text-white">
                <i class="bi bi-palette-fill text-warning fs-5"></i>
                <span class="small fw-bold text-uppercase tracking-wider">Design Concept Review:</span>
            </div>
            <div class="d-flex flex-wrap gap-2">
                <a href="~/Default1.aspx" runat="server" class="concept-preview-pill">
                    <i class="bi bi-cpu-fill"></i> Concept 1: Smart Campus (Tech-Forward)
                </a>
                <a href="~/Default2.aspx" runat="server" class="concept-preview-pill">
                    <i class="bi bi-bank2"></i> Concept 2: Heritage & Distinction
                </a>
                <a href="~/Default3.aspx" runat="server" class="concept-preview-pill">
                    <i class="bi bi-stars"></i> Concept 3: Vibrant Student Life
                </a>
                <a href="~/Default.aspx" runat="server" class="concept-preview-pill active">
                    <i class="bi bi-window"></i> Classic Standard
                </a>
            </div>
        </div>
    </div>

    <!-- 1. Hero Carousel Section -->
    <section class="hero-slider-section">
        <div id="schoolHeroCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#schoolHeroCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#schoolHeroCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#schoolHeroCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <!-- Slide 1 -->
                <div class="carousel-item active slide-bg-1">
                    <div class="container h-100 d-flex align-items-center py-5">
                        <div class="hero-content text-start">
                            <span class="badge-pill"><i class="bi bi-mortarboard-fill me-1"></i> CBSE Affiliated: 831020</span>
                            <h1>Moulding Minds to Excel in a Changing World</h1>
                            <p>
                                Welcome to Chetan Public School, Akshay Nagar, Hubballi. Founded under the Dyavappanavar - Valasang Educational & Academic Trust, we deliver structured excellence from Kindergarten to Grade 10.
                            </p>
                            <div class="d-flex flex-wrap gap-3">
                                <a id="lnkHeroAdmission" runat="server" target="_blank" class="btn btn-warning btn-lg fw-bold text-dark px-4 py-3 shadow">
                                    <i class="bi bi-pencil-square me-2"></i> Apply for Admission 2026-27
                                </a>
                                <a href="~/About/AboutUs.aspx" runat="server" class="btn btn-outline-light btn-lg fw-semibold px-4 py-3">
                                    <i class="bi bi-compass me-2"></i> Explore Our Campus
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slide 2 -->
                <div class="carousel-item slide-bg-2">
                    <div class="container h-100 d-flex align-items-center py-5">
                        <div class="hero-content text-start">
                            <span class="badge-pill bg-warning text-dark"><i class="bi bi-award-fill me-1"></i> Academic Distinction</span>
                            <h1>Integrated IIT-JEE, NEET & NTSE Foundation</h1>
                            <p>
                                Giving our high schoolers a proven competitive edge early. Specialized foundation classes taught by expert faculty from Chetan Pre-University Science College.
                            </p>
                            <div class="d-flex flex-wrap gap-3">
                                <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="btn btn-warning btn-lg fw-bold text-dark px-4 py-3 shadow">
                                    <i class="bi bi-mortarboard me-2"></i> Foundation Programs
                                </a>
                                <a href="~/StudentLife/Achievements.aspx" runat="server" class="btn btn-outline-light btn-lg fw-semibold px-4 py-3">
                                    <i class="bi bi-trophy me-2"></i> State Rank Holders
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slide 3 -->
                <div class="carousel-item slide-bg-3">
                    <div class="container h-100 d-flex align-items-center py-5">
                        <div class="hero-content text-start">
                            <span class="badge-pill bg-info text-dark"><i class="bi bi-display me-1"></i> Digital Campus</span>
                            <h1>Tata ClassEdge Smart Classrooms & British Council Library</h1>
                            <p>
                                Experiential learning powered by interactive digital whiteboards, specialized Physics, Chemistry, Biology and Junior/Senior Math laboratories.
                            </p>
                            <div class="d-flex flex-wrap gap-3">
                                <a href="~/Campus/Facilities.aspx" runat="server" class="btn btn-warning btn-lg fw-bold text-dark px-4 py-3 shadow">
                                    <i class="bi bi-building me-2"></i> View Infrastructure
                                </a>
                                <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-outline-light btn-lg fw-semibold px-4 py-3">
                                    <i class="bi bi-file-earmark-check me-2"></i> CBSE Disclosures
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#schoolHeroCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#schoolHeroCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <!-- 2. Quick Stats Highlight Banner -->
    <div class="container">
        <div class="quick-stats-bar shadow">
            <div class="row g-3">
                <div class="col-6 col-md-3">
                    <div class="stat-item border-end">
                        <div class="stat-icon"><i class="bi bi-shield-check"></i></div>
                        <div class="stat-number">CBSE 831020</div>
                        <div class="stat-label">Affiliated Institution</div>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="stat-item border-end">
                        <div class="stat-icon"><i class="bi bi-award"></i></div>
                        <div class="stat-number">100%</div>
                        <div class="stat-label">Board Pass Track Record</div>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="stat-item border-end">
                        <div class="stat-icon"><i class="bi bi-calendar3"></i></div>
                        <div class="stat-number">15+ Years</div>
                        <div class="stat-label">Educational Legacy</div>
                    </div>
                </div>
                <div class="col-6 col-md-3">
                    <div class="stat-item">
                        <div class="stat-icon"><i class="bi bi-display"></i></div>
                        <div class="stat-number">100%</div>
                        <div class="stat-label">Tata ClassEdge Rooms</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 3. Welcome & Institutional Introduction -->
    <section class="py-5">
        <div class="container py-4">
            <div class="row align-items-center g-5">
                <div class="col-lg-6">
                    <span class="section-tag">About Chetan Public School</span>
                    <h2 class="section-heading text-start mb-4">Empowering Young Minds with Knowledge, Character & Culture</h2>
                    <p class="lead text-primary fw-semibold">
                        Managed by the prestigious Dyavappanavar - Valasang Educational & Academic Trust (DVEA Trust), Chetan Public School stands as a benchmark of scholastic discipline and balanced growth in Hubballi.
                    </p>
                    <p class="text-secondary">
                        Under our inspiring motto, <em>"Moulding Minds to Excel,"</em> we provide a rich curriculum where conventional values meet contemporary pedagogical technology. From interactive Tata ClassEdge smart boards to hands-on experimental laboratories, our learners develop keen intellectual curiosity and strong character.
                    </p>
                    <div class="row g-3 mt-2">
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-2">
                                <i class="bi bi-check-circle-fill text-success fs-5"></i>
                                <span class="fw-bold">Pre-Primary to Class X</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-2">
                                <i class="bi bi-check-circle-fill text-success fs-5"></i>
                                <span class="fw-bold">In-Sourced IIT/NTSE Faculty</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-2">
                                <i class="bi bi-check-circle-fill text-success fs-5"></i>
                                <span class="fw-bold">4-House System & Sports</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="d-flex align-items-center gap-2">
                                <i class="bi bi-check-circle-fill text-success fs-5"></i>
                                <span class="fw-bold">Safe GPS Bus Fleet & RO Water</span>
                            </div>
                        </div>
                    </div>
                    <div class="mt-4">
                        <a href="~/About/AboutUs.aspx" runat="server" class="btn btn-primary fw-semibold px-4 py-2 me-2">
                            Read Institutional Profile <i class="bi bi-arrow-right ms-1"></i>
                        </a>
                        <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-outline-secondary fw-semibold px-4 py-2">
                            CBSE Disclosure (App. IX)
                        </a>
                    </div>
                </div>

                <div class="col-lg-6">
                    <!-- Principal's Desk Highlight Card -->
                    <div class="principal-highlight-box position-relative">
                        <div class="quote-icon position-absolute top-0 end-0 m-4">
                            <i class="bi bi-quote"></i>
                        </div>
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <div class="bg-primary text-white rounded-circle p-3 d-flex align-items-center justify-content-center" style="width: 70px; height: 70px;">
                                <i class="bi bi-person-badge-fill fs-2"></i>
                            </div>
                            <div>
                                <h5 class="fw-bold m-0 text-primary">Dr. Jerushah R. Nadugaddi</h5>
                                <div class="small text-muted">Principal & Member Secretary</div>
                                <div class="badge bg-light text-primary border">Ph.D., M.Phil., M.Sc., M.A., M.Ed.</div>
                            </div>
                        </div>
                        <blockquote class="text-secondary fst-italic mb-3">
                            "Education is not preparation for life; education is life itself. At Chetan Public School, our purpose is to nurture, inspire, and enlighten our children to unlock their fullest innate potential while shouldering moral and societal responsibilities."
                        </blockquote>
                        <div class="border-top pt-3 d-flex justify-content-between align-items-center">
                            <span class="small text-muted fw-bold">From the Principal's Desk</span>
                            <a href="~/About/PrincipalsDesk.aspx" runat="server" class="btn btn-sm btn-link text-primary fw-bold text-decoration-none">
                                Full Message <i class="bi bi-chevron-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. Key Institutional Pillars -->
    <section class="py-5 bg-white border-top border-bottom">
        <div class="container py-4">
            <div class="section-title-wrap">
                <span class="section-tag">Distinctive Strengths</span>
                <h2 class="section-heading">Why Choose Chetan Public School?</h2>
                <p class="text-muted max-w-600 mx-auto">
                    A unique educational ecosystem designed to foster scholastic excellence, character discipline, and competitive preparedness.
                </p>
            </div>

            <div class="row g-4">
                <!-- Pillar 1 -->
                <div class="col-md-6 col-lg-4">
                    <div class="feature-card">
                        <div class="feature-icon-box">
                            <i class="bi bi-mortarboard"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">Integrated NTSE & IIT Coaching</h5>
                        <p class="text-secondary small">
                            Direct faculty mentoring from Chetan PU Science College. Foundation courses in Physics, Chemistry, and Advanced Mathematics beginning in Class 9.
                        </p>
                        <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="small fw-bold text-decoration-none">Learn More <i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>

                <!-- Pillar 2 -->
                <div class="col-md-6 col-lg-4">
                    <div class="feature-card">
                        <div class="feature-icon-box">
                            <i class="bi bi-display"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">Tata ClassEdge Smart Learning</h5>
                        <p class="text-secondary small">
                            Digitally empowered audio-visual learning mapped to CBSE lessons, helping students master abstract STEM principles with interactive 3D visualizations.
                        </p>
                        <a href="~/Campus/Facilities.aspx" runat="server" class="small fw-bold text-decoration-none">Explore Smart Classes <i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>

                <!-- Pillar 3 -->
                <div class="col-md-6 col-lg-4">
                    <div class="feature-card">
                        <div class="feature-icon-box">
                            <i class="bi bi-book-half"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">World-Class Library Access</h5>
                        <p class="text-secondary small">
                            Institutional member of the American Library and the British Council Library, granting students access to premier global literature and encyclopedias.
                        </p>
                        <a href="~/Campus/Library.aspx" runat="server" class="small fw-bold text-decoration-none">Library Resources <i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>

                <!-- Pillar 4 -->
                <div class="col-md-6 col-lg-4">
                    <div class="feature-card">
                        <div class="feature-icon-box">
                            <i class="bi bi-shield-fill-check"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">The 4-House Culture</h5>
                        <p class="text-secondary small">
                            Yellow, Blue, Green, and Red Houses stimulate healthy camaraderie, leadership responsibilities, sportsmanship, and cultural heritage celebrations.
                        </p>
                        <a href="~/StudentLife/HouseSystem.aspx" runat="server" class="small fw-bold text-decoration-none">Discover Houses <i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>

                <!-- Pillar 5 -->
                <div class="col-md-6 col-lg-4">
                    <div class="feature-card">
                        <div class="feature-icon-box">
                            <i class="bi bi-radioactive"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">Specialized STEM Laboratories</h5>
                        <p class="text-secondary small">
                            Individual student experimental benches across Physics, Chemistry, Biology, Junior & Senior Math labs, and a high-speed computer center.
                        </p>
                        <a href="~/Campus/Laboratories.aspx" runat="server" class="small fw-bold text-decoration-none">Lab Specifications <i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>

                <!-- Pillar 6 -->
                <div class="col-md-6 col-lg-4">
                    <div class="feature-card">
                        <div class="feature-icon-box">
                            <i class="bi bi-bus-front"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">Safe Transit & Clean Campus</h5>
                        <p class="text-secondary small">
                            GPS live-tracked bus fleet covering Hubballi & Dharwad routes, complete CCTV perimeter surveillance, and in-house commercial RO water plant.
                        </p>
                        <a href="~/Campus/Transport.aspx" runat="server" class="small fw-bold text-decoration-none">Transport Details <i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. Latest Announcements & Upcoming Events (Dynamic Data Binding) -->
    <section class="py-5">
        <div class="container py-4">
            <div class="d-flex flex-wrap justify-content-between align-items-end mb-4">
                <div>
                    <span class="section-tag">Campus Newsroom</span>
                    <h2 class="section-heading text-start mb-0">Announcements & Recent Events</h2>
                </div>
                <a href="~/News/NewsEvents.aspx" runat="server" class="btn btn-outline-primary fw-semibold mt-3 mt-md-0">
                    View All Circulars <i class="bi bi-arrow-right ms-1"></i>
                </a>
            </div>

            <div class="row g-4">
                <asp:Repeater ID="rptFeaturedNews" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4">
                            <div class="news-card">
                                <div class="position-relative">
                                    <div class="news-card-badge">
                                        <%# Eval("Category") %>
                                    </div>
                                    <div class="bg-secondary text-white d-flex align-items-center justify-content-center" style="height: 180px;">
                                        <i class="bi bi-newspaper fs-1 opacity-50"></i>
                                    </div>
                                </div>
                                <div class="news-card-body">
                                    <div class="news-date">
                                        <i class="bi bi-calendar3 me-1"></i>
                                        <%# Convert.ToDateTime(Eval("PublishedDate")).ToString("MMMM dd, yyyy") %>
                                    </div>
                                    <h5 class="news-title">
                                        <%# Eval("Title") %>
                                    </h5>
                                    <p class="text-secondary small flex-grow-1">
                                        <%# Eval("Summary") %>
                                    </p>
                                    <div class="mt-3 pt-3 border-top d-flex justify-content-between align-items-center">
                                        <a href='<%# ResolveUrl("~/News/NewsDetail.aspx?id=" + Eval("NewsId")) %>' class="btn btn-sm btn-link p-0 fw-bold text-primary text-decoration-none">
                                            Read Circular <i class="bi bi-chevron-right"></i>
                                        </a>
                                        <%# !string.IsNullOrEmpty(Eval("AttachmentUrl")?.ToString()) ? "<span class='badge bg-danger'><i class='bi bi-file-earmark-pdf me-1'></i>PDF</span>" : "" %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>

    <!-- 6. Call to Action: Admissions Banner -->
    <section class="py-5 bg-primary text-white position-relative overflow-hidden">
        <div class="container py-4 text-center position-relative" style="z-index: 2;">
            <span class="badge bg-warning text-dark px-3 py-2 fw-bold text-uppercase mb-3">Academic Session 2026-27</span>
            <h2 class="display-6 fw-bold text-white mb-3">Admissions Open from Pre-Primary to Class X</h2>
            <p class="lead text-white-50 max-w-700 mx-auto mb-4">
                Give your child the foundation of holistic CBSE education, balanced discipline, and competitive training. Access the online admission form package directly via Google Drive / ERP.
            </p>
            <div class="d-flex flex-wrap justify-content-center gap-3">
                <a id="lnkBottomAdmission" runat="server" target="_blank" class="btn btn-warning btn-lg fw-bold text-dark px-4 py-3 shadow">
                    <i class="bi bi-box-arrow-up-right me-2"></i> Apply Online (Google Drive / ERP)
                </a>
                <a href="~/Admissions/AdmissionProcedure.aspx" runat="server" class="btn btn-outline-light btn-lg fw-semibold px-4 py-3">
                    <i class="bi bi-info-circle me-2"></i> View Admission Criteria & Fees
                </a>
            </div>
        </div>
    </section>

    <!-- 7. Dynamic Important Notice Modal Popup with Photo Upload -->
    <asp:Panel ID="pnlNoticeModal" runat="server" Visible="false">
        <div class="modal fade" id="schoolNoticeModal" tabindex="-1" aria-labelledby="schoolNoticeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0 shadow-lg rounded-4 overflow-hidden">
                    <div class="modal-header bg-primary text-white border-0 py-3">
                        <h5 class="modal-title fw-bold" id="schoolNoticeModalLabel">
                            <i class="bi bi-megaphone-fill text-warning me-2"></i>
                            <asp:Literal ID="litModalTitle" runat="server" />
                        </h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-0 text-center">
                        <asp:Image ID="imgModalPhoto" runat="server" CssClass="img-fluid w-100" Style="max-height: 480px; object-fit: contain; background-color: #0b2545;" />
                        <div class="p-4 text-start">
                            <p class="text-secondary lead fs-6 mb-3">
                                <asp:Literal ID="litModalDescription" runat="server" />
                            </p>
                            <div class="d-flex justify-content-between align-items-center flex-wrap gap-2 pt-2 border-top">
                                <span class="badge bg-light text-muted border py-2 px-3">
                                    <i class="bi bi-info-circle me-1"></i> Chetan Public School Official Notice
                                </span>
                                <div>
                                    <asp:HyperLink ID="lnkModalAction" runat="server" Target="_blank" CssClass="btn btn-warning fw-bold text-dark px-4">
                                        <i class="bi bi-arrow-up-right-circle me-1"></i>
                                        <asp:Literal ID="litModalActionText" runat="server" Text="Learn More" />
                                    </asp:HyperLink>
                                    <button type="button" class="btn btn-outline-secondary px-3 ms-2" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
