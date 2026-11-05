<%@ Page Title="Sports & Athletics" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Sports.aspx.cs" Inherits="Chetancbsewebsite.StudentLife.Sports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Sports, Athletics & Physical Education</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Student Life</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Sports</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Physical Fitness & Vigor</span>
                <h2 class="fw-bold text-primary mb-3">Nurturing Sportsmanship & Athletic Excellence</h2>
                
                <p class="lead text-primary fw-semibold">
                    Physical vitality and mental fitness are indispensable cornerstones of holistic education at Chetan Public School. Guided by experienced physical education directors and NIS-certified coaches, every child is encouraged to discover the joy of movement, teamwork, and fair play.
                </p>

                <!-- Sports Facilities Grid -->
                <div class="row g-4 my-3">
                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="feature-icon-box mb-3"><i class="bi bi-trophy-fill"></i></div>
                            <h5 class="fw-bold text-primary">Outdoor Sports Grounds</h5>
                            <ul class="small text-secondary ps-3 mb-0">
                                <li class="mb-2"><strong>Cricket:</strong> Turf and practice net facilities with regular inter-house league tournaments.</li>
                                <li class="mb-2"><strong>Football & Volleyball:</strong> Expansive multi-sport open field with marked boundaries and goalposts.</li>
                                <li class="mb-0"><strong>Athletics Track:</strong> 200m running track for sprints (100m, 200m, 400m), 4x100m relay, long jump pit, and shot put arena.</li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card border-0 shadow-sm rounded-4 h-100 p-4">
                            <div class="feature-icon-box mb-3"><i class="bi bi-controller"></i></div>
                            <h5 class="fw-bold text-primary">Indoor Games Complex</h5>
                            <ul class="small text-secondary ps-3 mb-0">
                                <li class="mb-2"><strong>Table Tennis:</strong> Tournament-grade indoor TT tables with trained student coaches.</li>
                                <li class="mb-2"><strong>Chess & Carrom:</strong> Strategic mind games fostering focus, tactical anticipation, and patience.</li>
                                <li class="mb-0"><strong>Martial Arts & Yoga:</strong> Karate and self-defense training for girls and boys alongside daily morning yoga.</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Annual Sports Day -->
                <h4 class="fw-bold text-primary mt-4 mb-3">Annual Sports Meet & Athletic Championship</h4>
                <p class="text-secondary">
                    The Annual Sports Meet is one of the most eagerly anticipated events in the school calendar. Commencing with an impressive march past by all four houses, the meet showcases individual track events, group team championships, faculty races, and the conferral of the coveted <strong>Overall Championship Trophy</strong> (won by Red House in the recent edition).
                </p>

                <!-- National / State Level Honors -->
                <div class="card border-0 bg-light rounded-4 p-4 mt-4 border-start border-4 border-warning shadow-sm">
                    <h5 class="fw-bold text-primary mb-2"><i class="bi bi-star-fill text-warning me-2"></i> Notable Sports Honors</h5>
                    <ul class="text-secondary small mb-0">
                        <li class="mb-2"><strong>Kishore Kamat:</strong> Represented Karnataka State in the <em>Under-14 National Cricket Championship</em>.</li>
                        <li class="mb-2"><strong>State Shooting Championships:</strong> Multiple student shooters clinching medals in regional rifle shooting tournaments.</li>
                        <li class="mb-0"><strong>Karate & Martial Arts:</strong> Black belt holders and inter-school championship gold medalists across junior and senior divisions.</li>
                    </ul>
                </div>

                <div class="mt-4 pt-3 border-top">
                    <a href="~/Gallery/PhotoGallery.aspx" runat="server" class="btn btn-primary fw-semibold px-4 py-2 me-2">
                        <i class="bi bi-images me-1"></i> Sports Photo Gallery
                    </a>
                    <a href="~/StudentLife/HouseSystem.aspx" runat="server" class="btn btn-outline-secondary px-4 py-2">
                        House System <i class="bi bi-arrow-right ms-1"></i>
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
                            <a href="~/StudentLife/Activities.aspx" runat="server" class="list-group-item list-group-item-action">Co-Curricular & Clubs</a>
                            <a href="~/StudentLife/Sports.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Sports & Athletics</a>
                            <a href="~/StudentLife/Achievements.aspx" runat="server" class="list-group-item list-group-item-action">Toppers & Honors</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Health & First Aid</h5>
                    <p class="small text-white-50 mb-0">An on-campus clinic with an on-call physician and emergency first-aid attendants supports all athletic events.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
