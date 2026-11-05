<%@ Page Title="Page Not Found (404)" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="Chetancbsewebsite.Errors._404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container py-5 my-5 text-center">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8">
                <div class="display-1 fw-bold text-primary mb-2">404</div>
                <div class="fs-2 fw-bold text-dark mb-3">Oops! Page Not Found</div>
                <p class="text-secondary lead mb-4">
                    The page you are looking for might have been moved, renamed, or is temporarily unavailable. Please verify the URL or explore our school directory below.
                </p>
                <div class="d-flex flex-wrap gap-2 justify-content-center mb-5">
                    <a href="~/Default.aspx" runat="server" class="btn btn-primary px-4 py-2 fw-bold">
                        <i class="bi bi-house-door-fill me-1"></i> Return Home
                    </a>
                    <a href="~/Contact/ContactUs.aspx" runat="server" class="btn btn-outline-secondary px-4 py-2 fw-bold">
                        <i class="bi bi-envelope me-1"></i> Contact School Office
                    </a>
                </div>

                <div class="card border-0 bg-light rounded-4 p-4 text-start shadow-sm">
                    <h6 class="fw-bold text-primary mb-3"><i class="bi bi-compass me-2 text-warning"></i> Quick Navigation</h6>
                    <div class="row g-2 small">
                        <div class="col-sm-6">
                            <a href="~/About/AboutUs.aspx" runat="server" class="text-decoration-none text-dark d-block py-1">
                                <i class="bi bi-chevron-right text-warning me-1"></i> About Chetan Public School
                            </a>
                        </div>
                        <div class="col-sm-6">
                            <a href="~/Academics/Curriculum.aspx" runat="server" class="text-decoration-none text-dark d-block py-1">
                                <i class="bi bi-chevron-right text-warning me-1"></i> Academic Curriculum
                            </a>
                        </div>
                        <div class="col-sm-6">
                            <a href="~/Campus/Facilities.aspx" runat="server" class="text-decoration-none text-dark d-block py-1">
                                <i class="bi bi-chevron-right text-warning me-1"></i> Campus & Facilities
                            </a>
                        </div>
                        <div class="col-sm-6">
                            <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="text-decoration-none text-dark d-block py-1">
                                <i class="bi bi-chevron-right text-warning me-1"></i> CBSE Disclosures (App. IX)
                            </a>
                        </div>
                        <div class="col-sm-6">
                            <a href="~/Admissions/AdmissionProcedure.aspx" runat="server" class="text-decoration-none text-dark d-block py-1">
                                <i class="bi bi-chevron-right text-warning me-1"></i> Admission Procedure
                            </a>
                        </div>
                        <div class="col-sm-6">
                            <a href="~/Gallery/PhotoGallery.aspx" runat="server" class="text-decoration-none text-dark d-block py-1">
                                <i class="bi bi-chevron-right text-warning me-1"></i> Event Photo Gallery
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
