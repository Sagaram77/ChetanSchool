<%@ Page Title="Smart Campus 2026 | Chetan Public School" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default1.aspx.cs" Inherits="Chetancbsewebsite.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Google Fonts: Space Grotesk (Futuristic Display) & Plus Jakarta Sans (Clean Body) -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet" />
    
    <!-- AOS (Animate On Scroll) -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />

    <style>
        /* ==========================================================================
           CONCEPT 1: THE CYBER-SMART INNOVATION ACADEMY
           Inspired directly by chetansmartcampus.org (Robotics, Space Science, Tata ClassEdge)
           ========================================================================== */
        
        :root {
            --c1-navy-dark: #040d1a;
            --c1-navy-card: #0a192f;
            --c1-cyan: #00f2fe;
            --c1-blue: #4facfe;
            --c1-amber: #ffb300;
            --c1-green: #00e676;
            --c1-purple: #7928ca;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: #040d1a;
            color: #e2e8f0;
            overflow-x: hidden;
        }

        .c1-font-display {
            font-family: 'Space Grotesk', sans-serif;
        }

        /* ---------------- Concept Switcher Toolbar ---------------- */
        .c1-switcher-bar {
            background: rgba(4, 13, 26, 0.95);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid rgba(0, 242, 254, 0.3);
            padding: 10px 16px;
            position: sticky;
            top: 0;
            z-index: 1020;
            box-shadow: 0 4px 30px rgba(0, 242, 254, 0.15);
        }

        .c1-switcher-btn {
            padding: 6px 14px;
            font-size: 0.82rem;
            font-weight: 700;
            border-radius: 30px;
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            border: 1px solid rgba(255, 255, 255, 0.15);
            color: #94a3b8;
        }

        .c1-switcher-btn:hover {
            color: #ffffff;
            border-color: var(--c1-cyan);
            transform: translateY(-2px);
            box-shadow: 0 0 15px rgba(0, 242, 254, 0.4);
        }

        .c1-switcher-btn.active {
            background: linear-gradient(135deg, var(--c1-cyan), var(--c1-blue));
            color: #040d1a;
            border-color: transparent;
            box-shadow: 0 0 20px rgba(0, 242, 254, 0.6);
        }

        /* ---------------- Hero Section ---------------- */
        .c1-hero {
            position: relative;
            min-height: 85vh;
            display: flex;
            align-items: center;
            background: radial-gradient(circle at 80% 20%, rgba(0, 242, 254, 0.15) 0%, transparent 45%),
                        radial-gradient(circle at 15% 85%, rgba(121, 40, 202, 0.2) 0%, transparent 45%),
                        linear-gradient(180deg, #040d1a 0%, #07152b 50%, #0a1f3d 100%);
            padding: 60px 0 90px;
            overflow: hidden;
        }

        /* Ambient Cyber Grid Overlay */
        .c1-hero-grid {
            position: absolute;
            inset: 0;
            background-image: 
                linear-gradient(rgba(0, 242, 254, 0.04) 1px, transparent 1px),
                linear-gradient(90deg, rgba(0, 242, 254, 0.04) 1px, transparent 1px);
            background-size: 40px 40px;
            pointer-events: none;
            z-index: 1;
        }

        .c1-cyber-pill {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 6px 16px;
            border-radius: 50px;
            background: rgba(0, 242, 254, 0.1);
            border: 1px solid rgba(0, 242, 254, 0.4);
            color: var(--c1-cyan);
            font-size: 0.8rem;
            font-weight: 700;
            letter-spacing: 1px;
            text-transform: uppercase;
            box-shadow: 0 0 20px rgba(0, 242, 254, 0.2);
        }

        .c1-gradient-title {
            font-size: 3.5rem;
            font-weight: 800;
            line-height: 1.15;
            background: linear-gradient(135deg, #ffffff 20%, #70e1ff 60%, #ffd000 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 24px;
        }

        @media (max-width: 991px) {
            .c1-gradient-title { font-size: 2.5rem; }
        }

        /* Glowing Pulse Action Button */
        .c1-btn-cyber {
            background: linear-gradient(135deg, #ffb300 0%, #ff8008 100%);
            color: #040d1a !important;
            font-weight: 800;
            padding: 16px 36px;
            border-radius: 50px;
            border: none;
            box-shadow: 0 0 25px rgba(255, 179, 0, 0.5);
            transition: all 0.35s ease;
            position: relative;
            overflow: hidden;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .c1-btn-cyber:hover {
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 0 40px rgba(255, 179, 0, 0.8);
        }

        .c1-btn-glass {
            background: rgba(255, 255, 255, 0.08);
            border: 1px solid rgba(255, 255, 255, 0.25);
            color: #ffffff !important;
            font-weight: 700;
            padding: 16px 32px;
            border-radius: 50px;
            backdrop-filter: blur(10px);
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .c1-btn-glass:hover {
            background: rgba(0, 242, 254, 0.2);
            border-color: var(--c1-cyan);
            color: var(--c1-cyan) !important;
            transform: translateY(-3px);
            box-shadow: 0 0 25px rgba(0, 242, 254, 0.35);
        }

        /* 3D Smart Campus HUD Deck */
        .c1-hud-card {
            background: rgba(10, 25, 47, 0.85);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(0, 242, 254, 0.35);
            border-radius: 24px;
            padding: 24px;
            position: relative;
            box-shadow: 0 25px 60px rgba(0, 0, 0, 0.6), 0 0 30px rgba(0, 242, 254, 0.2);
        }

        .c1-hud-header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            padding-bottom: 12px;
            margin-bottom: 18px;
        }

        .c1-terminal-dots {
            display: flex;
            gap: 6px;
        }

        .c1-dot {
            width: 10px;
            height: 10px;
            border-radius: 50%;
        }

        .c1-dot-red { background: #ff5f56; }
        .c1-dot-yellow { background: #ffbd2e; }
        .c1-dot-green { background: #27c93f; }

        .c1-hud-media-wrap {
            position: relative;
            border-radius: 16px;
            overflow: hidden;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .c1-hud-img {
            width: 100%;
            height: 320px;
            object-fit: cover;
            display: block;
            transition: transform 0.6s ease;
        }

        .c1-hud-card:hover .c1-hud-img {
            transform: scale(1.05);
        }

        .c1-floating-stat {
            position: absolute;
            background: rgba(4, 13, 26, 0.9);
            backdrop-filter: blur(12px);
            border: 1px solid var(--c1-cyan);
            border-radius: 16px;
            padding: 12px 18px;
            display: flex;
            align-items: center;
            gap: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            z-index: 5;
            animation: floatUpDown 4s ease-in-out infinite;
        }

        @keyframes floatUpDown {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .c1-stat-top { top: -20px; right: -15px; }
        .c1-stat-bottom { bottom: -20px; left: -15px; animation-delay: 2s; }

        /* ---------------- Live Metrics Bar ---------------- */
        .c1-metrics-strip {
            background: rgba(10, 25, 47, 0.9);
            border-top: 1px solid rgba(0, 242, 254, 0.2);
            border-bottom: 1px solid rgba(0, 242, 254, 0.2);
            padding: 30px 0;
            position: relative;
            z-index: 10;
        }

        .c1-counter-number {
            font-size: 2.8rem;
            font-weight: 800;
            color: var(--c1-cyan);
            line-height: 1;
            margin-bottom: 6px;
        }

        /* ---------------- Smart Campus Pillars ---------------- */
        .c1-section {
            padding: 90px 0;
            position: relative;
        }

        .c1-card {
            background: rgba(10, 25, 47, 0.6);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 20px;
            padding: 32px;
            transition: all 0.4s cubic-bezier(0.165, 0.84, 0.44, 1);
            height: 100%;
            position: relative;
            overflow: hidden;
        }

        .c1-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 3px;
            background: linear-gradient(90deg, var(--c1-cyan), transparent);
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .c1-card:hover {
            transform: translateY(-10px);
            border-color: rgba(0, 242, 254, 0.4);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4), 0 0 25px rgba(0, 242, 254, 0.2);
            background: rgba(10, 25, 47, 0.9);
        }

        .c1-card:hover::before {
            opacity: 1;
        }

        .c1-icon-box {
            width: 64px;
            height: 64px;
            border-radius: 16px;
            background: rgba(0, 242, 254, 0.1);
            border: 1px solid rgba(0, 242, 254, 0.3);
            color: var(--c1-cyan);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.8rem;
            margin-bottom: 22px;
            transition: all 0.3s ease;
        }

        .c1-card:hover .c1-icon-box {
            transform: scale(1.1) rotate(5deg);
            background: var(--c1-cyan);
            color: #040d1a;
            box-shadow: 0 0 20px var(--c1-cyan);
        }

        /* ---------------- Interactive Wing Explorer ---------------- */
        .c1-wing-nav-item {
            cursor: pointer;
            padding: 16px 20px;
            border-radius: 14px;
            border: 1px solid rgba(255, 255, 255, 0.08);
            background: rgba(10, 25, 47, 0.4);
            transition: all 0.3s ease;
        }

        .c1-wing-nav-item:hover, .c1-wing-nav-item.active {
            border-color: var(--c1-cyan);
            background: rgba(0, 242, 254, 0.12);
            box-shadow: 0 0 20px rgba(0, 242, 254, 0.2);
        }

        /* ---------------- Cyber Circulars Terminal ---------------- */
        .c1-notice-row {
            background: rgba(10, 25, 47, 0.6);
            border: 1px solid rgba(255, 255, 255, 0.06);
            border-radius: 16px;
            padding: 18px 24px;
            transition: all 0.3s ease;
            margin-bottom: 12px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 16px;
        }

        .c1-notice-row:hover {
            border-color: var(--c1-cyan);
            background: rgba(10, 25, 47, 0.95);
            transform: translateX(8px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
        }

        /* ---------------- High Impact CTA Ribbon ---------------- */
        .c1-cta-box {
            background: radial-gradient(circle at 50% 50%, rgba(0, 242, 254, 0.15) 0%, transparent 70%),
                        linear-gradient(135deg, #07152b 0%, #0d284f 100%);
            border: 1px solid rgba(0, 242, 254, 0.4);
            border-radius: 28px;
            padding: 60px 40px;
            text-align: center;
            box-shadow: 0 0 50px rgba(0, 242, 254, 0.2);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Concept Switcher Bar (Sticky Top) -->
    <div class="c1-switcher-bar">
        <div class="container d-flex flex-wrap justify-content-between align-items-center gap-2">
            <div class="d-flex align-items-center gap-2">
                <span class="badge bg-danger text-uppercase px-2 py-1" style="font-size: 0.7rem; letter-spacing: 1px;">Live Review</span>
                <span class="small fw-bold text-white c1-font-display">3 Modern Design Concepts for Chetan Public School</span>
            </div>
            <div class="d-flex flex-wrap gap-2">
                <a href="~/Default1.aspx" runat="server" class="c1-switcher-btn active">
                    <i class="bi bi-cpu-fill text-warning"></i> Concept 1: Smart Campus (Tech-Forward)
                </a>
                <a href="~/Default2.aspx" runat="server" class="c1-switcher-btn">
                    <i class="bi bi-award-fill text-warning"></i> Concept 2: Royal Heritage & Ivy League
                </a>
                <a href="~/Default3.aspx" runat="server" class="c1-switcher-btn">
                    <i class="bi bi-balloon-fill text-info"></i> Concept 3: Vibrant & Child-Centric
                </a>
                <a href="~/Default.aspx" runat="server" class="c1-switcher-btn">
                    <i class="bi bi-layout-text-sidebar"></i> Classic Standard
                </a>
            </div>
        </div>
    </div>

    <!-- 1. HERO SECTION: Tech-Forward Smart Campus -->
    <section class="c1-hero">
        <div class="c1-hero-grid"></div>
        <div class="container position-relative" style="z-index: 2;">
            <div class="row align-items-center g-5">
                <!-- Left: Headline, Value Proposition & Actions -->
                <div class="col-lg-7" data-aos="fade-right" data-aos-duration="1000">
                    <div class="c1-cyber-pill mb-3">
                        <i class="bi bi-broadcast text-warning"></i> CBSE AFFILIATION NO: 831020 • HUBBALLI
                    </div>
                    <h1 class="c1-gradient-title c1-font-display">
                        Empowering 21st Century Innovators with Smart Learning
                    </h1>
                    <p class="lead text-light opacity-90 mb-4" style="font-size: 1.15rem; line-height: 1.75; max-width: 620px;">
                        Inspired by the future-ready paradigm of <strong>Chetan Smart Campus</strong>, our Hubballi institution blends 
                        <strong>Tata ClassEdge digital classrooms</strong>, dedicated <strong>Robotics & Space labs</strong>, and early 
                        integrated foundation for <strong>IIT-JEE & NEET</strong> under the prestigious DVEA Trust.
                    </p>

                    <!-- Primary Action Buttons -->
                    <div class="d-flex flex-wrap gap-3 mb-5">
                        <a id="lnkHeroAdmission" runat="server" target="_blank" class="c1-btn-cyber">
                            <i class="bi bi-pencil-square fs-5"></i>
                            <span>Enroll for 2026-27 (ERP Link)</span>
                        </a>
                        <a href="~/Campus/Facilities.aspx" runat="server" class="c1-btn-glass">
                            <i class="bi bi-play-circle fs-5"></i>
                            <span>Explore Smart Facilities</span>
                        </a>
                    </div>

                    <!-- Tech Feature Tags -->
                    <div class="d-flex flex-wrap gap-3">
                        <div class="d-flex align-items-center gap-2 small text-light opacity-75">
                            <i class="bi bi-check-circle-fill text-warning"></i> 100% Board Pass History
                        </div>
                        <div class="d-flex align-items-center gap-2 small text-light opacity-75">
                            <i class="bi bi-check-circle-fill" style="color: var(--c1-cyan);"></i> Tata ClassEdge Audio-Visuals
                        </div>
                        <div class="d-flex align-items-center gap-2 small text-light opacity-75">
                            <i class="bi bi-check-circle-fill" style="color: var(--c1-green);"></i> British Council Library
                        </div>
                    </div>
                </div>

                <!-- Right: Futuristic 3D HUD Terminal with Floating Metrics -->
                <div class="col-lg-5" data-aos="fade-left" data-aos-duration="1000">
                    <div class="position-relative">
                        <!-- Floating Stat Badge 1 (Top Right) -->
                        <div class="c1-floating-stat c1-stat-top">
                            <div class="rounded-circle bg-warning text-dark d-flex align-items-center justify-content-center" style="width: 44px; height: 44px;">
                                <i class="bi bi-robot fs-5"></i>
                            </div>
                            <div>
                                <div class="small text-warning fw-bold text-uppercase" style="font-size: 0.7rem;">Innovation Hub</div>
                                <div class="fw-bold fs-6 text-white c1-font-display">Robotics & Space Lab</div>
                            </div>
                        </div>

                        <!-- Main 3D HUD Device -->
                        <div class="c1-hud-card">
                            <div class="c1-hud-header">
                                <div class="c1-terminal-dots">
                                    <div class="c1-dot c1-dot-red"></div>
                                    <div class="c1-dot c1-dot-yellow"></div>
                                    <div class="c1-dot c1-dot-green"></div>
                                </div>
                                <span class="badge" style="background: rgba(0, 242, 254, 0.15); color: var(--c1-cyan); font-family: monospace;">
                                    CPS://SMART_CAMPUS_ONLINE
                                </span>
                            </div>

                            <div class="c1-hud-media-wrap">
                                <img src="https://images.unsplash.com/photo-1509062522246-3755977927d7?auto=format&fit=crop&w=1000&q=80" 
                                     alt="Smart Digital Learning" class="c1-hud-img" />
                            </div>

                            <div class="mt-3 p-2 d-flex justify-content-between align-items-center small text-light opacity-90">
                                <div>
                                    <i class="bi bi-geo-alt-fill text-danger me-1"></i>
                                    <span>Akshay Nagar, Hubballi - 580030</span>
                                </div>
                                <span class="badge bg-success"><i class="bi bi-shield-check me-1"></i> CBSE Affiliated</span>
                            </div>
                        </div>

                        <!-- Floating Stat Badge 2 (Bottom Left) -->
                        <div class="c1-floating-stat c1-stat-bottom">
                            <div class="rounded-circle d-flex align-items-center justify-content-center" style="width: 44px; height: 44px; background: var(--c1-cyan); color: #040d1a;">
                                <i class="bi bi-trophy-fill fs-5"></i>
                            </div>
                            <div>
                                <div class="small fw-bold text-uppercase" style="color: var(--c1-cyan); font-size: 0.7rem;">Academic Edge</div>
                                <div class="fw-bold fs-6 text-white c1-font-display">100% Board Pass Record</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. REAL-TIME STATS COUNTER STRIP -->
    <div class="c1-metrics-strip">
        <div class="container">
            <div class="row g-4 text-center">
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="100">
                    <div class="c1-counter-number c1-font-display" data-target="100">100%</div>
                    <div class="small text-uppercase fw-bold text-light opacity-75">Board Pass Track Record</div>
                </div>
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="200">
                    <div class="c1-counter-number c1-font-display" style="color: #ffb300;" data-target="15">15+</div>
                    <div class="small text-uppercase fw-bold text-light opacity-75">Years of DVEA Trust Legacy</div>
                </div>
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="300">
                    <div class="c1-counter-number c1-font-display" style="color: #00e676;" data-target="8000">8,000+</div>
                    <div class="small text-uppercase fw-bold text-light opacity-75">Curated Library Books</div>
                </div>
                <div class="col-6 col-md-3" data-aos="zoom-in" data-aos-delay="400">
                    <div class="c1-counter-number c1-font-display" style="color: #e066ff;" data-target="30">30+</div>
                    <div class="small text-uppercase fw-bold text-light opacity-75">Sports, Arts & Tech Labs</div>
                </div>
            </div>
        </div>
    </div>

    <!-- 3. SMART CAMPUS PILLARS (Interactive Hex/Bento Cards) -->
    <section class="c1-section">
        <div class="container">
            <div class="text-center max-w-700 mx-auto mb-5" data-aos="fade-up">
                <div class="c1-cyber-pill mb-2"><i class="bi bi-gear-fill"></i> SMART INFRASTRUCTURE</div>
                <h2 class="display-5 fw-bold text-white c1-font-display">Four Pillars of Academic Distinction</h2>
                <p class="text-light opacity-75">
                    Engineered to transition students from passive listeners to active thinkers, researchers, and inventors.
                </p>
            </div>

            <div class="row g-4">
                <!-- Pillar 1 -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="c1-card">
                        <div class="c1-icon-box">
                            <i class="bi bi-display"></i>
                        </div>
                        <h4 class="fw-bold text-white mb-2 c1-font-display">Tata ClassEdge Classrooms</h4>
                        <p class="small text-light opacity-75 mb-4">
                            Interactive visual software, mapped strictly to the CBSE syllabus, turning abstract principles into intuitive multimedia experiences.
                        </p>
                        <a href="~/Campus/Facilities.aspx" runat="server" class="small fw-bold text-decoration-none" style="color: var(--c1-cyan);">
                            Explore Smart Rooms <i class="bi bi-arrow-right ms-1"></i>
                        </a>
                    </div>
                </div>

                <!-- Pillar 2 -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="c1-card">
                        <div class="c1-icon-box" style="color: #ffb300; border-color: rgba(255, 179, 0, 0.3); background: rgba(255, 179, 0, 0.1);">
                            <i class="bi bi-robot"></i>
                        </div>
                        <h4 class="fw-bold text-white mb-2 c1-font-display">Space & Robotics Lab</h4>
                        <p class="small text-light opacity-75 mb-4">
                            Hands-on exposure to microcontrollers, computational logic, drone tech, and astronomy models mirroring real-world aerospace science.
                        </p>
                        <a href="~/Campus/Laboratories.aspx" runat="server" class="small fw-bold text-decoration-none text-warning">
                            Lab Curriculum <i class="bi bi-arrow-right ms-1"></i>
                        </a>
                    </div>
                </div>

                <!-- Pillar 3 -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="c1-card">
                        <div class="c1-icon-box" style="color: #00e676; border-color: rgba(0, 230, 118, 0.3); background: rgba(0, 230, 118, 0.1);">
                            <i class="bi bi-journal-bookmark-fill"></i>
                        </div>
                        <h4 class="fw-bold text-white mb-2 c1-font-display">British Council Library</h4>
                        <p class="small text-light opacity-75 mb-4">
                            Over 8,000 titles, periodicals, and digital knowledge consoles inspiring research, critical reading habits, and linguistic fluency.
                        </p>
                        <a href="~/Campus/Library.aspx" runat="server" class="small fw-bold text-decoration-none" style="color: #00e676;">
                            Library Catalogue <i class="bi bi-arrow-right ms-1"></i>
                        </a>
                    </div>
                </div>

                <!-- Pillar 4 -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="c1-card">
                        <div class="c1-icon-box" style="color: #e066ff; border-color: rgba(224, 102, 255, 0.3); background: rgba(224, 102, 255, 0.1);">
                            <i class="bi bi-mortarboard-fill"></i>
                        </div>
                        <h4 class="fw-bold text-white mb-2 c1-font-display">IIT-JEE / NEET Foundation</h4>
                        <p class="small text-light opacity-75 mb-4">
                            Structured foundation classes taught by faculty from Chetan Pre-University Science College, giving high schoolers an unbeatable head start.
                        </p>
                        <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="small fw-bold text-decoration-none" style="color: #e066ff;">
                            Foundation Details <i class="bi bi-arrow-right ms-1"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. ACADEMIC WINGS PROGRESSION (Interactive Grid) -->
    <section class="c1-section" style="background: rgba(7, 21, 43, 0.6);">
        <div class="container">
            <div class="row align-items-center mb-5">
                <div class="col-lg-8" data-aos="fade-right">
                    <div class="c1-cyber-pill mb-2"><i class="bi bi-layers-fill"></i> PROGRESSION STAGES</div>
                    <h2 class="display-5 fw-bold text-white c1-font-display">Tailored Learning for Every Age</h2>
                </div>
                <div class="col-lg-4 text-lg-end" data-aos="fade-left">
                    <a href="~/Academics/Curriculum.aspx" runat="server" class="c1-btn-glass py-2 px-4">
                        <span>Full CBSE Curriculum</span>
                        <i class="bi bi-arrow-right"></i>
                    </a>
                </div>
            </div>

            <div class="row g-4">
                <!-- Stage 1 -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="c1-card border-warning">
                        <span class="badge bg-warning text-dark fw-bold mb-3 px-3 py-1">KREEDO PLAY-WAY</span>
                        <h5 class="fw-bold text-white c1-font-display">Pre-Primary (KG)</h5>
                        <p class="small text-light opacity-75">
                            Sensory-motor enrichment, phonics immersion, and play-based discovery fostering foundational happiness and curiosity.
                        </p>
                        <ul class="list-unstyled small text-light opacity-75 mt-3 mb-0">
                            <li><i class="bi bi-check2 text-warning me-1"></i> Child-Safe Playgrounds</li>
                            <li><i class="bi bi-check2 text-warning me-1"></i> Experiential Kreedo Labs</li>
                        </ul>
                    </div>
                </div>

                <!-- Stage 2 -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="c1-card" style="border-color: var(--c1-cyan);">
                        <span class="badge px-3 py-1 fw-bold mb-3" style="background: var(--c1-cyan); color: #040d1a;">AUDIO-VISUAL STEM</span>
                        <h5 class="fw-bold text-white c1-font-display">Primary (I - V)</h5>
                        <p class="small text-light opacity-75">
                            Language fluency, mental arithmetic dexterity, environmental studies, and interactive Tata ClassEdge visual learning.
                        </p>
                        <ul class="list-unstyled small text-light opacity-75 mt-3 mb-0">
                            <li><i class="bi bi-check2 text-info me-1"></i> Smart Board Classes</li>
                            <li><i class="bi bi-check2 text-info me-1"></i> Activity-Based Learning</li>
                        </ul>
                    </div>
                </div>

                <!-- Stage 3 -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="c1-card" style="border-color: #00e676;">
                        <span class="badge bg-success text-white px-3 py-1 fw-bold mb-3">EXPERIMENTAL LABS</span>
                        <h5 class="fw-bold text-white c1-font-display">Middle (VI - VIII)</h5>
                        <p class="small text-light opacity-75">
                            Hands-on physics, chemistry & biology labs, robotics kits, multilingual debates, and house sports tournaments.
                        </p>
                        <ul class="list-unstyled small text-light opacity-75 mt-3 mb-0">
                            <li><i class="bi bi-check2 text-success me-1"></i> Science & Robotics Labs</li>
                            <li><i class="bi bi-check2 text-success me-1"></i> 4-House Leadership</li>
                        </ul>
                    </div>
                </div>

                <!-- Stage 4 -->
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="c1-card" style="border-color: #ff5252;">
                        <span class="badge bg-danger text-white px-3 py-1 fw-bold mb-3">CBSE BOARD & FOUNDATION</span>
                        <h5 class="fw-bold text-white c1-font-display">Secondary (IX - X)</h5>
                        <p class="small text-light opacity-75">
                            Rigorous CBSE board exam prep, mock drills, career mentoring, and integrated IIT-JEE / NEET foundation coaching.
                        </p>
                        <ul class="list-unstyled small text-light opacity-75 mt-3 mb-0">
                            <li><i class="bi bi-check2 text-danger me-1"></i> 100% Board Pass History</li>
                            <li><i class="bi bi-check2 text-danger me-1"></i> PU Science Alignment</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. LIVE NOTICES & CIRCULARS TERMINAL (Dynamic Repeater) -->
    <section class="c1-section">
        <div class="container">
            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                <div>
                    <div class="c1-cyber-pill mb-2"><i class="bi bi-bell-fill"></i> OFFICIAL ANNOUNCEMENTS</div>
                    <h2 class="display-6 fw-bold text-white c1-font-display mb-0">School News & Circulars</h2>
                </div>
                <a href="~/News/NewsEvents.aspx" runat="server" class="c1-btn-glass py-2 px-4 mt-3 mt-md-0">
                    <span>View All Circulars</span>
                    <i class="bi bi-chevron-right"></i>
                </a>
            </div>

            <div class="row g-3">
                <asp:Repeater ID="rptFeaturedNews" runat="server">
                    <ItemTemplate>
                        <div class="col-12" data-aos="fade-up">
                            <div class="c1-notice-row">
                                <div class="d-flex align-items-center gap-3">
                                    <div class="rounded-3 text-center p-2" style="background: rgba(0, 242, 254, 0.1); border: 1px solid rgba(0, 242, 254, 0.3); min-width: 60px;">
                                        <span class="d-block fw-bold fs-5" style="color: var(--c1-cyan);"><%# Eval("PublishedDate", "{0:dd}") %></span>
                                        <small class="text-light opacity-75 text-uppercase" style="font-size: 0.7rem;"><%# Eval("PublishedDate", "{0:MMM}") %></small>
                                    </div>
                                    <div>
                                        <span class="badge bg-secondary mb-1" style="font-size: 0.7rem;"><%# Eval("Category") %></span>
                                        <h5 class="fw-bold text-white mb-1 c1-font-display"><%# Eval("Title") %></h5>
                                        <p class="small text-light opacity-75 mb-0"><%# Eval("Summary") != DBNull.Value ? Eval("Summary") : "" %></p>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <%# !string.IsNullOrEmpty(Eval("AttachmentUrl")?.ToString()) ? "<span class='badge bg-danger'><i class='bi bi-file-earmark-pdf me-1'></i>PDF</span>" : "" %>
                                    <a href='<%# ResolveUrl("~/News/NewsDetail.aspx?id=" + Eval("NewsId")) %>' class="btn btn-sm btn-outline-info">
                                        Read <i class="bi bi-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>

    <!-- 6. HIGH CONVERTING ADMISSIONS BANNER (Dynamic ERP / Google Drive Link) -->
    <section class="py-5">
        <div class="container">
            <div class="c1-cta-box" data-aos="zoom-in">
                <span class="badge bg-warning text-dark px-3 py-2 fw-bold text-uppercase mb-3" style="letter-spacing: 1px;">Admissions Open 2026-27</span>
                <h2 class="display-5 fw-bold text-white c1-font-display mb-3">Begin Your Child's Journey at Chetan Public School</h2>
                <p class="lead text-light opacity-75 max-w-700 mx-auto mb-4">
                    Kindergarten to Class X applications are processed seamlessly through our school ERP and Google Drive portal.
                </p>
                <div class="d-flex flex-wrap justify-content-center gap-3">
                    <a id="lnkBottomAdmission" runat="server" target="_blank" class="c1-btn-cyber px-5 py-3">
                        <i class="bi bi-box-arrow-up-right fs-5"></i>
                        <span>Apply Online via ERP / Google Drive</span>
                    </a>
                    <a href="~/Admissions/AdmissionProcedure.aspx" runat="server" class="c1-btn-glass px-4 py-3">
                        <i class="bi bi-info-circle fs-5"></i>
                        <span>Admission Criteria & Guidelines</span>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- 7. Dynamic Notice Modal with Photo Upload -->
    <asp:Panel ID="pnlNoticeModal" runat="server" Visible="false">
        <div class="modal fade" id="schoolNoticeModal" tabindex="-1" aria-labelledby="schoolNoticeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0 shadow-lg rounded-4 overflow-hidden" style="background: #07152b; color: #fff; border: 1px solid rgba(0, 242, 254, 0.4) !important;">
                    <div class="modal-header border-0 py-3" style="background: rgba(0, 242, 254, 0.15);">
                        <h5 class="modal-title fw-bold text-white c1-font-display" id="schoolNoticeModalLabel">
                            <i class="bi bi-megaphone-fill text-warning me-2"></i>
                            <asp:Literal ID="litModalTitle" runat="server" />
                        </h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-0 text-center">
                        <asp:Image ID="imgModalPhoto" runat="server" CssClass="img-fluid w-100" Style="max-height: 480px; object-fit: contain; background-color: #040d1a;" />
                        <div class="p-4 text-start">
                            <p class="lead fs-6 mb-3 text-light opacity-90">
                                <asp:Literal ID="litModalDescription" runat="server" />
                            </p>
                            <div class="d-flex justify-content-between align-items-center flex-wrap gap-2 pt-3 border-top" style="border-color: rgba(255, 255, 255, 0.1) !important;">
                                <span class="badge py-2 px-3" style="background: rgba(0, 242, 254, 0.1); color: var(--c1-cyan);">
                                    <i class="bi bi-shield-check me-1"></i> Chetan Public School Official Notice
                                </span>
                                <div>
                                    <asp:HyperLink ID="lnkModalAction" runat="server" Target="_blank" CssClass="c1-btn-cyber py-2 px-3 fs-6">
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
