ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT ON;
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION ON;
GO
CREATE ASSEMBLY [Mendix.SqlServerExtensions] FROM java.io.FileInputStream@4471f0cc WITH PERMISSION_SET = SAFE;
GO
CREATE FUNCTION [dbo].[mx_toLocalDateTime] (@utcDateTime datetime, @dstTimeZone nvarchar(50)) RETURNS datetime AS EXTERNAL NAME [Mendix.SqlServerExtensions].[Mendix.SqlServerExtensions.DateTimeLocalizer].[ConvertToLocalDateTime];
GO
CREATE PROCEDURE [dbo].[usp_nextsequencevalue]
@SeqName nvarchar(128)
AS
BEGIN
DECLARE @NewSeqVal bigint
SET NOCOUNT ON
UPDATE [mendixsystem$sequence]
SET @NewSeqVal = [current_value] = [current_value] + 1
WHERE [name] = @SeqName
RETURN @NewSeqVal
END;
GO
CREATE TABLE [mendixsystem$entity] (
	[id] nvarchar(36) NOT NULL,
	[entity_name] nvarchar(511) NOT NULL,
	[table_name] nvarchar(255) NOT NULL,
	[superentity_id] nvarchar(255) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_mendixsystem$entity_entity_name] ON [mendixsystem$entity] ([entity_name]);
GO
CREATE TABLE [mendixsystem$attribute] (
	[id] nvarchar(36) NOT NULL,
	[entity_id] nvarchar(255) NOT NULL,
	[attribute_name] nvarchar(255) NOT NULL,
	[column_name] nvarchar(255) NOT NULL,
	[type] int NOT NULL,
	[length] int NULL,
	[default_value] nvarchar(max) NULL,
	[is_auto_number] bit NOT NULL,
	PRIMARY KEY([id]));
GO
CREATE TABLE [mendixsystem$index] (
	[id] nvarchar(36) NOT NULL,
	[table_id] nvarchar(36) NOT NULL,
	[index_name] nvarchar(255) NOT NULL,
	PRIMARY KEY([id]));
GO
CREATE TABLE [mendixsystem$index_column] (
	[index_id] nvarchar(36) NOT NULL,
	[column_id] nvarchar(36) NOT NULL,
	[sort_order] bit NOT NULL,
	[ordinal] int NOT NULL,
	PRIMARY KEY([index_id],[column_id]));
GO
CREATE TABLE [mendixsystem$association] (
	[id] nvarchar(36) NOT NULL,
	[association_name] nvarchar(511) NOT NULL,
	[table_name] nvarchar(255) NOT NULL,
	[parent_entity_id] nvarchar(36) NOT NULL,
	[child_entity_id] nvarchar(36) NOT NULL,
	[parent_column_name] nvarchar(255) NOT NULL,
	[child_column_name] nvarchar(255) NOT NULL,
	[pk_index_name] nvarchar(255) NULL,
	[index_name] nvarchar(255) NULL,
	PRIMARY KEY([id]));
GO
CREATE TABLE [mendixsystem$version] (
	[versionnumber] nvarchar(255) NOT NULL,
	[lastsyncdate] datetime2(3) NOT NULL,
	[preanalysismigrationversionnumber] nvarchar(255) NOT NULL,
	[modelversionnumber] nvarchar(255) NULL,
	[sprintrprojectname] nvarchar(511) NULL,
	PRIMARY KEY([versionnumber]));
GO
CREATE TABLE [mendixsystem$sequence] (
	[name] nvarchar(255) NOT NULL,
	[attribute_id] nvarchar(36) NOT NULL,
	[start_value] bigint NOT NULL,
	[current_value] bigint NULL,
	PRIMARY KEY([attribute_id]));
GO
CREATE INDEX [idx_mendixsystem$sequence_name] ON [mendixsystem$sequence] ([name]);
GO
CREATE TABLE [mendixsystem$entityidentifier] (
	[id] nvarchar(36) NOT NULL,
	[short_id] smallint NULL,
	[object_sequence] bigint NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_mendixsystem$entityidentifier_short_id] ON [mendixsystem$entityidentifier] ([short_id]);
GO
CREATE TABLE [mendixsystem$properties] (
	[key] nvarchar(200) NOT NULL,
	[value] nvarchar(200) NOT NULL,
	PRIMARY KEY([key]));
GO
CREATE TABLE [mendixsystem$unique_constraint] (
	[name] nvarchar(255) NOT NULL,
	[table_id] nvarchar(36) NOT NULL,
	[column_id] nvarchar(36) NOT NULL,
	PRIMARY KEY([name],[column_id]));
GO
CREATE TABLE [system$user] (
	[id] bigint NOT NULL,
	[changeddate] datetime2(3) NULL,
	[active] bit NULL,
	[createddate] datetime2(3) NULL,
	[lastlogin] datetime2(3) NULL,
	[webserviceuser] bit NULL,
	[isanonymous] bit NULL,
	[failedlogins] int NULL,
	[blocked] bit NULL,
	[name] nvarchar(100) NULL,
	[password] nvarchar(200) NULL,
	[submetaobjectname] nvarchar(255) NULL,
	[system$changedby] bigint NULL,
	[system$owner] bigint NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_system$user_name] ON [system$user] ([name],[id]);
