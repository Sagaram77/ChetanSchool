<%@ Page Title="IIT-JEE & NTSE Coaching" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="CompetitiveCoaching.aspx.cs" Inherits="Chetancbsewebsite.Academics.CompetitiveCoaching" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Integrated IIT-JEE, NEET & NTSE Foundation</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Academics</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Competitive Coaching</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Distinctive Academic Edge</span>
                <h2 class="fw-bold text-primary mb-3">Building Competitive Foundations from Class IX</h2>
                
                <p class="lead text-primary fw-semibold">
                    Chetan Public School pioneered a unique model of academic acceleration in Hubballi by "in-sourcing" senior professors and subject matter specialists from the prestigious <strong>Chetan Pre-University Science College</strong>.
                </p>

                <p class="text-secondary">
                    While conventional schooling strictly confines itself to board syllabi, our integrated foundation bridges the gap between secondary school concepts and high-stakes national competitive examinations such as IIT-JEE, NEET, Olympiads, and the National Talent Search Examination (NTSE).
                </p>

                <!-- Program Highlights Box -->
                <div class="card border-0 bg-light rounded-4 p-4 my-4 border-start border-4 border-warning shadow-sm">
                    <h5 class="fw-bold text-primary mb-2"><i class="bi bi-star-fill text-warning me-2"></i> The Chetan Advantage</h5>
                    <p class="text-secondary m-0">
                        Students of Classes 9 and 10 receive weekly dedicated foundation modules in Advanced Physics, Chemistry, and Mathematics directly from experienced PU lecturers who have mentored multiple Karnataka State Toppers and National Rank Holders.
                    </p>
                </div>

                <h4 class="fw-bold text-primary mt-4 mb-3">Key Competitive Modules</h4>

                <div class="row g-4">
                    <!-- NTSE -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="feature-icon-box mb-3"><i class="bi bi-award-fill"></i></div>
                            <h5 class="fw-bold text-primary">NTSE Intensive Mentorship (Class X)</h5>
                            <p class="small text-secondary mb-3">
                                Comprehensive preparation for the National Talent Search Examination conducted by NCERT:
                            </p>
                            <ul class="small text-secondary ps-3 mb-0">
                                <li>Mental Ability Test (MAT): Logic, pattern recognition, series, and abstract spatial reasoning.</li>
                                <li>Scholastic Aptitude Test (SAT): Deep conceptual clarity across Physics, Chemistry, Biology, Mathematics, and Social Sciences.</li>
                                <li>Regular simulated mock tests to enhance speed and time management.</li>
                            </ul>
                        </div>
                    </div>

                    <!-- IIT & NEET -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="feature-icon-box mb-3"><i class="bi bi-mortarboard-fill"></i></div>
                            <h5 class="fw-bold text-primary">IIT-JEE & NEET Foundation (Classes IX & X)</h5>
                            <p class="small text-secondary mb-3">
                                Structured curriculum strengthening fundamental scientific reasoning:
                            </p>
                            <ul class="small text-secondary ps-3 mb-0">
                                <li>Physics: Mechanics, optics, electricity, and numerical problem solving.</li>
                                <li>Chemistry: Mole concept, periodic properties, chemical bonding, and atomic structure.</li>
                                <li>Mathematics: Advanced algebra, coordinate geometry, trigonometry, and analytical theorems.</li>
                                <li>Biology: Cellular processes, human physiology, and genetics foundation.</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Proven Track Record -->
                <h4 class="fw-bold text-primary mt-5 mb-3">Legacy of State Ranks & Board Centums</h4>
                <p class="text-secondary">
                    Our rigorous academic foundation consistently yields stellar results at both state and national platforms:
                </p>

                <div class="row g-3">
                    <div class="col-md-6">
                        <div class="p-3 bg-white rounded-4 border shadow-sm text-center">
                            <div class="display-6 fw-bold text-primary mb-1">2nd Rank</div>
                            <strong class="d-block text-dark">Sneha Hiremani</strong>
                            <div class="text-warning fw-bold small">99.52% in Karnataka State (622/625)</div>
                            <small class="text-muted">Centums in Kannada, Hindi, Mathematics, and Science</small>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="p-3 bg-white rounded-4 border shadow-sm text-center">
                            <div class="display-6 fw-bold text-primary mb-1">2nd Rank</div>
                            <strong class="d-block text-dark">Anusha Prasad</strong>
                            <div class="text-warning fw-bold small">99.36% in Karnataka State (621/625)</div>
                            <small class="text-muted">Multiple subject centums and academic honors</small>
                        </div>
                    </div>
                </div>

                <div class="mt-4 pt-3 border-top">
                    <a id="lnkApplyAdmission" runat="server" target="_blank" class="btn btn-warning fw-bold text-dark px-4 py-2 shadow-sm me-2">
                        <i class="bi bi-pencil-square me-1"></i> Apply for 2026-27 Admission
                    </a>
                    <a href="~/StudentLife/Achievements.aspx" runat="server" class="btn btn-outline-primary px-4 py-2">
                        View Student Achievements <i class="bi bi-arrow-right ms-1"></i>
                    </a>
                </div>
            </div>

            <!-- Sidebar Column -->
            <div class="col-lg-4">
                <div class="card border-0 shadow-sm rounded-4 mb-4">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h6 class="fw-bold text-primary m-0"><i class="bi bi-journal-bookmark me-2"></i> In Academics</h6>
                    </div>
                    <div class="card-body p-3">
                        <div class="list-group list-group-flush">
                            <a href="~/Academics/Curriculum.aspx" runat="server" class="list-group-item list-group-item-action">CBSE Curriculum</a>
                            <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">IIT-JEE & NTSE Coaching</a>
                            <a href="~/Academics/Faculty.aspx" runat="server" class="list-group-item list-group-item-action">Faculty Directory</a>
                            <a href="~/Academics/AcademicCalendar.aspx" runat="server" class="list-group-item list-group-item-action">Academic Calendar</a>
                            <a href="~/Academics/BooksList.aspx" runat="server" class="list-group-item list-group-item-action">Prescribed Books List</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Need More Details?</h5>
                    <p class="small text-white-50 mb-3">Speak with our academic counselors regarding foundation batch schedules and admissions.</p>
                    <a href="~/Contact/ContactUs.aspx" runat="server" class="btn btn-outline-light w-100">
                        <i class="bi bi-telephone-fill me-1"></i> Contact Academic Office
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
