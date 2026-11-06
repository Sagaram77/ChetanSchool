<%@ Page Title="Heritage & Academic Distinction | Chetan Public School" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="Chetancbsewebsite.Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Google Fonts: Playfair Display (Regal Serif) & Outfit (Modern Clean Sans) -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&family=Playfair+Display:ital,wght@0,600;0,700;0,800;1,600;1,700&display=swap" rel="stylesheet" />
    
    <!-- AOS (Animate On Scroll) -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />

    <style>
        /* ==========================================================================
           CONCEPT 2: THE ROYAL HERITAGE & IVY-LEAGUE ACADEMIC SANCTUM
           Oxford / Ivy-League Prestige, Deep Navy Blue, Warm Regal Gold & Clean Alabaster
           ========================================================================== */
        
        :root {
            --c2-navy: #081735;
            --c2-navy-deep: #050f24;
            --c2-gold: #d4af37;
            --c2-gold-light: #f3e5ab;
            --c2-gold-dark: #997926;
            --c2-cream: #fcfbf7;
            --c2-text: #1e293b;
        }

        body {
            font-family: 'Outfit', sans-serif;
            background-color: var(--c2-cream);
            color: var(--c2-text);
            overflow-x: hidden;
        }

        .c2-font-serif {
            font-family: 'Playfair Display', Georgia, serif;
        }

        /* ---------------- Concept Switcher Toolbar ---------------- */
        .c2-switcher-bar {
            background: #081735;
            border-bottom: 2px solid var(--c2-gold);
            padding: 10px 16px;
            position: sticky;
            top: 0;
            z-index: 1020;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.25);
        }

        .c2-switcher-btn {
            padding: 6px 14px;
            font-size: 0.82rem;
            font-weight: 600;
            border-radius: 4px;
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            border: 1px solid rgba(212, 175, 55, 0.3);
            color: #e2e8f0;
        }

        .c2-switcher-btn:hover {
            color: #ffffff;
            border-color: var(--c2-gold);
            background: rgba(212, 175, 55, 0.15);
        }

        .c2-switcher-btn.active {
            background: linear-gradient(135deg, #d4af37 0%, #aa8012 100%);
            color: #081735;
            font-weight: 700;
            border-color: var(--c2-gold);
            box-shadow: 0 2px 10px rgba(212, 175, 55, 0.5);
        }

        /* ---------------- Regal Parallax Hero ---------------- */
        .c2-hero {
            background: linear-gradient(rgba(8, 23, 53, 0.88), rgba(5, 15, 36, 0.94)),
                        url('https://images.unsplash.com/photo-1541829070764-84a7d30dd3f3?auto=format&fit=crop&w=1920&q=85') center/cover no-repeat;
            color: #ffffff;
            padding: 100px 0 160px;
            position: relative;
            text-align: center;
        }

        .c2-crest-badge {
            width: 85px;
            height: 85px;
            border: 2px solid var(--c2-gold);
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            font-size: 2.2rem;
            color: var(--c2-gold);
            background: rgba(212, 175, 55, 0.1);
            box-shadow: 0 0 30px rgba(212, 175, 55, 0.3);
            margin-bottom: 24px;
        }

        .c2-ribbon-tag {
            display: inline-block;
            font-size: 0.82rem;
            font-weight: 700;
            letter-spacing: 2px;
            color: var(--c2-gold-light);
            text-transform: uppercase;
            border-top: 1px solid rgba(212, 175, 55, 0.4);
            border-bottom: 1px solid rgba(212, 175, 55, 0.4);
            padding: 4px 18px;
            margin-bottom: 20px;
        }

        .c2-hero-title {
            font-size: 3.6rem;
            font-weight: 700;
            line-height: 1.2;
            color: #ffffff;
            margin-bottom: 24px;
        }

        @media (max-width: 991px) {
            .c2-hero-title { font-size: 2.4rem; }
        }

        .c2-btn-gold {
            background: linear-gradient(135deg, #d4af37 0%, #aa8012 100%);
            color: #081735 !important;
            font-weight: 700;
            padding: 16px 36px;
            border-radius: 4px;
            border: 1px solid #d4af37;
            box-shadow: 0 4px 20px rgba(212, 175, 55, 0.35);
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-size: 0.9rem;
        }

        .c2-btn-gold:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 30px rgba(212, 175, 55, 0.6);
            background: #f3e5ab;
        }

        .c2-btn-outline {
            border: 1px solid rgba(255, 255, 255, 0.3);
            color: #ffffff !important;
            font-weight: 600;
            padding: 16px 32px;
            border-radius: 4px;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 10px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            font-size: 0.9rem;
        }

        .c2-btn-outline:hover {
            border-color: var(--c2-gold);
            color: var(--c2-gold) !important;
            background: rgba(212, 175, 55, 0.1);
        }

        /* ---------------- Overlapping Stately Shelf ---------------- */
        .c2-shelf-wrap {
            margin-top: -90px;
            position: relative;
            z-index: 10;
        }

        .c2-shelf-card {
            background: #ffffff;
            border-radius: 8px;
            padding: 36px 28px;
            box-shadow: 0 15px 40px rgba(8, 23, 53, 0.08);
            border: 1px solid #e2e8f0;
            border-top: 4px solid var(--c2-navy);
            transition: all 0.35s ease;
            height: 100%;
        }

        .c2-shelf-card:hover {
            transform: translateY(-8px);
            border-top-color: var(--c2-gold);
            box-shadow: 0 25px 50px rgba(8, 23, 53, 0.15);
        }

        .c2-shelf-icon {
            font-size: 2.2rem;
            color: var(--c2-gold);
            margin-bottom: 16px;
        }

        /* ---------------- Executive Leadership Voice ---------------- */
        .c2-leader-card {
            background: #ffffff;
            border-radius: 12px;
            padding: 48px;
            box-shadow: 0 15px 45px rgba(8, 23, 53, 0.06);
            border: 1px solid #e2e8f0;
            position: relative;
        }

        .c2-quote-mark {
            font-family: 'Playfair Display', serif;
            font-size: 6rem;
            line-height: 0;
            color: rgba(212, 175, 55, 0.2);
            position: absolute;
            top: 40px;
            left: 30px;
        }

        /* ---------------- The 4 Grand Houses (Heraldic Showcase) ---------------- */
        .c2-house-card {
            border-radius: 8px;
            overflow: hidden;
            border: 1px solid #e2e8f0;
            background: #ffffff;
            transition: all 0.35s ease;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.04);
            height: 100%;
        }

        .c2-house-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }

        .c2-house-banner {
            padding: 24px;
            color: #ffffff;
            text-align: center;
            position: relative;
        }

        .c2-banner-ganga { background: linear-gradient(135deg, #1e3a8a, #0b2545); }
        .c2-banner-yamuna { background: linear-gradient(135deg, #b45309, #78350f); }
        .c2-banner-kaveri { background: linear-gradient(135deg, #065f46, #022c22); }
        .c2-banner-godavari { background: linear-gradient(135deg, #991b1b, #450a0a); }

        .c2-house-body {
            padding: 24px;
        }

        /* ---------------- Formal Gazette (Notices) ---------------- */
        .c2-gazette-item {
            background: #ffffff;
            border: 1px solid #e2e8f0;
            border-left: 4px solid var(--c2-gold);
            border-radius: 4px;
            padding: 20px 24px;
            margin-bottom: 14px;
            transition: all 0.3s ease;
        }

        .c2-gazette-item:hover {
            transform: translateX(6px);
            box-shadow: 0 10px 25px rgba(8, 23, 53, 0.08);
            border-left-color: var(--c2-navy);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Concept Switcher Bar (Sticky Top) -->
    <div class="c2-switcher-bar">
        <div class="container d-flex flex-wrap justify-content-between align-items-center gap-2">
            <div class="d-flex align-items-center gap-2">
                <span class="badge bg-warning text-dark text-uppercase px-2 py-1" style="font-size: 0.7rem; font-weight: 700; letter-spacing: 1px;">Prestigious Style</span>
                <span class="small fw-semibold text-white">Concept 2: Heritage, Academic Rigor & Character</span>
            </div>
            <div class="d-flex flex-wrap gap-2">
                <a href="~/Default1.aspx" runat="server" class="c2-switcher-btn">
                    <i class="bi bi-cpu text-info"></i> Concept 1: Smart Campus
                </a>
                <a href="~/Default2.aspx" runat="server" class="c2-switcher-btn active">
                    <i class="bi bi-award-fill text-warning"></i> Concept 2: Royal Heritage
                </a>
                <a href="~/Default3.aspx" runat="server" class="c2-switcher-btn">
                    <i class="bi bi-balloon text-danger"></i> Concept 3: Vibrant & Child-Centric
                </a>
                <a href="~/Default.aspx" runat="server" class="c2-switcher-btn">
                    <i class="bi bi-layout-text-sidebar"></i> Classic Standard
                </a>
            </div>
        </div>
    </div>

    <!-- 1. HERO SECTION: Royal Heritage & Academic Distinction -->
    <section class="c2-hero">
        <div class="container">
            <div class="c2-crest-badge" data-aos="zoom-in" style="background: #ffffff; padding: 4px; box-shadow: 0 0 25px rgba(212, 175, 55, 0.4);">
                <img src="Assets/images/logo.png" alt="Chetan Public School Crest" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%;" />
            </div>
            <div>
                <span class="c2-ribbon-tag">
                    DYAVAPPANAVAR - VALASANG TRUST | CBSE AFFILIATION NO. 831020
                </span>
            </div>
            <h1 class="c2-hero-title c2-font-serif max-w-900 mx-auto" data-aos="fade-up">
                Moulding Minds to Excel with Discipline, Intellect & Cultural Grace
            </h1>
            <p class="lead text-light opacity-90 max-w-700 mx-auto mb-4" style="line-height: 1.8;" data-aos="fade-up" data-aos-delay="100">
                Welcome to Chetan Public School, Akshay Nagar, Hubballi. For over 15 years, our mentors have upheld the highest standards of scholastic integrity, 100% board distinction, and grounded ethical leadership.
            </p>

            <div class="d-flex flex-wrap justify-content-center gap-3 mb-5" data-aos="fade-up" data-aos-delay="200">
                <a id="lnkHeroAdmission" runat="server" target="_blank" class="c2-btn-gold">
                    <i class="bi bi-pencil-square"></i>
                    <span>Apply for Admission 2026-27 (ERP)</span>
                </a>
                <a href="~/About/AboutUs.aspx" runat="server" class="c2-btn-outline">
                    <i class="bi bi-bank"></i>
                    <span>Our Educational Heritage</span>
                </a>
            </div>
        </div>
    </section>

    <!-- 2. OVERLAPPING 3-MANOR SHELF -->
    <div class="container c2-shelf-wrap">
        <div class="row g-4">
            <!-- Shelf Card 1 -->
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                <div class="c2-shelf-card">
                    <div class="c2-shelf-icon">
                        <i class="bi bi-shield-check"></i>
                    </div>
                    <h4 class="fw-bold text-dark mb-2 c2-font-serif">15+ Years Trust Legacy</h4>
                    <p class="text-secondary small mb-3">
                        Founded by esteemed educationists Dr. V. M. Valasang and Shri S. P. Dyavappanavar, delivering disciplined governance and scholastic excellence.
                    </p>
                    <a href="~/About/Management.aspx" runat="server" class="small fw-bold text-decoration-none" style="color: var(--c2-gold-dark);">
                        Meet Trust Leadership <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>

            <!-- Shelf Card 2 -->
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                <div class="c2-shelf-card">
                    <div class="c2-shelf-icon">
                        <i class="bi bi-award-fill"></i>
                    </div>
                    <h4 class="fw-bold text-dark mb-2 c2-font-serif">100% Board Pass Record</h4>
                    <p class="text-secondary small mb-3">
                        Uninterrupted track record of CBSE Class X board first-class results, merit scholars, and state competitive examination qualifiers.
                    </p>
                    <a href="~/StudentLife/Achievements.aspx" runat="server" class="small fw-bold text-decoration-none" style="color: var(--c2-gold-dark);">
                        View Board Honors <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>

            <!-- Shelf Card 3 -->
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                <div class="c2-shelf-card">
                    <div class="c2-shelf-icon">
                        <i class="bi bi-mortarboard"></i>
                    </div>
                    <h4 class="fw-bold text-dark mb-2 c2-font-serif">Integrated PU Foundation</h4>
                    <p class="text-secondary small mb-3">
                        Seamlessly aligned with senior professors from Chetan Pre-University Science College for specialized NTSE, Olympiad & IIT/NEET preparation.
                    </p>
                    <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="small fw-bold text-decoration-none" style="color: var(--c2-gold-dark);">
                        Foundation Curriculum <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- 3. LEADERSHIP VOICE: Principal's High-Table Dialogue -->
    <section class="py-5 mt-4">
        <div class="container py-4">
            <div class="c2-leader-card" data-aos="fade-up">
                <div class="c2-quote-mark">“</div>
                <div class="row align-items-center g-5 position-relative" style="z-index: 2;">
                    <div class="col-lg-4 text-center">
                        <img src="https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?auto=format&fit=crop&w=600&q=80" 
                             alt="Principal Desk" class="img-fluid rounded shadow" style="max-height: 340px; object-fit: cover; border: 3px solid var(--c2-gold);" />
                        <div class="mt-3">
                            <h5 class="fw-bold text-dark mb-0 c2-font-serif">Smt. Savitri S. K.</h5>
                            <small class="text-muted fw-semibold">Principal, M.A., B.Ed.</small>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <span class="text-uppercase fw-bold small text-muted letter-spacing-1">From the Principal's Desk</span>
                        <h2 class="display-6 fw-bold text-dark c2-font-serif mt-1 mb-3">
                            "Cultivating Intellectual Depth, Moral Fortitude & Global Readiness"
                        </h2>
                        <p class="lead text-secondary fst-italic mb-4" style="line-height: 1.8;">
                            Education is not simply the accumulation of factual knowledge, but the ignition of discernment, civic empathy, and moral grit. At Chetan Public School, our learners are guided to question deeply, reason logically, and stand firm in personal honor.
                        </p>
                        <div class="d-flex flex-wrap gap-3">
                            <a href="~/About/PrincipalsDesk.aspx" runat="server" class="btn btn-dark px-4 py-2" style="background: var(--c2-navy);">
                                Read Principal's Full Message <i class="bi bi-arrow-right ms-1"></i>
                            </a>
                            <a href="~/About/ManagingCommittee.aspx" runat="server" class="btn btn-outline-secondary px-4 py-2">
                                School Managing Committee (SMC)
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. THE 4 GRAND HOUSES (Heraldic Showcase) -->
    <section class="py-5" style="background: #f1f5f9;">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5" data-aos="fade-up">
                <span class="text-uppercase fw-bold small text-muted">Leadership & Character</span>
                <h2 class="display-6 fw-bold text-dark c2-font-serif">The Four Revered Houses</h2>
                <p class="text-muted">
                    Named after sacred Indian rivers, our house system inspires healthy brotherhood, debates, athletic championships, and social duty.
                </p>
            </div>

            <div class="row g-4">
                <!-- Ganga -->
                <div class="col-sm-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="c2-house-card">
                        <div class="c2-house-banner c2-banner-ganga">
                            <i class="bi bi-shield-fill fs-1 d-block mb-2"></i>
                            <h4 class="fw-bold mb-0 c2-font-serif">Ganga House</h4>
                            <small class="text-white-50 fst-italic">"Purity & Perseverance"</small>
                        </div>
                        <div class="c2-house-body">
                            <p class="small text-secondary mb-3">
                                Champions in literary discourse, scholarly persistence, and ethical rectitude.
                            </p>
                            <span class="badge bg-light text-primary border">Blue Shield</span>
                        </div>
                    </div>
                </div>

                <!-- Yamuna -->
                <div class="col-sm-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="c2-house-card">
                        <div class="c2-house-banner c2-banner-yamuna">
                            <i class="bi bi-shield-fill fs-1 d-block mb-2"></i>
                            <h4 class="fw-bold mb-0 c2-font-serif">Yamuna House</h4>
                            <small class="text-white-50 fst-italic">"Radiance & Courage"</small>
                        </div>
                        <div class="c2-house-body">
                            <p class="small text-secondary mb-3">
                                Fostering dramatic expression, performing arts, and fearless team leadership.
                            </p>
                            <span class="badge bg-light text-warning border">Yellow Shield</span>
                        </div>
                    </div>
                </div>

                <!-- Kaveri -->
                <div class="col-sm-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="c2-house-card">
                        <div class="c2-house-banner c2-banner-kaveri">
                            <i class="bi bi-shield-fill fs-1 d-block mb-2"></i>
                            <h4 class="fw-bold mb-0 c2-font-serif">Kaveri House</h4>
                            <small class="text-white-50 fst-italic">"Harmony & Resilience"</small>
                        </div>
                        <div class="c2-house-body">
                            <p class="small text-secondary mb-3">
                                Dedicated to environmental sustainability, community service, and endurance athletics.
                            </p>
                            <span class="badge bg-light text-success border">Green Shield</span>
                        </div>
                    </div>
                </div>

                <!-- Godavari -->
                <div class="col-sm-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="c2-house-card">
                        <div class="c2-house-banner c2-banner-godavari">
                            <i class="bi bi-shield-fill fs-1 d-block mb-2"></i>
                            <h4 class="fw-bold mb-0 c2-font-serif">Godavari House</h4>
                            <small class="text-white-50 fst-italic">"Strength & Dignity"</small>
                        </div>
                        <div class="c2-house-body">
                            <p class="small text-secondary mb-3">
                                Front-runners in martial discipline, track and field, and strategic athletic victories.
                            </p>
                            <span class="badge bg-light text-danger border">Red Shield</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. GAZETTE & CBSE DISCLOSURES -->
    <section class="py-5">
        <div class="container py-4">
            <div class="row g-5">
                <!-- Left: Circulars Gazette -->
                <div class="col-lg-7" data-aos="fade-right">
                    <div class="d-flex justify-content-between align-items-center mb-4">
                        <div>
                            <span class="text-uppercase fw-bold small text-muted">Institutional Gazette</span>
                            <h3 class="fw-bold text-dark c2-font-serif mb-0">Official Circulars & Notices</h3>
                        </div>
                        <a href="~/News/NewsEvents.aspx" runat="server" class="small fw-bold text-decoration-none" style="color: var(--c2-gold-dark);">
                            Archive <i class="bi bi-chevron-right"></i>
                        </a>
                    </div>

                    <asp:Repeater ID="rptFeaturedNews" runat="server">
                        <ItemTemplate>
                            <div class="c2-gazette-item d-flex justify-content-between align-items-center gap-3">
                                <div>
                                    <div class="d-flex align-items-center gap-2 mb-1">
                                        <span class="badge bg-light text-dark border small"><%# Eval("Category") %></span>
                                        <small class="text-muted"><%# Eval("PublishedDate", "{0:dd MMMM yyyy}") %></small>
                                    </div>
                                    <h5 class="fw-bold text-dark mb-1 c2-font-serif"><%# Eval("Title") %></h5>
                                    <p class="small text-muted mb-0"><%# Eval("Summary") != DBNull.Value ? Eval("Summary") : "" %></p>
                                </div>
                                <a href='<%# ResolveUrl("~/News/NewsDetail.aspx?id=" + Eval("NewsId")) %>' class="btn btn-sm btn-outline-dark">
                                    Read
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <!-- Right: CBSE Appendix IX Mandatory Disclosure -->
                <div class="col-lg-5" data-aos="fade-left">
                    <div class="card border-0 p-4 shadow-sm rounded-3" style="background: #ffffff; border: 1px solid #e2e8f0 !important;">
                        <span class="text-uppercase fw-bold small" style="color: var(--c2-gold-dark);">CBSE Compliance</span>
                        <h4 class="fw-bold text-dark c2-font-serif mb-3">Mandatory Public Disclosure (Appendix IX)</h4>
                        <p class="small text-muted mb-4">
                            In conformity with CBSE affiliation mandates, our statutory affidavits, NOCs, teacher ratios, building stability, and fee details are accessible to all parents.
                        </p>
                        <div class="p-3 bg-light rounded mb-3 border">
                            <div class="fw-bold small text-dark"><i class="bi bi-file-earmark-check text-success me-2"></i> Section A: Documents & Information</div>
                            <small class="text-muted">Society deed, affiliation grant, land lease certificate.</small>
                        </div>
                        <div class="p-3 bg-light rounded mb-4 border">
                            <div class="fw-bold small text-dark"><i class="bi bi-award text-warning me-2"></i> Section B: Results & Academics</div>
                            <small class="text-muted">Annual calendar, 3-year board statistics, booklists.</small>
                        </div>
                        <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-dark w-100 py-3 fw-bold" style="background: var(--c2-navy);">
                            <i class="bi bi-file-earmark-pdf me-1"></i> Access Statutory Disclosures
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 6. FORMAL ADMISSION INVITATION BANNER (Dynamic ERP / Drive Link) -->
    <section class="py-5 text-center text-white" style="background: var(--c2-navy);">
        <div class="container py-4">
            <span class="badge px-3 py-2 text-uppercase mb-3" style="background: var(--c2-gold); color: #081735; font-weight: 700;">
                Academic Session 2026-27
            </span>
            <h2 class="display-6 fw-bold c2-font-serif mb-3">Join a Community of Scholastic Excellence</h2>
            <p class="lead text-light opacity-75 max-w-700 mx-auto mb-4">
                Enrollment is currently accepted for Kindergarten through Class X. Access digital applications directly through our ERP system.
            </p>
            <div class="d-flex flex-wrap justify-content-center gap-3">
                <a id="lnkBottomAdmission" runat="server" target="_blank" class="c2-btn-gold px-5 py-3">
                    <i class="bi bi-box-arrow-up-right"></i>
                    <span>Apply via ERP / Google Drive</span>
                </a>
                <a href="~/Admissions/FeeStructure.aspx" runat="server" class="c2-btn-outline px-4 py-3">
                    <i class="bi bi-cash-stack"></i>
                    <span>Fee Schedule & Criteria</span>
                </a>
            </div>
        </div>
    </section>

    <!-- 7. Dynamic Notice Modal with Photo Upload -->
    <asp:Panel ID="pnlNoticeModal" runat="server" Visible="false">
        <div class="modal fade" id="schoolNoticeModal" tabindex="-1" aria-labelledby="schoolNoticeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0 shadow-lg rounded-3 overflow-hidden">
                    <div class="modal-header border-0 py-3 text-white" style="background: var(--c2-navy);">
                        <h5 class="modal-title fw-bold text-white c2-font-serif" id="schoolNoticeModalLabel">
                            <i class="bi bi-megaphone-fill text-warning me-2"></i>
                            <asp:Literal ID="litModalTitle" runat="server" />
                        </h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-0 text-center">
                        <asp:Image ID="imgModalPhoto" runat="server" CssClass="img-fluid w-100" Style="max-height: 480px; object-fit: contain; background-color: var(--c2-navy);" />
                        <div class="p-4 text-start">
                            <p class="lead fs-6 mb-3 text-dark">
                                <asp:Literal ID="litModalDescription" runat="server" />
                            </p>
                            <div class="d-flex justify-content-between align-items-center flex-wrap gap-2 pt-3 border-top">
                                <span class="badge bg-light text-muted border py-2 px-3">
                                    <i class="bi bi-info-circle me-1"></i> Chetan Public School Official Bulletin
                                </span>
                                <div>
                                    <asp:HyperLink ID="lnkModalAction" runat="server" Target="_blank" CssClass="c2-btn-gold py-2 px-3">
                                        <i class="bi bi-arrow-up-right-circle me-1"></i>
                                        <asp:Literal ID="litModalActionText" runat="server" Text="Learn More" />
                                    </asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

    <!-- AOS JS for Scroll Animations -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            if (window.AOS) {
                AOS.init({
                    duration: 800,
                    easing: 'ease-out-cubic',
                    once: true,
                    offset: 80
                });
            }
        });
    </script>
</asp:Content>
