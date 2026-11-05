-- =====================================================================================
-- Database Schema & Comprehensive Seed Data
-- Institution: Chetan Public School (CPS), Akshay Nagar, Hubballi - 580030
-- Management: Dyavappanavar - Valasang Educational & Academic Trust (DVEA Trust)
-- CBSE Affiliation No: 831020 | School Code: 45914
-- Target Server: SAGAR-M-DELL
-- Database Name: Chetancbsehubli
-- =====================================================================================

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Chetancbsehubli')
BEGIN
    CREATE DATABASE [Chetancbsehubli];
END
GO

USE [Chetancbsehubli];
GO

-- 1. Table: AdminUsers (Authentication & Access Control)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AdminUsers]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[AdminUsers] (
        [UserId] INT IDENTITY(1,1) PRIMARY KEY,
        [Username] NVARCHAR(50) NOT NULL UNIQUE,
        [PasswordHash] NVARCHAR(256) NOT NULL,
        [Salt] NVARCHAR(100) NOT NULL,
        [FullName] NVARCHAR(100) NOT NULL,
        [Email] NVARCHAR(100) NOT NULL,
        [Role] NVARCHAR(50) NOT NULL DEFAULT 'Admin', -- 'SuperAdmin', 'Admin', 'Staff'
        [IsActive] BIT NOT NULL DEFAULT 1,
        [LastLoginDate] DATETIME NULL,
        [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE()
    );
END
GO

-- 2. Table: NewsAnnouncements (News, Tickers, Events & Circulars)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NewsAnnouncements]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[NewsAnnouncements] (
        [NewsId] INT IDENTITY(1,1) PRIMARY KEY,
        [Title] NVARCHAR(255) NOT NULL,
        [Summary] NVARCHAR(500) NULL,
        [ContentDetails] NVARCHAR(MAX) NOT NULL,
        [Category] NVARCHAR(50) NOT NULL DEFAULT 'Announcement', -- 'Announcement', 'News', 'Circular', 'Event'
        [PublishedDate] DATE NOT NULL DEFAULT CAST(GETDATE() AS DATE),
        [IsTicker] BIT NOT NULL DEFAULT 0,
        [IsFeatured] BIT NOT NULL DEFAULT 0,
        [AttachmentUrl] NVARCHAR(500) NULL,
        [ThumbnailUrl] NVARCHAR(500) NULL,
        [IsActive] BIT NOT NULL DEFAULT 1,
        [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE()
    );
END
GO

-- 3. Table: GalleryAlbums (Photo & Event Albums)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GalleryAlbums]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[GalleryAlbums] (
        [AlbumId] INT IDENTITY(1,1) PRIMARY KEY,
        [AlbumTitle] NVARCHAR(150) NOT NULL,
        [Category] NVARCHAR(100) NOT NULL DEFAULT 'Campus Events',
        [Description] NVARCHAR(500) NULL,
        [CoverImageUrl] NVARCHAR(500) NULL,
        [EventDate] DATE NULL,
        [AcademicYear] NVARCHAR(20) NOT NULL DEFAULT '2025-26',
        [DisplayOrder] INT NOT NULL DEFAULT 0,
        [IsActive] BIT NOT NULL DEFAULT 1,
        [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE()
    );
END
GO

-- 4. Table: GalleryPhotos (Images attached to albums)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GalleryPhotos]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[GalleryPhotos] (
        [PhotoId] INT IDENTITY(1,1) PRIMARY KEY,
        [AlbumId] INT NOT NULL FOREIGN KEY REFERENCES [dbo].[GalleryAlbums]([AlbumId]) ON DELETE CASCADE,
        [PhotoUrl] NVARCHAR(500) NOT NULL,
        [ThumbnailUrl] NVARCHAR(500) NULL,
        [Caption] NVARCHAR(255) NULL,
        [DisplayOrder] INT NOT NULL DEFAULT 0,
        [IsCover] BIT NOT NULL DEFAULT 0,
        [UploadedDate] DATETIME NOT NULL DEFAULT GETDATE()
    );
END
GO