GO
CREATE INDEX [idx_system$user_submetaobjectname] ON [system$user] ([submetaobjectname],[id]);
GO
CREATE INDEX [idx_system$user_system$changedby] ON [system$user] ([system$changedby],[id]);
GO
CREATE INDEX [idx_system$user_system$owner] ON [system$user] ([system$owner],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('282e2e60-88a5-469d-84a5-ba8d9151644f', 
'System.User', 
'system$user');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('e9446b4c-b0f6-3f04-8b0a-264d2384b449', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'changedDate', 
'changeddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b22d0982-fbee-43a7-8d20-c200d319a3e5', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'Active', 
'active', 
10, 
0, 
'true', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('9c09d4eb-9c9c-303e-951e-8c3ea32db37a', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('040db5be-7810-48b3-a569-516191e8803d', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'LastLogin', 
'lastlogin', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('15e3e13d-2df6-4d8a-a1cc-58eea4cec602', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'WebServiceUser', 
'webserviceuser', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('28d526e0-915b-466f-80c8-56af32ece225', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'IsAnonymous', 
'isanonymous', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('84845531-dbd9-4e00-8afb-c2adc08699bb', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'FailedLogins', 
'failedlogins', 
3, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('d149bcc3-5e80-46da-ac3f-ee734a64cce1', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'Blocked', 
'blocked', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('69acb4a2-be26-4cc5-902a-a8591d357510', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'Name', 
'name', 
30, 
100, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('ef366bc1-ac94-4fd6-bafd-7cee2be459e6', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'Password', 
'password', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('c2dd7e10-28b4-304c-9ddf-104be6be9cde', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'submetaobjectname', 
'submetaobjectname', 
30, 
255, 
'System.User', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('5711e9d5-7b67-4579-b730-2ed0b852b799', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'idx_system$user_name');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('5711e9d5-7b67-4579-b730-2ed0b852b799', 
'69acb4a2-be26-4cc5-902a-a8591d357510', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('d45d41fb-40ec-3b91-becf-455eb7f35bff', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'idx_system$user_submetaobjectname');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('d45d41fb-40ec-3b91-becf-455eb7f35bff', 
'c2dd7e10-28b4-304c-9ddf-104be6be9cde', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('291e0cde-0e23-351e-8001-6240437d1e0e', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'idx_system$user_system$changedby');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('291e0cde-0e23-351e-8001-6240437d1e0e', 
'6013226d-aeae-3cd2-acec-d95d8bd5c3ad', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('3515901d-e8f5-3173-87bb-11ae532c243e', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'idx_system$user_system$owner');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('3515901d-e8f5-3173-87bb-11ae532c243e', 
'07738295-23fe-3fc1-832b-ed18b22727f0', 
0, 
0);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name])
 VALUES ('6013226d-aeae-3cd2-acec-d95d8bd5c3ad', 
'System.changedBy', 
'system$changedby', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$changedby');
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name])
 VALUES ('07738295-23fe-3fc1-832b-ed18b22727f0', 
'System.owner', 
'system$owner', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$owner');
GO
CREATE TABLE [system$user_timezone] (
	[system$userid] bigint NOT NULL,
	[system$timezoneid] bigint NOT NULL,
	PRIMARY KEY([system$userid],[system$timezoneid]));
GO
CREATE INDEX [idx_system$user_timezone_system$timezone_system$user] ON [system$user_timezone] ([system$timezoneid],[system$userid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('bab4a1ab-7d40-47d5-8f21-fc99d089211d', 
'System.User_TimeZone', 
'system$user_timezone', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f', 
'system$userid', 
'system$timezoneid', 
'idx_system$user_timezone_system$timezone_system$user');
GO
CREATE TABLE [system$userroles] (
	[system$userid] bigint NOT NULL,
	[system$userroleid] bigint NOT NULL,
	PRIMARY KEY([system$userid],[system$userroleid]));
GO
CREATE INDEX [idx_system$userroles_system$userrole_system$user] ON [system$userroles] ([system$userroleid],[system$userid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('6adaf137-4299-435e-9475-a871a4f21471', 
'System.UserRoles', 
'system$userroles', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'92ef30a6-de04-423c-84fd-a21e9b9eeae2', 
'system$userid', 
'system$userroleid', 
'idx_system$userroles_system$userrole_system$user');
GO
CREATE TABLE [system$user_language] (
	[system$userid] bigint NOT NULL,
	[system$languageid] bigint NOT NULL,
	PRIMARY KEY([system$userid],[system$languageid]));
GO
CREATE INDEX [idx_system$user_language_system$language_system$user] ON [system$user_language] ([system$languageid],[system$userid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('00640985-3c73-4b15-9705-d4ec3ff58e6b', 
'System.User_Language', 
'system$user_language', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'76805df3-dede-435f-92a6-d6525c68a693', 
'system$userid', 
'system$languageid', 
'idx_system$user_language_system$language_system$user');
GO
CREATE TABLE [myfirstmodule$test3] (
	[id] bigint NOT NULL,
	[cd] nvarchar(200) NULL,
	[changeddate] datetime2(3) NULL,
	[createddate] datetime2(3) NULL,
	[name] nvarchar(200) NULL,
	[system$owner] bigint NULL,
	[system$changedby] bigint NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_myfirstmodule$test3_system$owner] ON [myfirstmodule$test3] ([system$owner],[id]);
GO
CREATE INDEX [idx_myfirstmodule$test3_system$changedby] ON [myfirstmodule$test3] ([system$changedby],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'MyFirstModule.Test3', 
'myfirstmodule$test3');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('9ec5cfc6-d3f0-4909-8347-246f909055dc', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'Cd', 
'cd', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4c0650fe-69f7-3f17-8f41-432775d4d0dd', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'changedDate', 
'changeddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a40aae6b-4f40-33a6-ac36-247dda31288d', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('e90eaeb0-f2a4-442e-bd63-454bd8e00803', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('8c1ea014-afa4-394d-9465-0ef7d69ae941', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'idx_myfirstmodule$test3_system$owner');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('8c1ea014-afa4-394d-9465-0ef7d69ae941', 
'c2ebf1d0-bb1d-3e13-9f7d-af1bfbfaed06', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('167f4e8e-fc8a-3a12-9dd7-ae291464045a', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'idx_myfirstmodule$test3_system$changedby');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('167f4e8e-fc8a-3a12-9dd7-ae291464045a', 
'c977ef2b-937d-3507-b753-3b291b520bb0', 
0, 
0);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name])
 VALUES ('c2ebf1d0-bb1d-3e13-9f7d-af1bfbfaed06', 
'System.owner', 
'system$owner', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$owner');
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name])
 VALUES ('c977ef2b-937d-3507-b753-3b291b520bb0', 
'System.changedBy', 
'system$changedby', 
'757a0dda-bf38-4bf8-82f6-4ad1a7c7c1f5', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$changedby');
GO
CREATE TABLE [system$xasinstance] (
	[id] bigint NOT NULL,
	[xasid] nvarchar(50) NULL,
	[createddate] datetime2(3) NULL,
	[lastupdate] datetime2(3) NULL,
	[allowednumberofconcurrentusers] int NULL,
	[customername] nvarchar(200) NULL,
	[partnername] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('d4154981-8dac-4150-aec5-efa3ef62a7a2', 
'System.XASInstance', 
'system$xasinstance');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('91b58eb9-c16c-4e33-b66b-28489e7fb783', 
'd4154981-8dac-4150-aec5-efa3ef62a7a2', 
'XASId', 
'xasid', 
30, 
50, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('65b02632-d981-3a1c-8ec5-2a36fe6fd7d8', 
'd4154981-8dac-4150-aec5-efa3ef62a7a2', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('0c4060ab-4901-419c-a184-81f20fa0460e', 
'd4154981-8dac-4150-aec5-efa3ef62a7a2', 
'LastUpdate', 
'lastupdate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('2dbe88f5-2b15-4ec3-b295-2e2b496a1ebd', 
'd4154981-8dac-4150-aec5-efa3ef62a7a2', 
'AllowedNumberOfConcurrentUsers', 
'allowednumberofconcurrentusers', 
3, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('7ca1bcd3-9355-472f-9e3f-4440366297d6', 
'd4154981-8dac-4150-aec5-efa3ef62a7a2', 
'CustomerName', 
'customername', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4359850e-675d-49db-a25c-d78ee530dc33', 
'd4154981-8dac-4150-aec5-efa3ef62a7a2', 
'PartnerName', 
'partnername', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [myfirstmodule$test2] (
	[id] bigint NOT NULL,
	[flg] nvarchar(6) NULL,
	[cd] nvarchar(200) NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('8826764b-327c-4887-a960-dc44b6ff14a4', 
'MyFirstModule.Test2', 
'myfirstmodule$test2');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('80657e17-c7d6-4c87-9f29-d9432830053f', 
'8826764b-327c-4887-a960-dc44b6ff14a4', 
'Flg', 
'flg', 
40, 
6, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('24c9fecc-905a-4181-8736-f4d0f6e270b8', 
'8826764b-327c-4887-a960-dc44b6ff14a4', 
'Cd', 
'cd', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('de262bd0-6b02-48f6-bc57-41986ef5561c', 
'8826764b-327c-4887-a960-dc44b6ff14a4', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [system$thumbnail] (
	[id] bigint NOT NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('4babd4c0-b903-4cb4-b1af-e59c4a5fcf3d', 
'System.Thumbnail', 
'system$thumbnail', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39');
GO
CREATE TABLE [system$thumbnail_image] (
	[system$thumbnailid] bigint NOT NULL,
	[system$imageid] bigint NOT NULL,
	PRIMARY KEY([system$thumbnailid],[system$imageid]));
GO
CREATE INDEX [idx_system$thumbnail_image_system$image_system$thumbnail] ON [system$thumbnail_image] ([system$imageid],[system$thumbnailid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('3dbea779-c8af-467e-a957-140c313ac1b7', 
'System.Thumbnail_Image', 
'system$thumbnail_image', 
'4babd4c0-b903-4cb4-b1af-e59c4a5fcf3d', 
'37827192-315d-4ab6-85b8-f626f866ea76', 
'system$thumbnailid', 
'system$imageid', 
'idx_system$thumbnail_image_system$image_system$thumbnail');
GO
CREATE TABLE [myfirstmodule$test] (
	[id] bigint NOT NULL,
	[cd] nvarchar(200) NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('b50f6b96-9a9e-4dde-a3b5-6358a9392aef', 
'MyFirstModule.Test', 
'myfirstmodule$test');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4de01dc3-bda7-452f-9643-34e79f2dc615', 
'b50f6b96-9a9e-4dde-a3b5-6358a9392aef', 
'cd', 
'cd', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('24643c6c-e193-4edd-b9f9-8c3467521123', 
'b50f6b96-9a9e-4dde-a3b5-6358a9392aef', 
'name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [myfirstmodule$test_user] (
	[myfirstmodule$testid] bigint NOT NULL,
	[system$userid] bigint NOT NULL,
	PRIMARY KEY([myfirstmodule$testid],[system$userid]));
GO
CREATE INDEX [idx_myfirstmodule$test_user_system$user_myfirstmodule$test] ON [myfirstmodule$test_user] ([system$userid],[myfirstmodule$testid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('efd32f95-5dbc-415e-8164-8a7793164d94', 
'MyFirstModule.Test_User', 
'myfirstmodule$test_user', 
'b50f6b96-9a9e-4dde-a3b5-6358a9392aef', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'myfirstmodule$testid', 
'system$userid', 
'idx_myfirstmodule$test_user_system$user_myfirstmodule$test');
GO
CREATE TABLE [restservices$changeitem] (
	[id] bigint NOT NULL,
	[isdeleted] bit NULL,
	[etag] nvarchar(200) NULL,
	[sequencenr] bigint NULL,
	[_isdirty] bit NULL,
	[json] nvarchar(max) NULL,
	[key] nvarchar(400) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_restservices$changeitem_key] ON [restservices$changeitem] ([key],[id]);
GO
CREATE INDEX [idx_restservices$changeitem_isdeleted] ON [restservices$changeitem] ([isdeleted],[id]);
GO
CREATE INDEX [idx_restservices$changeitem_sequencenr] ON [restservices$changeitem] ([sequencenr],[id]);
GO
CREATE INDEX [idx_restservices$changeitem__isdirty] ON [restservices$changeitem] ([_isdirty],[id]);
GO
CREATE INDEX [idx_restservices$changeitem_key_isdeleted__isdirty] ON [restservices$changeitem] ([key],[isdeleted],[_isdirty],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('a63532b3-98e3-4b68-81fb-1266f64c9335', 
'RestServices.ChangeItem', 
'restservices$changeitem');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('883872e1-3395-4321-90e4-7ca4ec4b4699', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'IsDeleted', 
'isdeleted', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('06808527-b9b8-4687-805d-4cdbd6bdbe94', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'Etag', 
'etag', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('513f915e-d7fb-4b0f-800e-197e7174d0aa', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'SequenceNr', 
'sequencenr', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a4db9e0a-0414-4bac-9186-5ecad941b51d', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'_IsDirty', 
'_isdirty', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('1f44a99d-8279-47ca-8c40-b3efe93493fb', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'Json', 
'json', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('50ee12bc-0520-4421-b1c0-27bd2f603f55', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'Key', 
'key', 
30, 
400, 
'', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('e4508af9-c10c-4d9f-9311-c881ad12756a', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem_key');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('e4508af9-c10c-4d9f-9311-c881ad12756a', 
'50ee12bc-0520-4421-b1c0-27bd2f603f55', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('3940d3b9-58c4-45f7-821c-26555499c838', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem_isdeleted');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('3940d3b9-58c4-45f7-821c-26555499c838', 
'883872e1-3395-4321-90e4-7ca4ec4b4699', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('705914b0-a288-47d7-8838-e5f0dece8588', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem_sequencenr');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('705914b0-a288-47d7-8838-e5f0dece8588', 
'513f915e-d7fb-4b0f-800e-197e7174d0aa', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('980111cf-2744-410d-a9ff-0237ad590ed9', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem__isdirty');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('980111cf-2744-410d-a9ff-0237ad590ed9', 
'a4db9e0a-0414-4bac-9186-5ecad941b51d', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('91c40a99-adef-4e7f-a66d-4f8b2943e470', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'idx_restservices$changeitem_key_isdeleted__isdirty');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('91c40a99-adef-4e7f-a66d-4f8b2943e470', 
'50ee12bc-0520-4421-b1c0-27bd2f603f55', 
0, 
0);
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('91c40a99-adef-4e7f-a66d-4f8b2943e470', 
'883872e1-3395-4321-90e4-7ca4ec4b4699', 
0, 
1);
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('91c40a99-adef-4e7f-a66d-4f8b2943e470', 
'a4db9e0a-0414-4bac-9186-5ecad941b51d', 
0, 
2);
GO
CREATE TABLE [restservices$changeitem_changelog] (
	[restservices$changeitemid] bigint NOT NULL,
	[restservices$changelogid] bigint NOT NULL,
	PRIMARY KEY([restservices$changeitemid],[restservices$changelogid]));
GO
CREATE INDEX [idx_restservices$changeitem_changelog_restservices$changelog_restservices$changeitem] ON [restservices$changeitem_changelog] ([restservices$changelogid],[restservices$changeitemid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('179a175c-0b60-4e96-a9b6-f27428aed7dd', 
'RestServices.ChangeItem_ChangeLog', 
'restservices$changeitem_changelog', 
'a63532b3-98e3-4b68-81fb-1266f64c9335', 
'cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'restservices$changeitemid', 
'restservices$changelogid', 
'idx_restservices$changeitem_changelog_restservices$changelog_restservices$changeitem');
GO
CREATE TABLE [restservices$changelog] (
	[id] bigint NOT NULL,
	[sequencenr] bigint NULL,
	[_configurationhash] nvarchar(max) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'RestServices.ChangeLog', 
'restservices$changelog');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('0180ae4b-0796-4b2f-b107-469a4e85c524', 
'cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'SequenceNr', 
'sequencenr', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a7111377-b2d5-4025-9b8f-369ca22039f6', 
'cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'_ConfigurationHash', 
'_configurationhash', 
30, 
0, 
'', 
0);
GO
CREATE TABLE [restservices$changelog_servicedefinition] (
	[restservices$changelogid] bigint NOT NULL,
	[restservices$dataservicedefinitionid] bigint NOT NULL,
	PRIMARY KEY([restservices$changelogid],[restservices$dataservicedefinitionid]));
GO
CREATE INDEX [idx_restservices$changelog_servicedefinition_restservices$dataservicedefinition_restservices$changelog] ON [restservices$changelog_servicedefinition] ([restservices$dataservicedefinitionid],[restservices$changelogid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('124269c0-d241-4b29-84af-4cfc0b445dd0', 
'RestServices.ChangeLog_ServiceDefinition', 
'restservices$changelog_servicedefinition', 
'cc48dcfb-c602-40de-b620-23f4ab03b7dc', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'restservices$changelogid', 
'restservices$dataservicedefinitionid', 
'idx_restservices$changelog_servicedefinition_restservices$dataservicedefinition_restservices$changelog');
GO
CREATE TABLE [system$timezone] (
	[id] bigint NOT NULL,
	[description] nvarchar(100) NULL,
	[rawoffset] int NULL,
	[code] nvarchar(50) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f', 
'System.TimeZone', 
'system$timezone');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('954c43f0-3333-4264-813b-e8f1c8f2f0b6', 
'7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f', 
'Description', 
'description', 
30, 
100, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('1060f919-60c9-4f90-91ee-81b4bf584bcd', 
'7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f', 
'RawOffset', 
'rawoffset', 
3, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('6abafab4-6a96-46c0-9475-b72cc4d3ffd6', 
'7f7c72af-1ab7-4bf9-bed6-16db5c8fcf6f', 
'Code', 
'code', 
30, 
50, 
'', 
0);
GO
CREATE TABLE [system$userrole] (
	[id] bigint NOT NULL,
	[modelguid] nvarchar(36) NULL,
	[description] nvarchar(1000) NULL,
	[name] nvarchar(100) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_system$userrole_name] ON [system$userrole] ([name],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('92ef30a6-de04-423c-84fd-a21e9b9eeae2', 
'System.UserRole', 
'system$userrole');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3cb7dc95-eac8-4999-8af4-492a4f2c0d73', 
'92ef30a6-de04-423c-84fd-a21e9b9eeae2', 
'ModelGUID', 
'modelguid', 
30, 
36, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a33fbc53-ecf5-46c5-bad2-a364686e19dc', 
'92ef30a6-de04-423c-84fd-a21e9b9eeae2', 
'Description', 
'description', 
30, 
1000, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3a3aca86-2f34-4038-a62f-7c0654ce21b7', 
'92ef30a6-de04-423c-84fd-a21e9b9eeae2', 
'Name', 
'name', 
30, 
100, 
'', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('a46808f5-f89a-41eb-81e2-217968eac118', 
'92ef30a6-de04-423c-84fd-a21e9b9eeae2', 
'idx_system$userrole_name');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('a46808f5-f89a-41eb-81e2-217968eac118', 
'3a3aca86-2f34-4038-a62f-7c0654ce21b7', 
0, 
0);
GO
CREATE TABLE [system$grantableroles] (
	[system$userroleid1] bigint NOT NULL,
	[system$userroleid2] bigint NOT NULL,
	PRIMARY KEY([system$userroleid1],[system$userroleid2]));
GO
CREATE INDEX [idx_system$grantableroles_system$userrole_system$userrole] ON [system$grantableroles] ([system$userroleid2],[system$userroleid1]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('1adca745-c7a9-44ff-92bb-5d41cb2a1743', 
'System.grantableRoles', 
'system$grantableroles', 
'92ef30a6-de04-423c-84fd-a21e9b9eeae2', 
'92ef30a6-de04-423c-84fd-a21e9b9eeae2', 
'system$userroleid1', 
'system$userroleid2', 
'idx_system$grantableroles_system$userrole_system$userrole');
GO
CREATE TABLE [system$image] (
	[id] bigint NOT NULL,
	[publicthumbnailpath] nvarchar(500) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('37827192-315d-4ab6-85b8-f626f866ea76', 
'System.Image', 
'system$image', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('41c141fa-700b-44de-870d-1aa971e11689', 
'37827192-315d-4ab6-85b8-f626f866ea76', 
'PublicThumbnailPath', 
'publicthumbnailpath', 
30, 
500, 
'', 
0);
GO
CREATE TABLE [administration$account] (
	[id] bigint NOT NULL,
	[email] nvarchar(200) NULL,
	[fullname] nvarchar(200) NULL,
	[islocaluser] bit NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'Administration.Account', 
'administration$account', 
'282e2e60-88a5-469d-84a5-ba8d9151644f');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('542b537f-c419-4e32-a1d3-aee662c3ba80', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'Email', 
'email', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('42eb180e-36df-4325-8b97-dec1e16f0e99', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'FullName', 
'fullname', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('fbe83167-74ba-425b-a405-c99de7fd0a4b', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'IsLocalUser', 
'islocaluser', 
10, 
0, 
'true', 
0);
GO
CREATE TABLE [tinysqlstudio$searchobjectdoc] (
	[id] bigint NOT NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('e801f781-2bcb-47db-8c80-8f9c31aca086', 
'TinySqlStudio.SearchObjectDoc', 
'tinysqlstudio$searchobjectdoc', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39');
GO
CREATE TABLE [hr$department] (
	[id] bigint NOT NULL,
	[departmentid] bigint NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('9e5a1d25-581b-4923-995f-4467a5a997cb', 
'Hr.Department', 
'hr$department');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('28f22838-c035-46c7-8daa-9b31e8eaa0a3', 
'9e5a1d25-581b-4923-995f-4467a5a997cb', 
'DepartmentId', 
'departmentid', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('7145ee14-8f28-4fcd-96cd-994d0f06acc8', 
'9e5a1d25-581b-4923-995f-4467a5a997cb', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [hr$employee] (
	[id] bigint NOT NULL,
	[dateofbirth] datetime2(3) NULL,
	[salary] decimal(28, 8) NULL,
	[dateofhire] datetime2(3) NULL,
	[bonus] decimal(28, 8) NULL,
	[employeeid] bigint NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'Hr.Employee', 
'hr$employee');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('5f22f0dc-b8a8-4a3c-b265-f2bdce1427c2', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'DateOfBirth', 
'dateofbirth', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('83e58b0e-bb06-4caf-9041-0ba590545b1a', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'Salary', 
'salary', 
5, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('f2d04395-e068-427c-bb07-3b8c11053c10', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'DateOfHire', 
'dateofhire', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('5c26668d-b04f-426b-9d05-db8bca66c915', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'Bonus', 
'bonus', 
5, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a0f4e10d-817d-4aaa-9aee-631589de0d72', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'EmployeeId', 
'employeeid', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('7dc7989e-1603-4e30-89f2-c3f3939f31cb', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [hr$employee_department] (
	[hr$employeeid] bigint NOT NULL,
	[hr$departmentid] bigint NOT NULL,
	PRIMARY KEY([hr$employeeid],[hr$departmentid]));
GO
CREATE INDEX [idx_hr$employee_department_hr$department_hr$employee] ON [hr$employee_department] ([hr$departmentid],[hr$employeeid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('bc8ce38b-f32a-43d0-90f9-11195243de32', 
'Hr.Employee_Department', 
'hr$employee_department', 
'cf2c7a1c-b843-4e66-b7ed-3e2273318f8e', 
'9e5a1d25-581b-4923-995f-4467a5a997cb', 
'hr$employeeid', 
'hr$departmentid', 
'idx_hr$employee_department_hr$department_hr$employee');
GO
CREATE TABLE [myfirstmodule$employee] (
	[id] bigint NOT NULL,
	[dateofbirth] datetime2(3) NULL,
	[email] nvarchar(200) NULL,
	[address] nvarchar(200) NULL,
	[state] nvarchar(200) NULL,
	[phone] nvarchar(200) NULL,
	[level] nvarchar(6) NULL,
	[city] nvarchar(200) NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'MyFirstModule.Employee', 
'myfirstmodule$employee');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('6892d29a-b9c7-486a-ab21-3cfe6e8f9615', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'DateOfBirth', 
'dateofbirth', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('90dae765-d1cb-43bd-8b23-8142c9fce847', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Email', 
'email', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3ead8364-44a9-42c7-bafd-1a27e2a55cc0', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Address', 
'address', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('17acec95-8a6e-4a53-bd1e-beb4c4e650c3', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'State', 
'state', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3b1b3d92-e043-4858-a59f-6183ab7762a8', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Phone', 
'phone', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('2219f0a8-918d-43de-81cc-c528fe34e09b', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Level', 
'level', 
40, 
6, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('46066ba8-3b81-4452-939e-6b5077ae016b', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'City', 
'city', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b7b900ba-a805-42a3-a7a2-a2b9470eeb57', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [myfirstmodule$employee_department] (
	[myfirstmodule$employeeid] bigint NOT NULL,
	[myfirstmodule$departmentid] bigint NOT NULL,
	PRIMARY KEY([myfirstmodule$employeeid],[myfirstmodule$departmentid]));
GO
CREATE INDEX [idx_myfirstmodule$employee_department_myfirstmodule$department_myfirstmodule$employee] ON [myfirstmodule$employee_department] ([myfirstmodule$departmentid],[myfirstmodule$employeeid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('4a175cb8-00cc-445a-aafb-107178b89253', 
'MyFirstModule.Employee_Department', 
'myfirstmodule$employee_department', 
'af79de19-6c1b-4b3c-9397-38a785fe0e93', 
'dcae8701-0b16-49cd-a9f2-856dae253f03', 
'myfirstmodule$employeeid', 
'myfirstmodule$departmentid', 
'idx_myfirstmodule$employee_department_myfirstmodule$department_myfirstmodule$employee');
GO
CREATE TABLE [system$filedocument] (
	[id] bigint NOT NULL,
	[__uuid__] nvarchar(36) NULL,
	[deleteafterdownload] bit NULL,
	[changeddate] datetime2(3) NULL,
	[contents] varbinary(max) NULL,
	[createddate] datetime2(3) NULL,
	[hascontents] bit NULL,
	[fileid] bigint NULL,
	[__filename__] bigint NULL,
	[name] nvarchar(400) NULL,
	[submetaobjectname] nvarchar(255) NULL,
	[system$owner] bigint NULL,
	[system$changedby] bigint NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_system$filedocument_fileid] ON [system$filedocument] ([fileid],[id]);
GO
CREATE INDEX [idx_system$filedocument_submetaobjectname] ON [system$filedocument] ([submetaobjectname],[id]);
GO
CREATE INDEX [idx_system$filedocument_system$owner] ON [system$filedocument] ([system$owner],[id]);
GO
CREATE INDEX [idx_system$filedocument_system$changedby] ON [system$filedocument] ([system$changedby],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'System.FileDocument', 
'system$filedocument');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('96445370-6fed-11e4-9803-0800200c9a66', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'__UUID__', 
'__uuid__', 
30, 
36, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('5fecca4d-0f28-484d-9fe7-1afde250b07d', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'DeleteAfterDownload', 
'deleteafterdownload', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('245def96-0172-3d83-96fe-0ee1ba825f26', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'changedDate', 
'changeddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('e6dfb82a-54fe-4fcd-a513-a086f508c2db', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'Contents', 
'contents', 
50, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('8655b482-0ac3-31db-8289-b05f505b77cb', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4c9627fb-3b64-4239-95eb-f51fb8d3f2b3', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'HasContents', 
'hascontents', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('0f81688b-e719-4204-8f86-8fcd664a0992', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'FileID', 
'fileid', 
0, 
0, 
'1', 
1);
GO
INSERT INTO [mendixsystem$sequence] ([attribute_id], 
[name], 
[start_value], 
[current_value])
 VALUES ('0f81688b-e719-4204-8f86-8fcd664a0992', 
'system$filedocument_fileid_mxseq', 
1, 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a02027b1-e24d-49fc-9b3f-ade644070879', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'__FileName__', 
'__filename__', 
0, 
0, 
'1', 
1);
GO
INSERT INTO [mendixsystem$sequence] ([attribute_id], 
[name], 
[start_value], 
[current_value])
 VALUES ('a02027b1-e24d-49fc-9b3f-ade644070879', 
'system$filedocument___filename___mxseq', 
1, 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3501ab9f-42c7-46e4-ac8f-c51e256c934e', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'Name', 
'name', 
30, 
400, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b51ea62a-1838-3f74-9c5f-07b5b5a92a45', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'submetaobjectname', 
'submetaobjectname', 
30, 
255, 
'System.FileDocument', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('6ceea2cb-6acf-457a-852f-eb7deab79430', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'idx_system$filedocument_fileid');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('6ceea2cb-6acf-457a-852f-eb7deab79430', 
'0f81688b-e719-4204-8f86-8fcd664a0992', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('dfd88a6e-a3b6-3080-b6cc-d5c61334281d', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'idx_system$filedocument_submetaobjectname');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('dfd88a6e-a3b6-3080-b6cc-d5c61334281d', 
'b51ea62a-1838-3f74-9c5f-07b5b5a92a45', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('a5c117d9-85fc-365e-9a66-909509269987', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'idx_system$filedocument_system$owner');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('a5c117d9-85fc-365e-9a66-909509269987', 
'1442c9da-d4ae-3cf5-b3c0-6c878743e4e5', 
0, 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('a1966801-fcea-3251-82e4-bf4178bdc504', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'idx_system$filedocument_system$changedby');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('a1966801-fcea-3251-82e4-bf4178bdc504', 
'956c1382-b9fc-3367-b0b2-cb67ee9ef13f', 
0, 
0);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name])
 VALUES ('1442c9da-d4ae-3cf5-b3c0-6c878743e4e5', 
'System.owner', 
'system$owner', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$owner');
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name])
 VALUES ('956c1382-b9fc-3367-b0b2-cb67ee9ef13f', 
'System.changedBy', 
'system$changedby', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'id', 
'system$changedby');
GO
CREATE TABLE [system$backgroundjob] (
	[id] bigint NOT NULL,
	[endtime] datetime2(3) NULL,
	[starttime] datetime2(3) NULL,
	[successful] bit NULL,
	[jobid] bigint NULL,
	[result] nvarchar(max) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_system$backgroundjob_jobid] ON [system$backgroundjob] ([jobid],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('660db38b-5ab4-4d15-b649-93a947ecea82', 
'System.BackgroundJob', 
'system$backgroundjob');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('9c471b02-f266-4e27-9e2f-907d0fad6552', 
'660db38b-5ab4-4d15-b649-93a947ecea82', 
'EndTime', 
'endtime', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('d5aa1ceb-6dfe-457b-afb7-e969a814eafd', 
'660db38b-5ab4-4d15-b649-93a947ecea82', 
'StartTime', 
'starttime', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('c56553ba-a3d4-4d9e-bc81-e61ee64da79b', 
'660db38b-5ab4-4d15-b649-93a947ecea82', 
'Successful', 
'successful', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('97bcc327-4d2b-4a28-a57a-7e7437416bfe', 
'660db38b-5ab4-4d15-b649-93a947ecea82', 
'JobId', 
'jobid', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('c33867e7-7263-4ce6-826a-714e7493f07a', 
'660db38b-5ab4-4d15-b649-93a947ecea82', 
'Result', 
'result', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('a5ff48ca-56d6-4f43-8e3a-7743fd025974', 
'660db38b-5ab4-4d15-b649-93a947ecea82', 
'idx_system$backgroundjob_jobid');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('a5ff48ca-56d6-4f43-8e3a-7743fd025974', 
'97bcc327-4d2b-4a28-a57a-7e7437416bfe', 
0, 
0);
GO
CREATE TABLE [system$backgroundjob_xasinstance] (
	[system$backgroundjobid] bigint NOT NULL,
	[system$xasinstanceid] bigint NOT NULL,
	PRIMARY KEY([system$backgroundjobid],[system$xasinstanceid]));
GO
CREATE INDEX [idx_system$backgroundjob_xasinstance_system$xasinstance_system$backgroundjob] ON [system$backgroundjob_xasinstance] ([system$xasinstanceid],[system$backgroundjobid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('fc3944c4-7a19-4a4d-9b0d-4a0c9d7aeb23', 
'System.BackgroundJob_XASInstance', 
'system$backgroundjob_xasinstance', 
'660db38b-5ab4-4d15-b649-93a947ecea82', 
'd4154981-8dac-4150-aec5-efa3ef62a7a2', 
'system$backgroundjobid', 
'system$xasinstanceid', 
'idx_system$backgroundjob_xasinstance_system$xasinstance_system$backgroundjob');
GO
CREATE TABLE [system$backgroundjob_session] (
	[system$backgroundjobid] bigint NOT NULL,
	[system$sessionid] bigint NOT NULL,
	PRIMARY KEY([system$backgroundjobid],[system$sessionid]));
GO
CREATE INDEX [idx_system$backgroundjob_session_system$session_system$backgroundjob] ON [system$backgroundjob_session] ([system$sessionid],[system$backgroundjobid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('19892a2b-f17a-4c29-80c1-c81f8025b36c', 
'System.BackgroundJob_Session', 
'system$backgroundjob_session', 
'660db38b-5ab4-4d15-b649-93a947ecea82', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'system$backgroundjobid', 
'system$sessionid', 
'idx_system$backgroundjob_session_system$session_system$backgroundjob');
GO
CREATE TABLE [restservices$dataservicedefinition] (
	[id] bigint NOT NULL,
	[enabledelete] bit NULL,
	[description] nvarchar(max) NULL,
	[accessrole] nvarchar(200) NULL,
	[sourceentity] nvarchar(200) NULL,
	[onpublishmicroflow] nvarchar(200) NULL,
	[onupdatemicroflow] nvarchar(200) NULL,
	[enableupdate] bit NULL,
	[enablechangelog] bit NULL,
	[name] nvarchar(200) NULL,
	[ondeletemicroflow] nvarchar(200) NULL,
	[enablelisting] bit NULL,
	[sourceconstraint] nvarchar(max) NULL,
	[enablecreate] bit NULL,
	[sourcekeyattribute] nvarchar(200) NULL,
	[enableget] bit NULL,
	[usestrictversioning] bit NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('d982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'RestServices.DataServiceDefinition', 
'restservices$dataservicedefinition');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('be456f59-7bf5-48b7-954c-b2fc41663724', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableDelete', 
'enabledelete', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('ff910d4e-521b-4b6f-815c-e22c984123d6', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'Description', 
'description', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('8c245db0-d200-4325-a73c-65419f4eac78', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'AccessRole', 
'accessrole', 
30, 
200, 
'*', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('86938dd7-6f69-400f-b26b-dd1e7e718212', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'SourceEntity', 
'sourceentity', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('7617d212-b15f-4639-8df6-636e6abf8d62', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'OnPublishMicroflow', 
'onpublishmicroflow', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('9de4bb2f-661f-429a-bd89-cfdf54e24db2', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'OnUpdateMicroflow', 
'onupdatemicroflow', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('2046ed68-3943-48f5-ac81-a798da63ccb0', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableUpdate', 
'enableupdate', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b0fb2473-454c-4fed-b2ae-43db597307d4', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableChangeLog', 
'enablechangelog', 
10, 
0, 
'true', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('fc2453ce-0d9a-46d3-8339-b448ca9e16b9', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('48fde075-e085-4e59-b47a-0724416366ae', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'OnDeleteMicroflow', 
'ondeletemicroflow', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('11ce59dd-3ef8-404a-b660-216e43d76196', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableListing', 
'enablelisting', 
10, 
0, 
'true', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a11c3720-013e-40f6-ace8-a6ad236696ff', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'SourceConstraint', 
'sourceconstraint', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4c58899a-4781-43e6-9b63-ec6cddf280ba', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableCreate', 
'enablecreate', 
10, 
0, 
'false', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('db31fa52-f5f3-4efe-a218-dd2bff778eb2', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'SourceKeyAttribute', 
'sourcekeyattribute', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('82268945-e492-4d43-ba24-6b1d08fbc1f7', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'EnableGet', 
'enableget', 
10, 
0, 
'true', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('f5d8ce21-7da5-44e0-9ef0-e158a9bc1210', 
'd982ec0f-4126-4ae8-a22f-7357eec2a1af', 
'UseStrictVersioning', 
'usestrictversioning', 
10, 
0, 
'false', 
0);
GO
CREATE TABLE [system$scheduledeventinformation] (
	[id] bigint NOT NULL,
	[status] nvarchar(9) NULL,
	[description] nvarchar(max) NULL,
	[endtime] datetime2(3) NULL,
	[starttime] datetime2(3) NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('685df5a6-1e02-49bb-a0b5-5a55c5e8313d', 
'System.ScheduledEventInformation', 
'system$scheduledeventinformation');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('6d2a7545-4e52-4c5d-ac02-0b8211d0585f', 
'685df5a6-1e02-49bb-a0b5-5a55c5e8313d', 
'Status', 
'status', 
40, 
9, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('26ccae8a-22b1-4899-87c9-c5b4915dbf28', 
'685df5a6-1e02-49bb-a0b5-5a55c5e8313d', 
'Description', 
'description', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('33adad79-f658-4e69-8c58-e003fb3c78be', 
'685df5a6-1e02-49bb-a0b5-5a55c5e8313d', 
'EndTime', 
'endtime', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('651e7007-7fcd-43b3-a918-a0de81de34bf', 
'685df5a6-1e02-49bb-a0b5-5a55c5e8313d', 
'StartTime', 
'starttime', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('8b7184a0-cd05-4c75-89f9-be6e9349783b', 
'685df5a6-1e02-49bb-a0b5-5a55c5e8313d', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [system$privatefiledocument] (
	[id] bigint NOT NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('3b6f5ca3-28d6-4581-b26e-7ce5bd0e6eeb', 
'System.PrivateFileDocument', 
'system$privatefiledocument', 
'170ce49d-f29c-4fac-99a6-b55e8a3aeb39');
GO
CREATE TABLE [restservices$datasyncstate] (
	[id] bigint NOT NULL,
	[sequencenr] bigint NULL,
	[collectionurl] nvarchar(max) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('419d5c83-7dc4-4bf1-94f1-24a24c9d4898', 
'RestServices.DataSyncState', 
'restservices$datasyncstate');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3c03f2c5-ca04-4c5c-b73a-fa12a58e2430', 
'419d5c83-7dc4-4bf1-94f1-24a24c9d4898', 
'SequenceNr', 
'sequencenr', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('4d8c6b64-0738-4e0d-8c6e-fe272836b50e', 
'419d5c83-7dc4-4bf1-94f1-24a24c9d4898', 
'CollectionUrl', 
'collectionurl', 
30, 
0, 
'', 
0);
GO
CREATE TABLE [system$session] (
	[id] bigint NOT NULL,
	[readonlyhashkey] nvarchar(36) NULL,
	[createddate] datetime2(3) NULL,
	[csrftoken] nvarchar(36) NULL,
	[lastactive] datetime2(3) NULL,
	[sessionid] nvarchar(50) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_system$session_sessionid] ON [system$session] ([sessionid],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('37f9fd49-5318-4c63-9a51-f761779b202f', 
'System.Session', 
'system$session');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('f1949c9c-7b28-11e6-8b77-86f30ca893d3', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'ReadOnlyHashKey', 
'readonlyhashkey', 
30, 
36, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('0c2b42ef-02bd-3783-bf55-02a92f4275c7', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('f4d19200-071c-45e5-af25-321354f0702b', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'CSRFToken', 
'csrftoken', 
30, 
36, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('1ffdcb00-e7a4-4303-8b40-2319d9ba01b7', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'LastActive', 
'lastactive', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('d50c78a5-d740-4a76-a356-47659cfd515e', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'SessionId', 
'sessionid', 
30, 
50, 
'', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('6127a5ae-0a96-4df5-9856-17baf94b2351', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'idx_system$session_sessionid');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('6127a5ae-0a96-4df5-9856-17baf94b2351', 
'd50c78a5-d740-4a76-a356-47659cfd515e', 
0, 
0);
GO
CREATE TABLE [system$session_user] (
	[system$sessionid] bigint NOT NULL,
	[system$userid] bigint NOT NULL,
	PRIMARY KEY([system$sessionid],[system$userid]));
GO
CREATE INDEX [idx_system$session_user_system$user_system$session] ON [system$session_user] ([system$userid],[system$sessionid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('546aaff5-62e1-40ce-ab45-d40d0a0478f1', 
'System.Session_User', 
'system$session_user', 
'37f9fd49-5318-4c63-9a51-f761779b202f', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'system$sessionid', 
'system$userid', 
'idx_system$session_user_system$user_system$session');
GO
CREATE TABLE [system$tokeninformation] (
	[id] bigint NOT NULL,
	[expirydate] datetime2(3) NULL,
	[useragent] nvarchar(max) NULL,
	[token] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('09b2f0fe-4a11-4afc-a16e-94992a3ebc3d', 
'System.TokenInformation', 
'system$tokeninformation');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('8bb77a0c-0461-43f9-bb27-e91fb9e3623f', 
'09b2f0fe-4a11-4afc-a16e-94992a3ebc3d', 
'ExpiryDate', 
'expirydate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('0b9398e4-9bb7-4ab8-958c-43526f2c83bf', 
'09b2f0fe-4a11-4afc-a16e-94992a3ebc3d', 
'UserAgent', 
'useragent', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('a169a8d1-b10f-427b-b492-3aebeabb7cd6', 
'09b2f0fe-4a11-4afc-a16e-94992a3ebc3d', 
'Token', 
'token', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [system$tokeninformation_user] (
	[system$tokeninformationid] bigint NOT NULL,
	[system$userid] bigint NOT NULL,
	PRIMARY KEY([system$tokeninformationid],[system$userid]));
GO
CREATE INDEX [idx_system$tokeninformation_user_system$user_system$tokeninformation] ON [system$tokeninformation_user] ([system$userid],[system$tokeninformationid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('20ca86b2-5a00-4131-aee1-427cb2e94425', 
'System.TokenInformation_User', 
'system$tokeninformation_user', 
'09b2f0fe-4a11-4afc-a16e-94992a3ebc3d', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'system$tokeninformationid', 
'system$userid', 
'idx_system$tokeninformation_user_system$user_system$tokeninformation');
GO
CREATE TABLE [system$autocommitentry] (
	[id] bigint NOT NULL,
	[createddate] datetime2(3) NULL,
	[objectid] bigint NULL,
	[sessionid] nvarchar(36) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_system$autocommitentry_sessionid_objectid] ON [system$autocommitentry] ([sessionid],[objectid],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('67c28960-7a7a-11e6-bdf4-0800200c9a66', 
'System.AutoCommitEntry', 
'system$autocommitentry');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('bbe9c632-f0be-31a1-a709-ab0d57c79c84', 
'67c28960-7a7a-11e6-bdf4-0800200c9a66', 
'createdDate', 
'createddate', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('67c28962-7a7a-11e6-bdf4-0800200c9a66', 
'67c28960-7a7a-11e6-bdf4-0800200c9a66', 
'ObjectId', 
'objectid', 
4, 
0, 
'0', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('67c28961-7a7a-11e6-bdf4-0800200c9a66', 
'67c28960-7a7a-11e6-bdf4-0800200c9a66', 
'SessionId', 
'sessionid', 
30, 
36, 
'', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('67c28963-7a7a-11e6-bdf4-0800200c9a66', 
'67c28960-7a7a-11e6-bdf4-0800200c9a66', 
'idx_system$autocommitentry_sessionid_objectid');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('67c28963-7a7a-11e6-bdf4-0800200c9a66', 
'67c28961-7a7a-11e6-bdf4-0800200c9a66', 
0, 
0);
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('67c28963-7a7a-11e6-bdf4-0800200c9a66', 
'67c28962-7a7a-11e6-bdf4-0800200c9a66', 
0, 
1);
GO
CREATE TABLE [myfirstmodule$department] (
	[id] bigint NOT NULL,
	[description] nvarchar(200) NULL,
	[birth] datetime2(3) NULL,
	[name] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('dcae8701-0b16-49cd-a9f2-856dae253f03', 
'MyFirstModule.Department', 
'myfirstmodule$department');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b6ad9d52-f6f9-4609-85be-b6c1d1b1dd14', 
'dcae8701-0b16-49cd-a9f2-856dae253f03', 
'Description', 
'description', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('3894be8e-e908-4c23-af86-bfea454e5108', 
'dcae8701-0b16-49cd-a9f2-856dae253f03', 
'Birth', 
'birth', 
20, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('afab28be-a587-4e77-a98c-6265fa86c597', 
'dcae8701-0b16-49cd-a9f2-856dae253f03', 
'Name', 
'name', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [system$language] (
	[id] bigint NOT NULL,
	[description] nvarchar(200) NULL,
	[code] nvarchar(20) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('76805df3-dede-435f-92a6-d6525c68a693', 
'System.Language', 
'system$language');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('d879cb38-5630-4fdf-9e39-f03da0aa8ede', 
'76805df3-dede-435f-92a6-d6525c68a693', 
'Description', 
'description', 
30, 
200, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('88390044-5b74-4e71-8b88-a6e4e91f6f2e', 
'76805df3-dede-435f-92a6-d6525c68a693', 
'Code', 
'code', 
30, 
20, 
'', 
0);
GO
CREATE TABLE [tinysqlstudio$querytemplate] (
	[id] bigint NOT NULL,
	[title] nvarchar(max) NULL,
	[sql] nvarchar(max) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('c52d6e5c-2ef4-41a9-8925-00e7a1489932', 
'TinySqlStudio.QueryTemplate', 
'tinysqlstudio$querytemplate');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('b1c74fcc-ea24-4930-94c0-9267ba19669e', 
'c52d6e5c-2ef4-41a9-8925-00e7a1489932', 
'Title', 
'title', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('efebe1a4-e514-4c66-a6f2-9337324554b3', 
'c52d6e5c-2ef4-41a9-8925-00e7a1489932', 
'Sql', 
'sql', 
30, 
0, 
'', 
0);
GO
INSERT INTO [mendixsystem$version] ([versionnumber], 
[lastsyncdate], 
[preanalysismigrationversionnumber])
 VALUES ('4.2', 
'20170411 14:18:38', 
'3.0.0');
GO
