<%@ Page Title="CBSE Mandatory Public Disclosure" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="MandatoryDisclosure.aspx.cs" Inherits="Chetancbsewebsite.Disclosures.MandatoryDisclosure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Breadcrumb Banner -->
    <section class="bg-primary text-white py-4 mb-4">
        <div class="container">
            <h1 class="fw-bold mb-1">CBSE Mandatory Public Disclosure (Appendix IX)</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 text-white-50 small">
                    <li class="breadcrumb-item"><a href="~/Default.aspx" runat="server" class="text-white text-decoration-none">Home</a></li>
                    <li class="breadcrumb-item text-white-50">Disclosures</li>
                    <li class="breadcrumb-item active text-warning" aria-current="page">Mandatory Disclosure</li>
                </ol>
            </nav>
        </div>
    </section>

    <div class="container pb-5">
        <div class="card border-0 bg-light rounded-4 p-4 mb-5 shadow-sm border-start border-4 border-warning">
            <div class="d-flex align-items-center gap-3">
                <div class="fs-1 text-primary"><i class="bi bi-file-earmark-check-fill"></i></div>
                <div>
                    <h5 class="fw-bold text-primary mb-1">CBSE Statutory Compliance Record</h5>
                    <p class="small text-secondary m-0">In compliance with the circulars and Affiliation Bye-Laws (Appendix IX) of the Central Board of Secondary Education, New Delhi, information and statutory certificates concerning Chetan Public School, Hubballi are publicly disclosed below.</p>
                </div>
            </div>
        </div>

        <!-- 1. General Information Table -->
        <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-5">
            <div class="card-header bg-primary text-white py-3">
                <h5 class="fw-bold m-0"><i class="bi bi-info-circle-fill text-warning me-2"></i> Section A: General Information</h5>
            </div>
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="bg-light">
                        <tr>
                            <th class="py-3 px-3" style="width: 80px;">SL NO.</th>
                            <th class="py-3 px-3">INFORMATION</th>
                            <th class="py-3 px-3">DETAILS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="px-3 fw-bold">1</td>
                            <td class="px-3">NAME OF THE SCHOOL</td>
                            <td class="px-3 fw-bold text-primary">CHETAN PUBLIC SCHOOL</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">2</td>
                            <td class="px-3">AFFILIATION NO. (IF APPLICABLE)</td>
                            <td class="px-3 fw-bold text-primary">831020</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">3</td>
                            <td class="px-3">SCHOOL CODE (IF APPLICABLE)</td>
                            <td class="px-3 fw-bold text-primary">45914</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">4</td>
                            <td class="px-3">COMPLETE ADDRESS WITH PIN CODE</td>
                            <td class="px-3">Chetan Public School, Akshay Nagar, Hubballi – 580030, Dharwad Dist., Karnataka</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">5</td>
                            <td class="px-3">PRINCIPAL NAME & QUALIFICATION</td>
                            <td class="px-3 fw-bold">Dr. Jerushah R. Nadugaddi (Ph.D., M.Phil., M.Sc., M.A., M.Ed.)</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">6</td>
                            <td class="px-3">SCHOOL EMAIL ID</td>
                            <td class="px-3"><a href="mailto:chetanschool2016@gmail.com">chetanschool2016@gmail.com</a></td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">7</td>
                            <td class="px-3">CONTACT DETAILS (LANDLINE/MOBILE)</td>
                            <td class="px-3">0836-2955578 / 0836-2330898</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- 2. Documents & Information Table (Dynamic from Database) -->
        <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-5">
            <div class="card-header bg-primary text-white py-3">
                <h5 class="fw-bold m-0"><i class="bi bi-file-earmark-pdf-fill text-warning me-2"></i> Section B: Documents and Information</h5>
            </div>
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="bg-light">
                        <tr>
                            <th class="py-3 px-3" style="width: 80px;">SL NO.</th>
                            <th class="py-3 px-3">DOCUMENTS / INFORMATION</th>
                            <th class="py-3 px-3">DOCUMENT REF NO.</th>
                            <th class="py-3 px-3 text-center" style="width: 200px;">UPLOADED DOCUMENTS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptDocuments" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="px-3 fw-bold"><%# Container.ItemIndex + 1 %></td>
                                    <td class="px-3 fw-semibold text-primary"><%# Eval("DocumentTitle") %></td>
                                    <td class="px-3 small text-muted"><%# Eval("DocumentNumber") != DBNull.Value ? Eval("DocumentNumber") : "N/A" %></td>
                                    <td class="px-3 text-center">
                                        <a href='<%# ResolveUrl(Eval("PdfFileUrl").ToString()) %>' target="_blank" class="btn btn-sm btn-outline-danger fw-bold px-3">
                                            <i class="bi bi-file-earmark-pdf-fill me-1"></i> View PDF
                                        </a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- 3. Results & Academics Table -->
        <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-5">
            <div class="card-header bg-primary text-white py-3">
                <h5 class="fw-bold m-0"><i class="bi bi-mortarboard-fill text-warning me-2"></i> Section C: Result and Academics</h5>
            </div>
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="bg-light">
                        <tr>
                            <th class="py-3 px-3" style="width: 80px;">SL NO.</th>
                            <th class="py-3 px-3">DOCUMENTS / INFORMATION</th>
                            <th class="py-3 px-3">SESSION</th>
                            <th class="py-3 px-3 text-center" style="width: 200px;">UPLOADED DOCUMENTS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="rptAcademics" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td class="px-3 fw-bold"><%# Container.ItemIndex + 1 %></td>
                                    <td class="px-3 fw-semibold text-primary"><%# Eval("DocumentTitle") %></td>
                                    <td class="px-3 small text-muted"><%# Eval("AcademicSession") %></td>
                                    <td class="px-3 text-center">
                                        <a href='<%# ResolveUrl(Eval("PdfFileUrl").ToString()) %>' target="_blank" class="btn btn-sm btn-outline-danger fw-bold px-3">
                                            <i class="bi bi-file-earmark-pdf-fill me-1"></i> View PDF
                                        </a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- 4. Staff (Teaching) Table -->
        <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-5">
            <div class="card-header bg-primary text-white py-3">
                <h5 class="fw-bold m-0"><i class="bi bi-people-fill text-warning me-2"></i> Section D: Staff (Teaching) Information</h5>
            </div>
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="bg-light">
                        <tr>
                            <th class="py-3 px-3" style="width: 80px;">SL NO.</th>
                            <th class="py-3 px-3">STAFF CATEGORY</th>
                            <th class="py-3 px-3">DETAILS / RATIO</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="px-3 fw-bold">1</td>
                            <td class="px-3">PRINCIPAL</td>
                            <td class="px-3 fw-bold">1 (Dr. Jerushah R. Nadugaddi)</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">2</td>
                            <td class="px-3">TOTAL NO. OF TEACHERS</td>
                            <td class="px-3 fw-bold text-primary">32 Qualified Educators</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">3</td>
                            <td class="px-3">TEACHERS-TO-SECTION RATIO</td>
                            <td class="px-3 fw-bold">1 : 1.5 (As per CBSE norms)</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">4</td>
                            <td class="px-3">SPECIAL EDUCATOR</td>
                            <td class="px-3">Appointed & Qualified (B.Ed. Special Education)</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">5</td>
                            <td class="px-3">COUNSELLOR & WELLNESS TEACHER</td>
                            <td class="px-3">Appointed & Qualified (M.Sc. Child Psychology)</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- 5. School Infrastructure Table -->
        <div class="card border-0 shadow-sm rounded-4 overflow-hidden mb-4">
            <div class="card-header bg-primary text-white py-3">
                <h5 class="fw-bold m-0"><i class="bi bi-building-fill text-warning me-2"></i> Section E: School Infrastructure</h5>
            </div>
            <div class="table-responsive">
                <table class="table table-hover align-middle mb-0">
                    <thead class="bg-light">
                        <tr>
                            <th class="py-3 px-3" style="width: 80px;">SL NO.</th>
                            <th class="py-3 px-3">INFRASTRUCTURE COMPONENT</th>
                            <th class="py-3 px-3">SPECIFICATIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="px-3 fw-bold">1</td>
                            <td class="px-3">TOTAL CAMPUS AREA OF THE SCHOOL</td>
                            <td class="px-3 fw-bold text-primary">8,100 Sq. Mtrs (2.0 Acres)</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">2</td>
                            <td class="px-3">NUMBER AND SIZE OF CLASSROOMS</td>
                            <td class="px-3">28 Classrooms (500 Sq. Ft each)</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">3</td>
                            <td class="px-3">NUMBER AND SIZE OF LABORATORIES (PHYSICS, CHEM, BIO, COMP)</td>
                            <td class="px-3">6 Labs (600+ Sq. Ft each)</td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">4</td>
                            <td class="px-3">INTERNET FACILITY</td>
                            <td class="px-3"><span class="badge bg-success">Yes (High-speed 100 Mbps Fiber)</span></td>
                        </tr>
                        <tr>
                            <td class="px-3 fw-bold">5</td>
                            <td class="px-3">NUMBER OF GIRLS' TOILETS & BOYS' TOILETS</td>
                            <td class="px-3">Girls: 18 &bull; Boys: 18 &bull; CWSN Toilets Available</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