-- 5. Table: MandatoryDisclosures (CBSE Appendix IX Compliance Records)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MandatoryDisclosures]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[MandatoryDisclosures] (
        [DisclosureId] INT IDENTITY(1,1) PRIMARY KEY,
        [Category] NVARCHAR(100) NOT NULL, -- 'General Information', 'Documents and Information', 'Result and Academics', 'Staff (Teaching)', 'School Infrastructure'
        [DocumentTitle] NVARCHAR(255) NOT NULL,
        [DocumentNumber] NVARCHAR(100) NULL,
        [PdfFileUrl] NVARCHAR(500) NOT NULL,
        [FileSize] NVARCHAR(50) NULL,
        [AcademicSession] NVARCHAR(20) NOT NULL DEFAULT '2025-2026',
        [DisplayOrder] INT NOT NULL DEFAULT 0,
        [LastUpdatedDate] DATETIME NOT NULL DEFAULT GETDATE()
    );
END
GO

-- 6. Table: StaffDirectory (Faculty & Leadership)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StaffDirectory]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[StaffDirectory] (
        [StaffId] INT IDENTITY(1,1) PRIMARY KEY,
        [FullName] NVARCHAR(100) NOT NULL,
        [Designation] NVARCHAR(100) NOT NULL,
        [Department] NVARCHAR(100) NOT NULL, -- 'Administration', 'Languages', 'Science', 'Mathematics', 'Social Science', 'Co-Curricular & Sports', 'Support'
        [Qualifications] NVARCHAR(150) NOT NULL,
        [ExperienceYears] INT NULL,
        [PhotoUrl] NVARCHAR(500) NULL,
        [DisplayOrder] INT NOT NULL DEFAULT 0,
        [IsActive] BIT NOT NULL DEFAULT 1
    );
END
GO

-- 7. Table: CampusFacilities (Infrastructure & Facilities)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CampusFacilities]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[CampusFacilities] (
        [FacilityId] INT IDENTITY(1,1) PRIMARY KEY,
        [FacilityName] NVARCHAR(150) NOT NULL,
        [Category] NVARCHAR(50) NOT NULL, -- 'Academic', 'Laboratory', 'Sports', 'Safety', 'General'
        [ShortDescription] NVARCHAR(300) NOT NULL,
        [DetailedDescription] NVARCHAR(MAX) NULL,
        [IconClass] NVARCHAR(100) NULL,
        [ImageUrl] NVARCHAR(500) NULL,
        [DisplayOrder] INT NOT NULL DEFAULT 0,
        [IsActive] BIT NOT NULL DEFAULT 1
    );
END
GO

-- 8. Table: ContactMessages (General Public Inquiries & Feedback)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContactMessages]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[ContactMessages] (
        [MessageId] INT IDENTITY(1,1) PRIMARY KEY,
        [SenderName] NVARCHAR(100) NOT NULL,
        [Email] NVARCHAR(100) NOT NULL,
        [Phone] NVARCHAR(20) NULL,
        [Subject] NVARCHAR(200) NOT NULL,
        [Message] NVARCHAR(MAX) NOT NULL,
        [IsRead] BIT NOT NULL DEFAULT 0,
        [AdminReply] NVARCHAR(MAX) NULL,
        [SubmittedDate] DATETIME NOT NULL DEFAULT GETDATE()
    );
END
GO

-- 9. Table: SiteSettings (Key-Value Dynamic Configuration & ERP Admission Link)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SiteSettings]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[SiteSettings] (
        [SettingKey] NVARCHAR(100) PRIMARY KEY,
        [SettingValue] NVARCHAR(MAX) NOT NULL,
        [Description] NVARCHAR(255) NULL
    );
END
GO

-- 10. Table: PopupAnnouncements (Home Page Dynamic Modal with Photo Upload)
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PopupAnnouncements]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[PopupAnnouncements] (
        [PopupId] INT IDENTITY(1,1) PRIMARY KEY,
        [Title] NVARCHAR(200) NOT NULL,
        [ImageUrl] NVARCHAR(500) NULL,
        [Description] NVARCHAR(MAX) NULL,
        [ActionUrl] NVARCHAR(500) NULL,
        [ActionText] NVARCHAR(100) NULL DEFAULT 'Learn More',
        [IsActive] BIT NOT NULL DEFAULT 1,
        [CreatedDate] DATETIME NOT NULL DEFAULT GETDATE()
    );
