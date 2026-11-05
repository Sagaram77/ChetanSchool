<%@ Page Title="Campus Facilities" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Facilities.aspx.cs" Inherits="Chetancbsewebsite.Campus.Facilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Campus Infrastructure & Facilities</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Campus</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Facilities</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="section-title-wrap text-start mb-4">
            <span class="section-tag">World-Class Environment</span>
            <h2 class="section-heading text-start">Built for Holistic Growth, Safety & Innovation</h2>
            <p class="text-secondary max-w-700">
                Spread across an expansive campus in Akshay Nagar, Hubballi, Chetan Public School combines modern technology, individual student safety, and state-of-the-art sports and academic infrastructure.
            </p>
        </div>

        <!-- Dynamic Facilities Grid -->
        <div class="row g-4 mb-5">
            <asp:Repeater ID="rptFacilities" runat="server">
                <ItemTemplate>
                    <div class="col-md-6 col-lg-4">
                        <div class="feature-card">
                            <div class="feature-icon-box">
                                <i class='<%# Eval("IconClass") != DBNull.Value && !string.IsNullOrEmpty(Eval("IconClass").ToString()) ? Eval("IconClass") : "bi bi-building" %>'></i>
                            </div>
                            <span class="badge bg-light text-primary border mb-2"><%# Eval("Category") %></span>
                            <h5 class="fw-bold text-primary mb-2"><%# Eval("FacilityName") %></h5>
                            <p class="text-secondary small mb-3">
                                <%# Eval("ShortDescription") %>
                            </p>
                            <p class="text-muted small border-top pt-2 m-0">
                                <%# Eval("DetailedDescription") %>
                            </p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <!-- Dedicated Section Cards -->
        <h4 class="fw-bold text-primary mb-4">Explore Specialized Campus Wings</h4>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card border-0 shadow-sm rounded-4 p-4 text-center h-100">
                    <div class="feature-icon-box mx-auto mb-3"><i class="bi bi-radioactive"></i></div>
                    <h5 class="fw-bold text-primary">Science & Math Labs</h5>
                    <p class="small text-secondary mb-3">Physics, Chemistry, Biology, Junior Math, and Senior Math Labs.</p>
                    <a href="~/Campus/Laboratories.aspx" runat="server" class="btn btn-outline-primary btn-sm mt-auto">Lab Specifications</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm rounded-4 p-4 text-center h-100">
                    <div class="feature-icon-box mx-auto mb-3"><i class="bi bi-book-half"></i></div>
                    <h5 class="fw-bold text-primary">Central Library</h5>
                    <p class="small text-secondary mb-3">Over 10,000 volumes, British Council Library & American Library membership.</p>
                    <a href="~/Campus/Library.aspx" runat="server" class="btn btn-outline-primary btn-sm mt-auto">Library Details</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm rounded-4 p-4 text-center h-100">
                    <div class="feature-icon-box mx-auto mb-3"><i class="bi bi-bus-front"></i></div>
                    <h5 class="fw-bold text-primary">School Transport</h5>
                    <p class="small text-secondary mb-3">GPS-tracked buses covering key routes across Hubballi and Dharwad.</p>
                    <a href="~/Campus/Transport.aspx" runat="server" class="btn btn-outline-primary btn-sm mt-auto">Bus Routes & Safety</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
