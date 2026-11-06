-- ==============================================================
-- Chetan Public School - Parent Testimonials Schema
-- Table: ParentTestimonials
-- ==============================================================

USE [Chetancbsehubli];
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'ParentTestimonials')
BEGIN
    CREATE TABLE ParentTestimonials (
        TestimonialId INT IDENTITY(1,1) PRIMARY KEY,
        ParentName NVARCHAR(150) NOT NULL,
        ChildClass NVARCHAR(100) NOT NULL,
        Rating INT NOT NULL DEFAULT 5,
        TestimonialText NVARCHAR(MAX) NOT NULL,
        PhotoUrl NVARCHAR(300) NULL,
        DisplayOrder INT NOT NULL DEFAULT 1,
        IsActive BIT NOT NULL DEFAULT 1,
        CreatedDate DATETIME NOT NULL DEFAULT GETDATE()
    );

    INSERT INTO ParentTestimonials (ParentName, ChildClass, Rating, TestimonialText, PhotoUrl, DisplayOrder, IsActive)
    VALUES 
    (N'Rajesh Shinde', N'Parent of Class VII Student', 5, N'The individual care given to our child by the teachers is remarkable. She looks forward to going to school every single morning.', NULL, 1, 1),
    (N'Pooja Kulkarni', N'Parent of Class IV Student', 5, N'Tata ClassEdge visual boards make science and math simple to grasp. Our son scored first-rank in his regional Olympiad.', NULL, 2, 1),
    (N'Anand Nadiger', N'Alumni Parent (Batch 2024)', 5, N'The competitive foundation integrated with Chetan PU College gave our daughter a solid headstart for her CBSE Class X boards.', NULL, 3, 1);
END
GO
