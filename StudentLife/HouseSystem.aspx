<%@ Page Title="The 4-House System" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="HouseSystem.aspx.cs" Inherits="Chetancbsewebsite.StudentLife.HouseSystem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">The 4-House System</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Student Life</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">House System</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Camaraderie & Leadership</span>
                <h2 class="fw-bold text-primary mb-3">Instilling Discipline, Healthy Rivalry & Team Spirit</h2>
                
                <p class="lead text-primary fw-semibold">
                    The House System is the heartbeat of student life at Chetan Public School. It divides the entire student body from Primary to Grade 10 into four distinct color-coded houses to promote leadership, healthy competition, and collective responsibility.
                </p>

                <p class="text-secondary">
                    Each house is guided by senior House Masters and Mistresses, with student leadership driven by elected House Captains and Vice Captains. Throughout the academic year, houses compete for the prestigious <strong>Overall General Championship Trophy</strong> across academics, athletics, cultural arts, debates, and community cleanliness.
                </p>

                <!-- 4 Houses Cards -->
                <div class="row g-4 my-3">
                    <!-- Yellow House -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4 border-top border-4 border-warning">
                            <div class="d-flex align-items-center gap-3 mb-3">
                                <div class="bg-warning text-dark rounded-circle p-3 d-flex align-items-center justify-content-center fw-bold fs-4" style="width: 55px; height: 55px;">
                                    <i class="bi bi-sun-fill"></i>
                                </div>
                                <div>
                                    <h5 class="fw-bold text-dark mb-0">YELLOW HOUSE</h5>
                                    <span class="badge bg-warning text-dark">Radiance & Culture</span>
                                </div>
                            </div>
                            <p class="small text-secondary mb-3">
                                <strong>Motto:</strong> <em>"Illuminating Minds with Harmony"</em>
                            </p>
                            <p class="small text-secondary mb-0">
                                Celebrated for championing cultural unity and performing arts. Notably spearheaded the school's traditional celebrations including Ramazan festivities (Qawwali & recitation assemblies) and literary debates.
                            </p>
                        </div>
                    </div>

                    <!-- Blue House -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4 border-top border-4 border-primary">
                            <div class="d-flex align-items-center gap-3 mb-3">
                                <div class="bg-primary text-white rounded-circle p-3 d-flex align-items-center justify-content-center fw-bold fs-4" style="width: 55px; height: 55px;">
                                    <i class="bi bi-water"></i>
                                </div>
                                <div>
                                    <h5 class="fw-bold text-primary mb-0">BLUE HOUSE</h5>
                                    <span class="badge bg-primary">Heritage & Drama</span>
                                </div>
                            </div>
                            <p class="small text-secondary mb-3">
                                <strong>Motto:</strong> <em>"Depth of Wisdom, Height of Ambition"</em>
                            </p>
                            <p class="small text-secondary mb-0">
                                Renowned for stage productions, classical dance, and heritage tributes. Leads cultural showcases such as Deepavali (traditional Laxmi Pooja, drama skits on the Ramayana and King Bali).
                            </p>
                        </div>
                    </div>

                    <!-- Green House -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4 border-top border-4 border-success">
                            <div class="d-flex align-items-center gap-3 mb-3">
                                <div class="bg-success text-white rounded-circle p-3 d-flex align-items-center justify-content-center fw-bold fs-4" style="width: 55px; height: 55px;">
                                    <i class="bi bi-tree-fill"></i>
                                </div>
                                <div>
                                    <h5 class="fw-bold text-success mb-0">GREEN HOUSE</h5>
                                    <span class="badge bg-success">Ecology & Service</span>
                                </div>
                            </div>
                            <p class="small text-secondary mb-3">
                                <strong>Motto:</strong> <em>"Sowing Seeds of Responsibility"</em>
                            </p>
                            <p class="small text-secondary mb-0">
                                Dedicated environmentalists and social innovators. Leads campus tree-planting drives, World Environment Day rallies, Earth Day cycling awareness, and cleanliness audits across all wings.
                            </p>
                        </div>
                    </div>

                    <!-- Red House -->
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4 border-top border-4 border-danger">
                            <div class="d-flex align-items-center gap-3 mb-3">
                                <div class="bg-danger text-white rounded-circle p-3 d-flex align-items-center justify-content-center fw-bold fs-4" style="width: 55px; height: 55px;">
                                    <i class="bi bi-fire"></i>
                                </div>
                                <div>
                                    <h5 class="fw-bold text-danger mb-0">RED HOUSE</h5>
                                    <span class="badge bg-danger">Vigor & Sportsmanship</span>
                                </div>
                            </div>
                            <p class="small text-secondary mb-3">
                                <strong>Motto:</strong> <em>"Courage to Conquer, Strength to Lead"</em>
                            </p>
                            <p class="small text-secondary mb-0">
                                Athletic juggernauts of track, field, and marching drills. Recent winners of the General Sports Championship Trophy, demonstrating indomitable grit and sportsmanship.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="card border-0 bg-light rounded-4 p-4 mt-4">
                    <h5 class="fw-bold text-primary mb-2"><i class="bi bi-award-fill text-warning me-2"></i> How House Points Are Earned</h5>
                    <p class="small text-secondary mb-0">
                        Points are awarded throughout the year for weekly inter-house quizzes, debates, athletic meets, academic score percentages, discipline, and morning assembly presentations. The coveted Cock House Trophy is presented during the Annual Day Celebrations.
                    </p>
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
                            <a href="~/StudentLife/HouseSystem.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">The 4-House System</a>
                            <a href="~/StudentLife/Activities.aspx" runat="server" class="list-group-item list-group-item-action">Co-Curricular & Clubs</a>
                            <a href="~/StudentLife/Sports.aspx" runat="server" class="list-group-item list-group-item-action">Sports & Athletics</a>
                            <a href="~/StudentLife/Achievements.aspx" runat="server" class="list-group-item list-group-item-action">Toppers & Honors</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Student Photo Gallery</h5>
                    <p class="small text-white-50 mb-3">Relive dynamic moments from our sports days, yoga day, and house competitions.</p>
                    <a href="~/Gallery/PhotoGallery.aspx" runat="server" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-images me-1"></i> Browse Photo Albums
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
