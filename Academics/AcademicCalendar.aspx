<%@ Page Title="Academic Calendar" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="AcademicCalendar.aspx.cs" Inherits="Chetancbsewebsite.Academics.AcademicCalendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">Annual Academic Calendar</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Academics</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Academic Calendar</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Schedule of Events</span>
                <h2 class="fw-bold text-primary mb-3">Academic Session 2026 – 2027</h2>
                
                <p class="text-secondary">
                    The academic calendar of Chetan Public School provides an organized schedule of academic terms, examination cycles, holidays, parent-teacher interactions, and co-curricular milestones.
                </p>

                <!-- Term Overview -->
                <div class="row g-3 mb-4">
                    <div class="col-md-6">
                        <div class="card border-0 bg-primary text-white p-3 rounded-4">
                            <span class="badge bg-warning text-dark w-auto d-inline-block mb-1">TERM I</span>
                            <h5 class="fw-bold mb-1">June – September</h5>
                            <small class="text-white-50">Instructional days, Periodic Assessment 1, Half-Yearly / Mid-Term Exams</small>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card border-0 bg-secondary text-white p-3 rounded-4">
                            <span class="badge bg-warning text-dark w-auto d-inline-block mb-1">TERM II</span>
                            <h5 class="fw-bold mb-1">October – March</h5>
                            <small class="text-white-50">Periodic Assessment 2, Sports Meet, Pre-Boards & Annual Final Exams</small>
                        </div>
                    </div>
                </div>

                <!-- Monthly Schedule Table -->
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-4">
                    <div class="table-responsive">
                        <table class="table table-hover align-middle mb-0">
                            <thead class="bg-primary text-white">
                                <tr>
                                    <th class="py-3 px-3">Month</th>
                                    <th class="py-3 px-3">Key Academic Engagements & Events</th>
                                    <th class="py-3 px-3">Holidays & Observances</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">June</td>
                                    <td class="px-3 text-secondary small">Reopening of School, Student Council Nominations, World Environment Day, International Yoga Day.</td>
                                    <td class="px-3 text-secondary small">Bakrid (Eid-ul-Adha)</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">July</td>
                                    <td class="px-3 text-secondary small">Periodic Assessment – I (PA-1), Student Council Elections & Investiture Ceremony, Inter-House Quiz.</td>
                                    <td class="px-3 text-secondary small">Muharram</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">August</td>
                                    <td class="px-3 text-secondary small">Independence Day Celebrations, Science Exhibition, Parent-Teacher Meeting (PTM-1).</td>
                                    <td class="px-3 text-secondary small">Independence Day, Raksha Bandhan</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">September</td>
                                    <td class="px-3 text-secondary small">Teachers' Day Observance, Mid-Term / Half-Yearly Examinations, Evaluation & Report Cards.</td>
                                    <td class="px-3 text-secondary small">Ganesh Chaturthi, Eid Milad</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">October</td>
                                    <td class="px-3 text-secondary small">Gandhi Jayanti, Dussehra Vacation, Mid-Term PTM, Commencement of Term II.</td>
                                    <td class="px-3 text-secondary small">Gandhi Jayanti, Vijayadashami / Dasara</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">November</td>
                                    <td class="px-3 text-secondary small">Karnataka Rajyotsava Celebrations, Deepavali Cultural Fest (Blue & Yellow House), Children's Day Sports Week.</td>
                                    <td class="px-3 text-secondary small">Kannada Rajyotsava, Deepavali (Diwali), Kanakadasa Jayanti</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">December</td>
                                    <td class="px-3 text-secondary small">Periodic Assessment – II (PA-2), Annual Sports Meet & Athletic Championship, Christmas Assembly.</td>
                                    <td class="px-3 text-secondary small">Christmas & Winter Break</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">January</td>
                                    <td class="px-3 text-secondary small">Makar Sankranti, Pre-Board Examination – 1 for Class X, Republic Day Parade & Drills.</td>
                                    <td class="px-3 text-secondary small">Makar Sankranti, Republic Day</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">February</td>
                                    <td class="px-3 text-secondary small">Pre-Board Examination – 2 for Class X, Practical Laboratory Assessments, Farewell to Class X.</td>
                                    <td class="px-3 text-secondary small">Maha Shivratri</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">March</td>
                                    <td class="px-3 text-secondary small">CBSE All India Secondary School Board Exams (Class X), Annual Final Examinations (Grades 1 – 9).</td>
                                    <td class="px-3 text-secondary small">Holi, Good Friday</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold text-primary">April</td>
                                    <td class="px-3 text-secondary small">Annual Result Declaration, Distribution of Report Cards, Commencement of Summer Vacation.</td>
                                    <td class="px-3 text-secondary small">Ugadi, Ambedkar Jayanti</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="card border-0 bg-light rounded-4 p-4">
                    <div class="d-flex align-items-center justify-content-between flex-wrap gap-2">
                        <div>
                            <h6 class="fw-bold text-primary mb-1"><i class="bi bi-file-earmark-pdf-fill text-danger me-2"></i> Official Calendar Document</h6>
                            <p class="small text-muted mb-0">Download the complete academic calendar with detailed daily schedules.</p>
                        </div>
                        <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-primary btn-sm px-3">
                            <i class="bi bi-download me-1"></i> View Disclosure Documents
                        </a>
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
                            <a href="~/Academics/AcademicCalendar.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Academic Calendar</a>
                            <a href="~/Academics/BooksList.aspx" runat="server" class="list-group-item list-group-item-action">Prescribed Books List</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">School Timings</h5>
                    <p class="small text-white-50 mb-2"><i class="bi bi-clock me-1 text-warning"></i> Monday to Friday: 8:30 AM – 3:30 PM</p>
                    <p class="small text-white-50 mb-3"><i class="bi bi-clock me-1 text-warning"></i> Saturday: 8:30 AM – 1:00 PM</p>
                    <span class="badge bg-warning text-dark p-2 w-100">Co-curricular activities on Saturdays</span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
