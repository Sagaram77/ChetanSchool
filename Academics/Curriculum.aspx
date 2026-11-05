<%@ Page Title="CBSE Curriculum" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Curriculum.aspx.cs" Inherits="Chetancbsewebsite.Academics.Curriculum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Academic Curriculum & Pedagogy</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Academics</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Curriculum</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Learning Pathways</span>
                <h2 class="fw-bold text-primary mb-3">Comprehensive CBSE Curriculum Framework</h2>
                
                <p class="lead text-primary fw-semibold">
                    Chetan Public School follows the curriculum framed by the Central Board of Secondary Education (CBSE), New Delhi, designed to stimulate intellectual curiosity, analytical power, and moral integrity.
                </p>

                <p class="text-secondary">
                    Our pedagogy is activity-based and student-centric. We emphasize conceptual understanding over rote learning, seamlessly integrating digital learning aids (Tata ClassEdge), practical laboratory experiments, and co-curricular projects across all grade levels.
                </p>

                <!-- Academic Divisions Tabs / Accordion -->
                <div class="accordion my-4 shadow-sm rounded-4 overflow-hidden" id="curriculumAccordion">
                    <!-- Pre-Primary -->
                    <div class="accordion-item border-0 border-bottom">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button fw-bold text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <i class="bi bi-balloon-fill text-warning me-2"></i> Pre-Primary Wing (Nursery, LKG, UKG)
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#curriculumAccordion">
                            <div class="accordion-body text-secondary">
                                <p>The early childhood program provides a nurturing, cheerful play-way environment inspired by modern kindergarten and Montessori methodologies:</p>
                                <ul>
                                    <li><strong>Sensory & Motor Skills:</strong> Educational toys, clay modeling, pattern blocks, and drawing.</li>
                                    <li><strong>Language Foundation:</strong> Phonics-based reading, rhyme recitation, and guided storytelling.</li>
                                    <li><strong>Numeracy Concepts:</strong> Number rhymes, counting beads, sorting, and shape identification.</li>
                                    <li><strong>Social Habits:</strong> Table manners, sharing, personal hygiene, and emotional well-being.</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Primary Wing -->
                    <div class="accordion-item border-0 border-bottom">
                        <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed fw-bold text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <i class="bi bi-book-half text-warning me-2"></i> Primary Wing (Classes I – V)
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#curriculumAccordion">
                            <div class="accordion-body text-secondary">
                                <p>Focuses on establishing strong foundational literacy, numeracy, and environmental awareness:</p>
                                <ul>
                                    <li><strong>Languages:</strong> English (First Language), Kannada (Regional/Second Language), Hindi.</li>
                                    <li><strong>Mathematics:</strong> Hands-on concept development through our Junior Mathematics Laboratory.</li>
                                    <li><strong>Environmental Studies (EVS):</strong> Connecting classroom science to nature and society.</li>
                                    <li><strong>Computer Fundamentals:</strong> Practical digital literacy and keyboard skills.</li>
                                    <li><strong>Creative Pursuits:</strong> Art, craft, music, yoga, and physical education drills.</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Middle Wing -->
                    <div class="accordion-item border-0 border-bottom">
                        <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed fw-bold text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                <i class="bi bi-diagram-3 text-warning me-2"></i> Middle Wing (Classes VI – VIII)
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#curriculumAccordion">
                            <div class="accordion-body text-secondary">
                                <p>Nurtures higher-order critical thinking and practical experimental inquiry:</p>
                                <ul>
                                    <li><strong>Sciences:</strong> Physics, Chemistry, and Biology taught through separate laboratory sessions.</li>
                                    <li><strong>Mathematics:</strong> Algebra, geometry, statistics, and logical reasoning modules.</li>
                                    <li><strong>Social Sciences:</strong> History, Geography, and Social & Political Life.</li>
                                    <li><strong>Languages:</strong> Three-language formula (English, Kannada, Hindi / Sanskrit).</li>
                                    <li><strong>Information Technology:</strong> Coding concepts, multimedia design, and internet safety.</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Secondary Wing -->
                    <div class="accordion-item border-0">
                        <h2 class="accordion-header" id="headingFour">
                            <button class="accordion-button collapsed fw-bold text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                <i class="bi bi-mortarboard-fill text-warning me-2"></i> Secondary Wing (Classes IX & X)
                            </button>
                        </h2>
                        <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#curriculumAccordion">
                            <div class="accordion-body text-secondary">
                                <p>Rigorous preparation for CBSE All India Secondary School Examination (AISSE) with integrated competitive exam training:</p>
                                <ul>
                                    <li><strong>Core Subjects:</strong> English Language & Literature, Mathematics (Standard/Basic), Science (Physics, Chemistry, Biology), Social Science, Second Language (Kannada / Hindi).</li>
                                    <li><strong>In-Sourced Competitive Coaching:</strong> High-level problem-solving and NTSE/IIT foundation modules taught by senior professors from Chetan Pre-University Science College.</li>
                                    <li><strong>Laboratory Practicals:</strong> Individual student practicals to ensure mastery of experimental methodology.</li>
                                    <li><strong>Continuous Testing:</strong> Periodic assessments, term exams, and intensive pre-board mock series.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Assessment Methodology -->
                <h4 class="fw-bold text-primary mt-4 mb-3">Evaluation & Assessment Scheme</h4>
                <p class="text-secondary">
                    In strict accordance with CBSE directives, the school follows a continuous and comprehensive evaluation system:
                </p>
                <div class="row g-3">
                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-3 border">
                            <strong class="text-primary d-block mb-1">Periodic Assessments (Internal)</strong>
                            <p class="small text-muted mb-0">Periodic unit tests, notebook submissions, subject enrichment activities (lab practicals, projects, oral presentations), and class participation.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-3 border">
                            <strong class="text-primary d-block mb-1">Term-End Examinations</strong>
                            <p class="small text-muted mb-0">Summative assessments covering full conceptual depth with analytical and case-study questions aligned with the latest CBSE board pattern.</p>
                        </div>
                    </div>
                </div>

                <div class="mt-4 pt-3 border-top">
                    <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="btn btn-primary fw-semibold px-4 py-2 me-2">
                        <i class="bi bi-award me-1"></i> Competitive Coaching (IIT/NTSE)
                    </a>
                    <a href="~/Academics/BooksList.aspx" runat="server" class="btn btn-outline-secondary px-4 py-2">
                        Prescribed Book List
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
                            <a href="~/Academics/Curriculum.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">CBSE Curriculum</a>
                            <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="list-group-item list-group-item-action">IIT-JEE & NTSE Coaching</a>
                            <a href="~/Academics/Faculty.aspx" runat="server" class="list-group-item list-group-item-action">Faculty Directory</a>
                            <a href="~/Academics/AcademicCalendar.aspx" runat="server" class="list-group-item list-group-item-action">Academic Calendar</a>
                            <a href="~/Academics/BooksList.aspx" runat="server" class="list-group-item list-group-item-action">Prescribed Books List</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Admissions 2026-27</h5>
                    <p class="small text-white-50 mb-3">Online admission application forms are available via Google Drive / ERP.</p>
                    <a id="lnkSidebarAdmission" runat="server" target="_blank" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-box-arrow-up-right me-1"></i> Open Admission Form
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
