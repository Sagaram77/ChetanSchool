<%@ Page Title="Admission Procedure" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="AdmissionProcedure.aspx.cs" Inherits="Chetancbsewebsite.Admissions.AdmissionProcedure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Admission Procedure</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Admissions</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Procedure & Guidelines</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <!-- Hero Callout -->
        <div class="card border-0 bg-primary text-white rounded-4 p-4 p-md-5 mb-5 shadow position-relative overflow-hidden">
            <div class="row align-items-center position-relative" style="z-index: 2;">
                <div class="col-lg-8">
                    <span class="badge bg-warning text-dark px-3 py-2 fw-bold text-uppercase mb-3">Admissions Open 2026-27</span>
                    <h2 class="display-6 fw-bold mb-3">Begin Your Child's Journey of Excellence at Chetan Public School</h2>
                    <p class="lead mb-4 text-white-50">
                        We welcome students from Pre-Primary (Nursery, LKG, UKG) to Grade X. Complete your admission application conveniently through our online portal or visit our admissions office.
                    </p>
                    <div class="d-flex flex-wrap gap-3">
                        <asp:HyperLink ID="lnkOnlineAdmission" runat="server" Target="_blank" CssClass="btn btn-warning btn-lg px-4 fw-bold text-dark shadow-sm">
                            <i class="bi bi-box-arrow-up-right me-2"></i> Online Admission Form / ERP Portal
                        </asp:HyperLink>
                        <a href="~/Contact/ContactUs.aspx" runat="server" class="btn btn-outline-light btn-lg px-4">
                            <i class="bi bi-telephone-fill me-2"></i> Contact Admission Desk
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 text-center mt-4 mt-lg-0">
                    <div class="bg-white text-dark rounded-4 p-4 shadow text-center">
                        <i class="bi bi-calendar2-check-fill text-primary display-4 mb-2"></i>
                        <h5 class="fw-bold text-primary mb-1">Admissions Helpline</h5>
                        <p class="text-muted small mb-3">Monday to Saturday: 9:00 AM – 4:30 PM</p>
                        <h4 class="fw-bold text-dark mb-1">0836-2955578</h4>
                        <p class="small text-muted mb-0">chetanschool2016@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- 4 Step Process -->
        <div class="mb-5">
            <div class="text-center mb-5">
                <span class="badge bg-light text-primary px-3 py-2 fw-bold text-uppercase border">Easy Step-by-Step Guide</span>
                <h2 class="fw-bold text-primary mt-2">How to Apply for Admission</h2>
                <p class="text-secondary">Follow our simple 4-step admission journey designed for student and parent convenience.</p>
            </div>

            <div class="row g-4">
                <div class="col-md-6 col-lg-3">
                    <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                        <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 60px; height: 60px; font-size: 1.5rem; font-weight: 700;">
                            1
                        </div>
                        <h5 class="fw-bold text-primary">Fill Application</h5>
                        <p class="text-secondary small mb-0">
                            Submit your application details via our online admission link or collect the physical prospectus kit from the school reception.
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                        <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 60px; height: 60px; font-size: 1.5rem; font-weight: 700;">
                            2
                        </div>
                        <h5 class="fw-bold text-primary">Document Verification</h5>
                        <p class="text-secondary small mb-0">
                            Submit copies of the child’s birth certificate, Aadhaar card, past academic progress report, and passport size photographs.
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                        <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 60px; height: 60px; font-size: 1.5rem; font-weight: 700;">
                            3
                        </div>
                        <h5 class="fw-bold text-primary">Interactive Session</h5>
                        <p class="text-secondary small mb-0">
                            A friendly interaction for Kindergarten applicants and a baseline aptitude check for Grade 1 upwards to gauge readiness.
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3">
                    <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                        <div class="rounded-circle bg-primary text-white d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 60px; height: 60px; font-size: 1.5rem; font-weight: 700;">
                            4
                        </div>
                        <h5 class="fw-bold text-primary">Fee Payment & Welcome</h5>
                        <p class="text-secondary small mb-0">
                            Upon confirmation, complete fee payment, receive student admission kit, books, uniform guidance, and orientation schedule.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Age Criteria & Documents Required -->
        <div class="row g-4 mb-5">
            <div class="col-lg-6">
                <div class="card h-100 border-0 shadow-sm rounded-4 p-4">
                    <h4 class="fw-bold text-primary mb-3"><i class="bi bi-person-badge text-warning me-2"></i> Age Eligibility Criteria</h4>
                    <p class="text-secondary small mb-3">Age as on 1st June of the academic admission year:</p>
                    <div class="table-responsive">
                        <table class="table table-bordered align-middle">
                            <thead class="bg-light">
                                <tr>
                                    <th>Class / Grade</th>
                                    <th>Minimum Age Requirement</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="fw-semibold">Nursery</td>
                                    <td>3 Years complete</td>
                                </tr>
                                <tr>
                                    <td class="fw-semibold">LKG</td>
                                    <td>4 Years complete</td>
                                </tr>
                                <tr>
                                    <td class="fw-semibold">UKG</td>
                                    <td>5 Years complete</td>
                                </tr>
                                <tr>
                                    <td class="fw-semibold">Grade I</td>
                                    <td>6 Years complete (As per NEP & Govt. norms)</td>
                                </tr>
                                <tr>
                                    <td class="fw-semibold">Grade II to X</td>
                                    <td>Subsequent age corresponding to standard completed</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card h-100 border-0 shadow-sm rounded-4 p-4">
                    <h4 class="fw-bold text-primary mb-3"><i class="bi bi-file-earmark-check text-warning me-2"></i> Documents Required at Admission</h4>
                    <ul class="list-group list-group-flush small">
                        <li class="list-group-item px-0 py-2 d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success mt-1"></i>
                            <span>Original and attested copy of <strong>Birth Certificate</strong> (issued by Municipal Authority/Govt.).</span>
                        </li>
                        <li class="list-group-item px-0 py-2 d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success mt-1"></i>
                            <span>Original <strong>Transfer Certificate (TC)</strong> countersigned by appropriate authority (for Grade 2 & above).</span>
                        </li>
                        <li class="list-group-item px-0 py-2 d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success mt-1"></i>
                            <span>Previous year's <strong>Report Card / Marks Statement</strong> from the previously attended school.</span>
                        </li>
                        <li class="list-group-item px-0 py-2 d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success mt-1"></i>
                            <span>Copy of <strong>Aadhaar Card</strong> of the student and both parents/guardians.</span>
                        </li>
                        <li class="list-group-item px-0 py-2 d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success mt-1"></i>
                            <span>4 recent passport-size <strong>photographs</strong> of the student and 2 of each parent.</span>
                        </li>
                        <li class="list-group-item px-0 py-2 d-flex align-items-start gap-2">
                            <i class="bi bi-check-circle-fill text-success mt-1"></i>
                            <span>Caste / Category Certificate (if applying under SC/ST/OBC category).</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Call to Action Banner -->
        <div class="card border-0 bg-light rounded-4 p-4 text-center shadow-sm">
            <h4 class="fw-bold text-primary mb-2">Ready to Apply?</h4>
            <p class="text-secondary mb-3">Click below to open our official ERP / Online Application Form on Google Drive.</p>
            <div>
                <asp:HyperLink ID="lnkApplyBottom" runat="server" Target="_blank" CssClass="btn btn-primary px-5 py-2 fw-bold">
                    <i class="bi bi-box-arrow-up-right me-2"></i> Open Online Admission Form
                </asp:HyperLink>
            </div>
        </div>
    </div>
</asp:Content>
