<%@ Page Title="Vibrant & Child-Centric Learning | Chetan Public School" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="Chetancbsewebsite.Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <!-- Google Fonts: Fredoka (Playful Rounded Headings) & Urbanist (Clean Modern Body) -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Fredoka:wght@500;600;700&family=Urbanist:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
    
    <!-- AOS (Animate On Scroll) -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />

    <style>
        /* ==========================================================================
           CONCEPT 3: THE VIBRANT PLAYGROUND OF CURIOSITY
           Engaging, Child-Centric, Joyful & Modern
           ========================================================================== */
        
        :root {
            --c3-teal: #00b4d8;
            --c3-mint: #06d6a0;
            --c3-coral: #ff6b6b;
            --c3-yellow: #ffd166;
            --c3-purple: #8338ec;
            --c3-dark: #0f172a;
            --c3-bg: #f8fafc;
        }

        body {
            font-family: 'Urbanist', sans-serif;
            background-color: var(--c3-bg);
            color: #334155;
            overflow-x: hidden;
        }

        .c3-font-heading {
            font-family: 'Fredoka', cursive, sans-serif;
        }

        /* ---------------- Concept Switcher Toolbar ---------------- */
        .c3-switcher-bar {
            background: #0f172a;
            border-bottom: 2px solid var(--c3-mint);
            padding: 10px 16px;
            position: sticky;
            top: 0;
            z-index: 1020;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        .c3-switcher-btn {
            padding: 6px 14px;
            font-size: 0.82rem;
            font-weight: 700;
            border-radius: 50px;
            text-decoration: none;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            border: 1px solid rgba(255, 255, 255, 0.15);
            color: #94a3b8;
        }

        .c3-switcher-btn:hover {
            color: #ffffff;
            transform: translateY(-2px);
            border-color: var(--c3-mint);
        }

        .c3-switcher-btn.active {
            background: linear-gradient(135deg, var(--c3-coral), var(--c3-yellow));
            color: #0f172a;
            font-weight: 800;
            border-color: transparent;
            box-shadow: 0 4px 15px rgba(255, 107, 107, 0.4);
        }

        /* ---------------- Playful Creative Hero ---------------- */
        .c3-hero {
            background: radial-gradient(circle at 90% 10%, rgba(255, 209, 102, 0.2) 0%, transparent 40%),
                        radial-gradient(circle at 10% 80%, rgba(6, 214, 160, 0.15) 0%, transparent 40%),
                        linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #0d9488 100%);
            color: #ffffff;
            padding: 80px 0 110px;
            position: relative;
            overflow: hidden;
        }

        .c3-sticker {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 18px;
            border-radius: 50px;
            font-size: 0.88rem;
            font-weight: 700;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease;
        }

        .c3-sticker-coral { background: var(--c3-coral); color: #ffffff; }
        .c3-sticker-mint { background: var(--c3-mint); color: #0f172a; }
        .c3-sticker-yellow { background: var(--c3-yellow); color: #0f172a; }
        .c3-sticker-purple { background: var(--c3-purple); color: #ffffff; }

        .c3-hero-title {
            font-size: 3.6rem;
            font-weight: 700;
            line-height: 1.15;
            color: #ffffff;
            margin-bottom: 20px;
        }

        @media (max-width: 991px) {
            .c3-hero-title { font-size: 2.5rem; }
        }

        .c3-btn-bounce {
            background: linear-gradient(135deg, #ff6b6b 0%, #ff8e53 100%);
            color: #ffffff !important;
            font-weight: 800;
            font-size: 1.05rem;
            padding: 16px 36px;
            border-radius: 50px;
            border: none;
            box-shadow: 0 10px 25px rgba(255, 107, 107, 0.4);
            transition: all 0.35s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .c3-btn-bounce:hover {
            transform: translateY(-4px) scale(1.03);
            box-shadow: 0 15px 35px rgba(255, 107, 107, 0.6);
        }

        .c3-btn-outline {
            background: rgba(255, 255, 255, 0.1);
            border: 2px solid rgba(255, 255, 255, 0.3);
            color: #ffffff !important;
            font-weight: 700;
            padding: 16px 32px;
            border-radius: 50px;
            backdrop-filter: blur(8px);
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .c3-btn-outline:hover {
            background: rgba(255, 255, 255, 0.25);
            border-color: #ffffff;
            transform: translateY(-3px);
        }

        /* Circular Hero Image Showcase */
        .c3-circle-frame {
            width: 390px;
            height: 390px;
            border-radius: 50%;
            border: 8px solid rgba(255, 255, 255, 0.2);
            overflow: hidden;
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.4);
            margin: auto;
            position: relative;
        }

        .c3-circle-frame img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s ease;
        }

        .c3-circle-frame:hover img {
            transform: scale(1.08);
        }

        .c3-float-tag {
            position: absolute;
            z-index: 10;
            padding: 10px 18px;
            border-radius: 50px;
            font-weight: 700;
            font-size: 0.85rem;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.25);
            display: flex;
            align-items: center;
            gap: 8px;
            animation: c3Float 4s ease-in-out infinite;
        }

        @keyframes c3Float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .c3-tag-top { top: 15px; left: -10px; }
        .c3-tag-bottom { bottom: 20px; right: -15px; animation-delay: 2s; }

        /* ---------------- Day in the Life Step Cards ---------------- */
        .c3-step-card {
            background: #ffffff;
            border-radius: 20px;
            padding: 28px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
            border: 1px solid #e2e8f0;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            height: 100%;
        }

        .c3-step-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }

        .c3-time-badge {
            font-weight: 800;
            font-size: 0.85rem;
            padding: 4px 12px;
            border-radius: 30px;
            display: inline-block;
            margin-bottom: 14px;
        }

        /* ---------------- Testimonial Wall ---------------- */
        .c3-love-bubble {
            background: #ffffff;
            border-radius: 24px;
            padding: 32px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.06);
            border: 1px solid #f1f5f9;
            height: 100%;
            transition: transform 0.3s ease;
        }

        .c3-love-bubble:hover {
            transform: translateY(-6px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
        }

        /* ---------------- Pinboard Circulars ---------------- */
        .c3-pin-card {
            background: #ffffff;
            border-radius: 18px;
            padding: 24px;
            border: 1px solid #e2e8f0;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.05);
            transition: all 0.3s ease;
            height: 100%;
        }

        .c3-pin-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 18px 35px rgba(0, 0, 0, 0.1);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Concept Switcher Bar (Sticky Top) -->
    <div class="c3-switcher-bar">
        <div class="container d-flex flex-wrap justify-content-between align-items-center gap-2">
            <div class="d-flex align-items-center gap-2">
                <span class="badge bg-success text-uppercase px-2 py-1" style="font-size: 0.7rem; font-weight: 700; letter-spacing: 1px;">Creative Style</span>
                <span class="small fw-bold text-white">Concept 3: Child-Centric, Vibrant & Joyful Journey</span>
            </div>
            <div class="d-flex flex-wrap gap-2">
                <a href="~/Default1.aspx" runat="server" class="c3-switcher-btn">
                    <i class="bi bi-cpu text-info"></i> Concept 1: Smart Campus
                </a>
                <a href="~/Default2.aspx" runat="server" class="c3-switcher-btn">
                    <i class="bi bi-award text-warning"></i> Concept 2: Royal Heritage
                </a>
                <a href="~/Default3.aspx" runat="server" class="c3-switcher-btn active">
                    <i class="bi bi-balloon-fill text-danger"></i> Concept 3: Vibrant Student Life
                </a>
                <a href="~/Default.aspx" runat="server" class="c3-switcher-btn">
                    <i class="bi bi-layout-text-sidebar"></i> Classic Standard
                </a>
            </div>
        </div>
    </div>

    <!-- 1. HERO SECTION: Vibrant, Child-Centric & Engaging -->
    <section class="c3-hero">
        <div class="container position-relative" style="z-index: 2;">
            <div class="row align-items-center g-5">
                <!-- Left: Headline & Call to Action -->
                <div class="col-lg-7" data-aos="fade-right">
                    <div class="d-flex flex-wrap gap-2 mb-3">
                        <span class="c3-sticker c3-sticker-yellow">
                            <i class="bi bi-mortarboard-fill"></i> CBSE AFFILIATED: 831020
                        </span>
                        <span class="c3-sticker c3-sticker-mint">
                            <i class="bi bi-heart-fill"></i> HOLISTIC CHILD CARE
                        </span>
                    </div>

                    <h1 class="c3-hero-title c3-font-heading">
                        Where Joyful Curiosity Meets CBSE Scholastic Brilliance!
                    </h1>
                    <p class="lead text-light opacity-90 mb-4" style="font-size: 1.15rem; line-height: 1.75; max-width: 620px;">
                        At Chetan Public School, Akshay Nagar, Hubballi, we nurture curious thinkers, creative artists, and resilient sports champions. 
                        From play-based Kreedo pre-primary to 100% CBSE board distinctions, every child blossoms with confidence.
                    </p>

                    <!-- Cheerful Action Buttons -->
                    <div class="d-flex flex-wrap gap-3 mb-5">
                        <a id="lnkHeroAdmission" runat="server" target="_blank" class="c3-btn-bounce">
                            <i class="bi bi-stars fs-5"></i>
                            <span>Enroll for 2026-27 (ERP)</span>
                        </a>
                        <a href="~/StudentLife/Activities.aspx" runat="server" class="c3-btn-outline">
                            <i class="bi bi-palette fs-5"></i>
                            <span>Life Inside CPS</span>
                        </a>
                    </div>

                    <!-- Micro Feature Tags -->
                    <div class="d-flex flex-wrap gap-3">
                        <div class="d-flex align-items-center gap-2 small text-light opacity-90">
                            <i class="bi bi-check-circle-fill" style="color: var(--c3-yellow);"></i> 100% ClassEdge Tech
                        </div>
                        <div class="d-flex align-items-center gap-2 small text-light opacity-90">
                            <i class="bi bi-check-circle-fill" style="color: var(--c3-mint);"></i> Taekwondo & Skating
                        </div>
                        <div class="d-flex align-items-center gap-2 small text-light opacity-90">
                            <i class="bi bi-check-circle-fill" style="color: var(--c3-coral);"></i> Safe GPS Bus Fleet
                        </div>
                    </div>
                </div>

                <!-- Right: Visual Circular Image Showcase with Floating Stickers -->
                <div class="col-lg-5 text-center position-relative" data-aos="fade-left">
                    <!-- Floating Sticker 1 -->
                    <div class="c3-float-tag c3-tag-top c3-sticker-yellow">
                        <i class="bi bi-trophy-fill text-dark"></i>
                        <span class="text-dark">100% Board Pass History</span>
                    </div>

                    <!-- Circular Frame -->
                    <div class="c3-circle-frame">
                        <img src="https://images.unsplash.com/photo-1577896851231-70ef18881754?auto=format&fit=crop&w=800&q=80" 
                             alt="Joyful Learning at Chetan Public School" />
                    </div>

                    <!-- Floating Sticker 2 -->
                    <div class="c3-float-tag c3-tag-bottom c3-sticker-coral">
                        <i class="bi bi-robot text-white"></i>
                        <span class="text-white">Robotics & Space Tech Lab</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 2. A DAY IN THE LIFE AT CPS (Engaging Interactive Timeline) -->
    <section class="py-5 bg-white">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5" data-aos="fade-up">
                <span class="c3-sticker c3-sticker-purple mb-2">Daily Experience</span>
                <h2 class="display-6 fw-bold text-dark c3-font-heading">A Day in the Life of a CPS Student</h2>
                <p class="text-muted">A harmonious schedule balanced between deep intellectual inquiry, joyous play, and character building.</p>
            </div>

            <div class="row g-4">
                <!-- Step 1 -->
                <div class="col-md-6 col-lg" data-aos="fade-up" data-aos-delay="100">
                    <div class="c3-step-card text-center" style="border-top: 4px solid var(--c3-yellow);">
                        <span class="c3-time-badge c3-sticker-yellow">8:30 AM</span>
                        <div class="fs-1 mb-2">🧘</div>
                        <h5 class="fw-bold text-dark c3-font-heading">Assembly & Yoga</h5>
                        <p class="small text-muted mb-0">Mindfulness, national anthem, news recitation, and morning prayer.</p>
                    </div>
                </div>

                <!-- Step 2 -->
                <div class="col-md-6 col-lg" data-aos="fade-up" data-aos-delay="200">
                    <div class="c3-step-card text-center" style="border-top: 4px solid var(--c3-teal);">
                        <span class="c3-time-badge" style="background: var(--c3-teal); color: #fff;">10:00 AM</span>
                        <div class="fs-1 mb-2">💻</div>
                        <h5 class="fw-bold text-dark c3-font-heading">Smart Learning</h5>
                        <p class="small text-muted mb-0">Tata ClassEdge visual modules and interactive concept mastery.</p>
                    </div>
                </div>

                <!-- Step 3 -->
                <div class="col-md-6 col-lg" data-aos="fade-up" data-aos-delay="300">
                    <div class="c3-step-card text-center" style="border-top: 4px solid var(--c3-mint);">
                        <span class="c3-time-badge c3-sticker-mint">1:00 PM</span>
                        <div class="fs-1 mb-2">🍎</div>
                        <h5 class="fw-bold text-dark c3-font-heading">Lunch & Connect</h5>
                        <p class="small text-muted mb-0">Nutritious meals, polite dining etiquette, and green campus play.</p>
                    </div>
                </div>

                <!-- Step 4 -->
                <div class="col-md-6 col-lg" data-aos="fade-up" data-aos-delay="400">
                    <div class="c3-step-card text-center" style="border-top: 4px solid var(--c3-purple);">
                        <span class="c3-time-badge c3-sticker-purple">2:30 PM</span>
                        <div class="fs-1 mb-2">🔬</div>
                        <h5 class="fw-bold text-dark c3-font-heading">STEM & Robotics</h5>
                        <p class="small text-muted mb-0">Hands-on science experiments and computational coding logic.</p>
                    </div>
                </div>

                <!-- Step 5 -->
                <div class="col-md-6 col-lg" data-aos="fade-up" data-aos-delay="500">
                    <div class="c3-step-card text-center" style="border-top: 4px solid var(--c3-coral);">
                        <span class="c3-time-badge c3-sticker-coral">4:00 PM</span>
                        <div class="fs-1 mb-2">🥋</div>
                        <h5 class="fw-bold text-dark c3-font-heading">Sports & Arts</h5>
                        <p class="small text-muted mb-0">Taekwondo, skating, basketball, music, and joyful dismissal.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 3. THE 4 STAGES OF CHILD GROWTH -->
    <section class="py-5" style="background: #f1f5f9;">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5" data-aos="fade-up">
                <span class="c3-sticker c3-sticker-mint mb-2">Curriculum Stages</span>
                <h2 class="display-6 fw-bold text-dark c3-font-heading">Growing with Chetan Public School</h2>
                <p class="text-muted">A nurturing pathway from early childhood wonder to confident high school accomplishment.</p>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="100">
                    <div class="card h-100 border-0 p-4 rounded-4 shadow-sm" style="border-top: 5px solid var(--c3-yellow) !important;">
                        <span class="badge bg-warning text-dark align-self-start fw-bold mb-3 px-3 py-1">STAGE 1</span>
                        <h4 class="fw-bold text-dark c3-font-heading">Little Explorers</h4>
                        <div class="text-muted small mb-2 fw-semibold">Nursery, LKG & UKG</div>
                        <p class="small text-muted mb-0">Kreedo play-based toys, phonics immersion, and social bonding in a gentle environment.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="200">
                    <div class="card h-100 border-0 p-4 rounded-4 shadow-sm" style="border-top: 5px solid var(--c3-teal) !important;">
                        <span class="badge bg-info text-white align-self-start fw-bold mb-3 px-3 py-1">STAGE 2</span>
                        <h4 class="fw-bold text-dark c3-font-heading">Creative Thinkers</h4>
                        <div class="text-muted small mb-2 fw-semibold">Classes I to V</div>
                        <p class="small text-muted mb-0">Interactive smart screens, communicative English mastery, mental math, and arts & craft.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
                    <div class="card h-100 border-0 p-4 rounded-4 shadow-sm" style="border-top: 5px solid var(--c3-mint) !important;">
                        <span class="badge bg-success text-white align-self-start fw-bold mb-3 px-3 py-1">STAGE 3</span>
                        <h4 class="fw-bold text-dark c3-font-heading">Young Innovators</h4>
                        <div class="text-muted small mb-2 fw-semibold">Classes VI to VIII</div>
                        <p class="small text-muted mb-0">Physics and chemistry labs, microcontrollers, 4-house competitions, and sports leagues.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
                    <div class="card h-100 border-0 p-4 rounded-4 shadow-sm" style="border-top: 5px solid var(--c3-coral) !important;">
                        <span class="badge bg-danger text-white align-self-start fw-bold mb-3 px-3 py-1">STAGE 4</span>
                        <h4 class="fw-bold text-dark c3-font-heading">Future Leaders</h4>
                        <div class="text-muted small mb-2 fw-semibold">Classes IX & X</div>
                        <p class="small text-muted mb-0">CBSE board excellence, IIT/NEET foundation with Chetan PU Science College, and career mentorship.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 4. PARENT LOVE WALL (Testimonials) -->
    <section class="py-5 bg-white">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5" data-aos="fade-up">
                <span class="c3-sticker c3-sticker-coral mb-2">Parent Feedback</span>
                <h2 class="display-6 fw-bold text-dark c3-font-heading">Voices of Our School Family</h2>
                <p class="text-muted">Hear from families whose children thrive inside the classrooms and playgrounds of Chetan Public School.</p>
            </div>

            <div class="row g-4">
                <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                    <div class="c3-love-bubble">
                        <div class="text-warning mb-2 fs-5">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                        <p class="text-secondary small fst-italic mb-3">
                            "The individual care given to our child by the teachers is remarkable. She looks forward to going to school every single morning."
                        </p>
                        <div class="d-flex align-items-center gap-2">
                            <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center fw-bold" style="width: 40px; height: 40px;">
                                RS
                            </div>
                            <div>
                                <h6 class="fw-bold text-dark mb-0 c3-font-heading">Rajesh Shinde</h6>
                                <small class="text-muted">Parent of Class VII Student</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                    <div class="c3-love-bubble">
                        <div class="text-warning mb-2 fs-5">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                        <p class="text-secondary small fst-italic mb-3">
                            "Tata ClassEdge visual boards make science and math simple to grasp. Our son scored first-rank in his regional Olympiad."
                        </p>
                        <div class="d-flex align-items-center gap-2">
                            <div class="rounded-circle text-dark d-flex align-items-center justify-content-center fw-bold" style="width: 40px; height: 40px; background: var(--c3-yellow);">
                                PK
                            </div>
                            <div>
                                <h6 class="fw-bold text-dark mb-0 c3-font-heading">Pooja Kulkarni</h6>
                                <small class="text-muted">Parent of Class IV Student</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                    <div class="c3-love-bubble">
                        <div class="text-warning mb-2 fs-5">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                        <p class="text-secondary small fst-italic mb-3">
                            "The competitive foundation integrated with Chetan PU College gave our daughter a solid headstart for her CBSE Class X boards."
                        </p>
                        <div class="d-flex align-items-center gap-2">
                            <div class="rounded-circle text-white d-flex align-items-center justify-content-center fw-bold" style="width: 40px; height: 40px; background: var(--c3-coral);">
                                AN
                            </div>
                            <div>
                                <h6 class="fw-bold text-dark mb-0 c3-font-heading">Anand Nadiger</h6>
                                <small class="text-muted">Alumni Parent (Batch 2024)</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 5. NOTICE BOARD & CIRCULARS (Dynamic Repeater) -->
    <section class="py-5" style="background: #f8fafc;">
        <div class="container py-4">
            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                <div>
                    <span class="c3-sticker c3-sticker-yellow mb-2">School Updates</span>
                    <h2 class="display-6 fw-bold text-dark c3-font-heading mb-0">Notices & Circulars</h2>
                </div>
                <a href="~/News/NewsEvents.aspx" runat="server" class="btn btn-outline-dark rounded-pill px-4">
                    View All Circulars <i class="bi bi-arrow-right"></i>
                </a>
            </div>

            <div class="row g-4">
                <asp:Repeater ID="rptFeaturedNews" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6 col-lg-3" data-aos="fade-up">
                            <div class="c3-pin-card">
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="badge bg-light text-primary border"><%# Eval("Category") %></span>
                                    <small class="text-muted"><%# Eval("PublishedDate", "{0:dd MMM yyyy}") %></small>
                                </div>
                                <h5 class="fw-bold text-dark mb-2 c3-font-heading" style="min-height: 48px;"><%# Eval("Title") %></h5>
                                <p class="small text-muted mb-3 flex-grow-1"><%# Eval("Summary") != DBNull.Value ? Eval("Summary") : "" %></p>
                                <div class="pt-2 border-top d-flex justify-content-between align-items-center">
                                    <a href='<%# ResolveUrl("~/News/NewsDetail.aspx?id=" + Eval("NewsId")) %>' class="small fw-bold text-decoration-none" style="color: var(--c3-teal);">
                                        Read Circular <i class="bi bi-arrow-right"></i>
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

    <!-- 6. HIGH CONVERTING ADMISSIONS RIBBON (Dynamic ERP / Drive Link) -->
    <section class="py-5 text-white text-center" style="background: linear-gradient(135deg, #0f172a 0%, #1e293b 50%, #0d9488 100%);">
        <div class="container py-4">
            <span class="badge bg-warning text-dark px-3 py-2 fw-bold text-uppercase mb-3">Academic Session 2026-27</span>
            <h2 class="display-6 fw-bold c3-font-heading mb-3">Give Your Child the Foundation They Deserve</h2>
            <p class="lead text-light opacity-90 max-w-700 mx-auto mb-4">
                Admissions are open from Kindergarten to Class X. Download the complete prospectus and apply through our integrated ERP portal.
            </p>
            <div class="d-flex flex-wrap justify-content-center gap-3">
                <a id="lnkBottomAdmission" runat="server" target="_blank" class="c3-btn-bounce px-5 py-3">
                    <i class="bi bi-box-arrow-up-right fs-5"></i>
                    <span>Apply via ERP / Google Drive</span>
                </a>
                <a href="~/Contact/ContactUs.aspx" runat="server" class="c3-btn-outline px-4 py-3">
                    <i class="bi bi-geo-alt fs-5"></i>
                    <span>Campus Visit & Tour</span>
                </a>
            </div>
        </div>
    </section>

    <!-- 7. Dynamic Notice Modal with Photo Upload -->
    <asp:Panel ID="pnlNoticeModal" runat="server" Visible="false">
        <div class="modal fade" id="schoolNoticeModal" tabindex="-1" aria-labelledby="schoolNoticeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content border-0 shadow-lg rounded-4 overflow-hidden">
                    <div class="modal-header border-0 py-3 text-white" style="background: #0f172a;">
                        <h5 class="modal-title fw-bold text-white c3-font-heading" id="schoolNoticeModalLabel">
                            <i class="bi bi-megaphone-fill text-warning me-2"></i>
                            <asp:Literal ID="litModalTitle" runat="server" />
                        </h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-0 text-center">
                        <asp:Image ID="imgModalPhoto" runat="server" CssClass="img-fluid w-100" Style="max-height: 480px; object-fit: contain; background-color: #0f172a;" />
                        <div class="p-4 text-start">
                            <p class="lead fs-6 mb-3 text-dark">
                                <asp:Literal ID="litModalDescription" runat="server" />
                            </p>
                            <div class="d-flex justify-content-between align-items-center flex-wrap gap-2 pt-3 border-top">
                                <span class="badge bg-light text-muted border py-2 px-3">
                                    <i class="bi bi-info-circle me-1"></i> Chetan Public School Official Bulletin
                                </span>
                                <div>
                                    <asp:HyperLink ID="lnkModalAction" runat="server" Target="_blank" CssClass="c3-btn-bounce py-2 px-3 fs-6">
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
