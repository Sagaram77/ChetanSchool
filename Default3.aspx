<%@ Page Title="Vibrant & Holistic Student Life | Chetan Public School" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="Chetancbsewebsite.Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="~/Assets/css/modern-concepts.css" rel="stylesheet" />
    <style>
        /* Concept 3: Vibrant Child-Centric & Holistic Student Life Specifics */
        .vibrant-hero-section {
            background: radial-gradient(circle at 90% 15%, rgba(245, 158, 11, 0.18) 0%, transparent 45%),
                        radial-gradient(circle at 10% 85%, rgba(13, 148, 136, 0.18) 0%, transparent 45%),
                        linear-gradient(135deg, #09203f 0%, #173b6c 50%, #0d9488 100%);
            color: #ffffff;
            padding: 85px 0 110px;
            position: relative;
            overflow: hidden;
        }

        .sticker-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 18px;
            border-radius: 50px;
            font-size: 0.88rem;
            font-weight: 700;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease;
        }

        .sticker-badge:hover {
            transform: scale(1.05) rotate(-1deg);
        }

        .sticker-gold { background: #f59e0b; color: #0b1e36; }
        .sticker-teal { background: #14b8a6; color: #ffffff; }
        .sticker-coral { background: #f43f5e; color: #ffffff; }

        .vibrant-showcase-circle {
            width: 380px;
            height: 380px;
            border-radius: 50%;
            border: 6px solid rgba(255, 255, 255, 0.25);
            overflow: hidden;
            box-shadow: 0 25px 60px rgba(0, 0, 0, 0.35);
            margin: auto;
            position: relative;
        }

        .vibrant-showcase-circle img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.6s ease;
        }

        .vibrant-showcase-circle:hover img {
            transform: scale(1.08);
        }

        .floating-sticker {
            position: absolute;
            z-index: 5;
            padding: 10px 16px;
            border-radius: 50px;
            font-size: 0.85rem;
            font-weight: 700;
            box-shadow: 0 12px 28px rgba(0, 0, 0, 0.25);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .sticker-pos-1 { top: 15px; left: -10px; }
        .sticker-pos-2 { bottom: 25px; right: -15px; }

        .timeline-step-card {
            background: #ffffff;
            border-radius: 18px;
            padding: 24px;
            border-top: 4px solid #0d9488;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease;
        }

        .timeline-step-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 18px 35px rgba(13, 148, 136, 0.15);
        }

        .testimonial-bubble {
            background: #ffffff;
            border-radius: 20px;
            padding: 28px;
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.06);
            border-left: 5px solid #14b8a6;
            height: 100%;
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
                <a href="~/Default2.aspx" runat="server" class="concept-preview-pill">
                    <i class="bi bi-bank2"></i> Concept 2: Heritage & Distinction
                </a>
                <a href="~/Default3.aspx" runat="server" class="concept-preview-pill active">
                    <i class="bi bi-stars"></i> Concept 3: Vibrant Student Life
                </a>
                <a href="~/Default.aspx" runat="server" class="concept-preview-pill">
                    <i class="bi bi-window"></i> Classic Standard
                </a>
            </div>
        </div>
    </div>

    <!-- B. Hero Section: Vibrant & Child-Centric Energy -->
    <section class="vibrant-hero-section">
        <div class="container position-relative" style="z-index: 2;">
            <div class="row align-items-center g-5">
                <!-- Left: Headline & High-Converting CTAs -->
                <div class="col-lg-7">
                    <div class="d-flex flex-wrap gap-2 mb-3">
                        <span class="sticker-badge sticker-gold">
                            <i class="bi bi-star-fill"></i> CBSE Affiliated: 831020
                        </span>
                        <span class="sticker-badge sticker-teal">
                            <i class="bi bi-heart-fill"></i> Child-Centric Holistic Learning
                        </span>
                    </div>

                    <h1 class="display-4 fw-bold mb-3 text-white">
                        Every Child Shines at Chetan Public School
                    </h1>
                    <p class="lead text-white-50 mb-4" style="font-size: 1.15rem; line-height: 1.7;">
                        Inspiring curiosity, confidence, and leadership. From joyful kindergarten play-way classrooms to 
                        integrated IIT/NEET competitive preparation, we guide young learners to discover their limitless potential.
                    </p>

                    <div class="d-flex flex-wrap align-items-center gap-3 mb-5">
                        <a id="lnkHeroAdmission" runat="server" target="_blank" class="btn btn-warning btn-lg fw-bold text-dark px-4 py-3 btn-shimmer shadow-lg">
                            <i class="bi bi-pencil-square me-2"></i> Enroll for 2026-27 (ERP)
                        </a>
                        <a href="~/StudentLife/Activities.aspx" runat="server" class="btn btn-outline-light btn-lg px-4 py-3 fw-semibold">
                            <i class="bi bi-palette me-2"></i> Student Life & Clubs
                        </a>
                    </div>

                    <!-- Micro Feature Tags -->
                    <div class="d-flex flex-wrap gap-3">
                        <div class="d-flex align-items-center gap-2 text-white-50 small">
                            <i class="bi bi-check-circle-fill text-warning"></i> Tata ClassEdge Audio-Visuals
                        </div>
                        <div class="d-flex align-items-center gap-2 text-white-50 small">
                            <i class="bi bi-check-circle-fill text-info"></i> Taekwondo, Skating & Sports
                        </div>
                        <div class="d-flex align-items-center gap-2 text-white-50 small">
                            <i class="bi bi-check-circle-fill text-success"></i> Safe GPS Bus Fleet
                        </div>
                    </div>
                </div>

                <!-- Right: Visual Circular Showcase with Floating Stickers -->
                <div class="col-lg-5 text-center position-relative">
                    <!-- Floating Sticker 1 -->
                    <div class="floating-sticker sticker-gold sticker-pos-1 animate-float-slow">
                        <i class="bi bi-trophy-fill"></i> 100% Board Pass Result
                    </div>

                    <!-- Circular Image Frame -->
                    <div class="vibrant-showcase-circle">
                        <img src="https://images.unsplash.com/photo-1577896851231-70ef18881754?auto=format&fit=crop&w=800&q=80" 
                             alt="Joyful Learning at Chetan Public School" />
                    </div>

                    <!-- Floating Sticker 2 -->
                    <div class="floating-sticker sticker-coral sticker-pos-2 animate-float-reverse">
                        <i class="bi bi-robot"></i> Robotics & Science Labs
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- C. Why Parents Choose Chetan Public School (Interactive Tabbed Navigator) -->
    <section class="py-5 bg-white">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5">
                <span class="badge-smart badge-teal-glow mb-2">The CPS Advantage</span>
                <h2 class="fw-bold text-primary display-6">Why Parents Choose Us</h2>
                <p class="text-muted">A balanced, safe, and motivating atmosphere that shapes both sharp minds and warm hearts.</p>
            </div>

            <!-- Tab Buttons -->
            <ul class="nav nav-pills justify-content-center gap-2 mb-4" id="advantageTabs" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active px-4 py-2 rounded-pill fw-bold" id="tab-nurture-btn" data-bs-toggle="pill" data-bs-target="#tab-nurture" type="button" role="tab">
                        <i class="bi bi-heart-pulse me-1"></i> Nurturing Care
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link px-4 py-2 rounded-pill fw-bold" id="tab-smart-btn" data-bs-toggle="pill" data-bs-target="#tab-smart" type="button" role="tab">
                        <i class="bi bi-display me-1"></i> Smart Tech & Labs
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link px-4 py-2 rounded-pill fw-bold" id="tab-sports-btn" data-bs-toggle="pill" data-bs-target="#tab-sports" type="button" role="tab">
                        <i class="bi bi-trophy me-1"></i> Sports & Fitness
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link px-4 py-2 rounded-pill fw-bold" id="tab-iit-btn" data-bs-toggle="pill" data-bs-target="#tab-iit" type="button" role="tab">
                        <i class="bi bi-mortarboard me-1"></i> IIT/NEET Edge
                    </button>
                </li>
            </ul>

            <!-- Tab Content Panes -->
            <div class="tab-content border rounded-4 p-4 p-md-5 bg-light shadow-sm" id="advantageTabContent">
                <!-- Tab 1 -->
                <div class="tab-pane fade show active" id="tab-nurture" role="tabpanel">
                    <div class="row align-items-center g-4">
                        <div class="col-lg-6">
                            <h4 class="fw-bold text-primary mb-3">Individual Attention with Optimal Teacher-Student Ratios</h4>
                            <p class="text-muted">
                                Every learner is recognized as unique. Our certified NTT, PRT, and TGT educators use encouraging pedagogies, personal doubt-clearing sessions, and positive behavioral reinforcement.
                            </p>
                            <div class="row g-2 mt-2">
                                <div class="col-sm-6 small fw-semibold text-secondary"><i class="bi bi-check-circle-fill text-teal me-1 text-success"></i> Continuous Child Assessment</div>
                                <div class="col-sm-6 small fw-semibold text-secondary"><i class="bi bi-check-circle-fill text-teal me-1 text-success"></i> Regular Parent-Teacher Meets</div>
                            </div>
                        </div>
                        <div class="col-lg-6 text-center">
                            <img src="https://images.unsplash.com/photo-1580582932707-520aed937b7b?auto=format&fit=crop&w=700&q=80" 
                                 alt="Classroom Care" class="img-fluid rounded-4 shadow" />
                        </div>
                    </div>
                </div>

                <!-- Tab 2 -->
                <div class="tab-pane fade" id="tab-smart" role="tabpanel">
                    <div class="row align-items-center g-4">
                        <div class="col-lg-6">
                            <h4 class="fw-bold text-primary mb-3">100% Digitally Enabled Tata ClassEdge Classrooms</h4>
                            <p class="text-muted">
                                We transform traditional rote learning into visual storytelling and interactive 3D simulations. Science and math become alive through real-time experiments in our Composite, Physics, and Chemistry laboratories.
                            </p>
                            <a href="~/Campus/Facilities.aspx" runat="server" class="btn btn-outline-primary btn-sm px-3">
                                Discover Infrastructure <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                        <div class="col-lg-6 text-center">
                            <img src="https://images.unsplash.com/photo-1509062522246-3755977927d7?auto=format&fit=crop&w=700&q=80" 
                                 alt="Smart Classrooms" class="img-fluid rounded-4 shadow" />
                        </div>
                    </div>
                </div>

                <!-- Tab 3 -->
                <div class="tab-pane fade" id="tab-sports" role="tabpanel">
                    <div class="row align-items-center g-4">
                        <div class="col-lg-6">
                            <h4 class="fw-bold text-primary mb-3">Holistic Athletics: Martial Arts, Skating, Table Tennis & Yoga</h4>
                            <p class="text-muted">
                                Physical discipline and endurance are integral to our daily schedule. Under qualified physical education masters, students train in self-defense, track and field, and inter-school championship tournaments.
                            </p>
                            <a href="~/StudentLife/Sports.aspx" runat="server" class="btn btn-outline-success btn-sm px-3">
                                Explore Sports Programs <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                        <div class="col-lg-6 text-center">
                            <img src="https://images.unsplash.com/photo-1577896851231-70ef18881754?auto=format&fit=crop&w=700&q=80" 
                                 alt="Sports Arena" class="img-fluid rounded-4 shadow" />
                        </div>
                    </div>
                </div>

                <!-- Tab 4 -->
                <div class="tab-pane fade" id="tab-iit" role="tabpanel">
                    <div class="row align-items-center g-4">
                        <div class="col-lg-6">
                            <h4 class="fw-bold text-primary mb-3">Integrated Competitive Foundation for High Schoolers</h4>
                            <p class="text-muted">
                                Seamlessly integrated with senior academic mentors from Chetan Pre-University Science College, empowering Class VIII to X students for NTSE, Olympiads, JEE Main, and NEET fundamentals.
                            </p>
                            <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="btn btn-outline-warning btn-sm px-3 text-dark fw-bold">
                                Competitive Foundation <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                        <div class="col-lg-6 text-center">
                            <img src="https://images.unsplash.com/photo-1532094349884-543bc11b234d?auto=format&fit=crop&w=700&q=80" 
                                 alt="Foundation Coaching" class="img-fluid rounded-4 shadow" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- D. Student Growth Journey (Kindergarten to Grade 10) -->
    <section class="py-5 bg-light">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5">
                <span class="badge-smart badge-gold-glow mb-2">Growth Roadmap</span>
                <h2 class="fw-bold text-primary display-6">The CPS Learning Journey</h2>
                <p class="text-muted">Carefully scaffolded milestones from early-years joy to secondary board mastery.</p>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3">
                    <div class="timeline-step-card h-100" style="border-top-color: #f59e0b;">
                        <span class="badge bg-warning text-dark fw-bold mb-2">Stage 1</span>
                        <h5 class="fw-bold text-primary mb-2">Kindergarten (Nursery-UKG)</h5>
                        <p class="small text-muted mb-0">Sensory play, Kreedo manipulative toys, phonics foundations, and emotional warmth.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3">
                    <div class="timeline-step-card h-100" style="border-top-color: #06b6d4;">
                        <span class="badge bg-info text-white fw-bold mb-2">Stage 2</span>
                        <h5 class="fw-bold text-primary mb-2">Primary (Classes 1-5)</h5>
                        <p class="small text-muted mb-0">Experiential math, environmental discovery, multilingual fluency, and Tata ClassEdge audio-visuals.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3">
                    <div class="timeline-step-card h-100" style="border-top-color: #10b981;">
                        <span class="badge bg-success text-white fw-bold mb-2">Stage 3</span>
                        <h5 class="fw-bold text-primary mb-2">Middle (Classes 6-8)</h5>
                        <p class="small text-muted mb-0">Laboratory experimentation, robotics basics, competitive Olympiad exposure, and 4-House leadership.</p>
                    </div>
                </div>

                <div class="col-md-6 col-lg-3">
                    <div class="timeline-step-card h-100" style="border-top-color: #ef4444;">
                        <span class="badge bg-danger text-white fw-bold mb-2">Stage 4</span>
                        <h5 class="fw-bold text-primary mb-2">High School (Classes 9-10)</h5>
                        <p class="small text-muted mb-0">CBSE board excellence, IIT/NEET foundation, career mentoring, and 100% board distinction preparation.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- E. Parent & Alumni Voices -->
    <section class="py-5 bg-white">
        <div class="container py-4">
            <div class="text-center max-w-700 mx-auto mb-5">
                <span class="badge-smart badge-teal-glow mb-2">Parent Feedback</span>
                <h2 class="fw-bold text-primary display-6">Voices of Our School Family</h2>
                <p class="text-muted">Read what parents and guardians say about the nurturing ecosystem at Chetan Public School.</p>
            </div>

            <div class="row g-4">
                <div class="col-md-4">
                    <div class="testimonial-bubble">
                        <div class="text-warning mb-2 fs-5">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                        <p class="text-secondary small fst-italic mb-3">
                            "The transformation in our son's confidence and speaking fluency within one academic year has been remarkable. The teachers give genuine personal care."
                        </p>
                        <div class="d-flex align-items-center gap-2">
                            <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center fw-bold" style="width: 38px; height: 38px;">
                                RS
                            </div>
                            <div>
                                <h6 class="fw-bold text-primary mb-0 small">Rajesh Shinde</h6>
                                <small class="text-muted">Parent of Class VII Student</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="testimonial-bubble" style="border-left-color: #f59e0b;">
                        <div class="text-warning mb-2 fs-5">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                        <p class="text-secondary small fst-italic mb-3">
                            "Tata ClassEdge screens paired with practical science lab experiments make learning enjoyable. Chetan Public School provides true CBSE quality."
                        </p>
                        <div class="d-flex align-items-center gap-2">
                            <div class="rounded-circle bg-warning text-dark d-flex align-items-center justify-content-center fw-bold" style="width: 38px; height: 38px;">
                                PK
                            </div>
                            <div>
                                <h6 class="fw-bold text-primary mb-0 small">Pooja Kulkarni</h6>
                                <small class="text-muted">Parent of Class IV Student</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="testimonial-bubble" style="border-left-color: #ef4444;">
                        <div class="text-warning mb-2 fs-5">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                        <p class="text-secondary small fst-italic mb-3">
                            "The competitive foundation classes for NTSE and Olympiads gave our daughter a clear edge. She scored 96% in the Class X CBSE Board Exams."
                        </p>
                        <div class="d-flex align-items-center gap-2">
                            <div class="rounded-circle bg-danger text-white d-flex align-items-center justify-content-center fw-bold" style="width: 38px; height: 38px;">
                                AN
                            </div>
                            <div>
                                <h6 class="fw-bold text-primary mb-0 small">Anand Nadiger</h6>
                                <small class="text-muted">Alumni Parent (Batch 2024)</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- F. Live Dynamic Circulars Feed -->
    <section class="py-5 bg-light">
        <div class="container py-4">
            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                <div>
                    <span class="badge-smart badge-teal-glow mb-1">Official Circulars</span>
                    <h3 class="fw-bold text-primary mb-0">School News & Announcements</h3>
                </div>
                <a href="~/News/NewsEvents.aspx" runat="server" class="btn btn-outline-primary fw-semibold px-4">
                    All Circulars <i class="bi bi-arrow-right"></i>
                </a>
            </div>

            <div class="row g-4">
                <asp:Repeater ID="rptFeaturedNews" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6 col-lg-3">
                            <div class="card h-100 border-0 shadow-sm modern-hover-card p-3 bg-white">
                                <div class="d-flex justify-content-between align-items-center mb-2">
                                    <span class="badge bg-light text-primary border"><%# Eval("Category") %></span>
                                    <small class="text-muted"><%# Eval("PublishedDate", "{0:dd MMM yyyy}") %></small>
                                </div>
                                <h6 class="fw-bold text-primary mb-2" style="min-height: 44px;"><%# Eval("Title") %></h6>
                                <p class="text-muted small mb-3 flex-grow-1">
                                    <%# Eval("Summary") != DBNull.Value && !string.IsNullOrEmpty(Eval("Summary").ToString()) ? Eval("Summary") : "Official school notification and details." %>
                                </p>
                                <div class="pt-2 border-top d-flex justify-content-between align-items-center">
                                    <a href='<%# ResolveUrl("~/News/NewsDetail.aspx?id=" + Eval("NewsId")) %>' class="small fw-bold text-teal text-decoration-none">
                                        View Circular <i class="bi bi-chevron-right"></i>
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

    <!-- G. Dynamic Admission Ribbon (ERP / Drive Link) -->
    <section class="py-5 text-white text-center" style="background: linear-gradient(135deg, #09203f 0%, #0d9488 100%);">
        <div class="container py-4">
            <span class="badge bg-warning text-dark px-3 py-2 fw-bold text-uppercase mb-3">Academic Session 2026-27</span>
            <h2 class="display-6 fw-bold text-white mb-3">Begin Your Child's Journey of Excellence Today</h2>
            <p class="lead text-white-50 max-w-700 mx-auto mb-4">
                Online registration is open for Nursery to Class X. Access the digital admission forms directly via our school ERP / Google Drive portal.
            </p>
            <div class="d-flex flex-wrap justify-content-center gap-3">
                <a id="lnkBottomAdmission" runat="server" target="_blank" class="btn btn-warning btn-lg fw-bold text-dark px-5 py-3 btn-shimmer shadow-lg">
                    <i class="bi bi-box-arrow-up-right me-2"></i> Apply Online (ERP / Google Drive)
                </a>
                <a href="~/Contact/ContactUs.aspx" runat="server" class="btn btn-outline-light btn-lg fw-semibold px-4 py-3">
                    <i class="bi bi-telephone me-2"></i> Schedule Campus Visit
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
                        <asp:Image ID="imgModalPhoto" runat="server" CssClass="img-fluid w-100" Style="max-height: 480px; object-fit: contain; background-color: #09203f;" />
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