END
GO

-- Note: Online Admission Enquiries and Transfer Certificates (TC) are managed
-- directly through the school's existing ERP software and external Google Drive portal.
GO

-- =====================================================================================
-- SEED DATA POPULATION
-- =====================================================================================

-- Seed Admin User: Default credentials are 'admin' / 'Admin@123'
-- Hash of ("Admin@123" + "CPS_SALT_2026")
IF EXISTS (SELECT 1 FROM [dbo].[AdminUsers] WHERE [Username] = 'admin')
BEGIN
    UPDATE [dbo].[AdminUsers]
    SET [PasswordHash] = '89eb14259ff00178fff3a66af24576e52aa8f0cb8f36be6f8f4ee9e7a5c24e5c',
        [Salt] = 'CPS_SALT_2026',
        [FullName] = 'System Administrator',
        [Email] = 'chetanschool2016@gmail.com',
        [Role] = 'SuperAdmin',
        [IsActive] = 1
    WHERE [Username] = 'admin';
END
ELSE
BEGIN
    INSERT INTO [dbo].[AdminUsers] ([Username], [PasswordHash], [Salt], [FullName], [Email], [Role], [IsActive])
    VALUES ('admin', '89eb14259ff00178fff3a66af24576e52aa8f0cb8f36be6f8f4ee9e7a5c24e5c', 'CPS_SALT_2026', 'System Administrator', 'chetanschool2016@gmail.com', 'SuperAdmin', 1);
END
GO

-- Seed Site Settings
MERGE [dbo].[SiteSettings] AS Target
USING (VALUES 
    ('SchoolName', 'Chetan Public School', 'Full name of the institution'),
    ('Motto', 'Moulding Minds to Excel', 'School official motto'),
    ('AffiliationNo', '831020', 'CBSE Affiliation Number'),
    ('SchoolCode', '45914', 'CBSE School Code'),
    ('Address', 'Chetan Public School, Akshay Nagar, Hubballi - 580030, Karnataka, India', 'Campus Address'),
    ('Phone1', '0836-2955578', 'Primary contact phone'),
    ('Phone2', '0836-2330898', 'Secondary contact phone'),
    ('Email1', 'chetanschool2016@gmail.com', 'Primary administrative email'),
    ('Email2', 'chetanpublicschoolhubli@gmail.com', 'Secondary office email'),
    ('OfficeTimings', 'Monday to Saturday: 8:30 AM - 4:00 PM', 'Administrative office timings'),
    ('TrustName', 'Dyavappanavar - Valasang Educational & Academic Trust', 'Managing Trust Name'),
    ('AdmissionOpenYear', '2026-2027', 'Active admission cycle'),
    ('AdmissionFormLink', 'https://drive.google.com/', 'Dynamic Google Drive / ERP link for Online Admissions')
) AS Source ([SettingKey], [SettingValue], [Description])
ON Target.[SettingKey] = Source.[SettingKey]
WHEN MATCHED THEN 
    UPDATE SET Target.[SettingValue] = Source.[SettingValue], Target.[Description] = Source.[Description]
WHEN NOT MATCHED THEN 
    INSERT ([SettingKey], [SettingValue], [Description]) 
    VALUES (Source.[SettingKey], Source.[SettingValue], Source.[Description]);
GO

