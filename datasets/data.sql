BEGIN TRANSACTION;
CREATE TABLE "APXTConga4__Composer_Host_Override__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Hostname__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__Composer_QuickMerge__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Description__c" VARCHAR(255), 
	"APXTConga4__Weblink_ID__c" VARCHAR(255), 
	"APXTConga4__Weblink_Name__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"APXTConga4__Conga_Solution__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "APXTConga4__Composer_QuickMerge__c" VALUES(1,'Created by Conga Solution Manager.','00b5f000000DpUMAA0','Conga_Composer_Merge_Annual_Tax_Letter_Global','Merge Annual Tax Letter Global','3');
INSERT INTO "APXTConga4__Composer_QuickMerge__c" VALUES(2,'Created by Conga Solution Manager.','00b5f000000FEHsAAO','Conga_Composer_Global_Merge_Address_Labels','Global Merge Address Labels','4');
CREATE TABLE "APXTConga4__Conga_Collection_Solution__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Description__c" VARCHAR(255), 
	"APXTConga4__Sort_Order__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"APXTConga4__Conga_Collection__c" VARCHAR(255), 
	"APXTConga4__Conga_Solution__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__Conga_Collection__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Description__c" VARCHAR(255), 
	"APXTConga4__Is_SF1_Enabled__c" VARCHAR(255), 
	"APXTConga4__SF1_Binding_sObject_Type__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__Conga_Email_Staging__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__HTMLBody__c" VARCHAR(255), 
	"APXTConga4__Subject__c" VARCHAR(255), 
	"APXTConga4__TextBody__c" VARCHAR(255), 
	"APXTConga4__WhatId__c" VARCHAR(255), 
	"APXTConga4__WhoId__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__Conga_Email_Template__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Description__c" VARCHAR(255), 
	"APXTConga4__HTMLBody__c" VARCHAR(255), 
	"APXTConga4__Is_Body_Attachment__c" VARCHAR(255), 
	"APXTConga4__Key__c" VARCHAR(255), 
	"APXTConga4__Name__c" VARCHAR(255), 
	"APXTConga4__Subject__c" VARCHAR(255), 
	"APXTConga4__Template_Group__c" VARCHAR(255), 
	"APXTConga4__TextBody__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__Conga_Merge_Query__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Description__c" VARCHAR(255), 
	"APXTConga4__Key__c" VARCHAR(255), 
	"APXTConga4__Name__c" VARCHAR(255), 
	"APXTConga4__Query__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "APXTConga4__Conga_Merge_Query__c" VALUES(2,'','0Q_007EAS955811','Affiliations','SELECT npe5__Contact__c, npe5__Description__c, npe5__EndDate__c, npe5__Organization__c, npe5__Primary__c, npe5__Role__c, npe5__StartDate__c, npe5__Status__c, npe5__Contact__r.Description, npe5__Contact__r.Email, npe5__Contact__r.Name FROM npe5__Affiliation__c  WHERE npe5__Organization__c = ''{pv0}''');
