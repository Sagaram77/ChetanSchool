<%@ Page Title="Smart Campus Concept | Chetan Public School" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="Chetancbsewebsite.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="~/Assets/css/modern-concepts.css" rel="stylesheet" />
    <style>
        /* Concept 1: Tech-Forward Smart Campus Specifics */
        .smart-hero-section {
            background: radial-gradient(circle at 85% 20%, rgba(0, 210, 255, 0.15) 0%, transparent 40%),
                        radial-gradient(circle at 10% 80%, rgba(59, 130, 246, 0.2) 0%, transparent 45%),
                        linear-gradient(135deg, #051329 0%, #0a254a 55%, #0f3460 100%);
            color: #ffffff;
            position: relative;
            overflow: hidden;
            padding: 80px 0 100px;
        }

        .hero-glow-orb {
            position: absolute;
            width: 380px;
            height: 380px;
            background: radial-gradient(circle, rgba(0, 210, 255, 0.35) 0%, rgba(0, 0, 0, 0) 70%);
            border-radius: 50%;
            filter: blur(80px);
            z-index: 1;
            pointer-events: none;
        }

        .smart-title-gradient {
            background: linear-gradient(100deg, #ffffff 30%, #38bdf8 70%, #facc15 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-weight: 800;
            letter-spacing: -0.5px;
        }

        .hero-showcase-wrapper {
            position: relative;
            z-index: 2;
        }

        .hero-main-card {
            border-radius: 24px;
            overflow: hidden;
            border: 2px solid rgba(0, 210, 255, 0.3);
            box-shadow: 0 25px 60px rgba(0, 15, 35, 0.6);
            position: relative;
            background: #071933;
        }

        .hero-main-img {
            width: 100%;
            height: 440px;
            object-fit: cover;
            display: block;
            filter: brightness(0.92);
            transition: transform 0.8s ease;
        }

        .hero-main-card:hover .hero-main-img {
            transform: scale(1.04);
        }

        .floating-smart-badge {
            position: absolute;
            z-index: 3;
            background: rgba(8, 26, 49, 0.88);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(0, 210, 255, 0.4);
            border-radius: 16px;
            padding: 14px 18px;
            color: #ffffff;
            box-shadow: 0 16px 32px rgba(0, 0, 0, 0.4);
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .badge-pos-top-right {
            top: -24px;
            right: -20px;
        }

        .badge-pos-bottom-left {
            bottom: -24px;
            left: -20px;
        }

        .pillar-icon-box {
            width: 58px;
            height: 58px;
            border-radius: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.6rem;
            margin-bottom: 18px;
        }

        .wing-pill-tab {
            border: 1px solid #e2e8f0;
            border-radius: 14px;
            padding: 16px;
            transition: all 0.3s ease;
            cursor: pointer;
            background: #ffffff;
        }

        .wing-pill-tab:hover, .wing-pill-tab.active {
            border-color: #0284c7;
            background: #f0f9ff;
            transform: translateY(-4px);
            box-shadow: 0 10px 25px rgba(2, 132, 199, 0.12);
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
                <a href="~/Default1.aspx" runat="server" class="concept-preview-pill active">
                    <i class="bi bi-cpu-fill"></i> Concept 1: Smart Campus (Tech-Forward)
                </a>
                <a href="~/Default2.aspx" runat="server" class="concept-preview-pill">
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

    <!-- B. Hero Section: Tech-Forward Smart Campus -->
    <section class="smart-hero-section">
        <div class="hero-glow-orb" style="top: -100px; right: 10%;"></div>
        <div class="hero-glow-orb" style="bottom: -150px; left: 5%;"></div>
        <div class="container position-relative" style="z-index: 2;">
            <div class="row align-items-center g-5">
                <!-- Left: Headline & Actions -->
                <div class="col-lg-7">
                    <div class="d-inline-flex align-items-center gap-2 badge-smart badge-cyan-glow mb-3">
                        <i class="bi bi-broadcast"></i> NEXT-GEN CBSE SMART CAMPUS • AFFILIATION NO. 831020
                    </div>
                    <h1 class="display-4 smart-title-gradient mb-3">
                        Moulding Minds to Excel with Next-Gen STEM & Innovation
                    </h1>
                    <p class="lead text-light opacity-90 mb-4" style="font-size: 1.15rem; line-height: 1.7;">
                        Welcome to Chetan Public School, Hubballi — managed by DVEA Trust. We blend experiential learning, 
                        <strong>Tata ClassEdge digital classrooms</strong>, dedicated <strong>Robotics & Space labs</strong>, and an integrated 
                        IIT-JEE/NEET foundation from early grades.
                    </p>

                    <!-- Primary CTAs -->
                    <div class="d-flex flex-wrap align-items-center gap-3 mb-5">
                        <a id="lnkHeroAdmission" runat="server" target="_blank" class="btn btn-warning btn-lg fw-bold text-dark px-4 py-3 btn-shimmer shadow-lg">
                            <i class="bi bi-pencil-square me-2"></i> Apply for Admission 2026-27 (ERP)
                        </a>
                        <a href="~/Campus/Facilities.aspx" runat="server" class="btn btn-outline-light btn-lg px-4 py-3 fw-semibold">
                            <i class="bi bi-compass me-2"></i> Explore Smart Campus
                        </a>
                    </div>

                    <!-- Live Metrics Strip -->
                    <div class="row g-3">
                        <div class="col-6 col-sm-3">
                            <div class="stat-glass-box">
                                <div class="stat-glass-number text-warning">100%</div>
                                <div class="small text-white-50">Board Pass Track</div>
                            </div>
                        </div>
                        <div class="col-6 col-sm-3">
                            <div class="stat-glass-box">
                                <div class="stat-glass-number text-info">15+</div>
                                <div class="small text-white-50">Years Legacy</div>
                            </div>
                        </div>
                        <div class="col-6 col-sm-3">
                            <div class="stat-glass-box">
                                <div class="stat-glass-number" style="color: #38bdf8;">100%</div>
                                <div class="small text-white-50">Tata ClassEdge</div>
                            </div>
                        </div>
                        <div class="col-6 col-sm-3">
                            <div class="stat-glass-box">
                                <div class="stat-glass-number text-success">30+</div>
                                <div class="small text-white-50">Sports & Clubs</div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right: Interactive 3D Showcase Card with Floating Badges -->
                <div class="col-lg-5">
                    <div class="hero-showcase-wrapper">
                        <!-- Floating Badge 1 (Top-Right) -->
                        <div class="floating-smart-badge badge-pos-top-right animate-float-slow">
                            <div class="rounded-circle bg-warning text-dark d-flex align-items-center justify-content-center" style="width: 44px; height: 44px;">
                                <i class="bi bi-robot fs-5"></i>
                            </div>
                            <div>
                                <div class="small text-warning fw-bold text-uppercase">Tech Innovation</div>
                                <div class="fw-bold fs-6">Robotics & Space Lab</div>
                            </div>
                        </div>

                        <!-- Main Showcase Card -->
                        <div class="hero-main-card">
                            <img src="https://images.unsplash.com/photo-1509062522246-3755977927d7?auto=format&fit=crop&w=1000&q=80" 
                                 alt="Chetan Public School Smart Campus" class="hero-main-img" />
                            <div class="p-3 bg-dark bg-opacity-75 text-white d-flex justify-content-between align-items-center">
                                <div>
                                    <div class="fw-bold small text-info"><i class="bi bi-geo-alt-fill text-danger me-1"></i> Akshay Nagar, Hubballi</div>
                                    <div class="small text-white-50">State-of-the-art Infrastructure</div>
                                </div>
                                <span class="badge bg-primary px-3 py-2"><i class="bi bi-check-circle-fill me-1"></i> CBSE 831020</span>
                            </div>
                        </div>

                        <!-- Floating Badge 2 (Bottom-Left) -->
                        <div class="floating-smart-badge badge-pos-bottom-left animate-float-reverse">
                            <div class="rounded-circle bg-info text-dark d-flex align-items-center justify-content-center" style="width: 44px; height: 44px;">
                                <i class="bi bi-trophy-fill fs-5"></i>
                            </div>
                            <div>
                                <div class="small text-info fw-bold text-uppercase">Academic Distinction</div>
                                <div class="fw-bold fs-6">IIT-JEE & NEET Foundation</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- C. 4 Pillars of Chetan Smart Campus -->
    <section class="py-5 bg-white position-relative" id="smartFacilities" style="z-index: 5;">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5">
                <span class="badge-smart badge-cyan-glow mb-2">Smart Campus Pillars</span>
                <h2 class="fw-bold text-primary display-6">Designed for 21st Century Innovators</h2>
                <p class="text-muted">
                    Following the modern benchmark set by Chetan Smart Campus, our learning ecosystem integrates digital intelligence with deep foundational ethics.
                </p>
            </div>

            <div class="row g-4">
                <!-- Pillar 1 -->
                <div class="col-md-6 col-lg-3">
                    <div class="card h-100 border-0 shadow-sm p-4 modern-hover-card" style="border-top: 4px solid #00d2ff !important;">
                        <div class="pillar-icon-box bg-info bg-opacity-10 text-info">
                            <i class="bi bi-display-fill"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">Tata ClassEdge Classrooms</h5>
                        <p class="text-muted small mb-3">
                            Digitally empowered classrooms with interactive visual modules, turning complex science and math concepts into engaging visual experiences.
                        </p>
                        <a href="~/Campus/Facilities.aspx" runat="server" class="small fw-bold text-info text-decoration-none mt-auto">
                            Explore Smart Classrooms <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>

                <!-- Pillar 2 -->
                <div class="col-md-6 col-lg-3">
                    <div class="card h-100 border-0 shadow-sm p-4 modern-hover-card" style="border-top: 4px solid #f59e0b !important;">
                        <div class="pillar-icon-box bg-warning bg-opacity-10 text-warning">
                            <i class="bi bi-cpu-fill"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">Robotics & Space Tech Lab</h5>
                        <p class="text-muted small mb-3">
                            Hands-on learning in STEM, coding fundamentals, micro-controllers, and astronomy models designed to trigger scientific curiosity early.
                        </p>
                        <a href="~/Campus/Laboratories.aspx" runat="server" class="small fw-bold text-warning text-decoration-none mt-auto">
                            View Science & Tech Labs <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>

                <!-- Pillar 3 -->
                <div class="col-md-6 col-lg-3">
                    <div class="card h-100 border-0 shadow-sm p-4 modern-hover-card" style="border-top: 4px solid #10b981 !important;">
                        <div class="pillar-icon-box bg-success bg-opacity-10 text-success">
                            <i class="bi bi-book-half"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">British Council Library</h5>
                        <p class="text-muted small mb-3">
                            Rich repository of 8,000+ curated volumes, reference journals, encyclopedias, and a dedicated reading lounge fostering a lifelong habit of reading.
                        </p>
                        <a href="~/Campus/Library.aspx" runat="server" class="small fw-bold text-success text-decoration-none mt-auto">
                            Explore Library <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>

                <!-- Pillar 4 -->
                <div class="col-md-6 col-lg-3">
                    <div class="card h-100 border-0 shadow-sm p-4 modern-hover-card" style="border-top: 4px solid #8b5cf6 !important;">
                        <div class="pillar-icon-box bg-primary bg-opacity-10 text-primary">
                            <i class="bi bi-mortarboard-fill"></i>
                        </div>
                        <h5 class="fw-bold text-primary mb-2">IIT-JEE & NEET Foundation</h5>
                        <p class="text-muted small mb-3">
                            Integrated coaching led by expert faculty from Chetan PU Science College, nurturing Olympiad qualifiers and future competitive toppers.
                        </p>
                        <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="small fw-bold text-primary text-decoration-none mt-auto">
                            Foundation Details <i class="bi bi-arrow-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- D. Academic Wing Matrix (Kindergarten to High School) -->
    <section class="py-5 bg-light">
        <div class="container py-4">
            <div class="row align-items-center mb-5">
                <div class="col-lg-7">
                    <span class="badge-smart badge-gold-glow mb-2">Learning Pathways</span>
                    <h2 class="fw-bold text-primary display-6 mb-2">Holistic Progression for Every Stage</h2>
                    <p class="text-muted mb-0">From play-based curiosity to rigorous CBSE Board mastery and competitive foundation.</p>
                </div>
                <div class="col-lg-5 text-lg-end mt-3 mt-lg-0">
                    <a href="~/Academics/Curriculum.aspx" runat="server" class="btn btn-outline-primary fw-semibold px-4">
                        <i class="bi bi-journal-text me-1"></i> Full Academic Curriculum
                    </a>
                </div>
            </div>

            <div class="row g-4">
                <!-- Pre-Primary -->
                <div class="col-md-6 col-lg-3">
                    <div class="wing-pill-tab h-100">
                        <div class="badge bg-warning text-dark mb-2 fw-bold">Kindergarten</div>
                        <h5 class="fw-bold text-primary mb-2">Pre-Primary Wing</h5>
                        <p class="small text-muted mb-3">Kreedo experiential methodology, phonics immersion, motor-skill enrichment, and joyful discovery.</p>
                        <ul class="list-unstyled small text-secondary mb-0">
                            <li><i class="bi bi-check2 text-success me-1"></i> Play-Way Pedagogy</li>
                            <li><i class="bi bi-check2 text-success me-1"></i> Child-Safe Playgrounds</li>
                        </ul>
                    </div>
                </div>

                <!-- Primary -->
                <div class="col-md-6 col-lg-3">
                    <div class="wing-pill-tab h-100">
                        <div class="badge bg-info text-white mb-2 fw-bold">Classes I - V</div>
                        <h5 class="fw-bold text-primary mb-2">Primary Wing</h5>
                        <p class="small text-muted mb-3">Foundational literacy, mental math dexterity, communicative fluency, and hands-on environmental science.</p>
                        <ul class="list-unstyled small text-secondary mb-0">
                            <li><i class="bi bi-check2 text-success me-1"></i> Tata ClassEdge Audio-Visuals</li>
                            <li><i class="bi bi-check2 text-success me-1"></i> Activity-Based Learning</li>
                        </ul>
                    </div>
                </div>

                <!-- Middle -->
                <div class="col-md-6 col-lg-3">
                    <div class="wing-pill-tab h-100">
                        <div class="badge bg-primary text-white mb-2 fw-bold">Classes VI - VIII</div>
                        <h5 class="fw-bold text-primary mb-2">Middle School Wing</h5>
                        <p class="small text-muted mb-3">Experimental laboratory practice, computer programming basics, languages, and house sports leagues.</p>
                        <ul class="list-unstyled small text-secondary mb-0">
                            <li><i class="bi bi-check2 text-success me-1"></i> Science & Robotics Labs</li>
                            <li><i class="bi bi-check2 text-success me-1"></i> 4-House Competitions</li>
                        </ul>
                    </div>
                </div>

                <!-- Secondary -->
                <div class="col-md-6 col-lg-3">
                    <div class="wing-pill-tab h-100 active">
                        <div class="badge bg-danger text-white mb-2 fw-bold">Classes IX - X</div>
                        <h5 class="fw-bold text-primary mb-2">Secondary Wing</h5>
                        <p class="small text-muted mb-3">Structured CBSE board syllabus, pre-board rigor, career counseling, and integrated IIT/NEET coaching.</p>
                        <ul class="list-unstyled small text-secondary mb-0">
                            <li><i class="bi bi-check2 text-success me-1"></i> 100% Board Pass History</li>
                            <li><i class="bi bi-check2 text-success me-1"></i> Foundation PU Alignment</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- E. Smart Campus Bento Grid Highlights -->
    <section class="py-5 bg-white">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5">
                <span class="badge-smart badge-teal-glow mb-2">Campus Experience</span>
                <h2 class="fw-bold text-primary display-6">Life Inside Chetan Public School</h2>
                <p class="text-muted">A vibrant ecosystem where arts, athletics, scientific inquiry, and moral values thrive together.</p>
            </div>

            <div class="row g-4">
                <!-- Bento Item 1: Large Span -->
                <div class="col-lg-7">
                    <div class="bento-card" style="height: 380px;">
                        <img src="https://images.unsplash.com/photo-1580582932707-520aed937b7b?auto=format&fit=crop&w=1200&q=80" 
                             alt="Campus Infrastructure" class="bento-img-bg" />
                        <div class="bento-overlay">
                            <span class="badge bg-warning text-dark fw-bold px-3 py-1 mb-2 align-self-start">Infrastructure</span>
                            <h3 class="fw-bold text-white mb-1">State-of-the-Art Architecture & Green Campus</h3>
                            <p class="small text-white-50 mb-3">Spacious ventilated classrooms, security-monitored corridors, and dedicated outdoor sports facilities.</p>
                            <a href="~/Campus/Facilities.aspx" runat="server" class="btn btn-sm btn-light fw-bold align-self-start">
                                Explore Facilities <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Bento Item 2: Sports -->
                <div class="col-lg-5">
                    <div class="bento-card" style="height: 380px;">
                        <img src="https://images.unsplash.com/photo-1577896851231-70ef18881754?auto=format&fit=crop&w=800&q=80" 
                             alt="Sports & Athletics" class="bento-img-bg" />
                        <div class="bento-overlay">
                            <span class="badge bg-danger text-white fw-bold px-3 py-1 mb-2 align-self-start">Athletics</span>
                            <h3 class="fw-bold text-white mb-1">Championship Sports Arena</h3>
                            <p class="small text-white-50 mb-3">Volleyball, basketball, skating, yoga, taekwondo, and table tennis training under certified coaches.</p>
                            <a href="~/StudentLife/Sports.aspx" runat="server" class="btn btn-sm btn-light fw-bold align-self-start">
                                Sports Program <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Bento Item 3: Robotics & Science -->
                <div class="col-md-4">
                    <div class="bento-card" style="height: 260px;">
                        <img src="https://images.unsplash.com/photo-1532094349884-543bc11b234d?auto=format&fit=crop&w=600&q=80" 
                             alt="Composite Science Labs" class="bento-img-bg" />
                        <div class="bento-overlay">
                            <span class="badge bg-info text-dark fw-bold px-2 py-1 mb-1 align-self-start">Labs</span>
                            <h5 class="fw-bold text-white mb-1">Physics & Chemistry Labs</h5>
                            <p class="small text-white-50 mb-0">Hands-on experimentation under safety-certified guidelines.</p>
                        </div>
                    </div>
                </div>

                <!-- Bento Item 4: Arts & Culture -->
                <div class="col-md-4">
                    <div class="bento-card" style="height: 260px;">
                        <img src="https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4?auto=format&fit=crop&w=600&q=80" 
                             alt="Music & Arts" class="bento-img-bg" />
                        <div class="bento-overlay">
                            <span class="badge bg-warning text-dark fw-bold px-2 py-1 mb-1 align-self-start">Creative</span>
                            <h5 class="fw-bold text-white mb-1">Performing Arts & Music</h5>
                            <p class="small text-white-50 mb-0">Vocal, instrumental music, classical dance, and drama theater.</p>
                        </div>
                    </div>
                </div>

                <!-- Bento Item 5: British Council Library -->
                <div class="col-md-4">
                    <div class="bento-card" style="height: 260px;">
                        <img src="https://images.unsplash.com/photo-1521587760476-6c12a4b040da?auto=format&fit=crop&w=600&q=80" 
                             alt="Library" class="bento-img-bg" />
                        <div class="bento-overlay">
                            <span class="badge bg-success text-white fw-bold px-2 py-1 mb-1 align-self-start">Knowledge</span>
                            <h5 class="fw-bold text-white mb-1">British Council Library</h5>
                            <p class="small text-white-50 mb-0">Over 8,000 titles and digital knowledge workstations.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- F. Dynamic News & Official Circulars Feed -->
    <section class="py-5 bg-light">
        <div class="container py-4">
            <div class="d-flex flex-wrap justify-content-between align-items-end mb-4">
                <div>
                    <span class="badge-smart badge-cyan-glow mb-2">Live Information Desk</span>
                    <h2 class="fw-bold text-primary display-6 mb-0">Latest Announcements & Circulars</h2>
                </div>
                <a href="~/News/NewsEvents.aspx" runat="server" class="btn btn-outline-primary fw-semibold px-4 mt-3 mt-md-0">
                    <i class="bi bi-collection me-1"></i> View All Circulars
                </a>
            </div>

            <div class="row g-4">
                <asp:Repeater ID="rptFeaturedNews" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6 col-lg-3">
                            <div class="card h-100 border-0 shadow-sm modern-hover-card p-3 bg-white">
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="badge bg-light text-primary border fw-semibold">
                                        <%# Eval("Category") != DBNull.Value ? Eval("Category") : "Notice" %>
                                    </span>
                                    <small class="text-muted"><%# Eval("PublishedDate", "{0:dd MMM yyyy}") %></small>
                                </div>
                                <h6 class="fw-bold text-primary mb-2" style="min-height: 44px;">
                                    <%# Eval("Title") %>
                                </h6>
                                <p class="text-muted small mb-3 flex-grow-1">
                                    <%# Eval("Summary") != DBNull.Value && !string.IsNullOrEmpty(Eval("Summary").ToString()) ? Eval("Summary") : "Official school notification and details for students and parents." %>
                                </p>
                                <div class="pt-2 border-top d-flex justify-content-between align-items-center">
                                    <a href='<%# ResolveUrl("~/News/NewsDetail.aspx?id=" + Eval("NewsId")) %>' class="small fw-bold text-primary text-decoration-none">
                                        Read Circular <i class="bi bi-chevron-right"></i>
                                    </a>
                                    <%# !string.IsNullOrEmpty(Eval("AttachmentUrl")?.ToString()) ? "<span class='badge bg-danger'><i class='bi bi-file-earmark-pdf me-1'></i>PDF</span>" : "" %>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>

    <!-- G. High-Impact Admissions 2026-27 Ribbon (ERP/Drive Link) -->
    <section class="py-5" style="background: linear-gradient(135deg, #051329 0%, #0c2340 100%);">
        <div class="container py-4 text-center text-white">
            <span class="badge bg-warning text-dark px-3 py-2 fw-bold text-uppercase mb-3">Academic Session 2026-27</span>
            <h2 class="display-6 fw-bold text-white mb-3">Admissions Open — Pre-Primary to Class X</h2>
            <p class="lead text-white-50 max-w-700 mx-auto mb-4">
                Join Chetan Public School and experience a tech-enabled, values-based learning environment. Access the online admission form package directly via Google Drive / ERP.
            </p>
            <div class="d-flex flex-wrap justify-content-center gap-3">
                <a id="lnkBottomAdmission" runat="server" target="_blank" class="btn btn-warning btn-lg fw-bold text-dark px-5 py-3 btn-shimmer shadow-lg">
                    <i class="bi bi-box-arrow-up-right me-2"></i> Apply Online via ERP / Google Drive
                </a>
                <a href="~/Admissions/AdmissionProcedure.aspx" runat="server" class="btn btn-outline-light btn-lg fw-semibold px-4 py-3">
                    <i class="bi bi-info-circle me-2"></i> Admission Criteria & Documents
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
                        <asp:Image ID="imgModalPhoto" runat="server" CssClass="img-fluid w-100" Style="max-height: 480px; object-fit: contain; background-color: #051329;" />
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
