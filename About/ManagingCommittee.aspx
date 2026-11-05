<%@ Page Title="School Managing Committee (SMC)" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="ManagingCommittee.aspx.cs" Inherits="Chetancbsewebsite.About.ManagingCommittee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">School Managing Committee (SMC)</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">About Us</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Managing Committee</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="row g-5">
            <div class="col-lg-8">
                <span class="section-tag">Statutory Governance</span>
                <h2 class="fw-bold text-primary mb-3">School Managing Committee (SMC)</h2>
                
                <p class="text-secondary">
                    In compliance with the Affiliation Bye-Laws of the Central Board of Secondary Education (CBSE), New Delhi, the School Managing Committee of Chetan Public School, Hubballi is duly constituted to oversee institutional administration, academic standards, student safety, and faculty development.
                </p>

                <!-- SMC Table -->
                <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-4">
                    <div class="table-responsive">
                        <table class="table table-hover align-middle mb-0">
                            <thead class="bg-primary text-white">
                                <tr>
                                    <th class="py-3 px-3">#</th>
                                    <th class="py-3 px-3">Member Name</th>
                                    <th class="py-3 px-3">Designation in SMC</th>
                                    <th class="py-3 px-3">Occupation / Background</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="px-3 fw-bold">1</td>
                                    <td class="px-3 fw-bold text-primary">Prof. Gurushant V. Valasang</td>
                                    <td class="px-3"><span class="badge bg-primary">President</span></td>
                                    <td class="px-3 text-secondary small">Academician & Founding Trustee</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold">2</td>
                                    <td class="px-3 fw-bold text-primary">Dr. Ramanagouda R. Patil</td>
                                    <td class="px-3"><span class="badge bg-primary">Chairman</span></td>
                                    <td class="px-3 text-secondary small">Educationist & Scientist (Ph.D.)</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold">3</td>
                                    <td class="px-3 fw-bold text-primary">Prof. Mahesh H. Dyavappanavar</td>
                                    <td class="px-3"><span class="badge bg-primary">Secretary</span></td>
                                    <td class="px-3 text-secondary small">Secretary, DVEA Trust</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold">4</td>
                                    <td class="px-3 fw-bold text-primary">Dr. Jerushah R. Nadugaddi</td>
                                    <td class="px-3"><span class="badge bg-warning text-dark">Member Secretary</span></td>
                                    <td class="px-3 text-secondary small">Principal, Chetan Public School</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold">5</td>
                                    <td class="px-3 fw-bold text-primary">Mrs. Roopa Ramakantha Pai</td>
                                    <td class="px-3"><span class="badge bg-info text-dark">Teacher Representative</span></td>
                                    <td class="px-3 text-secondary small">Vice Principal, Chetan Public School</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold">6</td>
                                    <td class="px-3 fw-bold text-primary">Dr. Channappa S. Hasabi</td>
                                    <td class="px-3"><span class="badge bg-secondary">Academic Advisor</span></td>
                                    <td class="px-3 text-secondary small">Senior Professor & Educationist</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold">7</td>
                                    <td class="px-3 fw-bold text-primary">CBSE Principal Nominee</td>
                                    <td class="px-3"><span class="badge bg-secondary">Board Representative</span></td>
                                    <td class="px-3 text-secondary small">Principal, Kendriya Vidyalaya / JNV</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold">8</td>
                                    <td class="px-3 fw-bold text-primary">Parent Representative (Male)</td>
                                    <td class="px-3"><span class="badge bg-secondary">Parent Member</span></td>
                                    <td class="px-3 text-secondary small">PTA Executive Member</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold">9</td>
                                    <td class="px-3 fw-bold text-primary">Parent Representative (Female)</td>
                                    <td class="px-3"><span class="badge bg-secondary">Parent Member</span></td>
                                    <td class="px-3 text-secondary small">PTA Executive Member</td>
                                </tr>
                                <tr>
                                    <td class="px-3 fw-bold">10</td>
                                    <td class="px-3 fw-bold text-primary">Senior Teacher Member</td>
                                    <td class="px-3"><span class="badge bg-secondary">Teacher Member</span></td>
                                    <td class="px-3 text-secondary small">TGT Faculty Representative</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="card border-0 bg-light rounded-4 p-4">
                    <h6 class="fw-bold text-primary mb-2"><i class="bi bi-file-earmark-pdf-fill text-danger me-2"></i> Download Official SMC Document</h6>
                    <p class="small text-muted mb-3">You can view and download the certified list of School Management Committee members with addresses and tenures under our CBSE Mandatory Disclosures.</p>
                    <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-primary btn-sm px-3">
                        <i class="bi bi-arrow-right-circle me-1"></i> View Mandatory Disclosures (Appendix IX)
                    </a>
                </div>
            </div>

            <!-- Sidebar Column -->
            <div class="col-lg-4">
                <div class="card border-0 shadow-sm rounded-4 mb-4">
                    <div class="card-header bg-white py-3 border-bottom">
                        <h6 class="fw-bold text-primary m-0"><i class="bi bi-compass me-2"></i> In This Section</h6>
                    </div>
                    <div class="card-body p-3">
                        <div class="list-group list-group-flush">
                            <a href="~/About/AboutUs.aspx" runat="server" class="list-group-item list-group-item-action">About School</a>
                            <a href="~/About/VisionMission.aspx" runat="server" class="list-group-item list-group-item-action">Vision & Mission</a>
                            <a href="~/About/PrincipalsDesk.aspx" runat="server" class="list-group-item list-group-item-action">Principal's Desk</a>
                            <a href="~/About/Management.aspx" runat="server" class="list-group-item list-group-item-action">Trust Management</a>
                            <a href="~/About/ManagingCommittee.aspx" runat="server" class="list-group-item list-group-item-action active fw-bold">Managing Committee (SMC)</a>
                        </div>
                    </div>
                </div>

                <div class="card border-0 shadow-sm rounded-4 bg-primary text-white p-4">
                    <h5 class="fw-bold text-warning mb-2">CBSE Compliance</h5>
                    <p class="small text-white-50 mb-3">Chetan Public School strictly adheres to all affiliation norms and fire/building safety standards.</p>
                    <a href="~/Disclosures/MandatoryDisclosure.aspx" runat="server" class="btn btn-warning fw-bold text-dark w-100">
                        <i class="bi bi-shield-check me-1"></i> Public Disclosures
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
