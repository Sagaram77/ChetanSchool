<%@ Page Title="Heritage & Academic Distinction | Chetan Public School" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="Chetancbsewebsite.Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="~/Assets/css/modern-concepts.css" rel="stylesheet" />
    <style>
        /* Concept 2: Heritage & Academic Distinction Specifics */
        .heritage-hero-section {
            background: linear-gradient(rgba(11, 37, 69, 0.88), rgba(8, 26, 49, 0.92)), 
                        url('https://images.unsplash.com/photo-1541829070764-84a7d30dd3f3?auto=format&fit=crop&w=1920&q=85') center/cover no-repeat;
            color: #ffffff;
            padding: 90px 0 140px;
            position: relative;
            text-align: center;
        }

        .hero-crest-badge {
            width: 80px;
            height: 80px;
            background: rgba(245, 158, 11, 0.15);
            border: 2px solid #f59e0b;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 2.2rem;
            color: #f59e0b;
            margin-bottom: 20px;
            box-shadow: 0 0 25px rgba(245, 158, 11, 0.35);
        }

        .heritage-heading {
            font-family: Georgia, 'Times New Roman', serif;
            font-weight: 700;
            letter-spacing: -0.5px;
            line-height: 1.25;
        }

        .heritage-shelf-wrapper {
            margin-top: -70px;
            position: relative;
            z-index: 10;
        }

        .heritage-shelf-card {
            background: #ffffff;
            border-radius: 18px;
            padding: 32px 24px;
            box-shadow: 0 20px 45px rgba(11, 37, 69, 0.12);
            border-top: 5px solid #0b2545;
            transition: all 0.35s ease;
            height: 100%;
        }

        .heritage-shelf-card:hover {
            transform: translateY(-8px);
            border-top-color: #f59e0b;
            box-shadow: 0 28px 55px rgba(11, 37, 69, 0.18);
        }

        .house-shield-card {
            border-radius: 16px;
            padding: 24px;
            color: #ffffff;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .house-shield-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        .house-ganga { background: linear-gradient(135deg, #1e3a8a, #3b82f6); }
        .house-yamuna { background: linear-gradient(135deg, #b45309, #f59e0b); }
        .house-kaveri { background: linear-gradient(135deg, #047857, #10b981); }
        .house-godavari { background: linear-gradient(135deg, #991b1b, #ef4444); }

        .quote-executive-card {
            background: #fdfbf7;
            border-left: 6px solid #f59e0b;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- A. Principal's Presentation Switcher Toolbar -->
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
                <a href="~/Default2.aspx" runat="server" class="concept-preview-pill active">
                    <i class="bi bi-bank2"></i> Concept 2: Heritage & Distinction
                </a>
                <a href="~/Default3.aspx" runat="server" class="concept-preview-pill">
                    <i class="bi bi-stars"></i> Concept 3: Vibrant Student Life
                </a>
                <a href="~/Default.aspx" runat="server" class="concept-preview-pill">
                    <i class="bi bi-window"></i> Classic Standard
                </a>
            </div>
        </div>
    </div>

    <!-- B. Hero Section: Academic Heritage & Grandeur -->
    <section class="heritage-hero-section">
        <div class="container">
            <div class="hero-crest-badge animate-float-slow">
                <i class="bi bi-mortarboard-fill"></i>
            </div>
            <div>
                <span class="badge-smart badge-gold-glow mb-3">
                    <i class="bi bi-award-fill"></i> FOUNDED UNDER DVEA TRUST • CBSE AFFILIATION NO. 831020
                </span>
            </div>
            <h1 class="display-3 heritage-heading max-w-900 mx-auto mb-3">
                Moulding Minds to Excel — Where Academic Rigor Meets Timeless Values
            </h1>
            <p class="lead text-white-50 max-w-700 mx-auto mb-4 fs-5" style="line-height: 1.8;">
                Welcome to Chetan Public School, Akshay Nagar, Hubballi. For over 15 years, our faculty has fostered academic distinction, strong ethical foundations, and comprehensive CBSE leadership.
            </p>

            <div class="d-flex flex-wrap justify-content-center gap-3 mb-4">
                <a id="lnkHeroAdmission" runat="server" target="_blank" class="btn btn-warning btn-lg fw-bold text-dark px-4 py-3 btn-shimmer shadow-lg">
                    <i class="bi bi-pencil-square me-2"></i> Apply for Admission 2026-27 (ERP)
                </a>
                <a href="~/About/AboutUs.aspx" runat="server" class="btn btn-outline-light btn-lg px-4 py-3 fw-semibold">
                    <i class="bi bi-bank me-2"></i> Our Educational Legacy
                </a>
            </div>
        </div>
    </section>

    <!-- C. Overlapping Heritage Shelf: 3 Pillars of Distinction -->
    <div class="container heritage-shelf-wrapper">
        <div class="row g-4">
            <div class="col-md-4">
                <div class="heritage-shelf-card">
                    <div class="d-flex align-items-center gap-3 mb-3">
                        <div class="feature-icon-circle bg-primary bg-opacity-10 text-primary">
                            <i class="bi bi-shield-check"></i>
                        </div>
                        <div>
                            <h5 class="fw-bold text-primary mb-0">15+ Years Legacy</h5>
                            <small class="text-muted">DVEA Trust Heritage</small>
                        </div>
                    </div>
                    <p class="text-secondary small mb-3">
                        Founded by visionary educators Dr. V. M. Valasang and Shri S. P. Dyavappanavar, delivering proven educational governance across North Karnataka.
                    </p>
                    <a href="~/About/Management.aspx" runat="server" class="small fw-bold text-primary text-decoration-none">
                        Meet Trust Leadership <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="heritage-shelf-card">
                    <div class="d-flex align-items-center gap-3 mb-3">
                        <div class="feature-icon-circle bg-warning bg-opacity-10 text-warning">
                            <i class="bi bi-award-fill"></i>
                        </div>
                        <div>
                            <h5 class="fw-bold text-primary mb-0">100% Board Pass</h5>
                            <small class="text-muted">CBSE Class X Track Record</small>
                        </div>
                    </div>
                    <p class="text-secondary small mb-3">
                        Unwavering academic performance with over 80% first-class distinctions, regional merit scholars, and state-level competitive rank holders.
                    </p>
                    <a href="~/StudentLife/Achievements.aspx" runat="server" class="small fw-bold text-warning text-decoration-none">
                        View Board Honors <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="heritage-shelf-card">
                    <div class="d-flex align-items-center gap-3 mb-3">
                        <div class="feature-icon-circle bg-success bg-opacity-10 text-success">
                            <i class="bi bi-laptop"></i>
                        </div>
                        <div>
                            <h5 class="fw-bold text-primary mb-0">Integrated Foundation</h5>
                            <small class="text-muted">IIT-JEE, NEET & NTSE</small>
                        </div>
                    </div>
                    <p class="text-secondary small mb-3">
                        High school students benefit from collaborative science coaching delivered by senior faculty of Chetan Pre-University Science College.
                    </p>
                    <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="small fw-bold text-success text-decoration-none">
                        Explore Foundation <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- D. Executive Leadership Voice -->
    <section class="py-5 bg-white mt-4">
        <div class="container py-4">
            <div class="row align-items-center g-5">
                <div class="col-lg-5 text-center">
                    <div class="position-relative d-inline-block">
                        <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=600&q=80" 
                             alt="Principal Desk" class="img-fluid rounded-4 shadow-lg border border-3 border-warning" style="max-height: 380px; object-fit: cover;" />
                        <div class="position-absolute bottom-0 start-50 translate-middle-x bg-primary text-white py-2 px-4 rounded-pill shadow small fw-bold" style="white-space: nowrap;">
                            Smt. Savitri S. K. — Principal
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <span class="badge-smart badge-gold-glow mb-2">Principal's Address</span>
                    <h2 class="fw-bold text-primary display-6 mb-3">Nurturing Intellectual Depth & Moral Strength</h2>
                    <div class="quote-executive-card mb-4">
                        <p class="lead text-dark fst-italic mb-2">
                            "At Chetan Public School, our endeavor is not just to prepare children for exams, but to equip them for life. We instill in our learners courage, empathy, rigorous inquiry, and a passion to serve society."
                        </p>
                        <small class="text-muted fw-bold">— Smt. Savitri S. K., Principal, M.A., B.Ed.</small>
                    </div>
                    <div class="d-flex flex-wrap gap-3">
                        <a href="~/About/PrincipalsDesk.aspx" runat="server" class="btn btn-primary fw-semibold px-4 py-2">
                            Read Full Message <i class="bi bi-arrow-right ms-1"></i>
                        </a>
                        <a href="~/About/ManagingCommittee.aspx" runat="server" class="btn btn-outline-secondary px-4 py-2">
                            School Managing Committee
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- E. The Four CPS Houses: Character & Comradeship -->
    <section class="py-5 bg-light">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5">
                <span class="badge-smart badge-cyan-glow mb-2">Student Leadership</span>
                <h2 class="fw-bold text-primary display-6">The 4-House System</h2>
                <p class="text-muted">
                    Fostering healthy camaraderie, teamwork, debate, arts, and athletic excellence through our four revered houses.
                </p>
            </div>

            <div class="row g-4">
                <div class="col-sm-6 col-lg-3">
                    <div class="house-shield-card house-ganga h-100">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <span class="badge bg-white text-primary fw-bold">Blue Shield</span>
                            <i class="bi bi-shield-fill fs-3 text-white-50"></i>
                        </div>
                        <h4 class="fw-bold mb-1">Ganga House</h4>
                        <div class="small text-white-50 fst-italic mb-3">"Purity, Perseverance & Flow"</div>
                        <p class="small mb-0 text-white opacity-90">Emphasizing intellectual honesty, literary excellence, and academic perseverance.</p>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-3">
                    <div class="house-shield-card house-yamuna h-100">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <span class="badge bg-white text-dark fw-bold">Yellow Shield</span>
                            <i class="bi bi-shield-fill fs-3 text-white-50"></i>
                        </div>
                        <h4 class="fw-bold mb-1">Yamuna House</h4>
                        <div class="small text-white-50 fst-italic mb-3">"Radiance, Courage & Warmth"</div>
                        <p class="small mb-0 text-white opacity-90">Inspiring cultural expression, artistic innovation, and courageous team spirit.</p>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-3">
                    <div class="house-shield-card house-kaveri h-100">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <span class="badge bg-white text-success fw-bold">Green Shield</span>
                            <i class="bi bi-shield-fill fs-3 text-white-50"></i>
                        </div>
                        <h4 class="fw-bold mb-1">Kaveri House</h4>
                        <div class="small text-white-50 fst-italic mb-3">"Growth, Harmony & Resilience"</div>
                        <p class="small mb-0 text-white opacity-90">Championing environmental stewardship, social service, and athletic endurance.</p>
                    </div>
                </div>

                <div class="col-sm-6 col-lg-3">
                    <div class="house-shield-card house-godavari h-100">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <span class="badge bg-white text-danger fw-bold">Red Shield</span>
                            <i class="bi bi-shield-fill fs-3 text-white-50"></i>
                        </div>
                        <h4 class="fw-bold mb-1">Godavari House</h4>
                        <div class="small text-white-50 fst-italic mb-3">"Strength, Dignity & Victory"</div>
                        <p class="small mb-0 text-white opacity-90">Leading in track & field, discipline, martial arts, and strategic games.</p>
                    </div>
                </div>
            </div>

            <div class="text-center mt-4">
                <a href="~/StudentLife/HouseSystem.aspx" runat="server" class="btn btn-outline-primary fw-semibold px-4">
                    <i class="bi bi-trophy me-1"></i> House Activities & Leadership Points
                </a>
            </div>
        </div>
    </section>

    <!-- F. Official Circulars & CBSE Mandatory Disclosures -->
    <section class="py-5 bg-white">
        <div class="container py-4">
            <div class="row g-5">
                <!-- Left: Circulars Repeater -->
                <div class="col-lg-7">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <div>
                            <span class="badge-smart badge-gold-glow mb-1">Official Notices</span>
                            <h3 class="fw-bold text-primary mb-0">Circulars & Announcements</h3>
                        </div>
                        <a href="~/News/NewsEvents.aspx" runat="server" class="small fw-bold text-primary">View All</a>
                    </div>

                    <div class="list-group list-group-flush shadow-sm rounded-4 border">
                        <asp:Repeater ID="rptFeaturedNews" runat="server">
                            <ItemTemplate>
                                <div class="list-group-item p-3 list-group-item-action d-flex justify-content-between align-items-center gap-3">
                                    <div class="d-flex align-items-center gap-3">
                                        <div class="rounded-3 bg-light border text-center p-2" style="min-width: 60px;">
                                            <span class="d-block fw-bold fs-5 text-primary"><%# Eval("PublishedDate", "{0:dd}") %></span>
                                            <small class="text-muted text-uppercase" style="font-size: 0.7rem;"><%# Eval("PublishedDate", "{0:MMM}") %></small>
                                        </div>
                                        <div>
                                            <span class="badge bg-light text-primary border mb-1"><%# Eval("Category") %></span>
                                            <h6 class="fw-bold text-dark mb-1"><%# Eval("Title") %></h6>
                                            <small class="text-muted"><%# Eval("Summary") != DBNull.Value ? Eval("Summary") : "" %></small>
                                        </div>
                                    </div>
                                    <a href='<%# ResolveUrl("~/News/NewsDetail.aspx?id=" + Eval("NewsId")) %>' class="btn btn-sm btn-outline-primary">
                                        View
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

                <!-- Right: CBSE Disclosures Card -->
                <div class="col-lg-5">
                    <div class="card border-0 bg-light rounded-4 p-4 shadow-sm h-100">
                        <span class="badge-smart badge-cyan-glow mb-2">Statutory Transparency</span>
                        <h4 class="fw-bold text-primary mb-3">CBSE Mandatory Disclosure (Appendix IX)</h4>
                        <p class="text-muted small mb-4">
                            In strict compliance with Central Board of Secondary Education guidelines, all institutional affiliations, NOCs, building safety, fire certificates, and academic staff ratios are publicly published.
                        </p>
                        <div class="p-3 bg-white rounded-3 border mb-3">
                            <div class="small fw-bold text-primary mb-1"><i class="bi bi-file-earmark-check-fill text-success me-2"></i> Documents & Information</div>
                            <div class="small text-muted">Affiliation Extension, Society Registration, Land Certificate</div>
                        </div>
                        <div class="p-3 bg-white rounded-3 border mb-4">
                            <div class="small fw-bold text-primary mb-1"><i class="bi bi-mortarboard-fill text-warning me-2"></i> Results & Academics</div>
                            <div class="small text-muted">Fee Schedule, Academic Calendar, 3-Year Board Results</div>
                        </div>
                        <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-primary fw-bold w-100 py-3 shadow-sm">
                            <i class="bi bi-file-earmark-pdf me-2"></i> Access Mandatory Disclosures
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- G. Dynamic Admission Banner (ERP Link) -->
    <section class="py-5 text-white text-center" style="background: #0b2545;">
        <div class="container py-4">
            <span class="badge bg-warning text-dark px-3 py-2 fw-bold text-uppercase mb-3">Academic Session 2026-27</span>
            <h2 class="display-6 fw-bold text-white mb-3">Enroll Your Child in a Legacy of Academic Rigor</h2>
            <p class="lead text-white-50 max-w-700 mx-auto mb-4">
                Admissions open from Pre-Primary (Kindergarten) to Class X. Download the complete prospectus and apply through our integrated ERP portal.
            </p>
            <div class="d-flex flex-wrap justify-content-center gap-3">
                <a id="lnkBottomAdmission" runat="server" target="_blank" class="btn btn-warning btn-lg fw-bold text-dark px-5 py-3 btn-shimmer shadow-lg">
                    <i class="bi bi-box-arrow-up-right me-2"></i> Access Online Admission Form (ERP)
                </a>
                <a href="~/Admissions/FeeStructure.aspx" runat="server" class="btn btn-outline-light btn-lg fw-semibold px-4 py-3">
                    <i class="bi bi-cash-stack me-2"></i> View Fee Structure
                </a>
            </div>
        </div>
    </section>

    <!-- H. Dynamic Important Notice Modal with Photo Upload -->
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
                                    <i class="bi bi-info-circle me-1"></i> Chetan Public School Official Bulletin
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