-- Seed News & Announcements
IF NOT EXISTS (SELECT 1 FROM [dbo].[NewsAnnouncements])
BEGIN
    INSERT INTO [dbo].[NewsAnnouncements] ([Title], [Summary], [ContentDetails], [Category], [PublishedDate], [IsTicker], [IsFeatured])
    VALUES 
    (N'Admissions Open for Academic Year 2026-27 (Pre-Primary to Class X)', 
     N'Registrations are invited for Pre-Primary (Nursery, LKG, UKG) and Grades I to X with integrated competitive foundation.', 
     N'<p>Chetan Public School, Akshay Nagar, Hubballi announces the opening of admissions for the academic session 2026-27. We offer a progressive CBSE curriculum enriched with Tata ClassEdge smart classrooms, modern STEM laboratories, British Council library resources, and foundational training for NTSE and IIT-JEE starting from junior high school.</p><p>Interested parents are requested to visit the school office or submit the online enquiry form on our official website.</p>', 
     'Announcement', GETDATE(), 1, 1),

    (N'International Day of Yoga Celebrated with Vigor & Discipline', 
     N'Students and faculty performed comprehensive yogasanas under the theme "Yoga for Humanity".', 
     N'<p>Chetan Public School celebrated the International Day of Yoga at the school campus with great enthusiasm. Under the guidance of our physical education masters and yoga instructors, over 800 students demonstrated various asanas and pranayama routines to foster physical wellness, mental agility, and inner balance.</p>', 
     'Event', DATEADD(DAY, -15, GETDATE()), 1, 1),

    (N'Special Integrated NTSE & IIT Foundation Batches Launched for Classes 9 & 10', 
     N'Experienced science faculty from Chetan PU Science College mentor high school students in advanced STEM reasoning.', 
     N'<p>In alignment with our legacy of academic distinction, specialized foundation classes in Physics, Chemistry, and Mathematics have commenced for students of Class IX and X. Mentored directly by senior professors of Chetan Pre-University Science College, this initiative equips students for national competitive benchmarks.</p>', 
     'News', DATEADD(DAY, -30, GETDATE()), 1, 1),

    (N'Annual Sports Meet & Athletic Championship Concluded', 
     N'Vibrant displays of track events, march past, and sportsmanship; Red House clinches General Championship trophy.', 
     N'<p>The Annual Sports Day of Chetan Public School was held at the campus sports arena. Events included 100m, 200m sprints, 4x100m relay, long jump, and shot put. Red House claimed the coveted Overall Championship Trophy, while Blue House secured the Best March Past honor.</p>', 
     'Event', DATEADD(DAY, -45, GETDATE()), 0, 1),

    (N'World Environment Day: Green Campus Tree Plantation Drive', 
     N'Green House led an awareness campaign and planted 100+ saplings across Akshay Nagar campus.', 
     N'<p>Our students observed World Environment Day with a pledge to protect Mother Earth. Guided by teachers, students conducted an environmental rally carrying informative placards and participated in a campus-wide sapling plantation campaign.</p>', 
     'Event', DATEADD(DAY, -60, GETDATE()), 0, 0);
END
GO

-- Seed Gallery Albums
IF NOT EXISTS (SELECT 1 FROM [dbo].[GalleryAlbums])
BEGIN
    INSERT INTO [dbo].[GalleryAlbums] ([AlbumTitle], [Category], [Description], [CoverImageUrl], [EventDate], [AcademicYear], [DisplayOrder])
    VALUES 
    (N'International Day of Yoga Celebrations', N'Campus Events', N'Demonstrations of Yogasanas and Pranayama by students and teachers', N'/Assets/images/gallery/yoga_cover.jpg', '2026-06-21', N'2026-27', 1),
    (N'Annual Sports Meet & Athletic Events', N'Sports', N'Track and field events, relay races, and championship trophy presentations', N'/Assets/images/gallery/sports_cover.jpg', '2026-01-15', N'2025-26', 2),
    (N'World Environment Day & Tree Plantation', N'Co-Curricular', N'Student eco-rallies, green initiatives, and campus sapling plantation', N'/Assets/images/gallery/env_cover.jpg', '2026-06-05', N'2026-27', 3),
    (N'Student Council Elections & Investiture Ceremony', N'Leadership', N'Democratic ballot election and badge conferral for Head Boy, Head Girl, and House Captains', N'/Assets/images/gallery/council_cover.jpg', '2026-07-10', N'2026-27', 4),
    (N'Cultural Fest & Deepavali Celebrations', N'Cultural', N'Traditional lamps, cultural dance performances, and festive skits by Blue and Yellow houses', N'/Assets/images/gallery/diwali_cover.jpg', '2025-11-12', N'2025-26', 5);
