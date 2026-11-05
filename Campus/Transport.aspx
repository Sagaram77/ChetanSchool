<%@ Page Title="School Transport" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Transport.aspx.cs" Inherits="Chetancbsewebsite.Campus.Transport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Safe School Transport Services</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Campus</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Transport</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Transit & Safety</span>
                <h2 class="fw-bold text-primary mb-3">GPS-Tracked Safe Commute for Every Student</h2>
                
                <p class="lead text-primary fw-semibold">
                    Chetan Public School operates a modern, well-maintained fleet of school buses providing safe, reliable, and convenient pickup and drop-off services across Hubballi and Dharwad.
                </p>

                <p class="text-secondary">
                    Student safety is our utmost priority. Every bus is operated by experienced drivers with clean driving records, accompanied by trained conductors and female attendants to supervise students at all times.
                </p>

                <!-- Key Safety Standards Grid -->
                <div class="row g-3 my-4">
                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-4 border h-100">
                            <div class="d-flex align-items-center gap-3 mb-2">
                                <div class="bg-primary text-white rounded-circle p-2 d-flex align-items-center justify-content-center" style="width: 45px; height: 45px;">
                                    <i class="bi bi-geo-alt-fill"></i>
                                </div>
                                <h6 class="fw-bold text-primary m-0">Live GPS Tracking</h6>
                            </div>
                            <p class="small text-muted m-0">Real-time vehicle location tracking monitored by our central campus transport desk.</p>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-4 border h-100">
                            <div class="d-flex align-items-center gap-3 mb-2">
                                <div class="bg-primary text-white rounded-circle p-2 d-flex align-items-center justify-content-center" style="width: 45px; height: 45px;">
                                    <i class="bi bi-camera-video-fill"></i>
                                </div>
                                <h6 class="fw-bold text-primary m-0">CCTV Surveillance</h6>
                            </div>
                            <p class="small text-muted m-0">Internal dual-camera surveillance recording bus activity throughout the journey.</p>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-4 border h-100">
                            <div class="d-flex align-items-center gap-3 mb-2">
                                <div class="bg-primary text-white rounded-circle p-2 d-flex align-items-center justify-content-center" style="width: 45px; height: 45px;">
                                    <i class="bi bi-speedometer2"></i>
                                </div>
                                <h6 class="fw-bold text-primary m-0">Speed Governors</h6>
                            </div>
                            <p class="small text-muted m-0">Strict speed governor mechanisms locked to RTO-mandated limits for school vehicles.</p>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-4 border h-100">
                            <div class="d-flex align-items-center gap-3 mb-2">
                                <div class="bg-primary text-white rounded-circle p-2 d-flex align-items-center justify-content-center" style="width: 45px; height: 45px;">
                                    <i class="bi bi-person-heart"></i>
                                </div>
                                <h6 class="fw-bold text-primary m-0">Female Attendants</h6>
                            </div>
                            <p class="small text-muted m-0">Dedicated lady conductors in each bus to assist younger children during boarding and deboarding.</p>
                        </div>
                    </div>
                </div>

                <!-- Major Routes Table -->
                <h4 class="fw-bold text-primary mt-4 mb-3">Key Bus Routes Covered</h4>
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-4">
                    <div class="table-responsive">
                        <table class="table table-hover align-middle mb-0">
                            <thead class="bg-primary text-white">
                                <tr>
                                    <th class="py-3 px-3">Route #</th>
                                    <th class="py-3 px-3">Sectors & Major Pick-up Hubs</th>
                                    <th class="py-3 px-3">Approx Morning Pickup</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Route 1</td>
                                    <td class="px-3 text-secondary small">Akshay Park, Shirur Park, Vidyanagar, Unkal Cross, BVB Engineering College route.</td>
                                    <td class="px-3 text-muted small">7:30 AM – 8:00 AM</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Route 2</td>
                                    <td class="px-3 text-secondary small">Keshwapur, Kusugal Road, Railway Colony, Court Circle, Hosur Cross.</td>
                                    <td class="px-3 text-muted small">7:30 AM – 8:05 AM</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Route 3</td>
                                    <td class="px-3 text-secondary small">Navanagar, APMC, Rayapur, Hubballi-Dharwad BRTS Corridor pick points.</td>
                                    <td class="px-3 text-muted small">7:15 AM – 7:55 AM</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">Route 4</td>
                                    <td class="px-3 text-secondary small">Gokul Road, Industrial Estate, Tarihal Cross, Airport Road, Bhavani Nagar.</td>
                                    <td class="px-3 text-muted small">7:25 AM – 8:00 AM</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="card border-0 bg-light rounded-4 p-4">
                    <h6 class="fw-bold text-primary mb-1"><i class="bi bi-telephone-fill text-warning me-2"></i> Transport Enquiry Desk</h6>
                    <p class="small text-muted mb-0">To confirm bus stop locations, timings, or route availability for your sector, please contact the administrative office at <strong>0836-2955578</strong>.</p>
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
                            <a href="~/Campus/Laboratories.aspx" runat="server" class="list-group-item list-group-item-action">Science & Math Labs</a>
                            <a href="~/Campus/Library.aspx" runat="server" class="list-group-item list-group-item-action">Central Library</a>
                            <a href="~/Campus/Transport.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Transport Fleet</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Campus Security</h5>
                    <p class="small text-white-50 mb-3">Our entire campus is protected with 24/7 security personnel and high-definition CCTV coverage.</p>
                    <a href="~/Campus/Facilities.aspx" runat="server" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-shield-check me-1"></i> View Facilities
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
