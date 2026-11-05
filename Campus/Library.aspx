<%@ Page Title="Central Library" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Library.aspx.cs" Inherits="Chetancbsewebsite.Campus.Library" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Central Library & Information Resource Centre</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Campus</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Central Library</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Gateway to Knowledge</span>
                <h2 class="fw-bold text-primary mb-3">Fostering a Culture of Lifelong Reading & Research</h2>
                
                <p class="lead text-primary fw-semibold">
                    The Central Library of Chetan Public School is a sprawling, peaceful repository of knowledge designed to nurture an enduring love for books, critical research skills, and imaginative thinking.
                </p>

                <!-- International Memberships Badge Box -->
                <div class="card border-0 bg-warning text-dark rounded-4 p-4 my-4 shadow-sm">
                    <div class="d-flex align-items-center gap-3">
                        <div class="fs-1 text-primary"><i class="bi bi-globe-americas"></i></div>
                        <div>
                            <span class="small fw-bold text-uppercase text-dark-50">Global Knowledge Networks</span>
                            <h5 class="fw-bold m-0 text-primary">Institutional Member of the British Council Library & The American Library</h5>
                            <p class="small text-dark mt-1 mb-0">Our students and teachers enjoy access to premier international publications, digital archives, and specialized world literature collections.</p>
                        </div>
                    </div>
                </div>

                <h4 class="fw-bold text-primary mt-4 mb-3">Library Highlights & Resources</h4>
                <div class="row g-3 mb-4">
                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-3 border h-100">
                            <strong class="text-primary d-block mb-1"><i class="bi bi-book-half text-warning me-1"></i> Vast Collection</strong>
                            <p class="small text-muted mb-0">Over 10,000 curated titles spanning fiction, non-fiction, world classics, biographies, poetry, and children's literature.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-3 border h-100">
                            <strong class="text-primary d-block mb-1"><i class="bi bi-journal-text text-warning me-1"></i> Reference Section</strong>
                            <p class="small text-muted mb-0">Comprehensive encyclopedias (Britannica, World Book), multi-volume atlases, science dictionaries, and CBSE sample papers.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-3 border h-100">
                            <strong class="text-primary d-block mb-1"><i class="bi bi-newspaper text-warning me-1"></i> Periodicals & Journals</strong>
                            <p class="small text-muted mb-0">Subscriptions to national dailies (English, Kannada), educational journals, Science Reporter, Tell Me Why, and National Geographic.</p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="p-3 bg-light rounded-3 border h-100">
                            <strong class="text-primary d-block mb-1"><i class="bi bi-display text-warning me-1"></i> Digital Reading Hub</strong>
                            <p class="small text-muted mb-0">Internet-enabled workstations for e-book browsing, educational multimedia CDs, and research project documentation.</p>
                        </div>
                    </div>
                </div>

                <h4 class="fw-bold text-primary mt-4 mb-3">Reading Promotion Initiatives</h4>
                <p class="text-secondary">
                    To make reading an active, engaging habit, our library organizes:
                </p>
                <ul class="text-secondary small">
                    <li class="mb-2"><strong>World Book Day & Library Week:</strong> Annual book exhibitions, storytelling competitions, and author studies.</li>
                    <li class="mb-2"><strong>Class Reading Periods:</strong> Weekly dedicated library hours where students share book reviews and critical impressions.</li>
                    <li class="mb-2"><strong>Reader of the Month Awards:</strong> Recognition badges celebrating enthusiastic young readers across primary and secondary wings.</li>
                </ul>
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
                            <a href="~/Campus/Library.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Central Library</a>
                            <a href="~/Campus/Transport.aspx" runat="server" class="list-group-item list-group-item-action">Transport Fleet</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Library Guidelines</h5>
                    <p class="small text-white-50 mb-2">&bull; Open Access browsing for all students.</p>
                    <p class="small text-white-50 mb-2">&bull; Students can borrow up to 2 books for 14 days.</p>
                    <p class="small text-white-50 mb-0">&bull; Open Monday to Saturday: 8:30 AM – 4:00 PM.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