END
GO

-- Seed Staff Directory
IF NOT EXISTS (SELECT 1 FROM [dbo].[StaffDirectory])
BEGIN
    INSERT INTO [dbo].[StaffDirectory] ([FullName], [Designation], [Department], [Qualifications], [ExperienceYears], [PhotoUrl], [DisplayOrder])
    VALUES 
    (N'Dr. Jerushah R. Nadugaddi', N'Principal', N'Administration', N'Ph.D., M.Phil., M.Sc., M.A., M.Ed.', 24, N'/Assets/images/staff/principal.jpg', 1),
    (N'Mrs. Roopa Ramakantha Pai', N'Vice Principal', N'Administration', N'M.Phil., M.A., B.Ed., DCA', 18, N'/Assets/images/staff/vice_principal.jpg', 2),
    (N'Dr. Channappa S. Hasabi', N'Academic Advisor', N'Administration', N'M.A., Ph.D.', 30, N'/Assets/images/staff/academic_advisor.jpg', 3),
    (N'Mrs. Preeta Bandi', N'TGT Mathematics', N'Mathematics', N'M.Sc., B.Ed.', 12, N'/Assets/images/staff/staff_preeta.jpg', 4),
    (N'Mrs. Roopa Hooliker', N'TGT Science (Physics)', N'Science', N'M.Sc. (Physics), B.Ed.', 10, N'/Assets/images/staff/staff_roopa.jpg', 5),
    (N'Mrs. Jyoti K.', N'TGT Science (Biology)', N'Science', N'M.Sc. (Botany), B.Ed.', 9, N'/Assets/images/staff/staff_jyoti.jpg', 6),
    (N'Mrs. Banashankari Dixit', N'TGT Mathematics', N'Mathematics', N'B.Sc., B.Ed.', 8, N'/Assets/images/staff/staff_banashankari.jpg', 7),
    (N'Mrs. Vijayalakshmi P.', N'TGT Chemistry', N'Science', N'M.Sc. (Chemistry), B.Ed.', 11, N'/Assets/images/staff/staff_vijayalakshmi.jpg', 8),
    (N'Mrs. Madhavi Jagdish Harlapur', N'Computer Faculty', N'Science', N'MCA', 7, N'/Assets/images/staff/staff_madhavi.jpg', 9),
    (N'Mrs. Shilparani Akki', N'Computer Faculty', N'Science', N'BCA, PGDCA', 6, N'/Assets/images/staff/staff_shilparani.jpg', 10),
    (N'Mrs. Deepa V. Pai', N'TGT English', N'Languages', N'M.A. (English), B.Ed.', 14, N'/Assets/images/staff/staff_deepa.jpg', 11),
    (N'Mrs. Rekha Umesh Nair', N'TGT English', N'Languages', N'M.A. (English), B.Ed.', 11, N'/Assets/images/staff/staff_rekha.jpg', 12),
    (N'Mrs. Latha Deshpande', N'TGT Hindi', N'Languages', N'M.A. (Hindi), B.Ed.', 13, N'/Assets/images/staff/staff_latha.jpg', 13),
    (N'Mr. Sanjeev Aragikar', N'TGT Kannada', N'Languages', N'M.A. (Kannada), B.Ed.', 12, N'/Assets/images/staff/staff_sanjeev.jpg', 14),
    (N'Mrs. Shobha C. Madgundi', N'PRT Kannada', N'Languages', N'B.A., B.Ed.', 8, N'/Assets/images/staff/staff_shobha.jpg', 15),
    (N'Mrs. Nanda Kotagi', N'TGT Social Science', N'Social Science', N'M.A. (History), B.Ed.', 10, N'/Assets/images/staff/staff_nanda.jpg', 16),
    (N'Mrs. Manashree Hasabi', N'PRT EVS & Social Science', N'Social Science', N'B.A., B.Ed.', 7, N'/Assets/images/staff/staff_manashree.jpg', 17),
    (N'Physical Education Director', N'Physical Education Instructor (PET)', N'Co-Curricular & Sports', N'M.P.Ed., NIS Certified', 12, N'/Assets/images/staff/staff_pet.jpg', 18),
    (N'Senior Librarian', N'Chief Librarian & Information Officer', N'Support', N'M.Lib.Sc.', 15, N'/Assets/images/staff/staff_librarian.jpg', 19),
    (N'Student Wellness Counselor', N'Wellness Teacher & Counselor', N'Support', N'M.Sc. (Child Psychology)', 8, N'/Assets/images/staff/staff_counselor.jpg', 20);
