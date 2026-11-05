<%@ Page Title="Achievements & Toppers" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Achievements.aspx.cs" Inherits="Chetancbsewebsite.StudentLife.Achievements" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Student Achievements & Hall of Fame</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Student Life</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Achievements</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Hall of Excellence</span>
                <h2 class="fw-bold text-primary mb-3">Celebrating High Honors & State Ranks</h2>
                
                <p class="lead text-primary fw-semibold">
                    Chetan Public School has established an enviable benchmark in North Karnataka for consistently achieving 100% board examination passes, distinguished state ranks, and prestigious competitive accolades.
                </p>

                <!-- State Rank Holders Showcase Cards -->
                <div class="row g-4 my-3">
                    <div class="col-md-6">
                        <div class="card border-0 shadow rounded-4 overflow-hidden h-100 border-top border-4 border-warning">
                            <div class="bg-primary text-white p-4 text-center">
                                <span class="badge bg-warning text-dark fw-bold px-3 py-1 mb-2">KARNATAKA STATE RANK</span>
                                <h3 class="display-6 fw-bold mb-0">2nd RANK</h3>
                                <div class="text-white-50 small">99.52% (622 / 625 Marks)</div>
                            </div>
                            <div class="card-body p-4 text-center">
                                <h4 class="fw-bold text-primary mb-1">Sneha Hiremani</h4>
                                <div class="badge bg-light text-primary border mb-3">Centums in 4 Subjects</div>
                                <p class="small text-secondary mb-0">
                                    Achieved 100/100 perfect scores in <strong>Kannada, Hindi, Mathematics, and Science</strong>, bringing immense pride to Hubballi and Chetan Public School.
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="card border-0 shadow rounded-4 overflow-hidden h-100 border-top border-4 border-primary">
                            <div class="bg-primary text-white p-4 text-center">
                                <span class="badge bg-warning text-dark fw-bold px-3 py-1 mb-2">KARNATAKA STATE RANK</span>
                                <h3 class="display-6 fw-bold mb-0">2nd RANK</h3>
                                <div class="text-white-50 small">99.36% (621 / 625 Marks)</div>
                            </div>
                            <div class="card-body p-4 text-center">
                                <h4 class="fw-bold text-primary mb-1">Anusha Prasad</h4>
                                <div class="badge bg-light text-primary border mb-3">State Merit Honor</div>
                                <p class="small text-secondary mb-0">
                                    Secured stellar centums in core subjects, establishing the school's legacy of academic dominance at the Karnataka state level.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Recent Batch Toppers -->
                <h4 class="fw-bold text-primary mt-5 mb-3">Consistent 100% Board Pass Percentage</h4>
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-4">
                    <div class="table-responsive">
                        <table class="table table-hover align-middle mb-0">
                            <thead class="bg-primary text-white">
                                <tr>
                                    <th class="py-3 px-3">Academic Batch</th>
                                    <th class="py-3 px-3">Pass Percentage</th>
                                    <th class="py-3 px-3">Distinctions & 90%+ Scorers</th>
                                    <th class="py-3 px-3">Prominent Toppers</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Class X (Recent Batch)</td>
                                    <td class="px-3"><span class="badge bg-success">100% Pass</span></td>
                                    <td class="px-3 text-secondary small">82% secured Distinctions</td>
                                    <td class="px-3 text-secondary small">Sahana Hiremani, Shreyanka K. Dapper</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Class X (Prior Batch)</td>
                                    <td class="px-3"><span class="badge bg-success">100% Pass</span></td>
                                    <td class="px-3 text-secondary small">78% secured Distinctions</td>
                                    <td class="px-3 text-secondary small">Pramod M.N., Sagar Kulkarni</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Class X (State Level)</td>
                                    <td class="px-3"><span class="badge bg-success">100% Pass</span></td>
                                    <td class="px-3 text-secondary small">State 2nd Rank (99.52%)</td>
                                    <td class="px-3 text-secondary small">Sneha Hiremani (622/625)</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- Science & Co-Curricular Accolades -->
                <h4 class="fw-bold text-primary mt-4 mb-3">Science & Extracurricular Laurels</h4>
                <div class="row g-3">
                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-3 border h-100">
                            <strong class="text-primary d-block mb-1"><i class="bi bi-camera-reels text-warning me-1"></i> Karnataka Dept of Science & Tech</strong>
                            <p class="small text-muted mb-0"><strong>Prasad Morab</strong> secured 1st Place across Karnataka in the Mathematics Video Making Contest organized by the Department of Science and Technology.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-3 border h-100">
                            <strong class="text-primary d-block mb-1"><i class="bi bi-trophy text-warning me-1"></i> National Cricket Representation</strong>
                            <p class="small text-muted mb-0"><strong>Kishore Kamat</strong> represented Karnataka State in the Under-14 National Cricket Tournament.</p>
                        </div>
                    </div>
                </div>

                <div class="card border-0 bg-light rounded-4 p-4 mt-4">
                    <h5 class="fw-bold text-primary mb-2">Our Elite Alumni</h5>
                    <p class="small text-secondary mb-0">
                        Graduates of Chetan Public School have advanced to premier Indian institutions (IITs, NITs, AIIMS, premier medical colleges) and global corporate leadership, continuing our foundational creed: <em>"Moulding Minds to Excel."</em>
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
                            <a href="~/StudentLife/HouseSystem.aspx" runat="server" class="list-group-item list-group-item-action">The 4-House System</a>
                            <a href="~/StudentLife/Activities.aspx" runat="server" class="list-group-item list-group-item-action">Co-Curricular & Clubs</a>
                            <a href="~/StudentLife/Sports.aspx" runat="server" class="list-group-item list-group-item-action">Sports & Athletics</a>
                            <a href="~/StudentLife/Achievements.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Toppers & Honors</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Board Results Verification</h5>
                    <p class="small text-white-50 mb-3">View certified copies of the last 3-year board exam results submitted under CBSE Mandatory Disclosures.</p>
                    <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-file-earmark-check-fill me-1"></i> Mandatory Disclosures
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
