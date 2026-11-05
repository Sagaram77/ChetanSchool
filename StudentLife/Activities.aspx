<%@ Page Title="Co-Curricular Activities & Clubs" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Activities.aspx.cs" Inherits="Chetancbsewebsite.StudentLife.Activities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Co-Curricular Activities & Clubs</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Student Life</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Activities & Clubs</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Beyond the Classroom</span>
                <h2 class="fw-bold text-primary mb-3">Holistic Personality Development</h2>
                
                <p class="lead text-primary fw-semibold">
                    At Chetan Public School, education thrives far beyond textbooks. We offer a multifaceted spectrum of cultural, literary, and scientific activities to spark creativity, public confidence, and teamwork.
                </p>

                <!-- Activity Category Cards -->
                <div class="row g-4 my-3">
                    <!-- International Yoga Day -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="feature-icon-box mb-3"><i class="bi bi-heart-pulse-fill"></i></div>
                            <h5 class="fw-bold text-primary">Yoga & Wellness</h5>
                            <p class="small text-secondary mb-0">
                                Regular yoga practice under certified yoga instructors. Every year, over 800 students and teachers perform synchronised Yogasanas and Pranayama under national themes like <em>"Yoga for Humanity"</em> to foster physical vigor and mindfulness.
                            </p>
                        </div>
                    </div>

                    <!-- Cultural Festivals -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="feature-icon-box mb-3"><i class="bi bi-palette-fill"></i></div>
                            <h5 class="fw-bold text-primary">Festivals of India</h5>
                            <p class="small text-secondary mb-0">
                                Celebrating unity in diversity: <strong>Karnataka Rajyotsava</strong> (celebrating Kannada heritage), <strong>Deepavali</strong> (Laxmi Pooja, dance, Ramayana drama skits), <strong>Ramazan</strong> (Qawwali, Quran recitation assemblies), and Christmas carol drives.
                            </p>
                        </div>
                    </div>

                    <!-- Eco Club & Environment -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="feature-icon-box mb-3"><i class="bi bi-tree-fill"></i></div>
                            <h5 class="fw-bold text-primary">Eco Club & Green Drives</h5>
                            <p class="small text-secondary mb-0">
                                Observances of <strong>World Environment Day</strong>, <strong>Earth Day</strong>, and <strong>World Bicycle Day</strong> with community tree-planting campaigns, awareness rallies with student-made placards, and campus waste management audits.
                            </p>
                        </div>
                    </div>

                    <!-- Literary & Debates -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="feature-icon-box mb-3"><i class="bi bi-mic-fill"></i></div>
                            <h5 class="fw-bold text-primary">Literary & Debate Forum</h5>
                            <p class="small text-secondary mb-0">
                                Nurturing persuasive orators and analytical thinkers. Students actively participate in prestigious regional platforms like <em>Verbattle</em>, Rotary Club Elocutions, and the <em>Sir C.V. Raman Science Quiz</em>.
                            </p>
                        </div>
                    </div>

                    <!-- Student Council -->
                    <div class="col-12">
                        <div class="card border-0 bg-light rounded-4 p-4">
                            <div class="d-flex align-items-center gap-3 mb-2">
                                <div class="bg-primary text-white rounded-circle p-2 d-flex align-items-center justify-content-center" style="width: 45px; height: 45px;">
                                    <i class="bi bi-people-fill"></i>
                                </div>
                                <h5 class="fw-bold text-primary m-0">Democratic Student Council Elections & Investiture</h5>
                            </div>
                            <p class="small text-secondary mb-0">
                                Students elect their Head Boy, Head Girl, Sports Captains, and House Leaders through secret ballot voting, providing an authentic hands-on introduction to democratic governance, accountability, and public leadership.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="mt-4 pt-3 border-top">
                    <a href="~/Gallery/PhotoGallery.aspx" runat="server" class="btn btn-primary fw-semibold px-4 py-2 me-2">
                        <i class="bi bi-images me-1"></i> View Activities Photo Gallery
                    </a>
                    <a href="~/StudentLife/Sports.aspx" runat="server" class="btn btn-outline-secondary px-4 py-2">
                        Sports & Athletics <i class="bi bi-arrow-right ms-1"></i>
                    </a>
                </div>
            </div>

            <!-- Sidebar Column -->
            <div class="col-lg-4">
                <div class="card border-0 shadow-sm rounded-4 mb-4">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h6 class="fw-bold text-primary m-0"><i class="bi bi-stars me-2"></i> Student Life</h6>
                    </div>
                    <div class="card-body p-3">
                        <div class="list-group list-group-flush">
                            <a href="~/StudentLife/HouseSystem.aspx" runat="server" class="list-group-item list-group-item-action">The 4-House System</a>
                            <a href="~/StudentLife/Activities.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Co-Curricular & Clubs</a>
                            <a href="~/StudentLife/Sports.aspx" runat="server" class="list-group-item list-group-item-action">Sports & Athletics</a>
                            <a href="~/StudentLife/Achievements.aspx" runat="server" class="list-group-item list-group-item-action">Toppers & Honors</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Join Our Clubs</h5>
                    <p class="small text-white-50 mb-3">Every Saturday afternoon is reserved for club meetings, drama rehearsals, and sports tournaments.</p>
                    <span class="badge bg-warning text-dark p-2 w-100">Saturday Activity Schedule</span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