END
GO

-- Seed Mandatory Disclosures (CBSE Appendix IX)
IF NOT EXISTS (SELECT 1 FROM [dbo].[MandatoryDisclosures])
BEGIN
    INSERT INTO [dbo].[MandatoryDisclosures] ([Category], [DocumentTitle], [DocumentNumber], [PdfFileUrl], [FileSize], [DisplayOrder])
    VALUES 
    (N'Documents and Information', N'Copies of Affiliation / Extension Letter', N'CBSE/AFF/831020', N'/Uploads/Disclosures/Affiliation_Letter.pdf', N'1.2 MB', 1),
    (N'Documents and Information', N'Copies of Societies / Trust Registration & Trust Deed', N'DVEA-TRUST-REG-2008', N'/Uploads/Disclosures/Trust_Deed.pdf', N'2.4 MB', 2),
    (N'Documents and Information', N'Copy of No Objection Certificate (NOC) Issued by State Govt.', N'ED/NOC/HUB/09', N'/Uploads/Disclosures/State_NOC.pdf', N'850 KB', 3),
    (N'Documents and Information', N'Copy of Recognition Certificate Under RTE Act, 2009', N'RTE-RECOG-KA-2016', N'/Uploads/Disclosures/RTE_Recognition.pdf', N'920 KB', 4),
    (N'Documents and Information', N'Copy of Valid Building Safety Certificate (National Building Code)', N'PWD/BLD/HUB/2024', N'/Uploads/Disclosures/Building_Safety.pdf', N'1.1 MB', 5),
    (N'Documents and Information', N'Copy of Valid Fire Safety Certificate Issued by Competent Authority', N'FIRE/DEPT/KA/2025', N'/Uploads/Disclosures/Fire_Safety.pdf', N'780 KB', 6),
    (N'Documents and Information', N'Copy of Valid Safe Drinking Water and Sanitary Condition Certificate', N'HEALTH/DEPT/HUB/2025', N'/Uploads/Disclosures/Safe_Water_Certificate.pdf', N'650 KB', 7),
    (N'Result and Academics', N'Fee Structure of the School (Class-wise Schedule)', N'CPS/FEE/2025-26', N'/Uploads/Disclosures/Fee_Structure.pdf', N'450 KB', 8),
    (N'Result and Academics', N'Annual Academic Calendar & Examination Timetable', N'ACAD/CAL/2025-26', N'/Uploads/Disclosures/Academic_Calendar.pdf', N'1.5 MB', 9),
    (N'Result and Academics', N'List of School Management Committee (SMC)', N'SMC/MEMBERS/2025', N'/Uploads/Disclosures/SMC_Members.pdf', N'380 KB', 10),
    (N'Result and Academics', N'List of Parents Teachers Association (PTA) Members', N'PTA/MEMBERS/2025', N'/Uploads/Disclosures/PTA_Members.pdf', N'410 KB', 11),
    (N'Result and Academics', N'Last 3-Year Result of the Board Examination (Class X)', N'CBSE/RES/3YR', N'/Uploads/Disclosures/Board_Results_3Yr.pdf', N'520 KB', 12);
END
GO

