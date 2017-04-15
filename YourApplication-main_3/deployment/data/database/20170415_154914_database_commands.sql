CREATE TABLE [pushnotifications$messagingservicesettings] (
	[id] bigint NOT NULL,
	[enabled] bit NULL,
	[submetaobjectname] nvarchar(255) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_pushnotifications$messagingservicesettings_submetaobjectname] ON [pushnotifications$messagingservicesettings] ([submetaobjectname],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('86c47f94-5700-486f-9072-8e1906032cc6', 
'PushNotifications.MessagingServiceSettings', 
'pushnotifications$messagingservicesettings');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('d9c6f44d-8913-48d4-8320-de6cbd2f129f', 
'86c47f94-5700-486f-9072-8e1906032cc6', 
'Enabled', 
'enabled', 
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
 VALUES ('78449eb4-395c-3bfc-9da9-e2576fcdfe7b', 
'86c47f94-5700-486f-9072-8e1906032cc6', 
'submetaobjectname', 
'submetaobjectname', 
30, 
255, 
'PushNotifications.MessagingServiceSettings', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('562e9ce6-1daf-3dd6-b49b-0ec889a71d32', 
'86c47f94-5700-486f-9072-8e1906032cc6', 
'idx_pushnotifications$messagingservicesettings_submetaobjectname');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('562e9ce6-1daf-3dd6-b49b-0ec889a71d32', 
'78449eb4-395c-3bfc-9da9-e2576fcdfe7b', 
0, 
0);
GO
CREATE TABLE [pushnotifications$apnsettings] (
	[id] bigint NOT NULL,
	[dtapmode] nvarchar(11) NULL,
	[started] bit NULL,
	[server] nvarchar(200) NULL,
	[port] int NULL,
	[feedbackport] int NULL,
	[feedbackserver] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('fd05a01b-9ee4-471b-9e56-297fc4c100b0', 
'PushNotifications.APNSettings', 
'pushnotifications$apnsettings', 
'86c47f94-5700-486f-9072-8e1906032cc6');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('933073b7-a80d-48d5-9492-54390cda7231', 
'fd05a01b-9ee4-471b-9e56-297fc4c100b0', 
'DTAPMode', 
'dtapmode', 
40, 
11, 
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
 VALUES ('92ad56bb-cb07-4a39-afb0-362a8f7e0db7', 
'fd05a01b-9ee4-471b-9e56-297fc4c100b0', 
'Started', 
'started', 
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
 VALUES ('ee5e79d0-76f0-45ed-a943-84346cd0213b', 
'fd05a01b-9ee4-471b-9e56-297fc4c100b0', 
'Server', 
'server', 
30, 
200, 
'gateway.sandbox.push.apple.com', 
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
 VALUES ('f11a0703-57d2-4ca7-805a-5ffed2782262', 
'fd05a01b-9ee4-471b-9e56-297fc4c100b0', 
'Port', 
'port', 
3, 
0, 
'2195', 
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
 VALUES ('ce404eb3-5228-41c8-9dab-de3564546a84', 
'fd05a01b-9ee4-471b-9e56-297fc4c100b0', 
'FeedbackPort', 
'feedbackport', 
3, 
0, 
'2196', 
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
 VALUES ('dfdf97d7-6da1-4bec-9ac1-12a56e71110c', 
'fd05a01b-9ee4-471b-9e56-297fc4c100b0', 
'FeedbackServer', 
'feedbackserver', 
30, 
200, 
'feedback.sandbox.push.apple.com', 
0);
GO
CREATE TABLE [pushnotifications$apnsettings_apncertificate] (
	[pushnotifications$apnsettingsid] bigint NOT NULL,
	[pushnotifications$apncertificateid] bigint NOT NULL,
	PRIMARY KEY([pushnotifications$apnsettingsid],[pushnotifications$apncertificateid]));
GO
CREATE INDEX [idx_pushnotifications$apnsettings_apncertificate_pushnotifications$apncertificate_pushnotifications$apnsettings] ON [pushnotifications$apnsettings_apncertificate] ([pushnotifications$apncertificateid],[pushnotifications$apnsettingsid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('d633d850-e92a-4637-9b7d-59ecea21a3e2', 
'PushNotifications.APNSettings_APNCertificate', 
'pushnotifications$apnsettings_apncertificate', 
'fd05a01b-9ee4-471b-9e56-297fc4c100b0', 
'2141e01d-386a-43ab-8325-047759b6d2f6', 
'pushnotifications$apnsettingsid', 
'pushnotifications$apncertificateid', 
'idx_pushnotifications$apnsettings_apncertificate_pushnotifications$apncertificate_pushnotifications$apnsettings');
GO
CREATE TABLE [encryption$pgpcertificate] (
	[id] bigint NOT NULL,
	[certificatetype] nvarchar(10) NULL,
	[passphrase_plain] nvarchar(20) NULL,
	[reference] nvarchar(100) NULL,
	[passphrase_encrypted] nvarchar(100) NULL,
	[emailaddress] nvarchar(50) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('a49d8778-d199-42df-a385-40c2d8f9d94a', 
'Encryption.PGPCertificate', 
'encryption$pgpcertificate', 
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
 VALUES ('29d63cae-64c9-4119-885a-99f3f11e2806', 
'a49d8778-d199-42df-a385-40c2d8f9d94a', 
'CertificateType', 
'certificatetype', 
40, 
10, 
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
 VALUES ('018163e0-5941-49fb-a753-1e29a943184c', 
'a49d8778-d199-42df-a385-40c2d8f9d94a', 
'PassPhrase_Plain', 
'passphrase_plain', 
30, 
20, 
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
 VALUES ('56bc9cf9-a3f3-4280-96f6-ed2a1bc777ae', 
'a49d8778-d199-42df-a385-40c2d8f9d94a', 
'Reference', 
'reference', 
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
 VALUES ('3e6708a3-bcf3-4629-834c-5c8285d382d9', 
'a49d8778-d199-42df-a385-40c2d8f9d94a', 
'PassPhrase_Encrypted', 
'passphrase_encrypted', 
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
 VALUES ('5300fa2d-68e0-4973-8fdf-13f29888ac11', 
'a49d8778-d199-42df-a385-40c2d8f9d94a', 
'EmailAddress', 
'emailaddress', 
30, 
50, 
'', 
0);
GO
CREATE TABLE [encryption$secretkey_publickey] (
	[encryption$pgpcertificateid1] bigint NOT NULL,
	[encryption$pgpcertificateid2] bigint NOT NULL,
	PRIMARY KEY([encryption$pgpcertificateid1],[encryption$pgpcertificateid2]));
GO
CREATE INDEX [idx_encryption$secretkey_publickey_encryption$pgpcertificate_encryption$pgpcertificate] ON [encryption$secretkey_publickey] ([encryption$pgpcertificateid2],[encryption$pgpcertificateid1]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('08352980-4ce0-4981-b56c-6b0f561d6f81', 
'Encryption.SecretKey_PublicKey', 
'encryption$secretkey_publickey', 
'a49d8778-d199-42df-a385-40c2d8f9d94a', 
'a49d8778-d199-42df-a385-40c2d8f9d94a', 
'encryption$pgpcertificateid1', 
'encryption$pgpcertificateid2', 
'idx_encryption$secretkey_publickey_encryption$pgpcertificate_encryption$pgpcertificate');
GO
CREATE TABLE [pushnotifications$gcmsettings] (
	[id] bigint NOT NULL,
	[dtapmode] nvarchar(11) NULL,
	[apikey] nvarchar(200) NULL,
	[senderid] bigint NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('f1a9fcff-97ac-427f-9836-d1274b899be3', 
'PushNotifications.GCMSettings', 
'pushnotifications$gcmsettings', 
'86c47f94-5700-486f-9072-8e1906032cc6');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('00615aef-33fa-4eb5-9f8e-1ab9e5af88c8', 
'f1a9fcff-97ac-427f-9836-d1274b899be3', 
'DTAPMode', 
'dtapmode', 
40, 
11, 
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
 VALUES ('112fe6b3-32ac-4f20-9716-c24e217873a4', 
'f1a9fcff-97ac-427f-9836-d1274b899be3', 
'APIKey', 
'apikey', 
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
 VALUES ('1326b860-8de8-4105-bb59-b6f48bf7aab7', 
'f1a9fcff-97ac-427f-9836-d1274b899be3', 
'SenderId', 
'senderid', 
4, 
0, 
'0', 
0);
GO
CREATE TABLE [encryption$exampleconfiguration] (
	[id] bigint NOT NULL,
	[createddate] datetime2(3) NULL,
	[username] nvarchar(200) NULL,
	[title] nvarchar(200) NULL,
	[password] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('78fa6e2e-2903-4333-8d67-4d68ed2ee88b', 
'Encryption.ExampleConfiguration', 
'encryption$exampleconfiguration');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('8c1a86eb-6e8b-3d9e-a8b6-da5b69ac8570', 
'78fa6e2e-2903-4333-8d67-4d68ed2ee88b', 
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
 VALUES ('1688da49-c47d-4fee-b68d-5e30f0cdc8ba', 
'78fa6e2e-2903-4333-8d67-4d68ed2ee88b', 
'Username', 
'username', 
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
 VALUES ('9f7601bb-df97-4c86-9761-7933edc56770', 
'78fa6e2e-2903-4333-8d67-4d68ed2ee88b', 
'Title', 
'title', 
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
 VALUES ('cb723f4f-013a-420b-8478-1f4a3d82b7ec', 
'78fa6e2e-2903-4333-8d67-4d68ed2ee88b', 
'Password', 
'password', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [pushnotifications$device] (
	[id] bigint NOT NULL,
	[devicetype] nvarchar(7) NULL,
	[changeddate] datetime2(3) NULL,
	[createddate] datetime2(3) NULL,
	[deviceid] nvarchar(200) NULL,
	[registrationid] nvarchar(max) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_pushnotifications$device_registrationid] ON [pushnotifications$device] ([registrationid],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('a2f0d79d-c8e8-45f0-b635-e99b81332344', 
'PushNotifications.Device', 
'pushnotifications$device');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('dc0f2533-5e2c-4ead-8219-29f05935afa7', 
'a2f0d79d-c8e8-45f0-b635-e99b81332344', 
'DeviceType', 
'devicetype', 
40, 
7, 
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
 VALUES ('d9ea6f5e-d62b-3a0c-9a55-ace933be86eb', 
'a2f0d79d-c8e8-45f0-b635-e99b81332344', 
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
 VALUES ('0f7a019b-247a-3fcc-85e3-f2bc8c3d3e23', 
'a2f0d79d-c8e8-45f0-b635-e99b81332344', 
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
 VALUES ('d7436dc0-cd5c-4751-a9f0-60883f39ac39', 
'a2f0d79d-c8e8-45f0-b635-e99b81332344', 
'DeviceID', 
'deviceid', 
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
 VALUES ('1e87fb35-ce63-491d-ab4e-beb3973f38e1', 
'a2f0d79d-c8e8-45f0-b635-e99b81332344', 
'RegistrationID', 
'registrationid', 
30, 
4096, 
'', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('be2e5821-a009-4e2b-910e-6a1e4628558b', 
'a2f0d79d-c8e8-45f0-b635-e99b81332344', 
'idx_pushnotifications$device_registrationid');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('be2e5821-a009-4e2b-910e-6a1e4628558b', 
'1e87fb35-ce63-491d-ab4e-beb3973f38e1', 
0, 
0);
GO
CREATE TABLE [pushnotifications$device_user] (
	[pushnotifications$deviceid] bigint NOT NULL,
	[system$userid] bigint NOT NULL,
	PRIMARY KEY([pushnotifications$deviceid],[system$userid]));
GO
CREATE INDEX [idx_pushnotifications$device_user_system$user_pushnotifications$device] ON [pushnotifications$device_user] ([system$userid],[pushnotifications$deviceid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('e30d3504-0456-42f5-9d74-b8ad656b2605', 
'PushNotifications.Device_User', 
'pushnotifications$device_user', 
'a2f0d79d-c8e8-45f0-b635-e99b81332344', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'pushnotifications$deviceid', 
'system$userid', 
'idx_pushnotifications$device_user_system$user_pushnotifications$device');
GO
CREATE TABLE [pushnotifications$message] (
	[id] bigint NOT NULL,
	[devicetype] nvarchar(7) NULL,
	[message] nvarchar(2048) NULL,
	[failed] bit NULL,
	[failedreason] nvarchar(max) NULL,
	[nexttry] datetime2(3) NULL,
	[title] nvarchar(200) NULL,
	[failedcount] int NULL,
	[to] nvarchar(200) NULL,
	[queued] bit NULL,
	[messageid] nvarchar(200) NULL,
	[submetaobjectname] nvarchar(255) NULL,
	PRIMARY KEY([id]));
GO
CREATE INDEX [idx_pushnotifications$message_nexttry_queued] ON [pushnotifications$message] ([nexttry],[queued],[id]);
GO
CREATE INDEX [idx_pushnotifications$message_submetaobjectname] ON [pushnotifications$message] ([submetaobjectname],[id]);
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('41de0239-56a3-416d-8757-a530fab4601e', 
'PushNotifications.Message', 
'pushnotifications$message');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('032d10de-94ac-4078-86c0-ca956e881fba', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'DeviceType', 
'devicetype', 
40, 
7, 
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
 VALUES ('e5a0ddbd-abb3-4ae9-9da9-57e43f056b59', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'Message', 
'message', 
30, 
2048, 
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
 VALUES ('b74436e7-2306-4288-bc8a-1f1ca407062d', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'Failed', 
'failed', 
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
 VALUES ('e1af3227-63c6-4a93-ac7d-5857bbda52db', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'FailedReason', 
'failedreason', 
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
 VALUES ('c8166c3d-0afb-4e59-8698-19812915070f', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'NextTry', 
'nexttry', 
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
 VALUES ('8723980e-a099-4b96-b8ee-2353705b76f9', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'Title', 
'title', 
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
 VALUES ('2a02abe6-9816-4af2-a4a8-dabcdfa30f81', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'FailedCount', 
'failedcount', 
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
 VALUES ('515cc4ce-8159-4cb0-ad68-7c6ba968336e', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'To', 
'to', 
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
 VALUES ('76286fae-ca3e-480b-802d-c0322271b874', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'Queued', 
'queued', 
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
 VALUES ('42cd3b40-1bee-49a8-96b7-e6196dbb34b3', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'MessageId', 
'messageid', 
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
 VALUES ('2345cb64-2cd8-325e-b18f-72ceb46ae16f', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'submetaobjectname', 
'submetaobjectname', 
30, 
255, 
'PushNotifications.Message', 
0);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('e7896013-debf-4a83-8b43-4318854b7891', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'idx_pushnotifications$message_nexttry_queued');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('e7896013-debf-4a83-8b43-4318854b7891', 
'c8166c3d-0afb-4e59-8698-19812915070f', 
0, 
0);
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('e7896013-debf-4a83-8b43-4318854b7891', 
'76286fae-ca3e-480b-802d-c0322271b874', 
0, 
1);
GO
INSERT INTO [mendixsystem$index] ([id], 
[table_id], 
[index_name])
 VALUES ('a68f3f1f-f202-348f-9ad0-53be9cb7f56c', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'idx_pushnotifications$message_submetaobjectname');
GO
INSERT INTO [mendixsystem$index_column] ([index_id], 
[column_id], 
[sort_order], 
[ordinal])
 VALUES ('a68f3f1f-f202-348f-9ad0-53be9cb7f56c', 
'2345cb64-2cd8-325e-b18f-72ceb46ae16f', 
0, 
0);
GO
CREATE TABLE [pushnotifications$message_device] (
	[pushnotifications$messageid] bigint NOT NULL,
	[pushnotifications$deviceid] bigint NOT NULL,
	PRIMARY KEY([pushnotifications$messageid],[pushnotifications$deviceid]));
GO
CREATE INDEX [idx_pushnotifications$message_device_pushnotifications$device_pushnotifications$message] ON [pushnotifications$message_device] ([pushnotifications$deviceid],[pushnotifications$messageid]);
GO
INSERT INTO [mendixsystem$association] ([id], 
[association_name], 
[table_name], 
[parent_entity_id], 
[child_entity_id], 
[parent_column_name], 
[child_column_name], 
[index_name])
 VALUES ('2dac233a-520e-4478-86bb-73478489c21f', 
'PushNotifications.Message_Device', 
'pushnotifications$message_device', 
'41de0239-56a3-416d-8757-a530fab4601e', 
'a2f0d79d-c8e8-45f0-b635-e99b81332344', 
'pushnotifications$messageid', 
'pushnotifications$deviceid', 
'idx_pushnotifications$message_device_pushnotifications$device_pushnotifications$message');
GO
CREATE TABLE [pushnotifications$applemessage] (
	[id] bigint NOT NULL,
	[launchimage] nvarchar(200) NULL,
	[localizedkey] nvarchar(200) NULL,
	[resizealertbodypostfix] nvarchar(200) NULL,
	[sound] nvarchar(200) NULL,
	[actionkey] nvarchar(200) NULL,
	[badge] int NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('9dc3d33f-1b24-42fc-8e6d-670c57defd8b', 
'PushNotifications.AppleMessage', 
'pushnotifications$applemessage', 
'41de0239-56a3-416d-8757-a530fab4601e');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('70379b25-6ca6-43af-8c6d-da61e8b3176d', 
'9dc3d33f-1b24-42fc-8e6d-670c57defd8b', 
'LaunchImage', 
'launchimage', 
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
 VALUES ('d7a64fc9-4ba8-4d37-8169-dc78c465f753', 
'9dc3d33f-1b24-42fc-8e6d-670c57defd8b', 
'LocalizedKey', 
'localizedkey', 
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
 VALUES ('5d0f8bbc-6092-4380-af99-b6f5fb0c30c4', 
'9dc3d33f-1b24-42fc-8e6d-670c57defd8b', 
'ResizeAlertBodyPostfix', 
'resizealertbodypostfix', 
30, 
200, 
'...', 
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
 VALUES ('b6ce33f5-28c1-48c3-abdd-17b51a032154', 
'9dc3d33f-1b24-42fc-8e6d-670c57defd8b', 
'Sound', 
'sound', 
30, 
200, 
'default', 
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
 VALUES ('27be3777-89f1-48cf-b7b2-021464bc78e7', 
'9dc3d33f-1b24-42fc-8e6d-670c57defd8b', 
'ActionKey', 
'actionkey', 
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
 VALUES ('bd383744-585c-4a42-ab5a-7787c8566038', 
'9dc3d33f-1b24-42fc-8e6d-670c57defd8b', 
'Badge', 
'badge', 
3, 
0, 
'0', 
0);
GO
CREATE TABLE [pushnotifications$apncertificate] (
	[id] bigint NOT NULL,
	[passcode] nvarchar(200) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('2141e01d-386a-43ab-8325-047759b6d2f6', 
'PushNotifications.APNCertificate', 
'pushnotifications$apncertificate', 
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
 VALUES ('5d2fddf5-acc6-443e-b007-f70cb5b619b9', 
'2141e01d-386a-43ab-8325-047759b6d2f6', 
'PassCode', 
'passcode', 
30, 
200, 
'', 
0);
GO
CREATE TABLE [pushnotifications$googlemessage] (
	[id] bigint NOT NULL,
	[timetolive] bigint NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name], 
[superentity_id])
 VALUES ('ea04fa58-79dd-4848-892f-7ce803983fde', 
'PushNotifications.GoogleMessage', 
'pushnotifications$googlemessage', 
'41de0239-56a3-416d-8757-a530fab4601e');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('cc22b519-be08-4665-bc81-92b92039158d', 
'ea04fa58-79dd-4848-892f-7ce803983fde', 
'TimeToLive', 
'timetolive', 
4, 
0, 
'0', 
0);
GO
CREATE TABLE [pushnotifications$deviceregistration] (
	[id] bigint NOT NULL,
	[devicetype] nvarchar(7) NULL,
	[deviceid] nvarchar(200) NULL,
	[registrationid] nvarchar(max) NULL,
	PRIMARY KEY([id]));
GO
INSERT INTO [mendixsystem$entity] ([id], 
[entity_name], 
[table_name])
 VALUES ('d7783f8f-32d3-4b1b-914d-2e8f0971952c', 
'PushNotifications.DeviceRegistration', 
'pushnotifications$deviceregistration');
GO
INSERT INTO [mendixsystem$attribute] ([id], 
[entity_id], 
[attribute_name], 
[column_name], 
[type], 
[length], 
[default_value], 
[is_auto_number])
 VALUES ('d08f72ad-18e7-4fd2-b00d-742914385113', 
'd7783f8f-32d3-4b1b-914d-2e8f0971952c', 
'DeviceType', 
'devicetype', 
40, 
7, 
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
 VALUES ('cb47f586-4fbd-41da-a926-789569bc55e3', 
'd7783f8f-32d3-4b1b-914d-2e8f0971952c', 
'DeviceID', 
'deviceid', 
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
 VALUES ('b71835ce-c212-4b86-9e6c-fd0a6816cba4', 
'd7783f8f-32d3-4b1b-914d-2e8f0971952c', 
'RegistrationID', 
'registrationid', 
30, 
4096, 
'', 
0);
GO
UPDATE [mendixsystem$version]
 SET [versionnumber] = '4.2', 
[lastsyncdate] = '20170415 15:49:11';
GO
