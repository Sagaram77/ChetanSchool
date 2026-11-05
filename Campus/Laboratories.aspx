<%@ Page Title="Laboratories" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Laboratories.aspx.cs" Inherits="Chetancbsewebsite.Campus.Laboratories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">STEM & Computer Laboratories</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Campus</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Laboratories</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Hands-On Inquiry</span>
                <h2 class="fw-bold text-primary mb-3">State-of-the-Art Scientific & Analytical Labs</h2>
                
                <p class="lead text-primary fw-semibold">
                    At Chetan Public School, science and mathematics are not confined to dry textbooks. Our specialized laboratories empower students to observe, experiment, analyze, and discover principles firsthand.
                </p>

                <!-- Lab 1: Physics -->
                <div class="card border-0 shadow-sm rounded-4 mb-4 overflow-hidden">
                    <div class="card-header bg-primary text-white py-3">
                        <h5 class="fw-bold m-0"><i class="bi bi-lightning-charge-fill text-warning me-2"></i> Physics Laboratory</h5>
                    </div>
                    <div class="card-body p-4">
                        <p class="text-secondary">
                            Designed to cultivate precise measurement and physical intuition. The laboratory features individual experiment setups compliant with CBSE practical syllabi:
                        </p>
                        <ul class="text-secondary small">
                            <li><strong>Optics:</strong> Precision optical benches, convex/concave lenses, prisms, and spectrometers.</li>
                            <li><strong>Electricity & Magnetism:</strong> Rheostats, galvanometers, ammeters, voltmeters, and Ohm's law demonstration kits.</li>
                            <li><strong>Mechanics & Waves:</strong> Sonometer, resonance tube, pendulum bobs, screw gauges, and vernier callipers.</li>
                        </ul>
                    </div>
                </div>

                <!-- Lab 2: Chemistry -->
                <div class="card border-0 shadow-sm rounded-4 mb-4 overflow-hidden">
                    <div class="card-header bg-primary text-white py-3">
                        <h5 class="fw-bold m-0"><i class="bi bi-funnel-fill text-warning me-2"></i> Chemistry Laboratory</h5>
                    </div>
                    <div class="card-body p-4">
                        <p class="text-secondary">
                            A spacious, well-ventilated laboratory with fire-retardant and acid-resistant granite worktops:
                        </p>
                        <ul class="text-secondary small">
                            <li><strong>Safety Apparatus:</strong> Emergency eyewash station, fume ventilation hoods, fire blankets, and individual safety goggles.</li>
                            <li><strong>Analytical Equipment:</strong> Precision electronic balances, Bunsen burners, distillation setups, and titration burettes.</li>
                            <li><strong>Chemical Reagents:</strong> Strictly cataloged, labeled, and monitored organic and inorganic reagents.</li>
                        </ul>
                    </div>
                </div>

                <!-- Lab 3: Biology -->
                <div class="card border-0 shadow-sm rounded-4 mb-4 overflow-hidden">
                    <div class="card-header bg-primary text-white py-3">
                        <h5 class="fw-bold m-0"><i class="bi bi-flower1 text-warning me-2"></i> Biology Laboratory</h5>
                    </div>
                    <div class="card-body p-4">
                        <p class="text-secondary">
                            Under the direct guidance of Principal Dr. Jerushah Nadugaddi (Ph.D. in Botany), our biology lab provides an inspiring biological environment:
                        </p>
                        <ul class="text-secondary small">
                            <li><strong>Microscopy:</strong> High-resolution monocular and binocular compound microscopes, projection microscopes, and stained histological slides.</li>
                            <li><strong>Specimens & Models:</strong> Extensive preserved specimen jars, 3D dismountable human organ models, and full human skeleton mockup.</li>
                            <li><strong>Physiology Tools:</strong> Respirometers, blood pressure monitors, and plant physiological experiment charts.</li>
                        </ul>
                    </div>
                </div>

                <!-- Lab 4: Mathematics -->
                <div class="card border-0 shadow-sm rounded-4 mb-4 overflow-hidden">
                    <div class="card-header bg-primary text-white py-3">
                        <h5 class="fw-bold m-0"><i class="bi bi-calculator-fill text-warning me-2"></i> Junior & Senior Mathematics Laboratories</h5>
                    </div>
                    <div class="card-body p-4">
                        <p class="text-secondary">
                            Unique to Chetan Public School are separate laboratories for junior and senior students to dismantle math anxiety through experiential modeling:
                        </p>
                        <ul class="text-secondary small">
                            <li><strong>Junior Math Lab:</strong> Abacus, Napier bones, fraction discs, place-value blocks, and geometric 3D shapes.</li>
                            <li><strong>Senior Math Lab:</strong> Trigonometric clinometers, coordinate geo-boards, probability dice/spinners, and algebraic identities tiles.</li>
                        </ul>
                    </div>
                </div>

                <!-- Lab 5: Computer -->
                <div class="card border-0 shadow-sm rounded-4 mb-4 overflow-hidden">
                    <div class="card-header bg-primary text-white py-3">
                        <h5 class="fw-bold m-0"><i class="bi bi-pc-display text-warning me-2"></i> Computer & Coding Laboratory</h5>
                    </div>
                    <div class="card-body p-4">
                        <p class="text-secondary">
                            Modern high-speed networked laboratory running Windows OS with full fiber-optic internet connectivity and centralized UPS power backup:
                        </p>
                        <ul class="text-secondary small">
                            <li>Dedicated 1:1 computer-to-student ratio during laboratory sessions.</li>
                            <li>Installed coding IDEs for Python, HTML5/CSS, Scratch, and multimedia presentation tools.</li>
                            <li>Child-safe firewall protection ensuring secure digital inquiry.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- Sidebar Column -->
            <div class="col-lg-4">
                <div class="card border-0 shadow-sm rounded-4 mb-4">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h6 class="fw-bold text-primary m-0"><i class="bi bi-building me-2"></i> Campus Facilities</h6>
                    </div>
                    <div class="card-body p-3">
                        <div class="list-group list-group-flush">
                            <a href="~/Campus/Facilities.aspx" runat="server" class="list-group-item list-group-item-action">Campus Overview</a>
                            <a href="~/Campus/Laboratories.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Science & Math Labs</a>
                            <a href="~/Campus/Library.aspx" runat="server" class="list-group-item list-group-item-action">Central Library</a>
                            <a href="~/Campus/Transport.aspx" runat="server" class="list-group-item list-group-item-action">Transport Fleet</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">IIT & NTSE Foundation</h5>
                    <p class="small text-white-50 mb-3">Our labs directly support competitive preparation for Class 9 and 10 students.</p>
                    <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-mortarboard-fill me-1"></i> Foundation Programs
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