INSERT INTO "APXTConga4__Conga_Merge_Query__c" VALUES(3,'Conga passes an Account/Household ID into the Query.','0Q_009EAS147062','Closed Oppties Last Year','SELECT Id, Name, Closedate, Amount
from OPPORTUNITY 
where Opportunity.AccountId=''0015f00000GgpOoAAJ'' AND Opportunity.CloseDate=LAST_YEAR');
INSERT INTO "APXTConga4__Conga_Merge_Query__c" VALUES(4,'','0Q_005EAS541441','Oppty Pipeline','SELECT Amount, CloseDate, Description, Name, Type FROM Opportunity  WHERE AccountId = ''{pv0}'' AND (StageName = ''Prospecting'' OR StageName= ''Verbal Commitment'' OR StageName= ''Cultivation'' OR StageName= ''Pledged'') LIMIT 5');
INSERT INTO "APXTConga4__Conga_Merge_Query__c" VALUES(5,'','0Q_006EAS985179','Activities','SELECT AccountId, ActivityDate, Description, Id, OwnerId, Status, Subject, TaskSubtype, WhatId FROM Task  WHERE AccountId = ''{pv0}''');
INSERT INTO "APXTConga4__Conga_Merge_Query__c" VALUES(6,'','0Q_003EAS486905','Closed Won Opportunities','SELECT Amount, CloseDate, Description, Name, Type FROM Opportunity  WHERE AccountId = ''{pv0}'' AND StageName = ''Closed Won'' LIMIT 5');
INSERT INTO "APXTConga4__Conga_Merge_Query__c" VALUES(7,'','0Q_000EAS943454','All Opportunities for Account (This Year)','SELECT Id, Name, BillingCity, BillingState, BillingStreet, BillingPostalCode, npo02__Formal_Greeting__c FROM Account');
INSERT INTO "APXTConga4__Conga_Merge_Query__c" VALUES(8,'','0Q_001EAS718650','Accounts with Gifts This Year','Select Id, npo02__OppAmountThisYear__c, npo02__Informal_Greeting__c, npo02__OppsClosedThisYear__c, npe01__SYSTEM_AccountType__c, RecordtypeId from Account WHERE npo02__OppAmountThisYear__c>0 and RecordTypeId=''0125f0000008dhCAAQ''');
INSERT INTO "APXTConga4__Conga_Merge_Query__c" VALUES(9,'','0Q_010EAS067569','Opportunities Closed This Year','SELECT Id, Name, npo02__Formal_Greeting__c, BillingStreet, BillingCity, BillingState,BillingPostalCode from Account where npo02__OppAmountThisYear__c>0 and RecordType.Name = ''Household Account''');
CREATE TABLE "APXTConga4__Conga_Solution_Email_Template__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Comments__c" VARCHAR(255), 
	"APXTConga4__IsDefault__c" VARCHAR(255), 
	"APXTConga4__Conga_Email_Template__c" VARCHAR(255), 
	"APXTConga4__Conga_Solution__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__Conga_Solution_Parameter__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Comments__c" VARCHAR(255), 
	"APXTConga4__Name__c" VARCHAR(255), 
	"APXTConga4__Value__c" VARCHAR(255), 
	"APXTConga4__Conga_Solution__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(1,'Background Mode: Initiate Conga Composer without user intervention','DS7','1','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(2,'Template Group','TemplateGroup','Annual Tax Letter','2');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(3,'Template Group','TemplateGroup','DonationAcknowledgment','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(4,'Update Fields','UF0','1','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(5,'Master Field to Set','MFTS0','npsp__Acknowledgment_Status__c','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(6,'Master Field to Set Value','MFTSValue0','Acknowledged','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(7,'Automatic Activity Logging','AC0','1','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(8,'Activity Subject','AC1','Donor Acknowledgement Merged','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(9,'Automatic Activity Logging','AC0','1','2');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(10,'Activity Subject','AC1','Annual%20Tax%20Letter','2');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(11,'Output File Name','OFN','Annual Tax Letter - {!Account.Name} - {!Today()}','2');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(12,'','SC0','1','2');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(13,'Save a Copy Location','SC1','SalesforceFile','2');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(14,'Master Field to Set','MFTS1','npsp__Acknowledgment_Date__c','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(15,'Master Field to Set Value','MFTSValue1','TODAY','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(16,'Save a Copy Location','SC1','SalesforceFile','5');
INSERT INTO "APXTConga4__Conga_Solution_Parameter__c" VALUES(17,'Save a Copy','SC0','1','5');
CREATE TABLE "APXTConga4__Conga_Solution_Query__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Alias__c" VARCHAR(255), 
	"APXTConga4__Comments__c" VARCHAR(255), 
	"APXTConga4__pv0__c" VARCHAR(255), 
	"APXTConga4__pv1__c" VARCHAR(255), 
	"APXTConga4__pv2__c" VARCHAR(255), 
	"APXTConga4__Conga_Query__c" VARCHAR(255), 
	"APXTConga4__Conga_Solution__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "APXTConga4__Conga_Solution_Query__c" VALUES(1,'PipelineOpportunitie','','','','','4','1');
INSERT INTO "APXTConga4__Conga_Solution_Query__c" VALUES(2,'Activities','','','','','5','1');
INSERT INTO "APXTConga4__Conga_Solution_Query__c" VALUES(3,'OrgAffiliations','','','','','2','1');
INSERT INTO "APXTConga4__Conga_Solution_Query__c" VALUES(4,'WonOpportunities','','','','','6','1');
INSERT INTO "APXTConga4__Conga_Solution_Query__c" VALUES(6,'Households','','','','','8','3');
INSERT INTO "APXTConga4__Conga_Solution_Query__c" VALUES(7,'Opportunities','','','','','7','2');
INSERT INTO "APXTConga4__Conga_Solution_Query__c" VALUES(8,'LabelMerge','','','','','9','4');
CREATE TABLE "APXTConga4__Conga_Solution_Report__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Alias__c" VARCHAR(255), 
	"APXTConga4__Comments__c" VARCHAR(255), 
	"APXTConga4__Report_Id__c" VARCHAR(255), 
	"APXTConga4__Report_Name__c" VARCHAR(255), 
	"APXTConga4__pv0__c" VARCHAR(255), 
	"APXTConga4__pv1__c" VARCHAR(255), 
	"APXTConga4__pv2__c" VARCHAR(255), 
	"APXTConga4__Conga_Solution__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__Conga_Solution_Template__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Comments__c" VARCHAR(255), 
	"APXTConga4__Output_File_Name__c" VARCHAR(255), 
	"APXTConga4__Sort_Order__c" VARCHAR(255), 
	"APXTConga4__Template_Extension__c" VARCHAR(255), 
	"APXTConga4__Conga_Solution__c" VARCHAR(255), 
	"APXTConga4__Conga_Template__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "APXTConga4__Conga_Solution_Template__c" VALUES(1,'','','1.0','','1','2');
INSERT INTO "APXTConga4__Conga_Solution_Template__c" VALUES(2,'','','1.0','','4','4');
INSERT INTO "APXTConga4__Conga_Solution_Template__c" VALUES(3,'','','1.0','','3','5');
INSERT INTO "APXTConga4__Conga_Solution_Template__c" VALUES(4,'','','1.0','','5','6');
CREATE TABLE "APXTConga4__Conga_Solution__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Button_Link_API_Name__c" VARCHAR(255), 
	"APXTConga4__Button_body_field__c" VARCHAR(255), 
	"APXTConga4__Composer_Parameters__c" VARCHAR(255), 
	"APXTConga4__Custom_Object_Id__c" VARCHAR(255), 
	"APXTConga4__Formula_Field_API_Name__c" VARCHAR(255), 
	"APXTConga4__Formula_body_field__c" VARCHAR(255), 
	"APXTConga4__Is_Quick_Start__c" VARCHAR(255), 
	"APXTConga4__Master_Object_Type_Validator__c" VARCHAR(255), 
	"APXTConga4__Master_Object_Type__c" VARCHAR(255), 
	"APXTConga4__Sample_Record_Id__c" VARCHAR(255), 
	"APXTConga4__Sample_Record_Name__c" VARCHAR(255), 
	"APXTConga4__Solution_Description__c" VARCHAR(255), 
	"APXTConga4__Solution_Weblink_Syntax__c" VARCHAR(255), 
	"APXTConga4__Weblink_Id__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "APXTConga4__Conga_Solution__c" VALUES(1,'Conga_Composer_Merge_Donor_Profile','/apex/APXTConga4__Conga_Composer?SolMgr=1
&serverUrl={!API.Partner_Server_URL_370}
&Id={!Account.Id}

&QueryId=[WonOpportunities]0Q_003EAS486905,
[Activities]0Q_006EAS985179,
[OrgAffiliations]0Q_007EAS955811,
[PipelineOpportunitie]0Q_005EAS541441,

&TemplateId=0T_005EAS391921','&QueryId=[WonOpportunities]0Q_003EAS486905,
[Activities]0Q_006EAS985179,
[OrgAffiliations]0Q_007EAS955811,
[PipelineOpportunitie]0Q_005EAS541441,
INSERT INTO "APXTConga4__Conga_Solution__c" VALUES(2,'Conga_Composer_Merge_Annual_Tax_Letter','/apex/APXTConga4__Conga_Composer?SolMgr=1
&serverUrl={!API.Partner_Server_URL_370}
&Id={!Account.Id}

&QueryId=[Opportunities]0Q_000EAS943454

&AC0=1
&AC1=Annual%20Tax%20Letter
&OFN=Annual Tax Letter - {!Account.Name} - {!Today()}
&SC0=1
&SC1=SalesforceFile
&TemplateGroup=Annual+Tax+Letter','&QueryId=[Opportunities]0Q_000EAS943454&AC0=1
&AC1=Annual%20Tax%20Letter
&OFN=Annual Tax Letter - {!Account.Name} - {!Today()}
&SC0=1
&SC1=SalesforceFile
&TemplateGroup=Annual+Tax+Letter','','','','','Account','Account','0015f000003tAYjAAM','Warren Household','','/apex/APXTConga4__Conga_Composer?SolMgr=1
&serverUrl={!API.Partner_Server_URL_370}
&Id={!Account.Id}

&QueryId=[Opportunities]0Q_000EAS943454

&TemplateId=0T_000EAS567713,0T_001EAS909423

&AC0=1
&AC1=Merged+Donor+Acknowledgement+Letter
&OFN=Annual Tax Letter - {!Account.Name} - {!Year()}','00b5f000000E4IU','Merge Annual Tax Letter');
INSERT INTO "APXTConga4__Conga_Solution__c" VALUES(3,'Conga_Composer_Merge_Annual_Tax_Letter_Global','/apex/APXTConga4__Conga_Composer?SolMgr=1
&serverUrl={!API.Partner_Server_URL_370}
&Id={!APXTConga4__Composer_QuickMerge__c.Id}

&QueryId=[Households]0Q_001EAS718650

&TemplateId=0T_006EAS664831','&QueryId=[Households]0Q_001EAS718650&TemplateId=0T_006EAS664831','','','','','APXTConga4__Composer_QuickMerge__c','APXTConga4__Composer_QuickMerge__c','a0t5f0000000gfI','','','','00b5f000000DpUM','Merge Annual Tax Letter Global');
INSERT INTO "APXTConga4__Conga_Solution__c" VALUES(4,'Conga_Composer_Global_Merge_Address_Labels','/apex/APXTConga4__Conga_Composer?SolMgr=1
&serverUrl={!API.Partner_Server_URL_370}
&Id={!APXTConga4__Composer_QuickMerge__c.Id}

&QueryId=[LabelMerge]0Q_010EAS067569

&TemplateId=0T_004EAS953188','&QueryId=[LabelMerge]0Q_010EAS067569&TemplateId=0T_004EAS953188','','','','','APXTConga4__Composer_QuickMerge__c','APXTConga4__Composer_QuickMerge__c','a0t5f0000023CuA','','','','00b5f000000FEHs','Global Merge Address Labels');
INSERT INTO "APXTConga4__Conga_Solution__c" VALUES(5,'Conga_Composer_Individual_Donation_Acknowledgment_Letter','/apex/APXTConga4__Conga_Composer?SolMgr=1
&serverUrl={!API.Partner_Server_URL_370}
&Id={!Opportunity.Id}

&TemplateId=0T_002EAS854642

&TemplateGroup=DonationAcknowledgment
&UF0=1
&MFTS0=npsp__Acknowledgment_Status__c
&MFTSValue0=Acknowledged
&AC0=1
&AC1=Donor+Acknowledgement+Merged
&SC0=1
&SC1=SalesforceFile
&MFTS1=npsp__Acknowledgment_Date__c
&MFTSValue1=TODAY
&DS7=1','&TemplateId=0T_002EAS854642&TemplateGroup=DonationAcknowledgment
&UF0=1
&MFTS0=npsp__Acknowledgment_Status__c
&MFTSValue0=Acknowledged
&AC0=1
&AC1=Donor+Acknowledgement+Merged
&SC0=1
&SC1=SalesforceFile
&MFTS1=npsp__Acknowledgment_Date__c
&MFTSValue1=TODAY
&DS7=1','','','','','','Opportunity','0065f000001tCkgAAE','Elizabeth Warren Donation 9/3/2021','','','00b5f000000E4IZ','Individual Donation Acknowledgment Letter');
INSERT INTO "APXTConga4__Conga_Solution__c" VALUES(6,'','','','','','','','Campaign','Campaign','','','','','','Campaign Test');
CREATE TABLE "APXTConga4__Conga_Template__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Description__c" VARCHAR(255), 
	"APXTConga4__Key__c" VARCHAR(255), 
	"APXTConga4__Label_Template_Use_Detail_Data__c" VARCHAR(255), 
	"APXTConga4__Master_Field_to_Set_1__c" VARCHAR(255), 
	"APXTConga4__Master_Field_to_Set_2__c" VARCHAR(255), 
	"APXTConga4__Master_Field_to_Set_3__c" VARCHAR(255), 
	"APXTConga4__Name__c" VARCHAR(255), 
	"APXTConga4__Template_Extension__c" VARCHAR(255), 
	"APXTConga4__Template_Group__c" VARCHAR(255), 
	"APXTConga4__Template_Type__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "APXTConga4__Conga_Template__c" VALUES(1,'','0T_000EAS567713','False','','','','Annual Tax Letter (with Donation Table)','','Annual Tax Letter','Document');
INSERT INTO "APXTConga4__Conga_Template__c" VALUES(2,'','0T_005EAS391921','False','','','','Donor Profile Template','','','Document');
INSERT INTO "APXTConga4__Conga_Template__c" VALUES(3,'','0T_001EAS909423','False','','','','Annual Tax Letter (Summary)','','Annual Tax Letter','Document');
INSERT INTO "APXTConga4__Conga_Template__c" VALUES(4,'','0T_004EAS953188','False','','','','Global Merge Label Template','','','Label');
INSERT INTO "APXTConga4__Conga_Template__c" VALUES(5,'','0T_006EAS664831','False','','','','Global Tax Acknowledgment','','','Document');
INSERT INTO "APXTConga4__Conga_Template__c" VALUES(6,'','0T_002EAS854642','False','','','','Single Gift Acknowledgment','','DonationAcknowledgment','application/msword');
CREATE TABLE "APXTConga4__Document_History_Detail__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Document_Status__c" VARCHAR(255), 
	"APXTConga4__Email_Address__c" VARCHAR(255), 
	"APXTConga4__Last_Viewed__c" VARCHAR(255), 
	"APXTConga4__Number_of_Views__c" VARCHAR(255), 
	"APXTConga4__SMS_Number__c" VARCHAR(255), 
	"APXTConga4__Document_History__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__Document_History__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Link_Text__c" VARCHAR(255), 
	"APXTConga4__Master_Object_ID__c" VARCHAR(255), 
	"APXTConga4__URL__c" VARCHAR(255), 
	"APXTConga4__Conga_Solution__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__EventData__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Kind__c" VARCHAR(255), 
	"APXTConga4__Raw__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "APXTConga4__VersionedData__c" (
	id INTEGER NOT NULL, 
	"APXTConga4__Key__c" VARCHAR(255), 
	"APXTConga4__Kind__c" VARCHAR(255), 
	"APXTConga4__Raw__c" VARCHAR(255), 
	"APXTConga4__Version__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);

