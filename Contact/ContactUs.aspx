<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Chetancbsewebsite.Contact.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Contact Us</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Reach Us</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Contact Us</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <!-- Contact Information Cards Row -->
        <div class="row g-4 mb-5">
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="100">
                <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                    <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 68px; height: 68px; font-size: 1.8rem;">
                        <i class="bi bi-geo-alt-fill text-danger"></i>
                    </div>
                    <h5 class="fw-bold text-primary mb-2">Campus Address</h5>
                    <p class="text-secondary small mb-0">
                        Chetan Public School (CBSE)<br />
                        Dyavappanavar - Valasang Educational & Academic Trust<br />
                        Akshay Nagar, Near Shirur Park,<br />
                        Hubballi &ndash; 580030, Karnataka, India
                    </p>
                </div>
            </div>
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="200">
                <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                    <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 68px; height: 68px; font-size: 1.8rem;">
                        <i class="bi bi-telephone-inbound-fill text-primary"></i>
                    </div>
                    <h5 class="fw-bold text-primary mb-2">Phone Inquiries</h5>
                    <p class="text-secondary small mb-1">Office: <strong>0836-2955578</strong></p>
                    <p class="text-secondary small mb-1">Helpdesk: <strong>0836-2330898</strong></p>
                    <p class="text-muted small mb-0"><i class="bi bi-clock me-1"></i> Mon &ndash; Sat: 8:30 AM &ndash; 4:00 PM</p>
                </div>
            </div>
            <div class="col-md-4" data-aos="fade-up" data-aos-delay="300">
                <div class="card h-100 border-0 shadow-sm rounded-4 p-4 text-center">
                    <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center mx-auto mb-3" style="width: 68px; height: 68px; font-size: 1.8rem;">
                        <i class="bi bi-envelope-check-fill text-success"></i>
                    </div>
                    <h5 class="fw-bold text-primary mb-2">Official Email</h5>
                    <p class="text-secondary small mb-1">General Office & Admissions:</p>
                    <p class="fw-bold text-primary small mb-2">
                        <a href="mailto:chetanschool2016@gmail.com" class="text-decoration-none">chetanschool2016@gmail.com</a>
                    </p>
                    <span class="badge bg-light text-dark border">CBSE Affiliation: 831020</span>
                </div>
            </div>
        </div>

        <!-- Campus Visiting Details & Interactive Map -->
        <div class="row g-4 align-items-stretch mb-4">
            <!-- Visiting Info & Admissions Desk Card -->
            <div class="col-lg-5" data-aos="fade-up" data-aos-delay="150">
                <div class="card border-0 shadow-sm rounded-4 p-4 p-md-5 h-100 bg-white">
                    <span class="badge bg-warning text-dark align-self-start px-3 py-2 fw-bold mb-3">Campus Admissions & Visitors</span>
                    <h3 class="fw-bold text-primary mb-3">Visiting Chetan Public School</h3>
                    <p class="text-secondary small mb-4">
                        We welcome parents and guardians to visit our campus, tour our classrooms and laboratories, and interact with our academic coordinators during official working hours.
                    </p>

                    <div class="d-flex align-items-start gap-3 mb-3">
                        <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center flex-shrink-0" style="width: 44px; height: 44px; font-size: 1.2rem;">
                            <i class="bi bi-calendar-check-fill text-primary"></i>
                        </div>
                        <div>
                            <h6 class="fw-bold text-dark mb-1">Office Timings</h6>
                            <p class="text-muted small mb-0">Monday to Saturday: 8:30 AM &ndash; 4:00 PM<br />Sunday & Public Holidays: Closed</p>
                        </div>
                    </div>

                    <div class="d-flex align-items-start gap-3 mb-3">
                        <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center flex-shrink-0" style="width: 44px; height: 44px; font-size: 1.2rem;">
                            <i class="bi bi-person-video2 text-info"></i>
                        </div>
                        <div>
                            <h6 class="fw-bold text-dark mb-1">Principal's Meeting Hours</h6>
                            <p class="text-muted small mb-0">Visiting hours: 2:30 PM &ndash; 4:00 PM (Prior appointment recommended via phone)</p>
                        </div>
                    </div>

                    <div class="d-flex align-items-start gap-3 mb-4">
                        <div class="rounded-circle bg-light text-primary d-flex align-items-center justify-content-center flex-shrink-0" style="width: 44px; height: 44px; font-size: 1.2rem;">
                            <i class="bi bi-bus-front-fill text-warning"></i>
                        </div>
                        <div>
                            <h6 class="fw-bold text-dark mb-1">Accessibility & Location</h6>
                            <p class="text-muted small mb-0">Centrally located at Akshay Nagar, easily reachable via Hubballi city buses and autos with Shirur Park as the landmark.</p>
                        </div>
                    </div>

                    <div class="mt-auto pt-3 border-top">
                        <a href="tel:08362955578" class="btn btn-primary w-100 fw-bold py-2 shadow-sm">
                            <i class="bi bi-telephone-fill me-2"></i> Call School Office: 0836-2955578
                        </a>
                    </div>
                </div>
            </div>

            <!-- Campus Map -->
            <div class="col-lg-7" data-aos="fade-up" data-aos-delay="250">
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden h-100">
                    <div class="card-header bg-primary text-white py-3 d-flex justify-content-between align-items-center">
                        <h5 class="fw-bold m-0"><i class="bi bi-geo-alt-fill text-warning me-2"></i> Interactive Campus Location</h5>
                        <a href="https://maps.google.com/?cid=6893717282258925425" target="_blank" class="btn btn-sm btn-light text-primary fw-bold">
                            <i class="bi bi-box-arrow-up-right me-1"></i> Open in Maps
                        </a>
                    </div>
                    <div class="card-body p-0" style="min-height: 440px;">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d480.89856628466936!2d75.09912351672865!3d15.366272647663068!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bb8d6d2df4dd7dd%3A0x5fab7ab56d0bb771!2sChetan%20Public%20School!5e0!3m2!1sen!2sin!4v1793893298410!5m2!1sen!2sin"
                            width="100%"
                            height="100%"
                            style="border: 0; min-height: 440px; display: block;"
                            allowfullscreen=""
                            loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade">
                        </iframe>
                    </div>
                    <div class="card-footer bg-light p-3 small text-muted">
                        <i class="bi bi-geo-fill text-danger me-1"></i> Landmark: Akshay Nagar, Near Shirur Park, Hubballi &ndash; 580030, Karnataka.
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