-- Seed Campus Facilities
IF NOT EXISTS (SELECT 1 FROM [dbo].[CampusFacilities])
BEGIN
    INSERT INTO [dbo].[CampusFacilities] ([FacilityName], [Category], [ShortDescription], [DetailedDescription], [IconClass], [ImageUrl], [DisplayOrder])
    VALUES 
    (N'Tata ClassEdge Smart Classrooms', N'Academic', N'Interactive digital whiteboards, audio-visual curriculum aids, and animated 3D modules.', N'Every classroom is enabled with Tata ClassEdge digital technology, delivering an interactive multimedia learning experience mapped to CBSE standards to make abstract scientific and mathematical concepts tangible.', N'bi bi-display', N'/Assets/images/facilities/smart_class.jpg', 1),
    (N'Advanced Science Laboratories (Physics, Chemistry, Biology)', N'Laboratory', N'Fully furnished, individual student experiment benches with rigorous safety compliance.', N'Spacious, dedicated laboratories equipped with precision microscopes, chemical reagents, titration setups, optics benches, and anatomical models ensuring experiential STEM education.', N'bi bi-radioactive', N'/Assets/images/facilities/science_lab.jpg', 2),
    (N'Junior & Senior Mathematics Laboratories', N'Laboratory', N'Hands-on manipulatives, geometric models, Abacus, and algebraic tools.', N'Specialized math labs to overcome math anxiety and foster conceptual clarity through physical models, geometric constructions, and interactive analytical games.', N'bi bi-calculator', N'/Assets/images/facilities/math_lab.jpg', 3),
    (N'High-Tech Computer Laboratory', N'Laboratory', N'Modern networked workstations with high-speed fiber internet and UPS power backup.', N'Equipped with latest hardware and coding software, enabling students to master digital literacy, algorithmic problem solving, Python programming, and multimedia tools.', N'bi bi-pc-display-horizontal', N'/Assets/images/facilities/computer_lab.jpg', 4),
    (N'Central Library & Resource Center', N'Academic', N'Comprehensive repository of over 10,000 volumes, encyclopedias, and periodicals.', N'Institutional member of the American Library and British Council Library, providing rich reading resources, international journals, digital media, and a quiet reading haven.', N'bi bi-book-half', N'/Assets/images/facilities/library.jpg', 5),
    (N'School Health Clinic & Infirmary', N'Safety', N'Dedicated healthcare suite with certified medical nursing care and first-aid facilities.', N'Furnished with observation beds, emergency oxygen, first-aid equipment, and scheduled visits by pediatric physicians for annual student health screening.', N'bi bi-heart-pulse', N'/Assets/images/facilities/clinic.jpg', 6),
    (N'Commercial RO Water Purification Plant', N'Safety', N'Multi-stage Reverse Osmosis drinking water plant with chilled and normal dispensing.', N'On-campus industrial grade RO water purification unit supplying certified pure, bacteriologically tested potable water across all floors and departments.', N'bi bi-droplet-half', N'/Assets/images/facilities/ro_plant.jpg', 7),
    (N'Expansive Sports Arena & Indoor Games', N'Sports', N'Dedicated playgrounds for Cricket, Football, Volleyball, plus indoor Table Tennis and Chess.', N'Full physical education facilities under the supervision of qualified coaches to nurture team spirit, athletic prowess, and fitness across all age groups.', N'bi bi-trophy', N'/Assets/images/facilities/sports.jpg', 8),
    (N'GPS-Enabled Safe School Bus Fleet', N'General', N'Safe, comfortable school transport fleet covering Hubballi and Dharwad routes.', N'Each bus is equipped with speed governors, CCTV surveillance, GPS live tracking, first-aid kits, and is accompanied by trained conductors and female attendants.', N'bi bi-bus-front', N'/Assets/images/facilities/bus.jpg', 9);
END
GO

-- Seed Default Home Page Popup Announcement
IF NOT EXISTS (SELECT 1 FROM [dbo].[PopupAnnouncements])
BEGIN
    INSERT INTO [dbo].[PopupAnnouncements] ([Title], [ImageUrl], [Description], [ActionUrl], [ActionText], [IsActive])
    VALUES 
    (N'Admissions Open for Academic Year 2026-27!', 
     N'https://images.unsplash.com/photo-1577896851231-70ef18881754?auto=format&fit=crop&w=800&q=80', 
     N'Registrations are open for Pre-Primary to Class X. Download the application package or fill the admission form via Google Drive.', 
     N'https://drive.google.com/', 
     N'Access Admission Form', 
     1);
END
GO

PRINT 'Chetan Public School Database Schema and Seed Data Executed Successfully.';
GO
