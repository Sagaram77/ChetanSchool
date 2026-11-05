<%@ Page Title="Fee Structure & Policy" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="FeeStructure.aspx.cs" Inherits="Chetancbsewebsite.Admissions.FeeStructure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Fee Structure & Guidelines</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Admissions</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Fee Structure</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="card border-0 bg-light rounded-4 p-4 mb-5 shadow-sm border-start border-4 border-primary">
            <div class="d-flex align-items-center gap-3">
                <div class="fs-1 text-primary"><i class="bi bi-wallet2"></i></div>
                <div>
                    <h5 class="fw-bold text-primary mb-1">Transparent & Value-Driven Fee Policy</h5>
                    <p class="small text-secondary m-0">At Chetan Public School, we follow transparent, government-regulated, and CBSE-aligned fee guidelines. Tuition fees include core academics, smart classroom facilities, sports training, and extracurricular activity access.</p>
                </div>
            </div>
        </div>

        <div class="row g-4 mb-5">
            <!-- Fee Schedule Overview -->
            <div class="col-lg-8">
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-4">
                    <div class="card-header bg-primary text-white py-3">
                        <h5 class="fw-bold m-0"><i class="bi bi-table text-warning me-2"></i> Academic Fee Schedule (Illustrative Guideline)</h5>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover align-middle mb-0">
                            <thead class="bg-light">
                                <tr>
                                    <th class="py-3 px-3">Grade Category</th>
                                    <th class="py-3 px-3">Components Covered</th>
                                    <th class="py-3 px-3 text-center">Installment Slabs</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Pre-Primary (Nursery, LKG, UKG)</td>
                                    <td class="px-3 small text-secondary">Activity-based learning, Montessori manipulatives, art supplies, smart class sessions</td>
                                    <td class="px-3 text-center"><span class="badge bg-light text-dark border">Term I & Term II</span></td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Primary (Grade I to V)</td>
                                    <td class="px-3 small text-secondary">CBSE Curriculum, Computer lab access, library, sports & games coaching, health checkups</td>
                                    <td class="px-3 text-center"><span class="badge bg-light text-dark border">Term I & Term II</span></td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Middle School (Grade VI to VIII)</td>
                                    <td class="px-3 small text-secondary">Science composite lab, coding/IT, yoga & karate, literary clubs, intra-school events</td>
                                    <td class="px-3 text-center"><span class="badge bg-light text-dark border">Term I & Term II</span></td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Secondary (Grade IX & X)</td>
                                    <td class="px-3 small text-secondary">Integrated Board prep, Olympiad & competitive coaching, dedicated science labs, CBSE registration</td>
                                    <td class="px-3 text-center"><span class="badge bg-light text-dark border">Term I & Term II</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer bg-light p-3 small text-muted">
                        <i class="bi bi-info-circle me-1"></i> Exact fee vouchers and detailed fee slips are issued at the accounts desk during student admission/re-enrollment.
                    </div>
                </div>

                <!-- Terms & Rules -->
                <div class="card border-0 shadow-sm rounded-4 p-4">
                    <h5 class="fw-bold text-primary mb-3"><i class="bi bi-shield-exclamation text-warning me-2"></i> Payment Terms & Regulations</h5>
                    <div class="small text-secondary">
                        <p class="mb-2"><i class="bi bi-dot text-primary fs-5"></i> Fees are payable either in full at the start of the academic year or in two scheduled term installments.</p>
                        <p class="mb-2"><i class="bi bi-dot text-primary fs-5"></i> Accepted payment modes include Online Net Banking / NEFT / RTGS, Demand Draft, UPI, or POS Card Swipe at the school accounts office.</p>
                        <p class="mb-2"><i class="bi bi-dot text-primary fs-5"></i> Cheques are subject to realization. Bank return charges will apply in case of dishonor.</p>
                        <p class="mb-0"><i class="bi bi-dot text-primary fs-5"></i> Fee once paid is non-refundable as per trust and regulatory policies, except caution deposit where applicable.</p>
                    </div>
                </div>
            </div>

            <!-- Accounts Help & Contact -->
            <div class="col-lg-4">
                <div class="card border-0 shadow-sm rounded-4 p-4 mb-4 bg-light">
                    <h5 class="fw-bold text-primary mb-3"><i class="bi bi-bank2 text-warning me-2"></i> Accounts Desk</h5>
                    <p class="small text-secondary mb-3">For fee statements, payment receipts, or fee structure breakdown, please visit or call our accounts section.</p>
                    <ul class="list-unstyled small mb-4">
                        <li class="mb-2"><i class="bi bi-clock me-2 text-primary"></i> <strong>Counter Timings:</strong> 09:30 AM to 03:30 PM (Mon-Sat)</li>
                        <li class="mb-2"><i class="bi bi-telephone-fill me-2 text-primary"></i> <strong>Desk Phone:</strong> 0836-2955578</li>
                        <li class="mb-0"><i class="bi bi-envelope-fill me-2 text-primary"></i> <strong>Email:</strong> chetanschool2016@gmail.com</li>
                    </ul>
                    <a href="~/Contact/ContactUs.aspx" runat="server" class="btn btn-outline-primary btn-sm w-100 fw-bold">Visit Campus Office</a>
                </div>

                <div class="card border-0 shadow-sm rounded-4 p-4 text-center">
                    <i class="bi bi-file-earmark-arrow-down-fill text-danger display-5 mb-2"></i>
                    <h6 class="fw-bold text-dark mb-1">Fee Disclosure Document</h6>
                    <p class="small text-muted mb-3">CBSE mandatory disclosure document containing the verified annual fee structure.</p>
                    <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-danger btn-sm px-4 fw-bold">
                        <i class="bi bi-file-pdf me-1"></i> View CBSE Disclosures
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
