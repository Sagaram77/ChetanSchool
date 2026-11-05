-- =====================================================================================
-- Database Update Script: Chetan Public School (Chetancbsehubli)
-- Run on Local DB Server: SAGAR-M-DELL | Database: Chetancbsehubli
-- 
-- Description:
-- 1. Drops [AdmissionEnquiries] (Online Admissions are managed via ERP / Google Drive).
-- 2. Drops [TransferCertificates] (TC ledger is managed via ERP software).
-- 3. Ensures [SiteSettings] has the dynamic ERP / Google Drive link configuration.
-- 4. Ensures [PopupAnnouncements] is configured for the Home Notice Modal.
-- =====================================================================================

USE [Chetancbsehubli];
GO

-- 1. Drop unused tables (ERP-managed)
IF OBJECT_ID(N'[dbo].[AdmissionEnquiries]', N'U') IS NOT NULL
BEGIN
    DROP TABLE [dbo].[AdmissionEnquiries];
    PRINT 'SUCCESS: Table [AdmissionEnquiries] dropped successfully (Handled by School ERP).';
END
ELSE
BEGIN
    PRINT 'INFO: Table [AdmissionEnquiries] does not exist.';
END
GO

IF OBJECT_ID(N'[dbo].[TransferCertificates]', N'U') IS NOT NULL
BEGIN
    DROP TABLE [dbo].[TransferCertificates];
    PRINT 'SUCCESS: Table [TransferCertificates] dropped successfully (Handled by School ERP).';
END
ELSE
BEGIN
    PRINT 'INFO: Table [TransferCertificates] does not exist.';
END
GO

-- 2. Verify SiteSettings table exists and has AdmissionFormLink
IF OBJECT_ID(N'[dbo].[SiteSettings]', N'U') IS NULL
BEGIN
    CREATE TABLE [dbo].[SiteSettings] (
        [SettingKey] NVARCHAR(100) PRIMARY KEY,
        [SettingValue] NVARCHAR(MAX) NOT NULL,
        [Description] NVARCHAR(255) NULL
    );
    PRINT 'SUCCESS: Table [SiteSettings] created.';
END
GO

IF NOT EXISTS (SELECT 1 FROM [dbo].[SiteSettings] WHERE [SettingKey] = 'AdmissionFormLink')
BEGIN
    INSERT INTO [dbo].[SiteSettings] ([SettingKey], [SettingValue], [Description])
    VALUES ('AdmissionFormLink', 'https://drive.google.com/', 'Dynamic Google Drive / ERP link for Online Admissions');
    PRINT 'SUCCESS: Default AdmissionFormLink setting inserted.';
END
ELSE
BEGIN
    PRINT 'INFO: Setting [AdmissionFormLink] already exists.';
END
GO

-- 3. Verify PopupAnnouncements table exists for Home Modal
IF OBJECT_ID(N'[dbo].[PopupAnnouncements]', N'U') IS NULL
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
    PRINT 'SUCCESS: Table [PopupAnnouncements] created.';
END
ELSE
BEGIN
    PRINT 'INFO: Table [PopupAnnouncements] already exists.';
END
GO

-- 4. Verify Final Active Tables
PRINT '=======================================================';
PRINT 'CURRENT ACTIVE WEBSITE TABLES IN [Chetancbsehubli]:';
PRINT '=======================================================';
SELECT TABLE_NAME AS [ActiveTable] 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;
GO
