<%@ Page Title="Video Gallery" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="VideoGallery.aspx.cs" Inherits="Chetancbsewebsite.Gallery.VideoGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Campus Video Highlights</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Gallery</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Video Gallery</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="section-title-wrap text-start mb-4">
            <span class="section-tag">Multimedia Channel</span>
            <h2 class="section-heading text-start">Glimpses of Campus Life in Action</h2>
            <p class="text-secondary">Watch highlights of our major institutional celebrations, student sports events, yoga observances, and campus infrastructure overviews.</p>
        </div>

        <div class="row g-4">
            <!-- Video 1 -->
            <div class="col-md-6">
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden h-100">
                    <div class="bg-dark text-white d-flex align-items-center justify-content-center p-5 position-relative" style="min-height: 240px;">
                        <i class="bi bi-play-circle-fill text-warning fs-1"></i>
                    </div>
                    <div class="card-body p-4">
                        <span class="badge bg-warning text-dark mb-2">Yoga & Health</span>
                        <h5 class="fw-bold text-primary mb-2">International Day of Yoga Highlights</h5>
                        <p class="small text-secondary m-0">Synchronized Yogasanas, Pranayama, and wellness demonstrations by 800+ students and educators.</p>
                    </div>
                </div>
            </div>

            <!-- Video 2 -->
            <div class="col-md-6">
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden h-100">
                    <div class="bg-dark text-white d-flex align-items-center justify-content-center p-5 position-relative" style="min-height: 240px;">
                        <i class="bi bi-play-circle-fill text-warning fs-1"></i>
                    </div>
                    <div class="card-body p-4">
                        <span class="badge bg-danger text-white mb-2">Sports Meet</span>
                        <h5 class="fw-bold text-primary mb-2">Annual Sports Day March Past & Athletics</h5>
                        <p class="small text-secondary m-0">Dynamic march past drills by the Four Houses, track and field finals, and championship trophy celebrations.</p>
                    </div>
                </div>
            </div>

            <!-- Video 3 -->
            <div class="col-md-6">
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden h-100">
                    <div class="bg-dark text-white d-flex align-items-center justify-content-center p-5 position-relative" style="min-height: 240px;">
                        <i class="bi bi-play-circle-fill text-warning fs-1"></i>
                    </div>
                    <div class="card-body p-4">
                        <span class="badge bg-success text-white mb-2">Environment</span>
                        <h5 class="fw-bold text-primary mb-2">World Environment Day Campus Tree Plantation</h5>
                        <p class="small text-secondary m-0">Green House student awareness rally, placard presentations, and campus-wide sapling plantation drive.</p>
                    </div>
                </div>
            </div>

            <!-- Video 4 -->
            <div class="col-md-6">
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden h-100">
                    <div class="bg-dark text-white d-flex align-items-center justify-content-center p-5 position-relative" style="min-height: 240px;">
                        <i class="bi bi-play-circle-fill text-warning fs-1"></i>
                    </div>
                    <div class="card-body p-4">
                        <span class="badge bg-primary text-white mb-2">Campus Tour</span>
                        <h5 class="fw-bold text-primary mb-2">Smart Classrooms & STEM Laboratories</h5>
                        <p class="small text-secondary m-0">A walkthrough of Tata ClassEdge interactive classrooms, physics, chemistry, biology, and math labs.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
