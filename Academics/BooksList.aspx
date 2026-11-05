<%@ Page Title="Prescribed Book List" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="BooksList.aspx.cs" Inherits="Chetancbsewebsite.Academics.BooksList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Prescribed Textbooks List</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Academics</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Book List</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Curriculum Resources</span>
                <h2 class="fw-bold text-primary mb-3">Prescribed Books & Curriculum Declaration</h2>
                
                <p class="text-secondary">
                    Chetan Public School strictly adheres to the textbooks published by the <strong>National Council of Educational Research and Training (NCERT)</strong> and the <strong>Central Board of Secondary Education (CBSE)</strong>, supplemented by standardized workbook materials for foundational grades.
                </p>

                <!-- Mandatory Declaration Box (Rule 2.4.7) -->
                <div class="card border-0 bg-light rounded-4 p-4 mb-4 border-start border-4 border-success shadow-sm">
                    <h6 class="fw-bold text-success mb-2"><i class="bi bi-shield-check me-2"></i> Statutory Declaration (CBSE Bye-Laws Rule 2.4.7)</h6>
                    <p class="small text-secondary mb-0">
                        "The Principal and the Manager of Chetan Public School, Hubballi hereby solemnly declare that we have scrutinized all prescribed textbooks published by NCERT / private publishers across all classes. None of the books contain any objectionable, prejudicial, or politically/religiously sensitive material. The school strictly abides by CBSE regulations."
                    </p>
                </div>

                <!-- Class-wise Book List Accordion -->
                <div class="accordion shadow-sm rounded-4 overflow-hidden" id="booksAccordion">
                    <!-- Class 1-5 -->
                    <div class="accordion-item border-0 border-bottom">
                        <h2 class="accordion-header" id="headingPrimary">
                            <button class="accordion-button fw-bold text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapsePrimary" aria-expanded="true" aria-controls="collapsePrimary">
                                <i class="bi bi-book me-2 text-warning"></i> Primary Wing (Classes I – V)
                            </button>
                        </h2>
                        <div id="collapsePrimary" class="accordion-collapse collapse show" aria-labelledby="headingPrimary" data-bs-parent="#booksAccordion">
                            <div class="accordion-body">
                                <ul class="list-unstyled mb-0 small text-secondary">
                                    <li class="mb-2"><strong>English:</strong> NCERT Marigold Series & Grammar Workbook</li>
                                    <li class="mb-2"><strong>Kannada (2nd/3rd Lang):</strong> Siri Kannada / Savi Kannada (Karnataka Textbook Society)</li>
                                    <li class="mb-2"><strong>Hindi:</strong> NCERT Rimjhim Series</li>
                                    <li class="mb-2"><strong>Mathematics:</strong> NCERT Math-Magic Series</li>
                                    <li class="mb-0"><strong>EVS:</strong> NCERT Looking Around Series (Classes 3-5)</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Class 6-8 -->
                    <div class="accordion-item border-0 border-bottom">
                        <h2 class="accordion-header" id="headingMiddle">
                            <button class="accordion-button collapsed fw-bold text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseMiddle" aria-expanded="false" aria-controls="collapseMiddle">
                                <i class="bi bi-book me-2 text-warning"></i> Middle Wing (Classes VI – VIII)
                            </button>
                        </h2>
                        <div id="collapseMiddle" class="accordion-collapse collapse" aria-labelledby="headingMiddle" data-bs-parent="#booksAccordion">
                            <div class="accordion-body">
                                <ul class="list-unstyled mb-0 small text-secondary">
                                    <li class="mb-2"><strong>English:</strong> NCERT Honeysuckle, A Pact with the Sun, Honeycomb, An Alien Hand, Honeydew, It So Happened</li>
                                    <li class="mb-2"><strong>Mathematics:</strong> NCERT Mathematics for Classes VI, VII, VIII & Exemplar Problems</li>
                                    <li class="mb-2"><strong>Science:</strong> NCERT Science & Lab Manual</li>
                                    <li class="mb-2"><strong>Social Science:</strong> NCERT Our Pasts, The Earth Our Habitat, Social and Political Life</li>
                                    <li class="mb-2"><strong>Hindi:</strong> NCERT Vasant & Bal Ramkatha / Mahabharat</li>
                                    <li class="mb-0"><strong>Kannada:</strong> Karnataka State Board Prescribed Siri Kannada</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- Class 9-10 -->
                    <div class="accordion-item border-0">
                        <h2 class="accordion-header" id="headingSecondary">
                            <button class="accordion-button collapsed fw-bold text-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSecondary" aria-expanded="false" aria-controls="collapseSecondary">
                                <i class="bi bi-book me-2 text-warning"></i> Secondary Wing (Classes IX & X)
                            </button>
                        </h2>
                        <div id="collapseSecondary" class="accordion-collapse collapse" aria-labelledby="headingSecondary" data-bs-parent="#booksAccordion">
                            <div class="accordion-body">
                                <ul class="list-unstyled mb-0 small text-secondary">
                                    <li class="mb-2"><strong>English Language & Literature:</strong> NCERT Beehive & Moments (Class IX) / First Flight & Footprints without Feet (Class X)</li>
                                    <li class="mb-2"><strong>Mathematics:</strong> NCERT Mathematics, Exemplar Problems & Mathematics Laboratory Manual</li>
                                    <li class="mb-2"><strong>Science:</strong> NCERT Science (Physics, Chemistry, Biology) & CBSE Lab Manual</li>
                                    <li class="mb-2"><strong>Social Science:</strong> India and Contemporary World, Contemporary India, Democratic Politics, Understanding Economic Development</li>
                                    <li class="mb-2"><strong>Second Language:</strong> NCERT Sparsh / Sanchayan (Hindi) OR Siri Kannada (Class IX-X)</li>
                                    <li class="mb-0"><strong>Foundation Material:</strong> In-house IIT/NTSE problem sets compiled by Chetan PU College faculty</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sidebar Column -->
            <div class="col-lg-4">
                <div class="card border-0 shadow-sm rounded-4 mb-4">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h6 class="fw-bold text-primary m-0"><i class="bi bi-journal-bookmark me-2"></i> In Academics</h6>
                    </div>
                    <div class="card-body p-3">
                        <div class="list-group list-group-flush">
                            <a href="~/Academics/Curriculum.aspx" runat="server" class="list-group-item list-group-item-action">CBSE Curriculum</a>
                            <a href="~/Academics/CompetitiveCoaching.aspx" runat="server" class="list-group-item list-group-item-action">IIT-JEE & NTSE Coaching</a>
                            <a href="~/Academics/Faculty.aspx" runat="server" class="list-group-item list-group-item-action">Faculty Directory</a>
                            <a href="~/Academics/AcademicCalendar.aspx" runat="server" class="list-group-item list-group-item-action">Academic Calendar</a>
                            <a href="~/Academics/BooksList.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Prescribed Books List</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">Central Library</h5>
                    <p class="small text-white-50 mb-3">Explore our institutional links with the American Library and British Council Library.</p>
                    <a href="~/Campus/Library.aspx" runat="server" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-book-half me-1"></i> Visit Library Page
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
