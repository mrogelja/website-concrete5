DROP TABLE IF EXISTS AreaPermissionAssignments;

CREATE TABLE IF NOT EXISTS `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS AreaPermissionBlockTypeAccessList;

CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS AreaPermissionBlockTypeAccessListCustom;

CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Areas;

CREATE TABLE IF NOT EXISTS `Areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

INSERT INTO Areas VALUES(1,105,'Header',0,0,0)
 ,(2,105,'Column 1',0,0,0)
 ,(3,105,'Column 2',0,0,0)
 ,(4,105,'Column 3',0,0,0)
 ,(5,105,'Column 4',0,0,0)
 ,(6,106,'Primary',0,0,0)
 ,(7,106,'Secondary 1',0,0,0)
 ,(8,106,'Secondary 2',0,0,0)
 ,(9,106,'Secondary 3',0,0,0)
 ,(10,106,'Secondary 4',0,0,0)
 ,(11,106,'Secondary 5',0,0,0)
 ,(12,1,'Header Nav',0,0,0)
 ,(13,1,'Header',0,0,1)
 ,(14,1,'Sidebar',0,0,0)
 ,(15,1,'Main',0,0,0)
 ,(16,124,'Main',0,0,0)
 ,(17,1,'Zone principale',0,0,0)
 ,(18,1,'Pied de page - Gauche',0,0,1)
 ,(19,125,'Main',0,0,0)
 ,(20,1,'Pied de page - Centre',0,0,1)
 ,(21,126,'Main',0,0,0)
 ,(22,1,'Pied de page - Droite',0,0,1)
 ,(23,127,'Main',0,0,0)
 ,(24,1,'Pied de page - Sitemap',0,0,1)
 ,(25,128,'Main',0,0,0)
 ,(26,129,'Header',0,0,1)
 ,(27,129,'Zone principale',0,0,0)
 ,(28,130,'Header',0,0,1)
 ,(29,130,'Zone principale',0,0,0)
 ,(30,131,'Header',0,0,1)
 ,(31,131,'Zone principale',0,0,0)
 ,(32,132,'Header',0,0,1)
 ,(33,132,'Zone principale',0,0,0)
 ,(34,129,'Pied de page',0,0,1)
 ,(35,135,'Main',0,0,0)
 ,(36,1,'Pied de page',0,0,1)
 ,(37,130,'Pied de page',0,0,1)
 ,(38,129,'Zone principale : Layout 1 : Cell 1',0,0,0)
 ,(39,129,'Zone principale : Layout 1 : Cell 2',0,0,0)
 ,(40,129,'Zone principale : Layout 1 : Cell 3',0,0,0)
 ,(41,1,'Zone gauche',0,0,0)
 ,(42,1,'Zone centre',0,0,0)
 ,(43,1,'Zone droite',0,0,0)
 ,(44,129,'Zone gauche',0,0,0)
 ,(45,129,'Zone centre',0,0,0)
 ,(46,129,'Zone droite',0,0,0)
 ,(47,131,'Pied de page',0,0,1)
 ,(48,137,'Header',0,0,1)
 ,(49,137,'Zone principale',0,0,0)
 ,(50,137,'Pied de page',0,0,1)
 ,(51,122,'Header',0,0,1)
 ,(52,122,'Zone principale',0,0,0)
 ,(53,122,'Pied de page',0,0,1)
 ,(54,132,'Pied de page',0,0,1)
 ,(55,130,'Zone colonne droite',0,0,0)
 ,(56,130,'Zone colonne gauche',0,0,0)
 ,(57,117,'Main',0,0,0)
 ,(58,140,'Zone principale',0,0,0)
 ,(59,140,'Pied de page',0,0,1);

DROP TABLE IF EXISTS AttributeKeyCategories;

CREATE TABLE IF NOT EXISTS `AttributeKeyCategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO AttributeKeyCategories VALUES(1,'collection',1,NULL)
 ,(2,'user',1,NULL)
 ,(3,'file',1,NULL);

DROP TABLE IF EXISTS AttributeKeys;

CREATE TABLE IF NOT EXISTS `AttributeKeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

INSERT INTO AttributeKeys VALUES(1,'meta_title','Meta Title',1,1,0,0,0,1,1,1,0)
 ,(2,'meta_description','Meta Description',1,1,0,0,0,1,2,1,0)
 ,(3,'meta_keywords','Meta Keywords',1,1,0,0,0,1,2,1,0)
 ,(4,'icon_dashboard','Dashboard Icon',1,1,0,1,0,1,2,1,0)
 ,(5,'exclude_nav','Exclude From Nav',1,1,0,0,0,1,3,1,0)
 ,(6,'exclude_page_list','Exclude From Page List',1,1,0,0,0,1,3,1,0)
 ,(7,'header_extra_content','Header Extra Content',1,1,0,0,0,1,2,1,0)
 ,(8,'exclude_search_index','Exclude From Search Index',1,1,0,0,0,1,3,1,0)
 ,(9,'exclude_sitemapxml','Exclude From sitemap.xml',1,1,0,0,0,1,3,1,0)
 ,(10,'profile_private_messages_enabled','I would like to receive private messages.',1,1,0,0,0,1,3,2,0)
 ,(11,'profile_private_messages_notification_enabled','Send me email notifications when I receive a private message.',1,1,0,0,0,1,3,2,0)
 ,(12,'width','Width',1,1,0,0,0,1,6,3,0)
 ,(13,'height','Height',1,1,0,0,0,1,6,3,0)
 ,(14,'duration','Duration',1,1,0,0,0,1,6,3,0)
 ,(15,'tags','Tags',1,1,0,0,0,1,8,1,0);

DROP TABLE IF EXISTS AttributeSetKeys;

CREATE TABLE IF NOT EXISTS `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO AttributeSetKeys VALUES(1,1,1)
 ,(2,1,2)
 ,(3,1,3)
 ,(5,2,1)
 ,(6,2,2)
 ,(7,1,4)
 ,(8,2,3)
 ,(9,2,4);

DROP TABLE IF EXISTS AttributeSets;

CREATE TABLE IF NOT EXISTS `AttributeSets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO AttributeSets VALUES(1,'Page Header','page_header',1,0,0,0)
 ,(2,'Navigation and Indexing','navigation',1,0,0,1);

DROP TABLE IF EXISTS AttributeTypeCategories;

CREATE TABLE IF NOT EXISTS `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO AttributeTypeCategories VALUES(1,1)
 ,(1,2)
 ,(1,3)
 ,(2,1)
 ,(2,2)
 ,(2,3)
 ,(3,1)
 ,(3,2)
 ,(3,3)
 ,(4,1)
 ,(4,2)
 ,(4,3)
 ,(5,1)
 ,(6,1)
 ,(6,2)
 ,(6,3)
 ,(7,1)
 ,(7,3)
 ,(8,1)
 ,(8,2)
 ,(8,3)
 ,(9,2);

DROP TABLE IF EXISTS AttributeTypes;

CREATE TABLE IF NOT EXISTS `AttributeTypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO AttributeTypes VALUES(1,'text','Text',0)
 ,(2,'textarea','Text Area',0)
 ,(3,'boolean','Checkbox',0)
 ,(4,'date_time','Date/Time',0)
 ,(5,'image_file','Image/File',0)
 ,(6,'number','Number',0)
 ,(7,'rating','Rating',0)
 ,(8,'select','Select',0)
 ,(9,'address','Address',0);

DROP TABLE IF EXISTS AttributeValues;

CREATE TABLE IF NOT EXISTS `AttributeValues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

INSERT INTO AttributeValues VALUES(1,3,'2014-02-14 10:05:49',1,2)
 ,(2,4,'2014-02-14 10:05:49',1,2)
 ,(3,3,'2014-02-14 10:05:49',1,2)
 ,(4,4,'2014-02-14 10:05:49',1,2)
 ,(5,3,'2014-02-14 10:05:49',1,2)
 ,(6,4,'2014-02-14 10:05:50',1,2)
 ,(7,3,'2014-02-14 10:05:50',1,2)
 ,(8,3,'2014-02-14 10:05:50',1,2)
 ,(9,4,'2014-02-14 10:05:50',1,2)
 ,(10,3,'2014-02-14 10:05:50',1,2)
 ,(11,4,'2014-02-14 10:05:50',1,2)
 ,(12,3,'2014-02-14 10:05:50',1,2)
 ,(13,4,'2014-02-14 10:05:50',1,2)
 ,(14,3,'2014-02-14 10:05:50',1,2)
 ,(15,4,'2014-02-14 10:05:51',1,2)
 ,(16,3,'2014-02-14 10:05:51',1,2)
 ,(17,4,'2014-02-14 10:05:51',1,2)
 ,(18,3,'2014-02-14 10:05:51',1,2)
 ,(19,4,'2014-02-14 10:05:51',1,2)
 ,(20,5,'2014-02-14 10:05:51',1,3)
 ,(21,3,'2014-02-14 10:05:51',1,2)
 ,(22,4,'2014-02-14 10:05:51',1,2)
 ,(23,3,'2014-02-14 10:05:51',1,2)
 ,(24,3,'2014-02-14 10:05:52',1,2)
 ,(25,4,'2014-02-14 10:05:52',1,2)
 ,(26,3,'2014-02-14 10:05:52',1,2)
 ,(27,4,'2014-02-14 10:05:52',1,2)
 ,(28,3,'2014-02-14 10:05:52',1,2)
 ,(29,4,'2014-02-14 10:05:52',1,2)
 ,(30,3,'2014-02-14 10:05:52',1,2)
 ,(31,5,'2014-02-14 10:05:52',1,3)
 ,(32,4,'2014-02-14 10:05:52',1,2)
 ,(33,3,'2014-02-14 10:05:53',1,2)
 ,(34,5,'2014-02-14 10:05:53',1,3)
 ,(35,4,'2014-02-14 10:05:53',1,2)
 ,(36,3,'2014-02-14 10:05:53',1,2)
 ,(37,4,'2014-02-14 10:05:53',1,2)
 ,(38,3,'2014-02-14 10:05:53',1,2)
 ,(39,3,'2014-02-14 10:05:53',1,2)
 ,(40,4,'2014-02-14 10:05:53',1,2)
 ,(41,3,'2014-02-14 10:05:53',1,2)
 ,(42,4,'2014-02-14 10:05:54',1,2)
 ,(43,3,'2014-02-14 10:05:54',1,2)
 ,(44,4,'2014-02-14 10:05:54',1,2)
 ,(45,3,'2014-02-14 10:05:54',1,2)
 ,(46,4,'2014-02-14 10:05:54',1,2)
 ,(47,3,'2014-02-14 10:05:54',1,2)
 ,(48,4,'2014-02-14 10:05:54',1,2)
 ,(49,3,'2014-02-14 10:05:54',1,2)
 ,(50,3,'2014-02-14 10:05:54',1,2)
 ,(51,3,'2014-02-14 10:05:55',1,2)
 ,(52,3,'2014-02-14 10:05:55',1,2)
 ,(53,4,'2014-02-14 10:05:55',1,2)
 ,(54,3,'2014-02-14 10:05:55',1,2)
 ,(55,4,'2014-02-14 10:05:55',1,2)
 ,(56,3,'2014-02-14 10:05:55',1,2)
 ,(57,4,'2014-02-14 10:05:55',1,2)
 ,(58,3,'2014-02-14 10:05:55',1,2)
 ,(59,4,'2014-02-14 10:05:55',1,2)
 ,(60,4,'2014-02-14 10:05:55',1,2)
 ,(61,3,'2014-02-14 10:05:56',1,2)
 ,(62,4,'2014-02-14 10:05:56',1,2)
 ,(63,4,'2014-02-14 10:05:56',1,2)
 ,(64,5,'2014-02-14 10:05:56',1,3)
 ,(65,8,'2014-02-14 10:05:56',1,3)
 ,(66,3,'2014-02-14 10:05:56',1,2)
 ,(67,4,'2014-02-14 10:05:56',1,2)
 ,(68,5,'2014-02-14 10:05:56',1,3)
 ,(69,5,'2014-02-14 10:05:56',1,3)
 ,(70,3,'2014-02-14 10:05:57',1,2)
 ,(71,3,'2014-02-14 10:05:57',1,2)
 ,(72,3,'2014-02-14 10:05:57',1,2)
 ,(73,3,'2014-02-14 10:05:57',1,2)
 ,(74,3,'2014-02-14 10:05:57',1,2)
 ,(75,5,'2014-02-14 10:05:57',1,3)
 ,(76,3,'2014-02-14 10:05:57',1,2)
 ,(77,3,'2014-02-14 10:05:57',1,2)
 ,(78,3,'2014-02-14 10:05:57',1,2)
 ,(79,3,'2014-02-14 10:05:57',1,2)
 ,(80,3,'2014-02-14 10:05:57',1,2)
 ,(81,3,'2014-02-14 10:05:58',1,2)
 ,(82,3,'2014-02-14 10:05:58',1,2)
 ,(83,3,'2014-02-14 10:05:58',1,2)
 ,(84,3,'2014-02-14 10:05:58',1,2)
 ,(85,3,'2014-02-14 10:05:58',1,2)
 ,(86,3,'2014-02-14 10:05:58',1,2)
 ,(87,3,'2014-02-14 10:05:58',1,2)
 ,(88,3,'2014-02-14 10:05:58',1,2)
 ,(89,3,'2014-02-14 10:05:58',1,2)
 ,(90,3,'2014-02-14 10:05:58',1,2)
 ,(91,3,'2014-02-14 10:05:59',1,2)
 ,(92,3,'2014-02-14 10:05:59',1,2)
 ,(93,3,'2014-02-14 10:05:59',1,2)
 ,(94,3,'2014-02-14 10:05:59',1,2)
 ,(95,3,'2014-02-14 10:05:59',1,2)
 ,(96,3,'2014-02-14 10:05:59',1,2)
 ,(97,3,'2014-02-14 10:05:59',1,2)
 ,(98,3,'2014-02-14 10:05:59',1,2)
 ,(99,3,'2014-02-14 10:05:59',1,2)
 ,(100,3,'2014-02-14 10:06:00',1,2)
 ,(101,3,'2014-02-14 10:06:00',1,2)
 ,(102,3,'2014-02-14 10:06:00',1,2)
 ,(103,3,'2014-02-14 10:06:00',1,2)
 ,(104,3,'2014-02-14 10:06:00',1,2)
 ,(105,3,'2014-02-14 10:06:00',1,2)
 ,(106,3,'2014-02-14 10:06:00',1,2)
 ,(107,3,'2014-02-14 10:06:00',1,2)
 ,(108,8,'2014-02-14 10:06:00',1,3)
 ,(109,3,'2014-02-14 10:06:01',1,2)
 ,(110,3,'2014-02-14 10:06:01',1,2)
 ,(111,3,'2014-02-14 10:06:01',1,2)
 ,(112,3,'2014-02-14 10:06:01',1,2)
 ,(113,3,'2014-02-14 10:06:01',1,2)
 ,(114,3,'2014-02-14 10:06:01',1,2)
 ,(115,3,'2014-02-14 10:06:01',1,2)
 ,(116,3,'2014-02-14 10:06:01',1,2)
 ,(117,5,'2014-02-14 10:06:03',1,3)
 ,(118,5,'2014-02-14 10:06:04',1,3)
 ,(119,8,'2014-02-14 10:06:04',1,3)
 ,(120,5,'2014-02-14 11:01:23',1,3)
 ,(121,1,'2014-02-14 15:00:35',1,1)
 ,(122,2,'2014-02-14 15:00:35',1,2)
 ,(123,3,'2014-02-14 15:00:35',1,2)
 ,(124,1,'2014-02-14 15:00:49',1,1)
 ,(125,2,'2014-02-14 15:00:49',1,2)
 ,(126,3,'2014-02-14 15:00:49',1,2)
 ,(127,5,'2014-02-14 15:00:49',1,3)
 ,(128,1,'2014-02-14 15:01:04',1,1)
 ,(129,2,'2014-02-14 15:01:04',1,2)
 ,(130,3,'2014-02-14 15:01:04',1,2)
 ,(131,5,'2014-02-14 15:01:04',1,3)
 ,(132,6,'2014-02-14 15:01:04',1,3)
 ,(133,8,'2014-02-14 15:01:04',1,3)
 ,(134,9,'2014-02-14 15:01:04',1,3)
 ,(135,1,'2014-02-14 15:01:55',1,1)
 ,(136,2,'2014-02-14 15:01:55',1,2)
 ,(137,3,'2014-02-14 15:01:55',1,2)
 ,(138,5,'2014-02-14 15:01:55',1,3)
 ,(139,6,'2014-02-14 15:01:55',1,3)
 ,(140,8,'2014-02-14 15:01:55',1,3)
 ,(141,9,'2014-02-14 15:01:55',1,3)
 ,(142,1,'2014-02-14 16:39:49',1,1)
 ,(143,2,'2014-02-14 16:39:49',1,2)
 ,(144,3,'2014-02-14 16:39:49',1,2)
 ,(145,5,'2014-02-14 16:39:49',1,3)
 ,(146,6,'2014-02-14 16:39:49',1,3)
 ,(147,8,'2014-02-14 16:39:49',1,3)
 ,(148,9,'2014-02-14 16:39:50',1,3);

DROP TABLE IF EXISTS BasicWorkflowPermissionAssignments;

CREATE TABLE IF NOT EXISTS `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BasicWorkflowProgressData;

CREATE TABLE IF NOT EXISTS `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BlockPermissionAssignments;

CREATE TABLE IF NOT EXISTS `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BlockRelations;

CREATE TABLE IF NOT EXISTS `BlockRelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO BlockRelations VALUES(1,16,15,'DUPLICATE')
 ,(2,20,17,'DUPLICATE')
 ,(3,21,20,'DUPLICATE');

DROP TABLE IF EXISTS BlockTypePermissionBlockTypeAccessList;

CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BlockTypePermissionBlockTypeAccessListCustom;

CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS BlockTypes;

CREATE TABLE IF NOT EXISTS `BlockTypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO BlockTypes VALUES(1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,0,400,400,0)
 ,(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,0,400,400,0)
 ,(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,0,300,100,0)
 ,(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,0,300,100,0)
 ,(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,0,400,400,0)
 ,(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,0,400,400,0)
 ,(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,0,400,400,0)
 ,(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,1,500,350,0)
 ,(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,2,600,465,0)
 ,(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,3,500,350,0)
 ,(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,4,370,100,0)
 ,(12,'file','File','Link to files stored in the asset library.',1,0,0,0,5,300,250,0)
 ,(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,6,380,200,0)
 ,(14,'form','Form','Build simple forms and surveys.',1,0,0,0,7,420,430,0)
 ,(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,8,400,200,0)
 ,(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,9,370,480,0)
 ,(17,'html','HTML','For adding HTML by hand.',1,0,0,0,10,600,465,0)
 ,(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,11,400,550,0)
 ,(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,12,430,400,0)
 ,(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,13,500,350,0)
 ,(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,14,400,330,0)
 ,(22,'search','Search','Add a search box to your site.',1,0,0,0,15,400,240,0)
 ,(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,16,550,400,0)
 ,(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,0,0,17,420,300,0)
 ,(25,'tags','Tags','List pages based on type, area.',1,0,0,0,18,450,260,0)
 ,(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,19,320,220,0)
 ,(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,20,400,210,0)
 ,(28,'extended_search','Extended Search','A more advanced search box for your site.',1,0,0,0,21,400,170,1);

DROP TABLE IF EXISTS Blocks;

CREATE TABLE IF NOT EXISTS `Blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

INSERT INTO Blocks VALUES(1,'','2014-02-14 10:06:01','2014-02-14 10:06:02',NULL,'1',9,1,NULL)
 ,(2,'','2014-02-14 10:06:02','2014-02-14 10:06:02',NULL,'1',9,1,NULL)
 ,(3,'','2014-02-14 10:06:02','2014-02-14 10:06:02',NULL,'1',9,1,NULL)
 ,(4,'','2014-02-14 10:06:02','2014-02-14 10:06:02',NULL,'1',9,1,NULL)
 ,(5,'','2014-02-14 10:06:02','2014-02-14 10:06:03',NULL,'1',9,1,NULL)
 ,(6,'','2014-02-14 10:06:03','2014-02-14 10:06:03',NULL,'1',6,1,NULL)
 ,(7,'','2014-02-14 10:06:03','2014-02-14 10:06:03',NULL,'1',7,1,NULL)
 ,(8,'','2014-02-14 10:06:03','2014-02-14 10:06:03',NULL,'1',5,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:25:\"btDashboardNewsflowLatest\";s:8:\"_tableat\";s:25:\"btDashboardNewsflowLatest\";s:6:\"_where\";s:5:\"bID=8\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"8\";i:1;s:1:\"A\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"8\";s:4:\"slot\";s:1:\"A\";}')
 ,(9,'','2014-02-14 10:06:03','2014-02-14 10:06:03',NULL,'1',5,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:25:\"btDashboardNewsflowLatest\";s:8:\"_tableat\";s:25:\"btDashboardNewsflowLatest\";s:6:\"_where\";s:5:\"bID=9\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:1:\"9\";i:1;s:1:\"B\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:1:\"9\";s:4:\"slot\";s:1:\"B\";}')
 ,(10,'','2014-02-14 10:06:03','2014-02-14 10:06:03',NULL,'1',4,1,NULL)
 ,(11,'','2014-02-14 10:06:03','2014-02-14 10:06:04',NULL,'1',3,1,NULL)
 ,(12,'','2014-02-14 10:06:04','2014-02-14 10:06:04',NULL,'1',5,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:25:\"btDashboardNewsflowLatest\";s:8:\"_tableat\";s:25:\"btDashboardNewsflowLatest\";s:6:\"_where\";s:6:\"bID=12\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"12\";i:1;s:1:\"C\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"12\";s:4:\"slot\";s:1:\"C\";}')
 ,(13,NULL,'2014-02-14 11:34:10','2014-02-14 11:34:10',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=13\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"13\";i:1;s:139:\"<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"13\";s:7:\"content\";s:139:\"<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>\";}')
 ,(14,NULL,'2014-02-14 11:55:34','2014-02-14 11:56:06',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=14\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"14\";i:1;s:277:\"<p><span>Chantal Lesieur - Bureau 2262 - 01 49 83 <strong>2418</strong></span></p>\r\n<p><span>Françoise Lamontagne - Bureau 2260 - 01 49 83 <strong>2106</strong></span></p>\r\n<p>Mail : <a href=\"mailto:cgt@ina.fr\">cgt@ina.fr</a></p>\r\n<p><span>Fax : 01 49 83 31 7</span></p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"14\";s:7:\"content\";s:277:\"<p><span>Chantal Lesieur - Bureau 2262 - 01 49 83 <strong>2418</strong></span></p>\r\n<p><span>Françoise Lamontagne - Bureau 2260 - 01 49 83 <strong>2106</strong></span></p>\r\n<p>Mail : <a href=\"mailto:cgt@ina.fr\">cgt@ina.fr</a></p>\r\n<p><span>Fax : 01 49 83 31 7</span></p>\";}')
 ,(15,NULL,'2014-02-14 12:04:31','2014-02-14 12:04:31',NULL,'1',9,1,NULL)
 ,(16,NULL,'2014-02-14 12:07:11','2014-02-14 12:07:11',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=16\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"16\";i:1;s:1829:\"<h2>Agenda</h2>\r\n<h3>Réunions avec la direction</h3>\r\n<p><strong>Jeudi 17 octobre</strong>       <br />réunion d’information sur la CCMSI<br /><br /><strong>Vendredi 18 octobre    </strong><br />réunion mensuelle des délégués du personnel<br /><br /><strong>Mercredi 22 octobre   </strong>  <br />réunion du Comité d’entreprise<br /><br /><strong>Mardi 5  novembre      </strong><br />réunion du comité d’entreprise<br /><br /><strong>Mercredi 6 novembre </strong>      <br />négociation annuelle obligatoire sur les salaires (2)</p>\r\n<h3>Réunions syndicales</h3>\r\n<p><strong style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\"></strong><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"><br style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /></span></p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"16\";s:7:\"content\";s:1829:\"<h2>Agenda</h2>\r\n<h3>Réunions avec la direction</h3>\r\n<p><strong>Jeudi 17 octobre</strong>       <br />réunion d’information sur la CCMSI<br /><br /><strong>Vendredi 18 octobre    </strong><br />réunion mensuelle des délégués du personnel<br /><br /><strong>Mercredi 22 octobre   </strong>  <br />réunion du Comité d’entreprise<br /><br /><strong>Mardi 5  novembre      </strong><br />réunion du comité d’entreprise<br /><br /><strong>Mercredi 6 novembre </strong>      <br />négociation annuelle obligatoire sur les salaires (2)</p>\r\n<h3>Réunions syndicales</h3>\r\n<p><strong style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\"></strong><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"><br style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /></span></p>\";}')
 ,(17,NULL,'2014-02-14 12:09:44','2014-02-14 12:09:44',NULL,'1',20,1,NULL)
 ,(18,NULL,'2014-02-14 12:10:11','2014-02-14 12:10:11',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=18\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"18\";i:1;s:30:\"<h2>Derniers communiqués</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"18\";s:7:\"content\";s:30:\"<h2>Derniers communiqués</h2>\";}')
 ,(19,NULL,'2014-02-14 12:15:15','2014-02-14 12:15:15',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=19\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"19\";i:1;s:4278:\"<p class=\"p2 ft5\">Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis <span class=\"ft4\">un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO.</span></p>\r\n<p class=\"p3 ft5\">Le CE, qui n’a qu’un rôle consultatif et pas le pouvoir de bloquer les décisions de la direction, a joué pleinement son rôle notamment en posant des questions sur :</p>\r\n<p class=\"p4 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Est-ce</span> un rapprochement ou une fusion ?</p>\r\n<p class=\"p5 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quelles sont les implications dans mon travail : « Je dépend de qui ? Qui est mon chef ? A qui poser mes questions professionnelles pour avoir des réponses ? »</span></p>\r\n<p class=\"p6 ft9\"><span class=\"ft0\">-</span><span class=\"ft8\">Où en sont les études sur les outils documentaires, techniques, informatiques ?...</span></p>\r\n<p class=\"p7 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quelles sont les suites données par la Direction au rapport Isast sur les conséquences de ce chantier (ce point était explicitement à l’ordre du jour du CE) ?</span></p>\r\n<p class=\"p6 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Quelles sont les suites données aux groupes Emergence organisés par Chrysalis ?</span></p>\r\n<p class=\"p6 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Comment la direction prend elle en compte les paroles des salarié/es ?</span></p>\r\n<p class=\"p8 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">S’il s’agit de prévenir les risques </span>psycho-sociaux on peut s’étonner que rien ne soit fait depuis les rapports Empreinte Humaine (mars 2013) puis Chrysalis (juillet 2013) ?</p>\r\n<p class=\"p9 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quant à la Gestion Prévisionnelle des Emplois et des Compétences (GPEC), il s’agit d’un outil au service de quelle politique ?</span></p>\r\n<p class=\"p10 ft9\"><span class=\"ft0\">-</span><span class=\"ft10\">Quelles interactions avec les autres directions de l’Ina, tout particulièrement la Direction déléguée aux contenus, elle aussi susceptible d’être réorganisée ?</span></p>\r\n<p class=\"p11 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Quant à un éventuel rapprochement physique des salariés, où en </span>est-on ?</p>\r\n<p class=\"p12 ft5\">Le rôle de la DRH aurait été de proposer des préconisations à la suite des conclusions du rapport Isast. <span class=\"ft4\">Rien n’a été fait. La direction a même refusé la restitution, demandée par le CHS CT, du rapport auprès des salarié/es.</span></p>\r\n<p class=\"p13 ft5\">La première commission de suivi sera l’occasion pour la CGT d’exiger des points très précis et détaillés sur l’avancement de la réorganisation et de se rendre compte de la volonté de la DDcol, comme de la DRH, de jouer cartes sur table et de dire ce qu’elles font ou veulent faire,au-delàdes discours. Leurs réponses devront être à la hauteur des enjeux sous peine de voir s’accentuer encore un peu plus la suspicion, le doute, le mécontentement voire la colère.</p>\r\n<p class=\"p14 ft4\">Dernières minutes :</p>\r\n<p class=\"p15 ft12\"><span class=\"ft0\">-</span><span class=\"ft11\">le projet pourrait permettre de rendre des surfaces à Bry III. Nous avions cru qu’il s’agissait d’améliorer les conditions de travail des salarié/es de Bry III mais pas de faire des économies sur les espaces, en entassant les salarié/es. Où ? A Bry 1 ?</span></p>\r\n<p class=\"p16 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">la nomination de Michel Raynal par intérim à la tête du département documentation, alors qu’il</span></p>\r\n<p class=\"p17 ft5\"><span class=\"ft5\">«</span><span class=\"ft13\">remplace » déjà Jacqueline Blanc à la tête des ressources humaines de la DDCol. </span>Est-ce une illustration de la politique de GPEC ?</p>\r\n<p class=\"p18 ft14\">La CGT associera les salarié/es de la Direction déléguée aux collections à la préparation des réunions de la commission de suivi et les tiendra informé/es.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"19\";s:7:\"content\";s:4278:\"<p class=\"p2 ft5\">Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis <span class=\"ft4\">un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO.</span></p>\r\n<p class=\"p3 ft5\">Le CE, qui n’a qu’un rôle consultatif et pas le pouvoir de bloquer les décisions de la direction, a joué pleinement son rôle notamment en posant des questions sur :</p>\r\n<p class=\"p4 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Est-ce</span> un rapprochement ou une fusion ?</p>\r\n<p class=\"p5 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quelles sont les implications dans mon travail : « Je dépend de qui ? Qui est mon chef ? A qui poser mes questions professionnelles pour avoir des réponses ? »</span></p>\r\n<p class=\"p6 ft9\"><span class=\"ft0\">-</span><span class=\"ft8\">Où en sont les études sur les outils documentaires, techniques, informatiques ?...</span></p>\r\n<p class=\"p7 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quelles sont les suites données par la Direction au rapport Isast sur les conséquences de ce chantier (ce point était explicitement à l’ordre du jour du CE) ?</span></p>\r\n<p class=\"p6 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Quelles sont les suites données aux groupes Emergence organisés par Chrysalis ?</span></p>\r\n<p class=\"p6 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Comment la direction prend elle en compte les paroles des salarié/es ?</span></p>\r\n<p class=\"p8 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">S’il s’agit de prévenir les risques </span>psycho-sociaux on peut s’étonner que rien ne soit fait depuis les rapports Empreinte Humaine (mars 2013) puis Chrysalis (juillet 2013) ?</p>\r\n<p class=\"p9 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quant à la Gestion Prévisionnelle des Emplois et des Compétences (GPEC), il s’agit d’un outil au service de quelle politique ?</span></p>\r\n<p class=\"p10 ft9\"><span class=\"ft0\">-</span><span class=\"ft10\">Quelles interactions avec les autres directions de l’Ina, tout particulièrement la Direction déléguée aux contenus, elle aussi susceptible d’être réorganisée ?</span></p>\r\n<p class=\"p11 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Quant à un éventuel rapprochement physique des salariés, où en </span>est-on ?</p>\r\n<p class=\"p12 ft5\">Le rôle de la DRH aurait été de proposer des préconisations à la suite des conclusions du rapport Isast. <span class=\"ft4\">Rien n’a été fait. La direction a même refusé la restitution, demandée par le CHS CT, du rapport auprès des salarié/es.</span></p>\r\n<p class=\"p13 ft5\">La première commission de suivi sera l’occasion pour la CGT d’exiger des points très précis et détaillés sur l’avancement de la réorganisation et de se rendre compte de la volonté de la DDcol, comme de la DRH, de jouer cartes sur table et de dire ce qu’elles font ou veulent faire,au-delàdes discours. Leurs réponses devront être à la hauteur des enjeux sous peine de voir s’accentuer encore un peu plus la suspicion, le doute, le mécontentement voire la colère.</p>\r\n<p class=\"p14 ft4\">Dernières minutes :</p>\r\n<p class=\"p15 ft12\"><span class=\"ft0\">-</span><span class=\"ft11\">le projet pourrait permettre de rendre des surfaces à Bry III. Nous avions cru qu’il s’agissait d’améliorer les conditions de travail des salarié/es de Bry III mais pas de faire des économies sur les espaces, en entassant les salarié/es. Où ? A Bry 1 ?</span></p>\r\n<p class=\"p16 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">la nomination de Michel Raynal par intérim à la tête du département documentation, alors qu’il</span></p>\r\n<p class=\"p17 ft5\"><span class=\"ft5\">«</span><span class=\"ft13\">remplace » déjà Jacqueline Blanc à la tête des ressources humaines de la DDCol. </span>Est-ce une illustration de la politique de GPEC ?</p>\r\n<p class=\"p18 ft14\">La CGT associera les salarié/es de la Direction déléguée aux collections à la préparation des réunions de la commission de suivi et les tiendra informé/es.</p>\";}')
 ,(20,NULL,'2014-02-14 12:16:02','2014-02-14 12:16:03',NULL,'1',20,1,NULL)
 ,(21,NULL,'2014-02-14 12:17:27','2014-02-14 12:17:27',NULL,'1',20,1,'O:11:\"BlockRecord\":24:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:10:\"btPageList\";s:8:\"_tableat\";s:10:\"btPageList\";s:6:\"_where\";s:6:\"bID=21\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:15:{i:0;s:2:\"21\";i:1;s:1:\"0\";i:2;s:11:\"chrono_desc\";i:3;s:3:\"130\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"1\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:0:\"\";i:11;s:0:\"\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"21\";s:3:\"num\";s:1:\"0\";s:7:\"orderBy\";s:11:\"chrono_desc\";s:9:\"cParentID\";s:3:\"130\";s:5:\"cThis\";s:1:\"0\";s:21:\"includeAllDescendents\";s:1:\"0\";s:8:\"paginate\";s:1:\"0\";s:14:\"displayAliases\";s:1:\"1\";s:4:\"ctID\";s:1:\"0\";s:3:\"rss\";s:1:\"0\";s:8:\"rssTitle\";s:0:\"\";s:14:\"rssDescription\";s:0:\"\";s:17:\"truncateSummaries\";s:1:\"0\";s:19:\"displayFeaturedOnly\";s:1:\"0\";s:13:\"truncateChars\";s:1:\"0\";}')
 ,(22,NULL,'2014-02-14 12:19:12','2014-02-14 12:19:12',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=22\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"22\";i:1;s:27:\"<h2>Nouvelles du monde</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"22\";s:7:\"content\";s:27:\"<h2>Nouvelles du monde</h2>\";}')
 ,(23,NULL,'2014-02-14 12:22:04','2014-02-14 12:22:04',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";s:6:\"bID=23\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"23\";i:1;s:2:\"16\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"23\";s:11:\"bOriginalID\";s:2:\"16\";}')
 ,(24,NULL,'2014-02-14 12:22:12','2014-02-14 12:22:12',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";s:6:\"bID=24\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"24\";i:1;s:2:\"18\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"24\";s:11:\"bOriginalID\";s:2:\"18\";}')
 ,(25,NULL,'2014-02-14 12:22:17','2014-02-14 12:22:17',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";s:6:\"bID=25\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"25\";i:1;s:2:\"21\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"25\";s:11:\"bOriginalID\";s:2:\"21\";}')
 ,(26,NULL,'2014-02-14 12:22:23','2014-02-14 12:22:23',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";s:6:\"bID=26\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"26\";i:1;s:2:\"22\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"26\";s:11:\"bOriginalID\";s:2:\"22\";}')
 ,(27,NULL,'2014-02-14 14:15:00','2014-02-14 14:15:00',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=27\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"27\";i:1;s:21:\"<h1>Communiqués</h1>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"27\";s:7:\"content\";s:21:\"<h1>Communiqués</h1>\";}')
 ,(28,NULL,'2014-02-14 14:15:43','2014-02-14 14:15:43',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=28\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"28\";i:1;s:70:\"<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"28\";s:7:\"content\";s:70:\"<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>\";}')
 ,(30,NULL,'2014-02-14 16:43:11','2014-02-14 16:43:11',NULL,'1',28,1,NULL)
 ,(31,NULL,'2014-02-17 16:17:13','2014-02-17 16:17:13',NULL,'1',20,1,'O:11:\"BlockRecord\":24:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:10:\"btPageList\";s:8:\"_tableat\";s:10:\"btPageList\";s:6:\"_where\";N;s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:15:{i:0;s:2:\"31\";i:1;i:0;i:2;s:11:\"chrono_desc\";i:3;s:3:\"130\";i:4;s:1:\"1\";i:5;s:1:\"0\";i:6;i:0;i:7;s:1:\"1\";i:8;i:0;i:9;i:0;i:10;s:0:\"\";i:11;s:0:\"\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;i:0;}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"31\";s:3:\"num\";i:0;s:7:\"orderBy\";s:11:\"chrono_desc\";s:9:\"cParentID\";s:3:\"130\";s:5:\"cThis\";s:1:\"1\";s:21:\"includeAllDescendents\";s:1:\"0\";s:8:\"paginate\";i:0;s:14:\"displayAliases\";s:1:\"1\";s:4:\"ctID\";i:0;s:3:\"rss\";i:0;s:8:\"rssTitle\";s:0:\"\";s:14:\"rssDescription\";s:0:\"\";s:17:\"truncateSummaries\";s:1:\"0\";s:19:\"displayFeaturedOnly\";s:1:\"0\";s:13:\"truncateChars\";i:0;}');

DROP TABLE IF EXISTS CollectionAttributeValues;

CREATE TABLE IF NOT EXISTS `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionAttributeValues VALUES(1,3,5,120)
 ,(1,4,5,120)
 ,(1,5,5,120)
 ,(1,6,5,120)
 ,(3,1,3,1)
 ,(3,1,4,2)
 ,(4,1,3,3)
 ,(4,1,4,4)
 ,(5,1,3,5)
 ,(5,1,4,6)
 ,(6,1,3,7)
 ,(7,1,3,8)
 ,(7,1,4,9)
 ,(8,1,3,10)
 ,(8,1,4,11)
 ,(9,1,3,12)
 ,(9,1,4,13)
 ,(11,1,3,14)
 ,(11,1,4,15)
 ,(12,1,3,16)
 ,(12,1,4,17)
 ,(13,1,3,18)
 ,(13,1,4,19)
 ,(14,1,3,21)
 ,(14,1,4,22)
 ,(14,1,5,20)
 ,(15,1,3,23)
 ,(16,1,3,24)
 ,(16,1,4,25)
 ,(17,1,3,26)
 ,(17,1,4,27)
 ,(18,1,3,28)
 ,(18,1,4,29)
 ,(19,1,3,30)
 ,(19,1,4,32)
 ,(19,1,5,31)
 ,(20,1,3,33)
 ,(20,1,4,35)
 ,(20,1,5,34)
 ,(21,1,3,36)
 ,(21,1,4,37)
 ,(22,1,3,38)
 ,(23,1,3,39)
 ,(23,1,4,40)
 ,(24,1,3,41)
 ,(24,1,4,42)
 ,(25,1,3,43)
 ,(25,1,4,44)
 ,(26,1,3,45)
 ,(26,1,4,46)
 ,(28,1,3,47)
 ,(28,1,4,48)
 ,(29,1,3,49)
 ,(30,1,3,50)
 ,(31,1,3,51)
 ,(32,1,3,52)
 ,(32,1,4,53)
 ,(34,1,3,54)
 ,(34,1,4,55)
 ,(35,1,3,56)
 ,(35,1,4,57)
 ,(36,1,3,58)
 ,(37,1,4,59)
 ,(38,1,4,60)
 ,(40,1,3,61)
 ,(40,1,4,62)
 ,(41,1,4,63)
 ,(42,1,5,64)
 ,(42,1,8,65)
 ,(43,1,3,66)
 ,(43,1,4,67)
 ,(44,1,5,68)
 ,(45,1,5,69)
 ,(46,1,3,70)
 ,(47,1,3,71)
 ,(48,1,3,72)
 ,(49,1,3,73)
 ,(50,1,3,74)
 ,(51,1,5,75)
 ,(53,1,3,76)
 ,(54,1,3,77)
 ,(55,1,3,78)
 ,(56,1,3,79)
 ,(57,1,3,80)
 ,(58,1,3,81)
 ,(60,1,3,82)
 ,(61,1,3,83)
 ,(62,1,3,84)
 ,(63,1,3,85)
 ,(64,1,3,86)
 ,(65,1,3,87)
 ,(67,1,3,88)
 ,(68,1,3,89)
 ,(69,1,3,90)
 ,(71,1,3,91)
 ,(72,1,3,92)
 ,(73,1,3,93)
 ,(74,1,3,94)
 ,(77,1,3,95)
 ,(78,1,3,96)
 ,(79,1,3,97)
 ,(80,1,3,98)
 ,(82,1,3,99)
 ,(83,1,3,100)
 ,(84,1,3,101)
 ,(85,1,3,102)
 ,(86,1,3,103)
 ,(87,1,3,104)
 ,(88,1,3,105)
 ,(89,1,3,106)
 ,(90,1,3,107)
 ,(91,1,8,108)
 ,(92,1,3,109)
 ,(93,1,3,110)
 ,(94,1,3,111)
 ,(95,1,3,112)
 ,(96,1,3,113)
 ,(97,1,3,114)
 ,(99,1,3,115)
 ,(100,1,3,116)
 ,(105,1,5,117)
 ,(106,1,5,118)
 ,(106,1,8,119)
 ,(140,1,1,121)
 ,(140,1,2,122)
 ,(140,1,3,123)
 ,(140,2,1,124)
 ,(140,2,2,125)
 ,(140,2,3,126)
 ,(140,2,5,127)
 ,(140,3,1,128)
 ,(140,3,2,129)
 ,(140,3,3,130)
 ,(140,3,5,131)
 ,(140,3,6,132)
 ,(140,3,8,133)
 ,(140,3,9,134)
 ,(140,4,1,135)
 ,(140,4,2,136)
 ,(140,4,3,137)
 ,(140,4,5,138)
 ,(140,4,6,139)
 ,(140,4,8,140)
 ,(140,4,9,141)
 ,(140,5,1,142)
 ,(140,5,2,143)
 ,(140,5,3,144)
 ,(140,5,5,145)
 ,(140,5,6,146)
 ,(140,5,8,147)
 ,(140,5,9,148)
 ,(140,6,1,142)
 ,(140,6,2,143)
 ,(140,6,3,144)
 ,(140,6,5,145)
 ,(140,6,6,146)
 ,(140,6,8,147)
 ,(140,6,9,148);

DROP TABLE IF EXISTS CollectionSearchIndexAttributes;

CREATE TABLE IF NOT EXISTS `CollectionSearchIndexAttributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_tags` text,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionSearchIndexAttributes VALUES(1,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL)
 ,(3,NULL,NULL,'blog, blogging','icon-book',0,0,NULL,0,0,NULL)
 ,(4,NULL,NULL,'new blog, write blog, blogging','icon-pencil',0,0,NULL,0,0,NULL)
 ,(5,NULL,NULL,'blog drafts, composer','icon-book',0,0,NULL,0,0,NULL)
 ,(6,NULL,NULL,'pages, add page, delete page, copy, move, alias',NULL,0,0,NULL,0,0,NULL)
 ,(7,NULL,NULL,'pages, add page, delete page, copy, move, alias','icon-home',0,0,NULL,0,0,NULL)
 ,(8,NULL,NULL,'pages, add page, delete page, copy, move, alias, bulk','icon-road',0,0,NULL,0,0,NULL)
 ,(9,NULL,NULL,'find page, search page, search, find, pages, sitemap','icon-search',0,0,NULL,0,0,NULL)
 ,(11,NULL,NULL,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute','icon-picture',0,0,NULL,0,0,NULL)
 ,(12,NULL,NULL,'file, file attributes, title, attribute, description, rename','icon-cog',0,0,NULL,0,0,NULL)
 ,(13,NULL,NULL,'files, category, categories','icon-list-alt',0,0,NULL,0,0,NULL)
 ,(14,NULL,NULL,'new file set','icon-plus-sign',1,0,NULL,0,0,NULL)
 ,(15,NULL,NULL,'users, groups, people, find, delete user, remove user, change password, password',NULL,0,0,NULL,0,0,NULL)
 ,(16,NULL,NULL,'find, search, people, delete user, remove user, change password, password','icon-user',0,0,NULL,0,0,NULL)
 ,(17,NULL,NULL,'user, group, people, permissions, access, expire','icon-globe',0,0,NULL,0,0,NULL)
 ,(18,NULL,NULL,'user attributes, user data, gather data, registration data','icon-cog',0,0,NULL,0,0,NULL)
 ,(19,NULL,NULL,'new user, create','icon-plus-sign',1,0,NULL,0,0,NULL)
 ,(20,NULL,NULL,'new user group, new group, group, create','icon-plus',1,0,NULL,0,0,NULL)
 ,(21,NULL,NULL,'group set','icon-list',0,0,NULL,0,0,NULL)
 ,(22,NULL,NULL,'forms, log, error, email, mysql, exception, survey',NULL,0,0,NULL,0,0,NULL)
 ,(23,NULL,NULL,'hits, pageviews, visitors, activity','icon-signal',0,0,NULL,0,0,NULL)
 ,(24,NULL,NULL,'forms, questions, response, data','icon-briefcase',0,0,NULL,0,0,NULL)
 ,(25,NULL,NULL,'questions, quiz, response','icon-tasks',0,0,NULL,0,0,NULL)
 ,(26,NULL,NULL,'forms, log, error, email, mysql, exception, survey, history','icon-time',0,0,NULL,0,0,NULL)
 ,(28,NULL,NULL,'new theme, theme, active theme, change theme, template, css','icon-font',0,0,NULL,0,0,NULL)
 ,(29,NULL,NULL,'theme',NULL,0,0,NULL,0,0,NULL)
 ,(30,NULL,NULL,'page types',NULL,0,0,NULL,0,0,NULL)
 ,(31,NULL,NULL,'custom theme, change theme, custom css, css',NULL,0,0,NULL,0,0,NULL)
 ,(32,NULL,NULL,'page type defaults, global block, global area, starter, template','icon-file',0,0,NULL,0,0,NULL)
 ,(34,NULL,NULL,'page attributes, custom','icon-cog',0,0,NULL,0,0,NULL)
 ,(35,NULL,NULL,'single, page, custom, application','icon-wrench',0,0,NULL,0,0,NULL)
 ,(36,NULL,NULL,'add workflow, remove workflow',NULL,0,0,NULL,0,0,NULL)
 ,(37,NULL,NULL,NULL,'icon-list',0,0,NULL,0,0,NULL)
 ,(38,NULL,NULL,NULL,'icon-user',0,0,NULL,0,0,NULL)
 ,(40,NULL,NULL,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo','icon-th',0,0,NULL,0,0,NULL)
 ,(41,NULL,NULL,NULL,'icon-lock',0,0,NULL,0,0,NULL)
 ,(42,NULL,NULL,NULL,NULL,1,0,NULL,1,0,NULL)
 ,(43,NULL,NULL,'block, refresh, custom','icon-wrench',0,0,NULL,0,0,NULL)
 ,(44,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL)
 ,(45,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL)
 ,(46,NULL,NULL,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks',NULL,0,0,NULL,0,0,NULL)
 ,(47,NULL,NULL,'update, upgrade',NULL,0,0,NULL,0,0,NULL)
 ,(48,NULL,NULL,'concrete5.org, my account, marketplace',NULL,0,0,NULL,0,0,NULL)
 ,(49,NULL,NULL,'buy theme, new theme, marketplace, template',NULL,0,0,NULL,0,0,NULL)
 ,(50,NULL,NULL,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace',NULL,0,0,NULL,0,0,NULL)
 ,(51,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL)
 ,(53,NULL,NULL,'website name, title',NULL,0,0,NULL,0,0,NULL)
 ,(54,NULL,NULL,'logo, favicon, iphone, icon, bookmark',NULL,0,0,NULL,0,0,NULL)
 ,(55,NULL,NULL,'tinymce, content block, fonts, editor, content, overlay',NULL,0,0,NULL,0,0,NULL)
 ,(56,NULL,NULL,'translate, translation, internationalization, multilingual',NULL,0,0,NULL,0,0,NULL)
 ,(57,NULL,NULL,'timezone, profile, locale',NULL,0,0,NULL,0,0,NULL)
 ,(58,NULL,NULL,'interface, quick nav, dashboard background, background image',NULL,0,0,NULL,0,0,NULL)
 ,(60,NULL,NULL,'vanity, pretty url, seo, pageview, view',NULL,0,0,NULL,0,0,NULL)
 ,(61,NULL,NULL,'bulk, seo, change keywords, engine, optimization, search',NULL,0,0,NULL,0,0,NULL)
 ,(62,NULL,NULL,'traffic, statistics, google analytics, quant, pageviews, hits',NULL,0,0,NULL,0,0,NULL)
 ,(63,NULL,NULL,'pretty, slug',NULL,0,0,NULL,0,0,NULL)
 ,(64,NULL,NULL,'turn off statistics, tracking, statistics, pageviews, hits',NULL,0,0,NULL,0,0,NULL)
 ,(65,NULL,NULL,'configure search, site search, search option',NULL,0,0,NULL,0,0,NULL)
 ,(67,NULL,NULL,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,NULL)
 ,(68,NULL,NULL,'cache option, turn off cache, no cache, page cache, caching',NULL,0,0,NULL,0,0,NULL)
 ,(69,NULL,NULL,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old',NULL,0,0,NULL,0,0,NULL)
 ,(71,NULL,NULL,'editors, hide site, offline, private, public, access',NULL,0,0,NULL,0,0,NULL)
 ,(72,NULL,NULL,'file options, file manager, upload, modify',NULL,0,0,NULL,0,0,NULL)
 ,(73,NULL,NULL,'security, files, media, extension, manager, upload',NULL,0,0,NULL,0,0,NULL)
 ,(74,NULL,NULL,'security, actions, administrator, admin, package, marketplace, search',NULL,0,0,NULL,0,0,NULL)
 ,(77,NULL,NULL,'security, lock ip, lock out, block ip, address, restrict, access',NULL,0,0,NULL,0,0,NULL)
 ,(78,NULL,NULL,'security, registration',NULL,0,0,NULL,0,0,NULL)
 ,(79,NULL,NULL,'antispam, block spam, security',NULL,0,0,NULL,0,0,NULL)
 ,(80,NULL,NULL,'lock site, under construction, hide, hidden',NULL,0,0,NULL,0,0,NULL)
 ,(82,NULL,NULL,'profile, login, redirect, specific, dashboard, administrators',NULL,0,0,NULL,0,0,NULL)
 ,(83,NULL,NULL,'member profile, member page, community, forums, social, avatar',NULL,0,0,NULL,0,0,NULL)
 ,(84,NULL,NULL,'signup, new user, community',NULL,0,0,NULL,0,0,NULL)
 ,(85,NULL,NULL,'smtp, mail settings',NULL,0,0,NULL,0,0,NULL)
 ,(86,NULL,NULL,'email server, mail settings, mail configuration, external, internal',NULL,0,0,NULL,0,0,NULL)
 ,(87,NULL,NULL,'email server, mail settings, mail configuration, private message, message system, import, email, message',NULL,0,0,NULL,0,0,NULL)
 ,(88,NULL,NULL,'attribute configuration',NULL,0,0,NULL,0,0,NULL)
 ,(89,NULL,NULL,'attributes, sets',NULL,0,0,NULL,0,0,NULL)
 ,(90,NULL,NULL,'attributes, types',NULL,0,0,NULL,0,0,NULL)
 ,(91,NULL,NULL,NULL,NULL,0,0,NULL,1,0,NULL)
 ,(92,NULL,NULL,'overrides, system info, debug, support, help',NULL,0,0,NULL,0,0,NULL)
 ,(93,NULL,NULL,'errors, exceptions, develop, support, help',NULL,0,0,NULL,0,0,NULL)
 ,(94,NULL,NULL,'email, logging, logs, smtp, pop, errors, mysql, log',NULL,0,0,NULL,0,0,NULL)
 ,(95,NULL,NULL,'security, alternate storage, hide files',NULL,0,0,NULL,0,0,NULL)
 ,(96,NULL,NULL,'network, proxy server',NULL,0,0,NULL,0,0,NULL)
 ,(97,NULL,NULL,'export, backup, database, sql, mysql, encryption, restore',NULL,0,0,NULL,0,0,NULL)
 ,(99,NULL,NULL,'upgrade, new version, update',NULL,0,0,NULL,0,0,NULL)
 ,(100,NULL,NULL,'export, database, xml, starting, points, schema, refresh, custom, tables',NULL,0,0,NULL,0,0,NULL)
 ,(105,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL)
 ,(106,NULL,NULL,NULL,NULL,1,0,NULL,1,0,NULL)
 ,(129,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(130,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(131,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(132,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(133,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(134,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(135,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(137,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(140,'','','',NULL,1,1,NULL,1,1,NULL);

DROP TABLE IF EXISTS CollectionVersionAreaLayouts;

CREATE TABLE IF NOT EXISTS `CollectionVersionAreaLayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS CollectionVersionAreaStyles;

CREATE TABLE IF NOT EXISTS `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS CollectionVersionBlockStyles;

CREATE TABLE IF NOT EXISTS `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS CollectionVersionBlocks;

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersionBlocks VALUES(1,6,23,'Zone gauche',0,1,0,0)
 ,(1,6,24,'Zone centre',0,1,0,0)
 ,(1,6,25,'Zone centre',1,1,0,0)
 ,(1,6,26,'Zone droite',0,1,0,0)
 ,(105,1,1,'Header',0,1,0,0)
 ,(105,1,2,'Column 1',0,1,0,0)
 ,(105,1,3,'Column 2',0,1,0,0)
 ,(105,1,4,'Column 3',0,1,0,0)
 ,(105,1,5,'Column 4',0,1,0,0)
 ,(106,1,6,'Primary',0,1,0,0)
 ,(106,1,7,'Primary',1,1,0,0)
 ,(106,1,8,'Secondary 1',0,1,0,0)
 ,(106,1,9,'Secondary 2',0,1,0,0)
 ,(106,1,10,'Secondary 3',0,1,0,0)
 ,(106,1,11,'Secondary 4',0,1,0,0)
 ,(106,1,12,'Secondary 5',0,1,0,0)
 ,(129,2,15,'Zone gauche',0,1,0,0)
 ,(129,3,16,'Zone gauche',0,1,0,0)
 ,(129,4,16,'Zone gauche',0,0,0,0)
 ,(129,4,17,'Zone centre',1,1,0,0)
 ,(129,4,18,'Zone centre',0,1,0,0)
 ,(129,5,16,'Zone gauche',0,0,0,0)
 ,(129,5,18,'Zone centre',0,0,0,0)
 ,(129,5,20,'Zone centre',1,1,0,0)
 ,(129,6,16,'Zone gauche',0,0,0,0)
 ,(129,6,18,'Zone centre',0,0,0,0)
 ,(129,6,21,'Zone centre',1,1,0,0)
 ,(129,7,16,'Zone gauche',0,0,0,0)
 ,(129,7,18,'Zone centre',0,0,0,0)
 ,(129,7,21,'Zone centre',1,0,0,0)
 ,(129,7,22,'Zone droite',0,1,0,0)
 ,(130,2,27,'Zone principale',0,1,0,0)
 ,(130,2,28,'Zone principale',1,1,0,0)
 ,(130,3,27,'Zone principale',0,0,0,0)
 ,(130,3,28,'Zone principale',1,0,0,0)
 ,(130,3,31,'Zone principale',2,1,0,0)
 ,(130,4,27,'Zone principale',0,0,0,0)
 ,(130,4,28,'Zone principale',1,0,0,0)
 ,(130,4,31,'Zone principale',2,0,0,0)
 ,(131,2,14,'Zone principale',0,1,0,0)
 ,(135,2,13,'Main',0,1,0,0)
 ,(137,1,19,'Zone principale',0,1,0,0)
 ,(137,2,19,'Zone principale',0,0,0,0)
 ,(140,6,30,'Zone principale',0,1,0,0);

DROP TABLE IF EXISTS CollectionVersionBlocksOutputCache;

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersionBlocksOutputCache VALUES(1,6,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550160054)
 ,(1,6,16,'Zone gauche','<h2>Agenda</h2>\r\n<h3>Réunions avec la direction</h3>\r\n<p><strong>Jeudi 17 octobre</strong>       <br />réunion d’information sur la CCMSI<br /><br /><strong>Vendredi 18 octobre    </strong><br />réunion mensuelle des délégués du personnel<br /><br /><strong>Mercredi 22 octobre   </strong>  <br />réunion du Comité d’entreprise<br /><br /><strong>Mardi 5  novembre      </strong><br />réunion du comité d’entreprise<br /><br /><strong>Mercredi 6 novembre </strong>      <br />négociation annuelle obligatoire sur les salaires (2)</p>\r\n<h3>Réunions syndicales</h3>\r\n<p><strong style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\"></strong><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"><br style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /></span></p>',1550160054)
 ,(1,6,18,'Zone centre','<h2>Derniers communiqués</h2>',1550160054)
 ,(1,6,22,'Zone droite','<h2>Nouvelles du monde</h2>',1550160054)
 ,(106,1,6,'Primary','\n<h1>Welcome Back</h1>\n<br/>\n\n\n\n',1392735788)
 ,(106,1,8,'Secondary 1','\n',1392656588)
 ,(106,1,9,'Secondary 2','\n',1392656588)
 ,(106,1,10,'Secondary 3','<h6>Featured Theme</h6>\n	<p>Cannot retrieve data from the concrete5 marketplace.</p>\n',1392656588)
 ,(106,1,11,'Secondary 4','<h6>Featured Add-On</h6>\n	<p>Cannot retrieve data from the concrete5 marketplace.</p>\n',1392656588)
 ,(106,1,12,'Secondary 5','\n	<div class=\"newsflow-paging-next\"><a href=\"javascript:void(0)\" onclick=\"ccm_showNewsflowOffsite()\"><span></span></a></div>\n\n	<script type=\"text/javascript\">\n	$(function() {\n		ccm_setNewsflowPagingArrowHeight();\n	});\n	</script>\n	\n',1392656588)
 ,(129,8,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550394700)
 ,(129,9,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550160051)
 ,(130,2,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550151599)
 ,(130,2,27,'Zone principale','<h1>Communiqués</h1>',1550151599)
 ,(130,2,28,'Zone principale','<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>',1550151599)
 ,(130,3,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550416646)
 ,(130,3,27,'Zone principale','<h1>Communiqués</h1>',1550416646)
 ,(130,3,28,'Zone principale','<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>',1550416646)
 ,(130,4,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550416661)
 ,(130,4,27,'Zone principale','<h1>Communiqués</h1>',1550416660)
 ,(130,4,28,'Zone principale','<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>',1550416660)
 ,(131,2,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550160065)
 ,(131,2,14,'Zone principale','<p><span>Chantal Lesieur - Bureau 2262 - 01 49 83 <strong>2418</strong></span></p>\r\n<p><span>Françoise Lamontagne - Bureau 2260 - 01 49 83 <strong>2106</strong></span></p>\r\n<p>Mail : <a href=\"mailto:cgt@ina.fr\">cgt@ina.fr</a></p>\r\n<p><span>Fax : 01 49 83 31 7</span></p>',1550160065)
 ,(132,1,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550160064)
 ,(137,2,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550160047)
 ,(137,2,19,'Zone principale','<p class=\"p2 ft5\">Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis <span class=\"ft4\">un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO.</span></p>\r\n<p class=\"p3 ft5\">Le CE, qui n’a qu’un rôle consultatif et pas le pouvoir de bloquer les décisions de la direction, a joué pleinement son rôle notamment en posant des questions sur :</p>\r\n<p class=\"p4 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Est-ce</span> un rapprochement ou une fusion ?</p>\r\n<p class=\"p5 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quelles sont les implications dans mon travail : « Je dépend de qui ? Qui est mon chef ? A qui poser mes questions professionnelles pour avoir des réponses ? »</span></p>\r\n<p class=\"p6 ft9\"><span class=\"ft0\">-</span><span class=\"ft8\">Où en sont les études sur les outils documentaires, techniques, informatiques ?...</span></p>\r\n<p class=\"p7 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quelles sont les suites données par la Direction au rapport Isast sur les conséquences de ce chantier (ce point était explicitement à l’ordre du jour du CE) ?</span></p>\r\n<p class=\"p6 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Quelles sont les suites données aux groupes Emergence organisés par Chrysalis ?</span></p>\r\n<p class=\"p6 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Comment la direction prend elle en compte les paroles des salarié/es ?</span></p>\r\n<p class=\"p8 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">S’il s’agit de prévenir les risques </span>psycho-sociaux on peut s’étonner que rien ne soit fait depuis les rapports Empreinte Humaine (mars 2013) puis Chrysalis (juillet 2013) ?</p>\r\n<p class=\"p9 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quant à la Gestion Prévisionnelle des Emplois et des Compétences (GPEC), il s’agit d’un outil au service de quelle politique ?</span></p>\r\n<p class=\"p10 ft9\"><span class=\"ft0\">-</span><span class=\"ft10\">Quelles interactions avec les autres directions de l’Ina, tout particulièrement la Direction déléguée aux contenus, elle aussi susceptible d’être réorganisée ?</span></p>\r\n<p class=\"p11 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Quant à un éventuel rapprochement physique des salariés, où en </span>est-on ?</p>\r\n<p class=\"p12 ft5\">Le rôle de la DRH aurait été de proposer des préconisations à la suite des conclusions du rapport Isast. <span class=\"ft4\">Rien n’a été fait. La direction a même refusé la restitution, demandée par le CHS CT, du rapport auprès des salarié/es.</span></p>\r\n<p class=\"p13 ft5\">La première commission de suivi sera l’occasion pour la CGT d’exiger des points très précis et détaillés sur l’avancement de la réorganisation et de se rendre compte de la volonté de la DDcol, comme de la DRH, de jouer cartes sur table et de dire ce qu’elles font ou veulent faire,au-delàdes discours. Leurs réponses devront être à la hauteur des enjeux sous peine de voir s’accentuer encore un peu plus la suspicion, le doute, le mécontentement voire la colère.</p>\r\n<p class=\"p14 ft4\">Dernières minutes :</p>\r\n<p class=\"p15 ft12\"><span class=\"ft0\">-</span><span class=\"ft11\">le projet pourrait permettre de rendre des surfaces à Bry III. Nous avions cru qu’il s’agissait d’améliorer les conditions de travail des salarié/es de Bry III mais pas de faire des économies sur les espaces, en entassant les salarié/es. Où ? A Bry 1 ?</span></p>\r\n<p class=\"p16 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">la nomination de Michel Raynal par intérim à la tête du département documentation, alors qu’il</span></p>\r\n<p class=\"p17 ft5\"><span class=\"ft5\">«</span><span class=\"ft13\">remplace » déjà Jacqueline Blanc à la tête des ressources humaines de la DDCol. </span>Est-ce une illustration de la politique de GPEC ?</p>\r\n<p class=\"p18 ft14\">La CGT associera les salarié/es de la Direction déléguée aux collections à la préparation des réunions de la commission de suivi et les tiendra informé/es.</p>',1550160047)
 ,(140,4,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550158766)
 ,(140,5,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550158854)
 ,(140,6,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1550159106);

DROP TABLE IF EXISTS CollectionVersionRelatedEdits;

CREATE TABLE IF NOT EXISTS `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS CollectionVersions;

CREATE TABLE IF NOT EXISTS `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO CollectionVersions VALUES(1,1,'Home','home','','2014-02-14 10:05:03','2014-02-14 10:05:03','Initial Version',0,0,1,NULL,5,4,NULL)
 ,(1,2,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 10:45:40','New Version 2',0,0,1,1,5,4,NULL)
 ,(1,3,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 11:01:23','Version 3',0,0,1,1,5,4,NULL)
 ,(1,4,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 11:34:10','Version 4',0,0,1,1,5,4,NULL)
 ,(1,5,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 11:42:31','Version 5',0,0,1,1,5,7,NULL)
 ,(1,6,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 12:21:24','Version 6',1,0,1,1,5,7,NULL)
 ,(2,1,'Dashboard','dashboard','','2014-02-14 10:05:19','2014-02-14 10:05:19','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(3,1,'Composer','composer','Write for your site.','2014-02-14 10:05:21','2014-02-14 10:05:21','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(4,1,'Write','write','','2014-02-14 10:05:21','2014-02-14 10:05:21','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(5,1,'Drafts','drafts','','2014-02-14 10:05:21','2014-02-14 10:05:21','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(6,1,'Sitemap','sitemap','Whole world at a glance.','2014-02-14 10:05:22','2014-02-14 10:05:22','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(7,1,'Full Sitemap','full','','2014-02-14 10:05:22','2014-02-14 10:05:22','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(8,1,'Flat View','explore','','2014-02-14 10:05:22','2014-02-14 10:05:22','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(9,1,'Page Search','search','','2014-02-14 10:05:22','2014-02-14 10:05:22','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(10,1,'Files','files','All documents and images.','2014-02-14 10:05:23','2014-02-14 10:05:23','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(11,1,'File Manager','search','','2014-02-14 10:05:23','2014-02-14 10:05:23','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(12,1,'Attributes','attributes','','2014-02-14 10:05:23','2014-02-14 10:05:23','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(13,1,'File Sets','sets','','2014-02-14 10:05:23','2014-02-14 10:05:23','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(14,1,'Add File Set','add_set','','2014-02-14 10:05:24','2014-02-14 10:05:24','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(15,1,'Members','users','Add and manage the user accounts and groups on your website.','2014-02-14 10:05:24','2014-02-14 10:05:24','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(16,1,'Search Users','search','','2014-02-14 10:05:24','2014-02-14 10:05:24','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(17,1,'User Groups','groups','','2014-02-14 10:05:24','2014-02-14 10:05:24','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(18,1,'Attributes','attributes','','2014-02-14 10:05:25','2014-02-14 10:05:25','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(19,1,'Add User','add','','2014-02-14 10:05:25','2014-02-14 10:05:25','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(20,1,'Add Group','add_group','','2014-02-14 10:05:25','2014-02-14 10:05:25','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(21,1,'Group Sets','group_sets','','2014-02-14 10:05:25','2014-02-14 10:05:25','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(22,1,'Reports','reports','Get data from forms and logs.','2014-02-14 10:05:26','2014-02-14 10:05:26','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(23,1,'Statistics','statistics','View your site activity.','2014-02-14 10:05:26','2014-02-14 10:05:26','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(24,1,'Form Results','forms','Get submission data.','2014-02-14 10:05:26','2014-02-14 10:05:26','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(25,1,'Surveys','surveys','','2014-02-14 10:05:26','2014-02-14 10:05:26','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(26,1,'Logs','logs','','2014-02-14 10:05:27','2014-02-14 10:05:27','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(27,1,'Pages & Themes','pages','Reskin your site.','2014-02-14 10:05:27','2014-02-14 10:05:27','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(28,1,'Themes','themes','Reskin your site.','2014-02-14 10:05:27','2014-02-14 10:05:27','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(29,1,'Add','add','','2014-02-14 10:05:27','2014-02-14 10:05:27','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(30,1,'Inspect','inspect','','2014-02-14 10:05:28','2014-02-14 10:05:28','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(31,1,'Customize','customize','','2014-02-14 10:05:28','2014-02-14 10:05:28','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(32,1,'Page Types','types','What goes in your site.','2014-02-14 10:05:28','2014-02-14 10:05:28','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(33,1,'Add Page Type','add','Add page types to your site.','2014-02-14 10:05:28','2014-02-14 10:05:28','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(34,1,'Attributes','attributes','','2014-02-14 10:05:29','2014-02-14 10:05:29','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(35,1,'Single Pages','single','','2014-02-14 10:05:29','2014-02-14 10:05:29','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(36,1,'Workflow','workflow','','2014-02-14 10:05:29','2014-02-14 10:05:29','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(37,1,'Workflow List','list','','2014-02-14 10:05:29','2014-02-14 10:05:29','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(38,1,'Waiting for Me','me','','2014-02-14 10:05:30','2014-02-14 10:05:30','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(39,1,'Stacks & Blocks','blocks','Manage sitewide content and administer block types.','2014-02-14 10:05:30','2014-02-14 10:05:30','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(40,1,'Stacks','stacks','Share content across your site.','2014-02-14 10:05:30','2014-02-14 10:05:30','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(41,1,'Block & Stack Permissions','permissions','Control who can add blocks and stacks on your site.','2014-02-14 10:05:31','2014-02-14 10:05:31','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(42,1,'Stack List','list','','2014-02-14 10:05:31','2014-02-14 10:05:31','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(43,1,'Block Types','types','Manage the installed block types in your site.','2014-02-14 10:05:32','2014-02-14 10:05:32','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(44,1,'Extend concrete5','extend','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','2014-02-14 10:05:32','2014-02-14 10:05:32','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(45,1,'Dashboard','news','','2014-02-14 10:05:32','2014-02-14 10:05:32','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(46,1,'Add Functionality','install','Install add-ons & themes.','2014-02-14 10:05:33','2014-02-14 10:05:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(47,1,'Update Add-Ons','update','Update your installed packages.','2014-02-14 10:05:33','2014-02-14 10:05:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(48,1,'Connect to the Community','connect','Connect to the concrete5 community.','2014-02-14 10:05:33','2014-02-14 10:05:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(49,1,'Get More Themes','themes','Download themes from concrete5.org.','2014-02-14 10:05:33','2014-02-14 10:05:33','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(50,1,'Get More Add-Ons','add-ons','Download add-ons from concrete5.org.','2014-02-14 10:05:34','2014-02-14 10:05:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(51,1,'System & Settings','system','Secure and setup your site.','2014-02-14 10:05:34','2014-02-14 10:05:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(52,1,'Basics','basics','Basic information about your website.','2014-02-14 10:05:34','2014-02-14 10:05:34','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(53,1,'Site Name','site_name','','2014-02-14 10:05:35','2014-02-14 10:05:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(54,1,'Bookmark Icons','icons','Bookmark icon and mobile home screen icon setup.','2014-02-14 10:05:35','2014-02-14 10:05:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(55,1,'Rich Text Editor','editor','','2014-02-14 10:05:35','2014-02-14 10:05:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(56,1,'Languages','multilingual','','2014-02-14 10:05:35','2014-02-14 10:05:35','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(57,1,'Time Zone','timezone','','2014-02-14 10:05:36','2014-02-14 10:05:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(58,1,'Interface Preferences','interface','','2014-02-14 10:05:36','2014-02-14 10:05:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(59,1,'SEO & Statistics','seo','Enable pretty URLs, statistics and tracking codes.','2014-02-14 10:05:36','2014-02-14 10:05:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(60,1,'Pretty URLs','urls','','2014-02-14 10:05:36','2014-02-14 10:05:36','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(61,1,'Bulk SEO Updater','bulk_seo_tool','','2014-02-14 10:05:37','2014-02-14 10:05:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(62,1,'Tracking Codes','tracking_codes','','2014-02-14 10:05:37','2014-02-14 10:05:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(63,1,'Excluded URL Word List','excluded','','2014-02-14 10:05:37','2014-02-14 10:05:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(64,1,'Statistics','statistics','','2014-02-14 10:05:37','2014-02-14 10:05:37','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(65,1,'Search Index','search_index','','2014-02-14 10:05:38','2014-02-14 10:05:38','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(66,1,'Optimization','optimization','Keep your site running well.','2014-02-14 10:05:38','2014-02-14 10:05:38','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(67,1,'Cache & Speed Settings','cache','','2014-02-14 10:05:38','2014-02-14 10:05:38','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(68,1,'Clear Cache','clear_cache','','2014-02-14 10:05:39','2014-02-14 10:05:39','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(69,1,'Automated Jobs','jobs','','2014-02-14 10:05:39','2014-02-14 10:05:39','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(70,1,'Permissions & Access','permissions','Control who sees and edits your site.','2014-02-14 10:05:39','2014-02-14 10:05:39','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(71,1,'Site Access','site','','2014-02-14 10:05:39','2014-02-14 10:05:39','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(72,1,'File Manager Permissions','files','','2014-02-14 10:05:40','2014-02-14 10:05:40','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(73,1,'Allowed File Types','file_types','','2014-02-14 10:05:40','2014-02-14 10:05:40','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(74,1,'Task Permissions','tasks','','2014-02-14 10:05:40','2014-02-14 10:05:40','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(75,1,'User Permissions','users','','2014-02-14 10:05:40','2014-02-14 10:05:40','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(76,1,'Advanced Permissions','advanced','','2014-02-14 10:05:41','2014-02-14 10:05:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(77,1,'IP Blacklist','ip_blacklist','','2014-02-14 10:05:41','2014-02-14 10:05:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(78,1,'Captcha Setup','captcha','','2014-02-14 10:05:41','2014-02-14 10:05:41','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(79,1,'Spam Control','antispam','','2014-02-14 10:05:42','2014-02-14 10:05:42','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(80,1,'Maintenance Mode','maintenance_mode','','2014-02-14 10:05:42','2014-02-14 10:05:42','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(81,1,'Login & Registration','registration','Change login behaviors and setup public profiles.','2014-02-14 10:05:42','2014-02-14 10:05:42','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(82,1,'Login Destination','postlogin','','2014-02-14 10:05:43','2014-02-14 10:05:43','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(83,1,'Public Profiles','profiles','','2014-02-14 10:05:43','2014-02-14 10:05:43','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(84,1,'Public Registration','public_registration','','2014-02-14 10:05:43','2014-02-14 10:05:43','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(85,1,'Email','mail','Control how your site send and processes mail.','2014-02-14 10:05:43','2014-02-14 10:05:43','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(86,1,'SMTP Method','method','','2014-02-14 10:05:44','2014-02-14 10:05:44','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(87,1,'Email Importers','importers','','2014-02-14 10:05:44','2014-02-14 10:05:44','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(88,1,'Attributes','attributes','Setup attributes for pages, users, files and more.','2014-02-14 10:05:44','2014-02-14 10:05:44','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(89,1,'Sets','sets','Group attributes into sets for easier organization','2014-02-14 10:05:45','2014-02-14 10:05:45','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(90,1,'Types','types','Choose which attribute types are available for different items.','2014-02-14 10:05:45','2014-02-14 10:05:45','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(91,1,'Environment','environment','Advanced settings for web developers.','2014-02-14 10:05:45','2014-02-14 10:05:45','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(92,1,'Environment Information','info','','2014-02-14 10:05:45','2014-02-14 10:05:45','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(93,1,'Debug Settings','debug','','2014-02-14 10:05:46','2014-02-14 10:05:46','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(94,1,'Logging Settings','logging','','2014-02-14 10:05:46','2014-02-14 10:05:46','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(95,1,'File Storage Locations','file_storage_locations','','2014-02-14 10:05:46','2014-02-14 10:05:46','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(96,1,'Proxy Server','proxy','','2014-02-14 10:05:46','2014-02-14 10:05:46','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(97,1,'Backup & Restore','backup_restore','Backup or restore your website.','2014-02-14 10:05:47','2014-02-14 10:05:47','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(98,1,'Backup Database','backup','','2014-02-14 10:05:47','2014-02-14 10:05:47','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(99,1,'Update concrete5','update','','2014-02-14 10:05:47','2014-02-14 10:05:47','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(100,1,'Database XML','database','','2014-02-14 10:05:48','2014-02-14 10:05:48','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(101,1,'Composer','composer','','2014-02-14 10:05:48','2014-02-14 10:05:48','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(102,1,'',NULL,NULL,'2014-02-14 10:05:48','2014-02-14 10:05:48','Initial Version',1,0,NULL,NULL,0,1,NULL)
 ,(103,1,'',NULL,NULL,'2014-02-14 10:05:48','2014-02-14 10:05:48','Initial Version',1,0,NULL,NULL,0,2,NULL)
 ,(104,1,'',NULL,NULL,'2014-02-14 10:05:48','2014-02-14 10:05:48','Initial Version',1,0,NULL,NULL,0,3,NULL)
 ,(105,1,'Welcome to concrete5','welcome','Learn about how to use concrete5, how to develop for concrete5, and get general help.','2014-02-14 10:05:48','2014-02-14 10:05:48','Initial Version',1,0,1,NULL,5,3,NULL)
 ,(106,1,'Customize Dashboard Home','home','','2014-02-14 10:05:49','2014-02-14 10:05:49','Initial Version',1,0,1,NULL,5,2,NULL)
 ,(107,1,'Drafts','!drafts','','2014-02-14 10:06:04','2014-02-14 10:06:04','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(108,1,'Trash','!trash','','2014-02-14 10:06:04','2014-02-14 10:06:04','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(109,1,'Stacks','!stacks','','2014-02-14 10:06:05','2014-02-14 10:06:05','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(110,1,'Login','login','','2014-02-14 10:06:05','2014-02-14 10:06:05','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(111,1,'Register','register','','2014-02-14 10:06:06','2014-02-14 10:06:06','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(112,1,'Profile','profile','','2014-02-14 10:06:06','2014-02-14 10:06:06','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(113,1,'Edit','edit','','2014-02-14 10:06:06','2014-02-14 10:06:06','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(114,1,'Avatar','avatar','','2014-02-14 10:06:07','2014-02-14 10:06:07','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(115,1,'Messages','messages','','2014-02-14 10:06:07','2014-02-14 10:06:07','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(116,1,'Friends','friends','','2014-02-14 10:06:07','2014-02-14 10:06:07','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(117,1,'Page Not Found','page_not_found','','2014-02-14 10:06:07','2014-02-14 10:06:07','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(118,1,'Page Forbidden','page_forbidden','','2014-02-14 10:06:08','2014-02-14 10:06:08','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(119,1,'Download File','download_file','','2014-02-14 10:06:08','2014-02-14 10:06:08','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(120,1,'Members','members','','2014-02-14 10:06:09','2014-02-14 10:06:09','Initial Version',1,0,1,NULL,5,0,NULL)
 ,(121,1,'',NULL,NULL,'2014-02-14 10:06:09','2014-02-14 10:06:09','Initial Version',1,0,NULL,NULL,0,4,NULL)
 ,(122,1,'',NULL,NULL,'2014-02-14 10:10:03','2014-02-14 10:10:03','Initial Version',1,0,NULL,NULL,0,5,NULL)
 ,(124,1,'Header','header',NULL,'2014-02-14 10:10:12','2014-02-14 10:10:12','Initial Version',1,0,1,NULL,5,1,NULL)
 ,(125,1,'Pied de page - Gauche','pied-de-page-gauche',NULL,'2014-02-14 10:10:13','2014-02-14 10:10:13','Initial Version',1,0,1,NULL,5,1,NULL)
 ,(126,1,'Pied de page - Centre','pied-de-page-centre',NULL,'2014-02-14 10:10:13','2014-02-14 10:10:13','Initial Version',1,0,1,NULL,5,1,NULL)
 ,(127,1,'Pied de page - Droite','pied-de-page-droite',NULL,'2014-02-14 10:10:14','2014-02-14 10:10:14','Initial Version',1,0,1,NULL,5,1,NULL)
 ,(128,1,'Pied de page - Sitemap','pied-de-page-sitemap',NULL,'2014-02-14 10:10:14','2014-02-14 10:10:14','Initial Version',1,0,1,NULL,5,1,NULL)
 ,(129,1,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 10:31:24','Version 1',0,0,1,1,5,5,NULL)
 ,(129,2,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 11:47:47','Version 2',0,0,1,1,5,7,NULL)
 ,(129,3,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 12:07:11','Version 3',0,0,1,1,5,7,NULL)
 ,(129,4,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 12:09:44','Version 4',0,0,1,1,5,7,NULL)
 ,(129,5,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 12:16:02','Version 5',0,0,1,1,5,7,NULL)
 ,(129,6,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 12:17:27','Version 6',0,0,1,1,5,7,NULL)
 ,(129,7,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 12:19:12','Version 7',0,0,1,1,5,7,NULL)
 ,(129,8,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 12:22:43','Version 8',0,0,1,1,5,7,NULL)
 ,(129,9,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 12:24:18','New Version 9',1,0,1,1,5,4,NULL)
 ,(130,1,'Communiqués','communiques','','2014-02-14 10:31:00','2014-02-14 10:31:41','Version 1',0,0,1,1,5,5,NULL)
 ,(130,2,'Communiqués','communiques','','2014-02-14 10:31:00','2014-02-14 14:10:52','Version 2',0,0,1,1,5,8,NULL)
 ,(130,3,'Communiqués','communiques','','2014-02-14 10:31:00','2014-02-17 16:17:13','Version 3',0,0,1,1,5,8,NULL)
 ,(130,4,'Communiqués','communiques','','2014-02-14 10:31:00','2014-02-17 16:17:40','Version 4',1,0,1,1,5,5,NULL)
 ,(131,1,'Nous contacter','nous-contacter','','2014-02-14 10:31:00','2014-02-14 10:31:58','Initial Version',0,0,1,1,5,5,NULL)
 ,(131,2,'Nous contacter','nous-contacter','','2014-02-14 10:31:00','2014-02-14 11:55:34','Version 2',1,0,1,1,5,5,NULL)
 ,(132,1,'Blog','blog','','2014-02-14 10:32:00','2014-02-14 10:32:12','Initial Version',1,0,1,1,5,5,NULL)
 ,(133,1,'Accords','accords','','2014-02-14 11:00:00','2014-02-14 11:00:09','Initial Version',1,0,1,1,5,5,NULL)
 ,(134,1,'Status','stat','','2014-02-14 11:00:00','2014-02-14 11:00:21','Initial Version',1,0,1,1,5,5,NULL)
 ,(135,1,'Pied de page','pied-de-page',NULL,'2014-02-14 11:12:04','2014-02-14 11:12:04','Initial Version',0,0,1,NULL,5,1,NULL)
 ,(135,2,'Pied de page','pied-de-page',NULL,'2014-02-14 11:12:04','2014-02-14 11:34:10','New Version 2',1,0,1,1,5,1,NULL)
 ,(136,1,'',NULL,NULL,'2014-02-14 11:42:21','2014-02-14 11:42:21','Initial Version',1,0,NULL,NULL,0,7,NULL)
 ,(137,1,'Direction des collections et maintenant ??','direction-des-collections-et-maintenant','','2014-02-14 12:12:00','2014-02-14 12:13:13','Version 1',0,0,1,1,5,5,NULL)
 ,(137,2,'Direction des collections et maintenant ??','direction-des-collections-et-maintenant','Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO.','2014-02-14 12:12:00','2014-02-14 12:16:56','New Version 2',1,0,1,1,5,5,NULL)
 ,(138,1,'',NULL,NULL,'2014-02-14 14:04:56','2014-02-14 14:04:56','Initial Version',1,0,NULL,NULL,0,8,NULL)
 ,(139,1,'',NULL,NULL,'2014-02-14 14:05:16','2014-02-14 14:05:16','Initial Version',1,0,NULL,NULL,0,9,NULL)
 ,(140,1,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 15:00:35','Initial Version',0,0,1,1,5,5,NULL)
 ,(140,2,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 15:00:49','New Version 2',0,0,1,1,5,5,NULL)
 ,(140,3,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 15:01:04','New Version 3',0,0,1,1,5,5,NULL)
 ,(140,4,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 15:01:55','New Version 4',0,0,1,1,5,5,NULL)
 ,(140,5,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 16:39:49','New Version 5',0,0,1,1,5,5,NULL)
 ,(140,6,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 16:43:11','New Version 6',1,0,1,1,5,5,NULL);

DROP TABLE IF EXISTS Collections;

CREATE TABLE IF NOT EXISTS `Collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

INSERT INTO Collections VALUES(1,'2014-02-14 10:05:03','2014-02-14 12:22:28','home')
 ,(2,'2014-02-14 10:05:19','2014-02-14 10:05:21','dashboard')
 ,(3,'2014-02-14 10:05:21','2014-02-14 10:05:21','composer')
 ,(4,'2014-02-14 10:05:21','2014-02-14 10:05:21','write')
 ,(5,'2014-02-14 10:05:21','2014-02-14 10:05:22','drafts')
 ,(6,'2014-02-14 10:05:22','2014-02-14 10:05:22','sitemap')
 ,(7,'2014-02-14 10:05:22','2014-02-14 10:05:22','full')
 ,(8,'2014-02-14 10:05:22','2014-02-14 10:05:22','explore')
 ,(9,'2014-02-14 10:05:22','2014-02-14 10:05:23','search')
 ,(10,'2014-02-14 10:05:23','2014-02-14 10:05:23','files')
 ,(11,'2014-02-14 10:05:23','2014-02-14 10:05:23','search')
 ,(12,'2014-02-14 10:05:23','2014-02-14 10:05:23','attributes')
 ,(13,'2014-02-14 10:05:23','2014-02-14 10:05:24','sets')
 ,(14,'2014-02-14 10:05:24','2014-02-14 10:05:24','add_set')
 ,(15,'2014-02-14 10:05:24','2014-02-14 10:05:24','users')
 ,(16,'2014-02-14 10:05:24','2014-02-14 10:05:24','search')
 ,(17,'2014-02-14 10:05:24','2014-02-14 10:05:25','groups')
 ,(18,'2014-02-14 10:05:25','2014-02-14 10:05:25','attributes')
 ,(19,'2014-02-14 10:05:25','2014-02-14 10:05:25','add')
 ,(20,'2014-02-14 10:05:25','2014-02-14 10:05:25','add_group')
 ,(21,'2014-02-14 10:05:25','2014-02-14 10:05:26','group_sets')
 ,(22,'2014-02-14 10:05:26','2014-02-14 10:05:26','reports')
 ,(23,'2014-02-14 10:05:26','2014-02-14 10:05:26','statistics')
 ,(24,'2014-02-14 10:05:26','2014-02-14 10:05:26','forms')
 ,(25,'2014-02-14 10:05:26','2014-02-14 10:05:27','surveys')
 ,(26,'2014-02-14 10:05:27','2014-02-14 10:05:27','logs')
 ,(27,'2014-02-14 10:05:27','2014-02-14 10:05:27','pages')
 ,(28,'2014-02-14 10:05:27','2014-02-14 10:05:27','themes')
 ,(29,'2014-02-14 10:05:27','2014-02-14 10:05:28','add')
 ,(30,'2014-02-14 10:05:28','2014-02-14 10:05:28','inspect')
 ,(31,'2014-02-14 10:05:28','2014-02-14 10:05:28','customize')
 ,(32,'2014-02-14 10:05:28','2014-02-14 10:05:28','types')
 ,(33,'2014-02-14 10:05:28','2014-02-14 10:05:29','add')
 ,(34,'2014-02-14 10:05:29','2014-02-14 10:05:29','attributes')
 ,(35,'2014-02-14 10:05:29','2014-02-14 10:05:29','single')
 ,(36,'2014-02-14 10:05:29','2014-02-14 10:05:29','workflow')
 ,(37,'2014-02-14 10:05:29','2014-02-14 10:05:30','list')
 ,(38,'2014-02-14 10:05:30','2014-02-14 10:05:30','me')
 ,(39,'2014-02-14 10:05:30','2014-02-14 10:05:30','blocks')
 ,(40,'2014-02-14 10:05:30','2014-02-14 10:05:30','stacks')
 ,(41,'2014-02-14 10:05:31','2014-02-14 10:05:31','permissions')
 ,(42,'2014-02-14 10:05:31','2014-02-14 10:05:32','list')
 ,(43,'2014-02-14 10:05:32','2014-02-14 10:05:32','types')
 ,(44,'2014-02-14 10:05:32','2014-02-14 10:05:32','extend')
 ,(45,'2014-02-14 10:05:32','2014-02-14 10:05:33','news')
 ,(46,'2014-02-14 10:05:33','2014-02-14 10:05:33','install')
 ,(47,'2014-02-14 10:05:33','2014-02-14 10:05:33','update')
 ,(48,'2014-02-14 10:05:33','2014-02-14 10:05:33','connect')
 ,(49,'2014-02-14 10:05:33','2014-02-14 10:05:34','themes')
 ,(50,'2014-02-14 10:05:34','2014-02-14 10:05:34','add-ons')
 ,(51,'2014-02-14 10:05:34','2014-02-14 10:05:34','system')
 ,(52,'2014-02-14 10:05:34','2014-02-14 10:05:35','basics')
 ,(53,'2014-02-14 10:05:35','2014-02-14 10:05:35','site_name')
 ,(54,'2014-02-14 10:05:35','2014-02-14 10:05:35','icons')
 ,(55,'2014-02-14 10:05:35','2014-02-14 10:05:35','editor')
 ,(56,'2014-02-14 10:05:35','2014-02-14 10:05:36','multilingual')
 ,(57,'2014-02-14 10:05:36','2014-02-14 10:05:36','timezone')
 ,(58,'2014-02-14 10:05:36','2014-02-14 10:05:36','interface')
 ,(59,'2014-02-14 10:05:36','2014-02-14 10:05:36','seo')
 ,(60,'2014-02-14 10:05:36','2014-02-14 10:05:37','urls')
 ,(61,'2014-02-14 10:05:37','2014-02-14 10:05:37','bulk_seo_tool')
 ,(62,'2014-02-14 10:05:37','2014-02-14 10:05:37','tracking_codes')
 ,(63,'2014-02-14 10:05:37','2014-02-14 10:05:37','excluded')
 ,(64,'2014-02-14 10:05:37','2014-02-14 10:05:38','statistics')
 ,(65,'2014-02-14 10:05:38','2014-02-14 10:05:38','search_index')
 ,(66,'2014-02-14 10:05:38','2014-02-14 10:05:38','optimization')
 ,(67,'2014-02-14 10:05:38','2014-02-14 10:05:38','cache')
 ,(68,'2014-02-14 10:05:39','2014-02-14 10:05:39','clear_cache')
 ,(69,'2014-02-14 10:05:39','2014-02-14 10:05:39','jobs')
 ,(70,'2014-02-14 10:05:39','2014-02-14 10:05:39','permissions')
 ,(71,'2014-02-14 10:05:39','2014-02-14 10:05:39','site')
 ,(72,'2014-02-14 10:05:40','2014-02-14 10:05:40','files')
 ,(73,'2014-02-14 10:05:40','2014-02-14 10:05:40','file_types')
 ,(74,'2014-02-14 10:05:40','2014-02-14 10:05:40','tasks')
 ,(75,'2014-02-14 10:05:40','2014-02-14 10:05:41','users')
 ,(76,'2014-02-14 10:05:41','2014-02-14 10:05:41','advanced')
 ,(77,'2014-02-14 10:05:41','2014-02-14 10:05:41','ip_blacklist')
 ,(78,'2014-02-14 10:05:41','2014-02-14 10:05:42','captcha')
 ,(79,'2014-02-14 10:05:42','2014-02-14 10:05:42','antispam')
 ,(80,'2014-02-14 10:05:42','2014-02-14 10:05:42','maintenance_mode')
 ,(81,'2014-02-14 10:05:42','2014-02-14 10:05:43','registration')
 ,(82,'2014-02-14 10:05:43','2014-02-14 10:05:43','postlogin')
 ,(83,'2014-02-14 10:05:43','2014-02-14 10:05:43','profiles')
 ,(84,'2014-02-14 10:05:43','2014-02-14 10:05:43','public_registration')
 ,(85,'2014-02-14 10:05:43','2014-02-14 10:05:44','mail')
 ,(86,'2014-02-14 10:05:44','2014-02-14 10:05:44','method')
 ,(87,'2014-02-14 10:05:44','2014-02-14 10:05:44','importers')
 ,(88,'2014-02-14 10:05:44','2014-02-14 10:05:44','attributes')
 ,(89,'2014-02-14 10:05:45','2014-02-14 10:05:45','sets')
 ,(90,'2014-02-14 10:05:45','2014-02-14 10:05:45','types')
 ,(91,'2014-02-14 10:05:45','2014-02-14 10:05:45','environment')
 ,(92,'2014-02-14 10:05:45','2014-02-14 10:05:46','info')
 ,(93,'2014-02-14 10:05:46','2014-02-14 10:05:46','debug')
 ,(94,'2014-02-14 10:05:46','2014-02-14 10:05:46','logging')
 ,(95,'2014-02-14 10:05:46','2014-02-14 10:05:46','file_storage_locations')
 ,(96,'2014-02-14 10:05:46','2014-02-14 10:05:47','proxy')
 ,(97,'2014-02-14 10:05:47','2014-02-14 10:05:47','backup_restore')
 ,(98,'2014-02-14 10:05:47','2014-02-14 10:05:47','backup')
 ,(99,'2014-02-14 10:05:47','2014-02-14 10:05:47','update')
 ,(100,'2014-02-14 10:05:48','2014-02-14 10:05:48','database')
 ,(101,'2014-02-14 10:05:48','2014-02-14 10:05:48','composer')
 ,(102,'2014-02-14 10:05:48','2014-02-14 10:05:48',NULL)
 ,(103,'2014-02-14 10:05:48','2014-02-14 10:05:48',NULL)
 ,(104,'2014-02-14 10:05:48','2014-02-14 10:05:48',NULL)
 ,(105,'2014-02-14 10:05:48','2014-02-14 10:05:49','welcome')
 ,(106,'2014-02-14 10:05:49','2014-02-14 10:05:49','home')
 ,(107,'2014-02-14 10:06:04','2014-02-14 10:06:04','!drafts')
 ,(108,'2014-02-14 10:06:04','2014-02-14 10:06:05','!trash')
 ,(109,'2014-02-14 10:06:05','2014-02-14 10:06:05','!stacks')
 ,(110,'2014-02-14 10:06:05','2014-02-14 10:06:06','login')
 ,(111,'2014-02-14 10:06:06','2014-02-14 10:06:06','register')
 ,(112,'2014-02-14 10:06:06','2014-02-14 10:06:06','profile')
 ,(113,'2014-02-14 10:06:06','2014-02-14 10:06:06','edit')
 ,(114,'2014-02-14 10:06:07','2014-02-14 10:06:07','avatar')
 ,(115,'2014-02-14 10:06:07','2014-02-14 10:06:07','messages')
 ,(116,'2014-02-14 10:06:07','2014-02-14 10:06:07','friends')
 ,(117,'2014-02-14 10:06:07','2014-02-14 10:06:08','page_not_found')
 ,(118,'2014-02-14 10:06:08','2014-02-14 10:06:08','page_forbidden')
 ,(119,'2014-02-14 10:06:08','2014-02-14 10:06:09','download_file')
 ,(120,'2014-02-14 10:06:09','2014-02-14 10:06:09','members')
 ,(121,'2014-02-14 10:06:09','2014-02-14 10:06:09',NULL)
 ,(122,'2014-02-14 10:10:03','2014-02-14 10:10:03',NULL)
 ,(124,'2014-02-14 10:10:12','2014-02-14 10:10:12','header')
 ,(125,'2014-02-14 10:10:13','2014-02-14 10:10:13','pied-de-page-gauche')
 ,(126,'2014-02-14 10:10:13','2014-02-14 10:10:13','pied-de-page-centre')
 ,(127,'2014-02-14 10:10:14','2014-02-14 10:10:14','pied-de-page-droite')
 ,(128,'2014-02-14 10:10:14','2014-02-14 10:10:14','pied-de-page-sitemap')
 ,(129,'2014-02-14 10:31:24','2014-02-17 16:16:25','accords-status')
 ,(130,'2014-02-14 10:31:41','2014-02-17 16:17:45','communiques')
 ,(131,'2014-02-14 10:31:58','2014-02-14 11:56:23','nous-contacter')
 ,(132,'2014-02-14 10:32:12','2014-02-14 10:32:13','blog')
 ,(133,'2014-02-14 11:00:09','2014-02-14 11:00:10','accords')
 ,(134,'2014-02-14 11:00:21','2014-02-14 11:00:21','stat')
 ,(135,'2014-02-14 11:12:04','2014-02-14 11:34:20','pied-de-page')
 ,(136,'2014-02-14 11:42:21','2014-02-14 11:42:21',NULL)
 ,(137,'2014-02-14 12:13:13','2014-02-14 12:16:56','direction-des-collections-et-maintenant')
 ,(138,'2014-02-14 14:04:56','2014-02-14 14:04:56',NULL)
 ,(139,'2014-02-14 14:05:16','2014-02-14 14:05:16',NULL)
 ,(140,'2014-02-14 15:00:35','2014-02-14 16:52:38','recherche');

DROP TABLE IF EXISTS ComposerContentLayout;

CREATE TABLE IF NOT EXISTS `ComposerContentLayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ComposerDrafts;

CREATE TABLE IF NOT EXISTS `ComposerDrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ComposerTypes;

CREATE TABLE IF NOT EXISTS `ComposerTypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Config;

CREATE TABLE IF NOT EXISTS `Config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Config VALUES('ACCESS_ENTITY_UPDATED','2014-02-17 10:11:37','1392628297',0,0)
 ,('ANTISPAM_LOG_SPAM','2014-02-14 10:06:09','1',0,0)
 ,('APP_VERSION_LATEST','2014-02-17 16:03:08','5.6.3RC1',0,0)
 ,('DO_PAGE_REINDEX_CHECK','2014-02-17 16:17:47','0',0,0)
 ,('ENABLE_BLOCK_CACHE','2014-02-14 10:06:09','1',0,0)
 ,('ENABLE_LOG_EMAILS','2014-02-14 10:06:09','1',0,0)
 ,('ENABLE_LOG_ERRORS','2014-02-14 10:06:09','1',0,0)
 ,('ENABLE_MARKETPLACE_SUPPORT','2014-02-14 10:06:09','1',0,0)
 ,('ENABLE_OVERRIDE_CACHE','2014-02-14 10:06:09','1',0,0)
 ,('FULL_PAGE_CACHE_GLOBAL','2014-02-14 10:06:09','0',0,0)
 ,('LANGUAGE_CHOOSE_ON_LOGIN','2014-02-17 16:04:42','1',0,0)
 ,('NEWSFLOW_LAST_VIEWED','0000-00-00 00:00:00','1392649383',1,0)
 ,('SECURITY_TOKEN_ENCRYPTION','2014-02-14 10:06:12','0xFfJOxbPsioBhPvhVY8jgsEu8twuLrGEmn3cy4R9bgpt4Han0zlYXU6sh3s3yXH',0,0)
 ,('SECURITY_TOKEN_JOBS','2014-02-14 10:06:12','5tbz4aKNRgX9gIlGXZfGoH7P7e0os1123akwRDpEKM0reDRqPgowqRLLZZzlLkD8',0,0)
 ,('SECURITY_TOKEN_VALIDATION','2014-02-14 10:06:12','enRi9oeSBRjMpxE2DTTSD5JLhJU83EMV8lRGCyPnUj1wHtstXAiJpmRiamTPCL2u',0,0)
 ,('SEEN_INTRODUCTION','2014-02-14 10:06:15','1',0,0)
 ,('SITE','2014-02-14 10:06:10','CGT Ina',0,0)
 ,('SITE_APP_VERSION','2014-02-14 10:06:11','5.6.3RC1',0,0)
 ,('SITE_DEBUG_LEVEL','2014-02-14 10:06:09','1',0,0)
 ,('SITE_INSTALLED_APP_VERSION','2014-02-14 10:06:11','5.6.3RC1',0,0)
 ,('SITE_LOCALE','2014-02-17 16:04:42','fr_FR',0,0);

DROP TABLE IF EXISTS CustomStylePresets;

CREATE TABLE IF NOT EXISTS `CustomStylePresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS CustomStyleRules;

CREATE TABLE IF NOT EXISTS `CustomStyleRules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS DownloadStatistics;

CREATE TABLE IF NOT EXISTS `DownloadStatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileAttributeValues;

CREATE TABLE IF NOT EXISTS `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FilePermissionAssignments;

CREATE TABLE IF NOT EXISTS `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FilePermissionFileTypes;

CREATE TABLE IF NOT EXISTS `FilePermissionFileTypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSearchIndexAttributes;

CREATE TABLE IF NOT EXISTS `FileSearchIndexAttributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSetFiles;

CREATE TABLE IF NOT EXISTS `FileSetFiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSetPermissionAssignments;

CREATE TABLE IF NOT EXISTS `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO FileSetPermissionAssignments VALUES(0,44,35)
 ,(0,45,36)
 ,(0,46,37)
 ,(0,47,38)
 ,(0,48,39)
 ,(0,49,40)
 ,(0,50,42)
 ,(0,51,41)
 ,(0,52,43);

DROP TABLE IF EXISTS FileSetPermissionFileTypeAccessList;

CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSetPermissionFileTypeAccessListCustom;

CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSetSavedSearches;

CREATE TABLE IF NOT EXISTS `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileSets;

CREATE TABLE IF NOT EXISTS `FileSets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileStorageLocations;

CREATE TABLE IF NOT EXISTS `FileStorageLocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileVersionLog;

CREATE TABLE IF NOT EXISTS `FileVersionLog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS FileVersions;

CREATE TABLE IF NOT EXISTS `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Files;

CREATE TABLE IF NOT EXISTS `Files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS GroupSetGroups;

CREATE TABLE IF NOT EXISTS `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS GroupSets;

CREATE TABLE IF NOT EXISTS `GroupSets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Groups;

CREATE TABLE IF NOT EXISTS `Groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO Groups VALUES(1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL)
 ,(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL)
 ,(3,'Administrators','',0,NULL,NULL,0,NULL);

DROP TABLE IF EXISTS JobSetJobs;

CREATE TABLE IF NOT EXISTS `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO JobSetJobs VALUES(1,1,0)
 ,(1,3,0)
 ,(1,4,0)
 ,(1,5,0);

DROP TABLE IF EXISTS JobSets;

CREATE TABLE IF NOT EXISTS `JobSets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO JobSets VALUES(1,'Default',0,NULL,0,'days',0);

DROP TABLE IF EXISTS Jobs;

CREATE TABLE IF NOT EXISTS `Jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO Jobs VALUES(1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0)
 ,(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0)
 ,(3,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0)
 ,(4,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0)
 ,(5,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0);

DROP TABLE IF EXISTS JobsLog;

CREATE TABLE IF NOT EXISTS `JobsLog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext,
  `jlTimestamp` timestamp NOT NULL,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS LayoutPresets;

CREATE TABLE IF NOT EXISTS `LayoutPresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Layouts;

CREATE TABLE IF NOT EXISTS `Layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Layouts VALUES(1,1,3,0,'30%,67%',0);

DROP TABLE IF EXISTS Logs;

CREATE TABLE IF NOT EXISTS `Logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Logs VALUES(1,'Page Action','0000-00-00 00:00:00','Page &quot;&quot; at path &quot;&quot; deleted\n',1,0);

DROP TABLE IF EXISTS MailImporters;

CREATE TABLE IF NOT EXISTS `MailImporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO MailImporters VALUES(1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');

DROP TABLE IF EXISTS MailValidationHashes;

CREATE TABLE IF NOT EXISTS `MailValidationHashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Packages;

CREATE TABLE IF NOT EXISTS `Packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Packages VALUES(1,'Extended Search','jacks_extended_search','Provides a more advanced Search block ','2014-02-14 14:25:45',1,'1.0',NULL);

DROP TABLE IF EXISTS PagePaths;

CREATE TABLE IF NOT EXISTS `PagePaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;

INSERT INTO PagePaths VALUES(1,2,'/dashboard','1')
 ,(2,3,'/dashboard/composer','1')
 ,(3,4,'/dashboard/composer/write','1')
 ,(4,5,'/dashboard/composer/drafts','1')
 ,(5,6,'/dashboard/sitemap','1')
 ,(6,7,'/dashboard/sitemap/full','1')
 ,(7,8,'/dashboard/sitemap/explore','1')
 ,(8,9,'/dashboard/sitemap/search','1')
 ,(9,10,'/dashboard/files','1')
 ,(10,11,'/dashboard/files/search','1')
 ,(11,12,'/dashboard/files/attributes','1')
 ,(12,13,'/dashboard/files/sets','1')
 ,(13,14,'/dashboard/files/add_set','1')
 ,(14,15,'/dashboard/users','1')
 ,(15,16,'/dashboard/users/search','1')
 ,(16,17,'/dashboard/users/groups','1')
 ,(17,18,'/dashboard/users/attributes','1')
 ,(18,19,'/dashboard/users/add','1')
 ,(19,20,'/dashboard/users/add_group','1')
 ,(20,21,'/dashboard/users/group_sets','1')
 ,(21,22,'/dashboard/reports','1')
 ,(22,23,'/dashboard/reports/statistics','1')
 ,(23,24,'/dashboard/reports/forms','1')
 ,(24,25,'/dashboard/reports/surveys','1')
 ,(25,26,'/dashboard/reports/logs','1')
 ,(26,27,'/dashboard/pages','1')
 ,(27,28,'/dashboard/pages/themes','1')
 ,(28,29,'/dashboard/pages/themes/add','1')
 ,(29,30,'/dashboard/pages/themes/inspect','1')
 ,(30,31,'/dashboard/pages/themes/customize','1')
 ,(31,32,'/dashboard/pages/types','1')
 ,(32,33,'/dashboard/pages/types/add','1')
 ,(33,34,'/dashboard/pages/attributes','1')
 ,(34,35,'/dashboard/pages/single','1')
 ,(35,36,'/dashboard/workflow','1')
 ,(36,37,'/dashboard/workflow/list','1')
 ,(37,38,'/dashboard/workflow/me','1')
 ,(38,39,'/dashboard/blocks','1')
 ,(39,40,'/dashboard/blocks/stacks','1')
 ,(40,41,'/dashboard/blocks/permissions','1')
 ,(41,42,'/dashboard/blocks/stacks/list','1')
 ,(42,43,'/dashboard/blocks/types','1')
 ,(43,44,'/dashboard/extend','1')
 ,(44,45,'/dashboard/news','1')
 ,(45,46,'/dashboard/extend/install','1')
 ,(46,47,'/dashboard/extend/update','1')
 ,(47,48,'/dashboard/extend/connect','1')
 ,(48,49,'/dashboard/extend/themes','1')
 ,(49,50,'/dashboard/extend/add-ons','1')
 ,(50,51,'/dashboard/system','1')
 ,(51,52,'/dashboard/system/basics','1')
 ,(52,53,'/dashboard/system/basics/site_name','1')
 ,(53,54,'/dashboard/system/basics/icons','1')
 ,(54,55,'/dashboard/system/basics/editor','1')
 ,(55,56,'/dashboard/system/basics/multilingual','1')
 ,(56,57,'/dashboard/system/basics/timezone','1')
 ,(57,58,'/dashboard/system/basics/interface','1')
 ,(58,59,'/dashboard/system/seo','1')
 ,(59,60,'/dashboard/system/seo/urls','1')
 ,(60,61,'/dashboard/system/seo/bulk_seo_tool','1')
 ,(61,62,'/dashboard/system/seo/tracking_codes','1')
 ,(62,63,'/dashboard/system/seo/excluded','1')
 ,(63,64,'/dashboard/system/seo/statistics','1')
 ,(64,65,'/dashboard/system/seo/search_index','1')
 ,(65,66,'/dashboard/system/optimization','1')
 ,(66,67,'/dashboard/system/optimization/cache','1')
 ,(67,68,'/dashboard/system/optimization/clear_cache','1')
 ,(68,69,'/dashboard/system/optimization/jobs','1')
 ,(69,70,'/dashboard/system/permissions','1')
 ,(70,71,'/dashboard/system/permissions/site','1')
 ,(71,72,'/dashboard/system/permissions/files','1')
 ,(72,73,'/dashboard/system/permissions/file_types','1')
 ,(73,74,'/dashboard/system/permissions/tasks','1')
 ,(74,75,'/dashboard/system/permissions/users','1')
 ,(75,76,'/dashboard/system/permissions/advanced','1')
 ,(76,77,'/dashboard/system/permissions/ip_blacklist','1')
 ,(77,78,'/dashboard/system/permissions/captcha','1')
 ,(78,79,'/dashboard/system/permissions/antispam','1')
 ,(79,80,'/dashboard/system/permissions/maintenance_mode','1')
 ,(80,81,'/dashboard/system/registration','1')
 ,(81,82,'/dashboard/system/registration/postlogin','1')
 ,(82,83,'/dashboard/system/registration/profiles','1')
 ,(83,84,'/dashboard/system/registration/public_registration','1')
 ,(84,85,'/dashboard/system/mail','1')
 ,(85,86,'/dashboard/system/mail/method','1')
 ,(86,87,'/dashboard/system/mail/importers','1')
 ,(87,88,'/dashboard/system/attributes','1')
 ,(88,89,'/dashboard/system/attributes/sets','1')
 ,(89,90,'/dashboard/system/attributes/types','1')
 ,(90,91,'/dashboard/system/environment','1')
 ,(91,92,'/dashboard/system/environment/info','1')
 ,(92,93,'/dashboard/system/environment/debug','1')
 ,(93,94,'/dashboard/system/environment/logging','1')
 ,(94,95,'/dashboard/system/environment/file_storage_locations','1')
 ,(95,96,'/dashboard/system/environment/proxy','1')
 ,(96,97,'/dashboard/system/backup_restore','1')
 ,(97,98,'/dashboard/system/backup_restore/backup','1')
 ,(98,99,'/dashboard/system/backup_restore/update','1')
 ,(99,100,'/dashboard/system/backup_restore/database','1')
 ,(100,101,'/dashboard/pages/types/composer','1')
 ,(101,105,'/dashboard/welcome','1')
 ,(102,106,'/dashboard/home','1')
 ,(103,107,'/!drafts','1')
 ,(104,108,'/!trash','1')
 ,(105,109,'/!stacks','1')
 ,(106,110,'/login','1')
 ,(107,111,'/register','1')
 ,(108,112,'/profile','1')
 ,(109,113,'/profile/edit','1')
 ,(110,114,'/profile/avatar','1')
 ,(111,115,'/profile/messages','1')
 ,(112,116,'/profile/friends','1')
 ,(113,117,'/page_not_found','1')
 ,(114,118,'/page_forbidden','1')
 ,(115,119,'/download_file','1')
 ,(116,120,'/members','1')
 ,(117,124,'/!stacks/header','1')
 ,(118,125,'/!stacks/pied-de-page-gauche','1')
 ,(119,126,'/!stacks/pied-de-page-centre','1')
 ,(120,127,'/!stacks/pied-de-page-droite','1')
 ,(121,128,'/!stacks/pied-de-page-sitemap','1')
 ,(125,132,'/blog','1')
 ,(129,135,'/!stacks/pied-de-page','1')
 ,(130,131,'/nous-contacter','1')
 ,(161,140,'/recherche','1')
 ,(162,129,'/accords-status','1')
 ,(163,133,'/accords-status/accords','1')
 ,(164,134,'/accords-status/stat','1')
 ,(167,130,'/communiques','1')
 ,(168,137,'/communiques/direction-des-collections-et-maintenant','1');

DROP TABLE IF EXISTS PagePermissionAssignments;

CREATE TABLE IF NOT EXISTS `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PagePermissionAssignments VALUES(1,1,53)
 ,(1,2,54)
 ,(1,3,55)
 ,(1,4,56)
 ,(1,5,57)
 ,(1,6,58)
 ,(1,7,59)
 ,(1,8,60)
 ,(1,9,61)
 ,(1,10,62)
 ,(1,11,63)
 ,(1,12,64)
 ,(1,13,65)
 ,(1,14,66)
 ,(1,15,67)
 ,(1,16,68)
 ,(2,1,19)
 ,(2,2,21)
 ,(2,3,20)
 ,(2,4,26)
 ,(2,5,22)
 ,(2,6,23)
 ,(2,7,28)
 ,(2,8,30)
 ,(2,9,32)
 ,(2,10,29)
 ,(2,11,33)
 ,(2,12,34)
 ,(2,13,24)
 ,(2,14,27)
 ,(2,15,25)
 ,(2,16,31)
 ,(42,1,35)
 ,(42,3,36)
 ,(110,1,39)
 ,(110,3,40)
 ,(111,1,41)
 ,(111,3,42);

DROP TABLE IF EXISTS PagePermissionPageTypeAccessList;

CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionPageTypeAccessListCustom;

CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionPropertyAccessList;

CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionPropertyAttributeAccessListCustom;

CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionThemeAccessList;

CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PagePermissionThemeAccessListCustom;

CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PageSearchIndex;

CREATE TABLE IF NOT EXISTS `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO PageSearchIndex VALUES(3,'','Composer','Write for your site.','/dashboard/composer','2014-02-14 10:05:21','2014-02-14 10:05:49',NULL,0)
 ,(4,'','Write','','/dashboard/composer/write','2014-02-14 10:05:21','2014-02-14 10:05:49',NULL,0)
 ,(5,'','Drafts','','/dashboard/composer/drafts','2014-02-14 10:05:21','2014-02-14 10:05:50',NULL,0)
 ,(6,'','Sitemap','Whole world at a glance.','/dashboard/sitemap','2014-02-14 10:05:22','2014-02-14 10:05:50',NULL,0)
 ,(7,'','Full Sitemap','','/dashboard/sitemap/full','2014-02-14 10:05:22','2014-02-14 10:05:50',NULL,0)
 ,(8,'','Flat View','','/dashboard/sitemap/explore','2014-02-14 10:05:22','2014-02-14 10:05:50',NULL,0)
 ,(9,'','Page Search','','/dashboard/sitemap/search','2014-02-14 10:05:22','2014-02-14 10:05:50',NULL,0)
 ,(11,'','File Manager','','/dashboard/files/search','2014-02-14 10:05:23','2014-02-14 10:05:51',NULL,0)
 ,(12,'','Attributes','','/dashboard/files/attributes','2014-02-14 10:05:23','2014-02-14 10:05:51',NULL,0)
 ,(13,'','File Sets','','/dashboard/files/sets','2014-02-14 10:05:23','2014-02-14 10:05:51',NULL,0)
 ,(14,'','Add File Set','','/dashboard/files/add_set','2014-02-14 10:05:24','2014-02-14 10:05:51',NULL,0)
 ,(15,'','Members','Add and manage the user accounts and groups on your website.','/dashboard/users','2014-02-14 10:05:24','2014-02-14 10:05:52',NULL,0)
 ,(16,'','Search Users','','/dashboard/users/search','2014-02-14 10:05:24','2014-02-14 10:05:52',NULL,0)
 ,(17,'','User Groups','','/dashboard/users/groups','2014-02-14 10:05:24','2014-02-14 10:05:52',NULL,0)
 ,(18,'','Attributes','','/dashboard/users/attributes','2014-02-14 10:05:25','2014-02-14 10:05:52',NULL,0)
 ,(19,'','Add User','','/dashboard/users/add','2014-02-14 10:05:25','2014-02-14 10:05:53',NULL,0)
 ,(20,'','Add Group','','/dashboard/users/add_group','2014-02-14 10:05:25','2014-02-14 10:05:53',NULL,0)
 ,(21,'','Group Sets','','/dashboard/users/group_sets','2014-02-14 10:05:25','2014-02-14 10:05:53',NULL,0)
 ,(22,'','Reports','Get data from forms and logs.','/dashboard/reports','2014-02-14 10:05:26','2014-02-14 10:05:53',NULL,0)
 ,(23,'','Statistics','View your site activity.','/dashboard/reports/statistics','2014-02-14 10:05:26','2014-02-14 10:05:53',NULL,0)
 ,(24,'','Form Results','Get submission data.','/dashboard/reports/forms','2014-02-14 10:05:26','2014-02-14 10:05:54',NULL,0)
 ,(25,'','Surveys','','/dashboard/reports/surveys','2014-02-14 10:05:26','2014-02-14 10:05:54',NULL,0)
 ,(26,'','Logs','','/dashboard/reports/logs','2014-02-14 10:05:27','2014-02-14 10:05:54',NULL,0)
 ,(28,'','Themes','Reskin your site.','/dashboard/pages/themes','2014-02-14 10:05:27','2014-02-14 10:05:54',NULL,0)
 ,(29,'','Add','','/dashboard/pages/themes/add','2014-02-14 10:05:27','2014-02-14 10:05:54',NULL,0)
 ,(30,'','Inspect','','/dashboard/pages/themes/inspect','2014-02-14 10:05:28','2014-02-14 10:05:55',NULL,0)
 ,(31,'','Customize','','/dashboard/pages/themes/customize','2014-02-14 10:05:28','2014-02-14 10:05:55',NULL,0)
 ,(32,'','Page Types','What goes in your site.','/dashboard/pages/types','2014-02-14 10:05:28','2014-02-14 10:05:55',NULL,0)
 ,(34,'','Attributes','','/dashboard/pages/attributes','2014-02-14 10:05:29','2014-02-14 10:05:55',NULL,0)
 ,(35,'','Single Pages','','/dashboard/pages/single','2014-02-14 10:05:29','2014-02-14 10:05:55',NULL,0)
 ,(36,'','Workflow','','/dashboard/workflow','2014-02-14 10:05:29','2014-02-14 10:05:55',NULL,0)
 ,(37,'','Workflow List','','/dashboard/workflow/list','2014-02-14 10:05:29','2014-02-14 10:05:55',NULL,0)
 ,(38,'','Waiting for Me','','/dashboard/workflow/me','2014-02-14 10:05:30','2014-02-14 10:05:56',NULL,0)
 ,(40,'','Stacks','Share content across your site.','/dashboard/blocks/stacks','2014-02-14 10:05:30','2014-02-14 10:05:56',NULL,0)
 ,(41,'','Block & Stack Permissions','Control who can add blocks and stacks on your site.','/dashboard/blocks/permissions','2014-02-14 10:05:31','2014-02-14 10:05:56',NULL,0)
 ,(42,'','Stack List','','/dashboard/blocks/stacks/list','2014-02-14 10:05:31','2014-02-14 10:05:56',NULL,0)
 ,(43,'','Block Types','Manage the installed block types in your site.','/dashboard/blocks/types','2014-02-14 10:05:32','2014-02-14 10:05:56',NULL,0)
 ,(44,'','Extend concrete5','Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.','/dashboard/extend','2014-02-14 10:05:32','2014-02-14 10:05:56',NULL,0)
 ,(45,'','Dashboard','','/dashboard/news','2014-02-14 10:05:32','2014-02-14 10:05:57',NULL,0)
 ,(46,'','Add Functionality','Install add-ons & themes.','/dashboard/extend/install','2014-02-14 10:05:33','2014-02-14 10:05:57',NULL,0)
 ,(47,'','Update Add-Ons','Update your installed packages.','/dashboard/extend/update','2014-02-14 10:05:33','2014-02-14 10:05:57',NULL,0)
 ,(48,'','Connect to the Community','Connect to the concrete5 community.','/dashboard/extend/connect','2014-02-14 10:05:33','2014-02-14 10:05:57',NULL,0)
 ,(49,'','Get More Themes','Download themes from concrete5.org.','/dashboard/extend/themes','2014-02-14 10:05:33','2014-02-14 10:05:57',NULL,0)
 ,(50,'','Get More Add-Ons','Download add-ons from concrete5.org.','/dashboard/extend/add-ons','2014-02-14 10:05:34','2014-02-14 10:05:57',NULL,0)
 ,(51,'','System & Settings','Secure and setup your site.','/dashboard/system','2014-02-14 10:05:34','2014-02-14 10:05:57',NULL,0)
 ,(53,'','Site Name','','/dashboard/system/basics/site_name','2014-02-14 10:05:35','2014-02-14 10:05:57',NULL,0)
 ,(54,'','Bookmark Icons','Bookmark icon and mobile home screen icon setup.','/dashboard/system/basics/icons','2014-02-14 10:05:35','2014-02-14 10:05:57',NULL,0)
 ,(55,'','Rich Text Editor','','/dashboard/system/basics/editor','2014-02-14 10:05:35','2014-02-14 10:05:57',NULL,0)
 ,(56,'','Languages','','/dashboard/system/basics/multilingual','2014-02-14 10:05:35','2014-02-14 10:05:57',NULL,0)
 ,(57,'','Time Zone','','/dashboard/system/basics/timezone','2014-02-14 10:05:36','2014-02-14 10:05:58',NULL,0)
 ,(58,'','Interface Preferences','','/dashboard/system/basics/interface','2014-02-14 10:05:36','2014-02-14 10:05:58',NULL,0)
 ,(60,'','Pretty URLs','','/dashboard/system/seo/urls','2014-02-14 10:05:36','2014-02-14 10:05:58',NULL,0)
 ,(61,'','Bulk SEO Updater','','/dashboard/system/seo/bulk_seo_tool','2014-02-14 10:05:37','2014-02-14 10:05:58',NULL,0)
 ,(62,'','Tracking Codes','','/dashboard/system/seo/tracking_codes','2014-02-14 10:05:37','2014-02-14 10:05:58',NULL,0)
 ,(63,'','Excluded URL Word List','','/dashboard/system/seo/excluded','2014-02-14 10:05:37','2014-02-14 10:05:58',NULL,0)
 ,(64,'','Statistics','','/dashboard/system/seo/statistics','2014-02-14 10:05:37','2014-02-14 10:05:58',NULL,0)
 ,(65,'','Search Index','','/dashboard/system/seo/search_index','2014-02-14 10:05:38','2014-02-14 10:05:58',NULL,0)
 ,(67,'','Cache & Speed Settings','','/dashboard/system/optimization/cache','2014-02-14 10:05:38','2014-02-14 10:05:58',NULL,0)
 ,(68,'','Clear Cache','','/dashboard/system/optimization/clear_cache','2014-02-14 10:05:39','2014-02-14 10:05:58',NULL,0)
 ,(69,'','Automated Jobs','','/dashboard/system/optimization/jobs','2014-02-14 10:05:39','2014-02-14 10:05:59',NULL,0)
 ,(71,'','Site Access','','/dashboard/system/permissions/site','2014-02-14 10:05:39','2014-02-14 10:05:59',NULL,0)
 ,(72,'','File Manager Permissions','','/dashboard/system/permissions/files','2014-02-14 10:05:40','2014-02-14 10:05:59',NULL,0)
 ,(73,'','Allowed File Types','','/dashboard/system/permissions/file_types','2014-02-14 10:05:40','2014-02-14 10:05:59',NULL,0)
 ,(74,'','Task Permissions','','/dashboard/system/permissions/tasks','2014-02-14 10:05:40','2014-02-14 10:05:59',NULL,0)
 ,(77,'','IP Blacklist','','/dashboard/system/permissions/ip_blacklist','2014-02-14 10:05:41','2014-02-14 10:05:59',NULL,0)
 ,(78,'','Captcha Setup','','/dashboard/system/permissions/captcha','2014-02-14 10:05:41','2014-02-14 10:05:59',NULL,0)
 ,(79,'','Spam Control','','/dashboard/system/permissions/antispam','2014-02-14 10:05:42','2014-02-14 10:05:59',NULL,0)
 ,(80,'','Maintenance Mode','','/dashboard/system/permissions/maintenance_mode','2014-02-14 10:05:42','2014-02-14 10:05:59',NULL,0)
 ,(82,'','Login Destination','','/dashboard/system/registration/postlogin','2014-02-14 10:05:43','2014-02-14 10:06:00',NULL,0)
 ,(83,'','Public Profiles','','/dashboard/system/registration/profiles','2014-02-14 10:05:43','2014-02-14 10:06:00',NULL,0)
 ,(84,'','Public Registration','','/dashboard/system/registration/public_registration','2014-02-14 10:05:43','2014-02-14 10:06:00',NULL,0)
 ,(85,'','Email','Control how your site send and processes mail.','/dashboard/system/mail','2014-02-14 10:05:43','2014-02-14 10:06:00',NULL,0)
 ,(86,'','SMTP Method','','/dashboard/system/mail/method','2014-02-14 10:05:44','2014-02-14 10:06:00',NULL,0)
 ,(87,'','Email Importers','','/dashboard/system/mail/importers','2014-02-14 10:05:44','2014-02-14 10:06:00',NULL,0)
 ,(88,'','Attributes','Setup attributes for pages, users, files and more.','/dashboard/system/attributes','2014-02-14 10:05:44','2014-02-14 10:06:00',NULL,0)
 ,(89,'','Sets','Group attributes into sets for easier organization','/dashboard/system/attributes/sets','2014-02-14 10:05:45','2014-02-14 10:06:00',NULL,0)
 ,(90,'','Types','Choose which attribute types are available for different items.','/dashboard/system/attributes/types','2014-02-14 10:05:45','2014-02-14 10:06:00',NULL,0)
 ,(91,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0)
 ,(92,'','Environment Information','','/dashboard/system/environment/info','2014-02-14 10:05:45','2014-02-14 10:06:01',NULL,0)
 ,(93,'','Debug Settings','','/dashboard/system/environment/debug','2014-02-14 10:05:46','2014-02-14 10:06:01',NULL,0)
 ,(94,'','Logging Settings','','/dashboard/system/environment/logging','2014-02-14 10:05:46','2014-02-14 10:06:01',NULL,0)
 ,(95,'','File Storage Locations','','/dashboard/system/environment/file_storage_locations','2014-02-14 10:05:46','2014-02-14 10:06:01',NULL,0)
 ,(96,'','Proxy Server','','/dashboard/system/environment/proxy','2014-02-14 10:05:46','2014-02-14 10:06:01',NULL,0)
 ,(97,'','Backup & Restore','Backup or restore your website.','/dashboard/system/backup_restore','2014-02-14 10:05:47','2014-02-14 10:06:01',NULL,0)
 ,(99,'','Update concrete5','','/dashboard/system/backup_restore/update','2014-02-14 10:05:47','2014-02-14 10:06:01',NULL,0)
 ,(100,'','Database XML','','/dashboard/system/backup_restore/database','2014-02-14 10:05:48','2014-02-14 10:06:01',NULL,0)
 ,(105,'	Welcome to concrete5.\n						It\'s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor\'s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer\'s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer\'s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive\'s Guide \n						  ','Welcome to concrete5','Learn about how to use concrete5, how to develop for concrete5, and get general help.','/dashboard/welcome','2014-02-14 10:05:48','2014-02-14 10:06:03',NULL,0)
 ,(106,'','Customize Dashboard Home','','/dashboard/home','2014-02-14 10:05:49','2014-02-14 10:06:04',NULL,0)
 ,(1,'Agenda\r\nRéunions avec la direction\r\n Jeudi 17 octobre        réunion d’information sur la CCMSI  Vendredi 18 octobre     réunion mensuelle des délégués du personnel  Mercredi 22 octobre      réunion du Comité d’entreprise  Mardi 5  novembre       réunion du comité d’entreprise  Mercredi 6 novembre        négociation annuelle obligatoire sur les salaires (2) \r\nRéunions syndicales\r\n   Derniers communiqués Nouvelles du monde ','Accueil','',NULL,'2014-02-14 10:05:00','2014-02-14 12:22:29',NULL,0)
 ,(129,'','Accords, status...','','/accords-status','2014-02-14 10:30:00','2014-02-17 16:16:27',NULL,0)
 ,(130,'Communiqués  Dans cette rubrique vous pourrez trouver tous les communiqués.  ','Communiqués','','/communiques','2014-02-14 10:31:00','2014-02-17 16:17:47',NULL,0)
 ,(131,' Chantal Lesieur - Bureau 2262 - 01 49 83 2418 \r\n Françoise Lamontagne - Bureau 2260 - 01 49 83 2106 \r\n Mail : cgt@ina.fr \r\n Fax : 01 49 83 31 7  ','Nous contacter','','/nous-contacter','2014-02-14 10:31:00','2014-02-14 11:56:24',NULL,0)
 ,(132,'','Blog','','/blog','2014-02-14 10:32:00','2014-02-14 10:32:13',NULL,0)
 ,(133,'','Accords','','/accords-status/accords','2014-02-14 11:00:00','2014-02-14 11:00:10',NULL,0)
 ,(134,'','Status','','/accords-status/stat','2014-02-14 11:00:00','2014-02-14 11:00:22',NULL,0)
 ,(135,' CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr  ','Pied de page',NULL,'/!stacks/pied-de-page','2014-02-14 11:12:04','2014-02-14 11:34:21',NULL,0)
 ,(140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0)
 ,(137,'Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO. \r\nLe CE, qui n’a qu’un rôle consultatif et pas le pouvoir de bloquer les décisions de la direction, a joué pleinement son rôle notamment en posant des questions sur : \r\n-Est-ce un rapprochement ou une fusion ? \r\n-Quelles sont les implications dans mon travail : « Je dépend de qui ? Qui est mon chef ? A qui poser mes questions professionnelles pour avoir des réponses ? » \r\n-Où en sont les études sur les outils documentaires, techniques, informatiques ?... \r\n-Quelles sont les suites données par la Direction au rapport Isast sur les conséquences de ce chantier (ce point était explicitement à l’ordre du jour du CE) ? \r\n-Quelles sont les suites données aux groupes Emergence organisés par Chrysalis ? \r\n-Comment la direction prend elle en compte les paroles des salarié/es ? \r\n-S’il s’agit de prévenir les risques psycho-sociaux on peut s’étonner que rien ne soit fait depuis les rapports Empreinte Humaine (mars 2013) puis Chrysalis (juillet 2013) ? \r\n-Quant à la Gestion Prévisionnelle des Emplois et des Compétences (GPEC), il s’agit d’un outil au service de quelle politique ? \r\n-Quelles interactions avec les autres directions de l’Ina, tout particulièrement la Direction déléguée aux contenus, elle aussi susceptible d’être réorganisée ? \r\n-Quant à un éventuel rapprochement physique des salariés, où en est-on ? \r\nLe rôle de la DRH aurait été de proposer des préconisations à la suite des conclusions du rapport Isast. Rien n’a été fait. La direction a même refusé la restitution, demandée par le CHS CT, du rapport auprès des salarié/es. \r\nLa première commission de suivi sera l’occasion pour la CGT d’exiger des points très précis et détaillés sur l’avancement de la réorganisation et de se rendre compte de la volonté de la DDcol, comme de la DRH, de jouer cartes sur table et de dire ce qu’elles font ou veulent faire,au-delàdes discours. Leurs réponses devront être à la hauteur des enjeux sous peine de voir s’accentuer encore un peu plus la suspicion, le doute, le mécontentement voire la colère. \r\nDernières minutes : \r\n-le projet pourrait permettre de rendre des surfaces à Bry III. Nous avions cru qu’il s’agissait d’améliorer les conditions de travail des salarié/es de Bry III mais pas de faire des économies sur les espaces, en entassant les salarié/es. Où ? A Bry 1 ? \r\n-la nomination de Michel Raynal par intérim à la tête du département documentation, alors qu’il \r\n«remplace » déjà Jacqueline Blanc à la tête des ressources humaines de la DDCol. Est-ce une illustration de la politique de GPEC ? \r\nLa CGT associera les salarié/es de la Direction déléguée aux collections à la préparation des réunions de la commission de suivi et les tiendra informé/es.  ','Direction des collections et maintenant ??','Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO.','/communiques/direction-des-collections-et-maintenant','2014-02-14 12:12:00','2014-02-14 12:17:07',NULL,0);

DROP TABLE IF EXISTS PageStatistics;

CREATE TABLE IF NOT EXISTS `PageStatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=614 DEFAULT CHARSET=utf8;

INSERT INTO PageStatistics VALUES(1,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(2,105,'2014-02-14','0000-00-00 00:00:00',1)
 ,(3,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(4,28,'2014-02-14','0000-00-00 00:00:00',1)
 ,(5,28,'2014-02-14','0000-00-00 00:00:00',1)
 ,(6,30,'2014-02-14','0000-00-00 00:00:00',1)
 ,(7,30,'2014-02-14','0000-00-00 00:00:00',1)
 ,(8,28,'2014-02-14','0000-00-00 00:00:00',1)
 ,(9,28,'2014-02-14','0000-00-00 00:00:00',1)
 ,(10,28,'2014-02-14','0000-00-00 00:00:00',1)
 ,(11,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(12,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(13,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(14,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(15,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(16,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(17,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(18,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(19,110,'2014-02-14','0000-00-00 00:00:00',1)
 ,(20,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(21,110,'2014-02-14','0000-00-00 00:00:00',0)
 ,(22,110,'2014-02-14','0000-00-00 00:00:00',0)
 ,(23,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(24,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(25,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(26,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(27,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(28,8,'2014-02-14','0000-00-00 00:00:00',1)
 ,(29,8,'2014-02-14','0000-00-00 00:00:00',1)
 ,(30,8,'2014-02-14','0000-00-00 00:00:00',1)
 ,(31,8,'2014-02-14','0000-00-00 00:00:00',1)
 ,(32,8,'2014-02-14','0000-00-00 00:00:00',1)
 ,(33,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(34,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(35,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(36,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(37,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(38,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(39,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(40,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(41,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(42,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(43,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(44,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(45,51,'2014-02-14','0000-00-00 00:00:00',1)
 ,(46,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(47,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(48,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(49,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(50,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(51,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(52,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(53,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(54,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(55,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(56,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(57,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(58,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(59,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(60,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(61,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(62,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(63,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(64,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(65,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(66,7,'2014-02-14','0000-00-00 00:00:00',1)
 ,(67,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(68,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(69,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(70,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(71,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(72,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(73,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(74,129,'2014-02-14','0000-00-00 00:00:00',0)
 ,(75,130,'2014-02-14','0000-00-00 00:00:00',0)
 ,(76,131,'2014-02-14','0000-00-00 00:00:00',0)
 ,(77,129,'2014-02-14','0000-00-00 00:00:00',0)
 ,(78,132,'2014-02-14','0000-00-00 00:00:00',0)
 ,(79,129,'2014-02-14','0000-00-00 00:00:00',0)
 ,(80,129,'2014-02-14','0000-00-00 00:00:00',0)
 ,(81,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(82,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(83,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(84,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(85,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(86,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(87,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(88,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(89,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(90,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(91,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(92,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(93,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(94,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(95,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(96,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(97,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(98,6,'2014-02-14','0000-00-00 00:00:00',1)
 ,(99,7,'2014-02-14','0000-00-00 00:00:00',1)
 ,(100,6,'2014-02-14','0000-00-00 00:00:00',1)
 ,(101,7,'2014-02-14','0000-00-00 00:00:00',1)
 ,(102,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(103,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(104,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(105,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(106,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(107,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(108,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(109,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(110,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(111,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(112,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(113,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(114,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(115,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(116,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(117,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(118,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(119,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(120,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(121,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(122,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(123,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(124,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(125,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(126,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(127,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(128,1,'2014-02-14','0000-00-00 00:00:00',0)
 ,(129,110,'2014-02-14','0000-00-00 00:00:00',0)
 ,(130,110,'2014-02-14','0000-00-00 00:00:00',0)
 ,(131,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(132,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(133,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(134,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(135,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(136,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(137,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(138,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(139,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(140,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(141,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(142,51,'2014-02-14','0000-00-00 00:00:00',1)
 ,(143,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(144,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(145,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(146,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(147,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(148,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(149,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(150,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(151,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(152,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(153,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(154,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(155,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(156,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(157,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(158,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(159,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(160,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(161,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(162,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(163,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(164,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(165,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(166,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(167,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(168,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(169,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(170,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(171,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(172,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(173,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(174,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(175,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(176,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(177,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(178,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(179,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(180,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(181,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(182,28,'2014-02-14','0000-00-00 00:00:00',1)
 ,(183,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(184,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(185,33,'2014-02-14','0000-00-00 00:00:00',1)
 ,(186,33,'2014-02-14','0000-00-00 00:00:00',1)
 ,(187,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(188,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(189,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(190,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(191,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(192,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(193,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(194,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(195,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(196,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(197,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(198,51,'2014-02-14','0000-00-00 00:00:00',1)
 ,(199,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(200,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(201,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(202,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(203,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(204,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(205,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(206,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(207,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(208,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(209,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(210,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(211,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(212,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(213,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(214,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(215,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(216,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(217,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(218,51,'2014-02-14','0000-00-00 00:00:00',1)
 ,(219,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(220,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(221,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(222,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(223,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(224,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(225,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(226,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(227,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(228,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(229,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(230,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(231,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(232,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(233,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(234,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(235,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(236,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(237,35,'2014-02-14','0000-00-00 00:00:00',1)
 ,(238,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(239,35,'2014-02-14','0000-00-00 00:00:00',1)
 ,(240,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(241,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(242,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(243,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(244,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(245,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(246,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(247,8,'2014-02-14','0000-00-00 00:00:00',1)
 ,(248,8,'2014-02-14','0000-00-00 00:00:00',1)
 ,(249,8,'2014-02-14','0000-00-00 00:00:00',1)
 ,(250,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(251,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(252,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(253,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(254,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(255,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(256,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(257,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(258,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(259,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(260,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(261,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(262,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(263,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(264,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(265,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(266,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(267,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(268,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(269,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(270,137,'2014-02-14','0000-00-00 00:00:00',1)
 ,(271,137,'2014-02-14','0000-00-00 00:00:00',1)
 ,(272,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(273,137,'2014-02-14','0000-00-00 00:00:00',1)
 ,(274,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(275,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(276,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(277,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(278,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(279,137,'2014-02-14','0000-00-00 00:00:00',1)
 ,(280,137,'2014-02-14','0000-00-00 00:00:00',1)
 ,(281,137,'2014-02-14','0000-00-00 00:00:00',1)
 ,(282,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(283,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(284,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(285,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(286,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(287,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(288,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(289,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(290,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(291,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(292,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(293,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(294,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(295,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(296,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(297,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(298,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(299,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(300,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(301,7,'2014-02-14','0000-00-00 00:00:00',1)
 ,(302,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(303,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(304,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(305,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(306,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(307,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(308,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(309,137,'2014-02-14','0000-00-00 00:00:00',1)
 ,(310,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(311,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(312,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(313,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(314,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(315,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(316,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(317,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(318,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(319,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(320,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(321,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(322,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(323,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(324,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(325,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(326,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(327,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(328,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(329,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(330,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(331,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(332,122,'2014-02-14','0000-00-00 00:00:00',1)
 ,(333,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(334,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(335,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(336,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(337,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(338,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(339,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(340,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(341,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(342,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(343,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(344,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(345,101,'2014-02-14','0000-00-00 00:00:00',1)
 ,(346,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(347,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(348,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(349,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(350,33,'2014-02-14','0000-00-00 00:00:00',1)
 ,(351,33,'2014-02-14','0000-00-00 00:00:00',1)
 ,(352,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(353,33,'2014-02-14','0000-00-00 00:00:00',1)
 ,(354,33,'2014-02-14','0000-00-00 00:00:00',1)
 ,(355,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(356,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(357,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(358,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(359,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(360,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(361,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(362,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(363,51,'2014-02-14','0000-00-00 00:00:00',1)
 ,(364,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(365,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(366,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(367,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(368,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(369,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(370,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(371,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(372,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(373,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(374,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(375,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(376,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(377,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(378,132,'2014-02-14','0000-00-00 00:00:00',1)
 ,(379,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(380,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(381,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(382,137,'2014-02-14','0000-00-00 00:00:00',1)
 ,(383,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(384,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(385,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(386,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(387,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(388,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(389,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(390,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(391,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(392,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(393,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(394,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(395,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(396,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(397,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(398,32,'2014-02-14','0000-00-00 00:00:00',1)
 ,(399,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(400,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(401,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(402,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(403,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(404,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(405,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(406,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(407,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(408,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(409,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(410,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(411,44,'2014-02-14','0000-00-00 00:00:00',1)
 ,(412,46,'2014-02-14','0000-00-00 00:00:00',1)
 ,(413,48,'2014-02-14','0000-00-00 00:00:00',1)
 ,(414,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(415,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(416,44,'2014-02-14','0000-00-00 00:00:00',1)
 ,(417,46,'2014-02-14','0000-00-00 00:00:00',1)
 ,(418,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(419,46,'2014-02-14','0000-00-00 00:00:00',1)
 ,(420,46,'2014-02-14','0000-00-00 00:00:00',1)
 ,(421,46,'2014-02-14','0000-00-00 00:00:00',1)
 ,(422,46,'2014-02-14','0000-00-00 00:00:00',1)
 ,(423,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(424,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(425,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(426,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(427,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(428,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(429,34,'2014-02-14','0000-00-00 00:00:00',1)
 ,(430,34,'2014-02-14','0000-00-00 00:00:00',1)
 ,(431,34,'2014-02-14','0000-00-00 00:00:00',1)
 ,(432,34,'2014-02-14','0000-00-00 00:00:00',1)
 ,(433,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(434,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(435,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(436,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(437,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(438,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(439,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(440,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(441,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(442,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(443,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(444,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(445,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(446,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(447,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(448,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(449,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(450,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(451,51,'2014-02-14','0000-00-00 00:00:00',1)
 ,(452,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(453,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(454,68,'2014-02-14','0000-00-00 00:00:00',1)
 ,(455,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(456,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(457,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(458,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(459,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(460,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(461,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(462,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(463,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(464,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(465,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(466,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(467,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(468,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(469,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(470,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(471,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(472,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(473,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(474,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(475,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(476,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(477,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(478,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(479,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(480,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(481,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(482,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(483,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(484,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(485,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(486,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(487,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(488,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(489,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(490,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(491,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(492,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(493,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(494,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(495,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(496,35,'2014-02-14','0000-00-00 00:00:00',1)
 ,(497,35,'2014-02-14','0000-00-00 00:00:00',1)
 ,(498,35,'2014-02-14','0000-00-00 00:00:00',1)
 ,(499,2,'2014-02-14','0000-00-00 00:00:00',1)
 ,(500,7,'2014-02-14','0000-00-00 00:00:00',1)
 ,(501,6,'2014-02-14','0000-00-00 00:00:00',1)
 ,(502,7,'2014-02-14','0000-00-00 00:00:00',1)
 ,(503,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(504,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(505,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(506,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(507,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(508,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(509,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(510,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(511,7,'2014-02-14','0000-00-00 00:00:00',1)
 ,(512,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(513,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(514,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(515,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(516,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(517,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(518,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(519,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(520,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(521,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(522,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(523,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(524,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(525,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(526,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(527,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(528,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(529,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(530,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(531,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(532,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(533,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(534,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(535,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(536,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(537,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(538,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(539,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(540,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(541,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(542,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(543,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(544,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(545,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(546,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(547,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(548,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(549,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(550,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(551,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(552,137,'2014-02-14','0000-00-00 00:00:00',1)
 ,(553,140,'2014-02-14','0000-00-00 00:00:00',1)
 ,(554,129,'2014-02-14','0000-00-00 00:00:00',1)
 ,(555,1,'2014-02-14','0000-00-00 00:00:00',1)
 ,(556,132,'2014-02-14','0000-00-00 00:00:00',1)
 ,(557,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(558,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(559,131,'2014-02-14','0000-00-00 00:00:00',1)
 ,(560,130,'2014-02-14','0000-00-00 00:00:00',1)
 ,(561,1,'2014-02-17','0000-00-00 00:00:00',0)
 ,(562,129,'2014-02-17','0000-00-00 00:00:00',0)
 ,(563,130,'2014-02-17','0000-00-00 00:00:00',0)
 ,(564,131,'2014-02-17','0000-00-00 00:00:00',0)
 ,(565,132,'2014-02-17','0000-00-00 00:00:00',0)
 ,(566,129,'2014-02-17','0000-00-00 00:00:00',0)
 ,(567,1,'2014-02-17','0000-00-00 00:00:00',0)
 ,(568,140,'2014-02-17','0000-00-00 00:00:00',0)
 ,(569,140,'2014-02-17','0000-00-00 00:00:00',0)
 ,(570,140,'2014-02-17','0000-00-00 00:00:00',0)
 ,(571,129,'2014-02-17','0000-00-00 00:00:00',0)
 ,(572,1,'2014-02-17','0000-00-00 00:00:00',0)
 ,(573,1,'2014-02-17','0000-00-00 00:00:00',0)
 ,(574,129,'2014-02-17','0000-00-00 00:00:00',0)
 ,(575,110,'2014-02-17','0000-00-00 00:00:00',0)
 ,(576,110,'2014-02-17','0000-00-00 00:00:00',0)
 ,(577,1,'2014-02-17','0000-00-00 00:00:00',1)
 ,(578,106,'2014-02-17','0000-00-00 00:00:00',1)
 ,(579,2,'2014-02-17','0000-00-00 00:00:00',1)
 ,(580,51,'2014-02-17','0000-00-00 00:00:00',1)
 ,(581,56,'2014-02-17','0000-00-00 00:00:00',1)
 ,(582,56,'2014-02-17','0000-00-00 00:00:00',1)
 ,(583,56,'2014-02-17','0000-00-00 00:00:00',1)
 ,(584,2,'2014-02-17','0000-00-00 00:00:00',1)
 ,(585,1,'2014-02-17','0000-00-00 00:00:00',1)
 ,(586,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(587,129,'2014-02-17','0000-00-00 00:00:00',1)
 ,(588,129,'2014-02-17','0000-00-00 00:00:00',1)
 ,(589,132,'2014-02-17','0000-00-00 00:00:00',1)
 ,(590,1,'2014-02-17','0000-00-00 00:00:00',1)
 ,(591,131,'2014-02-17','0000-00-00 00:00:00',1)
 ,(592,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(593,129,'2014-02-17','0000-00-00 00:00:00',1)
 ,(594,129,'2014-02-17','0000-00-00 00:00:00',1)
 ,(595,1,'2014-02-17','0000-00-00 00:00:00',1)
 ,(596,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(597,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(598,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(599,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(600,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(601,137,'2014-02-17','0000-00-00 00:00:00',1)
 ,(602,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(603,131,'2014-02-17','0000-00-00 00:00:00',1)
 ,(604,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(605,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(606,131,'2014-02-17','0000-00-00 00:00:00',1)
 ,(607,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(608,130,'2014-02-17','0000-00-00 00:00:00',1)
 ,(609,1,'2014-02-17','0000-00-00 00:00:00',1)
 ,(610,2,'2014-02-17','0000-00-00 00:00:00',1)
 ,(611,51,'2014-02-17','0000-00-00 00:00:00',1)
 ,(612,98,'2014-02-17','0000-00-00 00:00:00',1)
 ,(613,98,'2014-02-17','0000-00-00 00:00:00',1);

DROP TABLE IF EXISTS PageThemeStyles;

CREATE TABLE IF NOT EXISTS `PageThemeStyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PageThemes;

CREATE TABLE IF NOT EXISTS `PageThemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO PageThemes VALUES(1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0)
 ,(2,'greensalad','Green Salad Theme','This is concrete5\'s Green Salad site theme.',0)
 ,(3,'dark_chocolate','Dark Chocolate','Dark Chocolate is concrete5\'s default theme in black.',0)
 ,(4,'greek_yogurt','Greek Yogurt','An elegant theme for concrete5.',0)
 ,(5,'cgt','Thème CGT','Épuré, rouge sur blanc',0);

DROP TABLE IF EXISTS PageTypeAttributes;

CREATE TABLE IF NOT EXISTS `PageTypeAttributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PageTypeAttributes VALUES(5,1)
 ,(5,2)
 ,(5,3)
 ,(7,1)
 ,(7,2)
 ,(7,3)
 ,(8,1)
 ,(8,2)
 ,(8,3)
 ,(9,1)
 ,(9,2)
 ,(9,3);

DROP TABLE IF EXISTS PageTypes;

CREATE TABLE IF NOT EXISTS `PageTypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO PageTypes VALUES(1,'core_stack','main.png','Stack',1,0)
 ,(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0)
 ,(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0)
 ,(5,'page_type_full','main.png','Une seule colonne centrale',0,0)
 ,(7,'page_type_3_columns','template3.png','Trois colonnes',0,0)
 ,(8,'page_type_left_column','right_sidebar.png','Deux colonnes',0,0)
 ,(9,'page_type_right_column','template1.png','Deux colonnes',0,0);

DROP TABLE IF EXISTS PageWorkflowProgress;

CREATE TABLE IF NOT EXISTS `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Pages;

CREATE TABLE IF NOT EXISTS `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Pages VALUES(1,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,16,0,0,0,-1,'0',0,0)
 ,(2,0,1,0,NULL,NULL,NULL,1,2,'OVERRIDE','/dashboard/view.php',0,NULL,0,1,13,0,0,0,-1,'0',0,1)
 ,(3,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/view.php',0,NULL,0,1,2,0,2,0,-1,'0',0,1)
 ,(4,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/write.php',0,NULL,0,1,0,0,3,0,-1,'0',0,1)
 ,(5,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/composer/drafts.php',0,NULL,0,1,0,1,3,0,-1,'0',0,1)
 ,(6,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/view.php',0,NULL,0,1,3,1,2,0,-1,'0',0,1)
 ,(7,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/full.php',0,NULL,0,1,0,0,6,0,-1,'0',0,1)
 ,(8,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/explore.php',0,NULL,0,1,0,1,6,0,-1,'0',0,1)
 ,(9,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/sitemap/search.php',0,NULL,0,1,0,2,6,0,-1,'0',0,1)
 ,(10,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/view.php',0,NULL,0,1,4,2,2,0,-1,'0',0,1)
 ,(11,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/search.php',0,NULL,0,1,0,0,10,0,-1,'0',0,1)
 ,(12,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/attributes.php',0,NULL,0,1,0,1,10,0,-1,'0',0,1)
 ,(13,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/sets.php',0,NULL,0,1,0,2,10,0,-1,'0',0,1)
 ,(14,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/files/add_set.php',0,NULL,0,1,0,3,10,0,-1,'0',0,1)
 ,(15,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/view.php',0,NULL,0,1,6,3,2,0,-1,'0',0,1)
 ,(16,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/search.php',0,NULL,0,1,0,0,15,0,-1,'0',0,1)
 ,(17,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/groups.php',0,NULL,0,1,0,1,15,0,-1,'0',0,1)
 ,(18,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/attributes.php',0,NULL,0,1,0,2,15,0,-1,'0',0,1)
 ,(19,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add.php',0,NULL,0,1,0,3,15,0,-1,'0',0,1)
 ,(20,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/add_group.php',0,NULL,0,1,0,4,15,0,-1,'0',0,1)
 ,(21,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/users/group_sets.php',0,NULL,0,1,0,5,15,0,-1,'0',0,1)
 ,(22,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports.php',0,NULL,0,1,4,4,2,0,-1,'0',0,1)
 ,(23,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/statistics.php',0,NULL,0,1,0,0,22,0,-1,'0',0,1)
 ,(24,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/forms.php',0,NULL,0,1,0,1,22,0,-1,'0',0,1)
 ,(25,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/surveys.php',0,NULL,0,1,0,2,22,0,-1,'0',0,1)
 ,(26,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/reports/logs.php',0,NULL,0,1,0,3,22,0,-1,'0',0,1)
 ,(27,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/view.php',0,NULL,0,1,4,5,2,0,-1,'0',0,1)
 ,(28,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/view.php',0,NULL,0,1,3,0,27,0,-1,'0',0,1)
 ,(29,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/add.php',0,NULL,0,1,0,0,28,0,-1,'0',0,1)
 ,(30,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/inspect.php',0,NULL,0,1,0,1,28,0,-1,'0',0,1)
 ,(31,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/themes/customize.php',0,NULL,0,1,0,2,28,0,-1,'0',0,1)
 ,(32,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/view.php',0,NULL,0,1,2,1,27,0,-1,'0',0,1)
 ,(33,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/add.php',0,NULL,0,1,0,0,32,0,-1,'0',0,1)
 ,(34,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/attributes.php',0,NULL,0,1,0,2,27,0,-1,'0',0,1)
 ,(35,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/single.php',0,NULL,0,1,0,3,27,0,-1,'0',0,1)
 ,(36,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/view.php',0,NULL,0,1,2,6,2,0,-1,'0',0,1)
 ,(37,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/list.php',0,NULL,0,1,0,0,36,0,-1,'0',0,1)
 ,(38,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/workflow/me.php',0,NULL,0,1,0,1,36,0,-1,'0',0,1)
 ,(39,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/view.php',0,NULL,0,1,3,7,2,0,-1,'0',0,1)
 ,(40,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/stacks/view.php',0,NULL,0,1,1,0,39,0,-1,'0',0,1)
 ,(41,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/permissions.php',0,NULL,0,1,0,1,39,0,-1,'0',0,1)
 ,(42,0,1,0,NULL,NULL,NULL,1,42,'OVERRIDE','/dashboard/blocks/stacks/list/view.php',0,NULL,0,1,0,0,40,0,-1,'0',0,1)
 ,(43,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/blocks/types/view.php',0,NULL,0,1,0,2,39,0,-1,'0',0,1)
 ,(44,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/view.php',0,NULL,0,1,5,8,2,0,-1,'0',0,1)
 ,(45,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/news.php',0,NULL,0,1,0,9,2,0,-1,'0',0,1)
 ,(46,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/install.php',0,NULL,0,1,0,0,44,0,-1,'0',0,1)
 ,(47,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/update.php',0,NULL,0,1,0,1,44,0,-1,'0',0,1)
 ,(48,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/connect.php',0,NULL,0,1,0,2,44,0,-1,'0',0,1)
 ,(49,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/themes.php',0,NULL,0,1,0,3,44,0,-1,'0',0,1)
 ,(50,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/extend/add-ons.php',0,NULL,0,1,0,4,44,0,-1,'0',0,1)
 ,(51,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/view.php',0,NULL,0,1,9,10,2,0,-1,'0',0,1)
 ,(52,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/view.php',0,NULL,0,1,6,0,51,0,-1,'0',0,1)
 ,(53,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/site_name.php',0,NULL,0,1,0,0,52,0,-1,'0',0,1)
 ,(54,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/icons.php',0,NULL,0,1,0,1,52,0,-1,'0',0,1)
 ,(55,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/editor.php',0,NULL,0,1,0,2,52,0,-1,'0',0,1)
 ,(56,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/multilingual/view.php',0,NULL,0,1,0,3,52,0,-1,'0',0,1)
 ,(57,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/timezone.php',0,NULL,0,1,0,4,52,0,-1,'0',0,1)
 ,(58,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/basics/interface.php',0,NULL,0,1,0,5,52,0,-1,'0',0,1)
 ,(59,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/view.php',0,NULL,0,1,6,1,51,0,-1,'0',0,1)
 ,(60,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/urls.php',0,NULL,0,1,0,0,59,0,-1,'0',0,1)
 ,(61,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/bulk_seo_tool.php',0,NULL,0,1,0,1,59,0,-1,'0',0,1)
 ,(62,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/tracking_codes.php',0,NULL,0,1,0,2,59,0,-1,'0',0,1)
 ,(63,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/excluded.php',0,NULL,0,1,0,3,59,0,-1,'0',0,1)
 ,(64,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/statistics.php',0,NULL,0,1,0,4,59,0,-1,'0',0,1)
 ,(65,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/seo/search_index.php',0,NULL,0,1,0,5,59,0,-1,'0',0,1)
 ,(66,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/view.php',0,NULL,0,1,3,2,51,0,-1,'0',0,1)
 ,(67,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/cache.php',0,NULL,0,1,0,0,66,0,-1,'0',0,1)
 ,(68,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/clear_cache.php',0,NULL,0,1,0,1,66,0,-1,'0',0,1)
 ,(69,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/optimization/jobs.php',0,NULL,0,1,0,2,66,0,-1,'0',0,1)
 ,(70,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/view.php',0,NULL,0,1,10,3,51,0,-1,'0',0,1)
 ,(71,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/site.php',0,NULL,0,1,0,0,70,0,-1,'0',0,1)
 ,(72,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/files.php',0,NULL,0,1,0,1,70,0,-1,'0',0,1)
 ,(73,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/file_types.php',0,NULL,0,1,0,2,70,0,-1,'0',0,1)
 ,(74,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/tasks.php',0,NULL,0,1,0,3,70,0,-1,'0',0,1)
 ,(75,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/users.php',0,NULL,0,1,0,4,70,0,-1,'0',0,1)
 ,(76,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/advanced.php',0,NULL,0,1,0,5,70,0,-1,'0',0,1)
 ,(77,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/ip_blacklist.php',0,NULL,0,1,0,6,70,0,-1,'0',0,1)
 ,(78,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/captcha.php',0,NULL,0,1,0,7,70,0,-1,'0',0,1)
 ,(79,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/antispam.php',0,NULL,0,1,0,8,70,0,-1,'0',0,1)
 ,(80,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/permissions/maintenance_mode.php',0,NULL,0,1,0,9,70,0,-1,'0',0,1)
 ,(81,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/view.php',0,NULL,0,1,3,4,51,0,-1,'0',0,1)
 ,(82,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/postlogin.php',0,NULL,0,1,0,0,81,0,-1,'0',0,1)
 ,(83,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/profiles.php',0,NULL,0,1,0,1,81,0,-1,'0',0,1)
 ,(84,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/registration/public_registration.php',0,NULL,0,1,0,2,81,0,-1,'0',0,1)
 ,(85,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/view.php',0,NULL,0,1,2,5,51,0,-1,'0',0,1)
 ,(86,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/method.php',0,NULL,0,1,0,0,85,0,-1,'0',0,1)
 ,(87,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/mail/importers.php',0,NULL,0,1,0,1,85,0,-1,'0',0,1)
 ,(88,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/view.php',0,NULL,0,1,2,6,51,0,-1,'0',0,1)
 ,(89,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/sets.php',0,NULL,0,1,0,0,88,0,-1,'0',0,1)
 ,(90,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/attributes/types.php',0,NULL,0,1,0,1,88,0,-1,'0',0,1)
 ,(91,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/view.php',0,NULL,0,1,5,7,51,0,-1,'0',0,1)
 ,(92,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/info.php',0,NULL,0,1,0,0,91,0,-1,'0',0,1)
 ,(93,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/debug.php',0,NULL,0,1,0,1,91,0,-1,'0',0,1)
 ,(94,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/logging.php',0,NULL,0,1,0,2,91,0,-1,'0',0,1)
 ,(95,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/file_storage_locations.php',0,NULL,0,1,0,3,91,0,-1,'0',0,1)
 ,(96,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/environment/proxy.php',0,NULL,0,1,0,4,91,0,-1,'0',0,1)
 ,(97,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/view.php',0,NULL,0,1,3,8,51,0,-1,'0',0,1)
 ,(98,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/backup.php',0,NULL,0,1,0,0,97,0,-1,'0',0,1)
 ,(99,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/update.php',0,NULL,0,1,0,1,97,0,-1,'0',0,1)
 ,(100,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/system/backup_restore/database.php',0,NULL,0,1,0,2,97,0,-1,'0',0,1)
 ,(101,0,1,0,NULL,NULL,NULL,1,2,'PARENT','/dashboard/pages/types/composer.php',0,NULL,0,1,0,1,32,0,-1,'0',0,1)
 ,(102,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(103,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(104,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(105,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,11,2,0,-1,'0',0,1)
 ,(106,0,1,0,NULL,NULL,NULL,1,2,'PARENT',NULL,0,NULL,0,1,0,12,2,0,-1,'0',0,1)
 ,(107,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!drafts/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(108,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(109,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!stacks/view.php',0,NULL,0,1,6,0,0,0,-1,'0',0,1)
 ,(110,0,1,0,NULL,NULL,NULL,1,110,'OVERRIDE','/login.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(111,0,1,0,NULL,NULL,NULL,1,111,'OVERRIDE','/register.php',0,NULL,0,1,0,0,0,0,-1,'0',0,1)
 ,(112,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/view.php',0,NULL,0,1,4,0,1,0,-1,'0',0,1)
 ,(113,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/edit.php',0,NULL,0,1,0,0,112,0,-1,'0',0,1)
 ,(114,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/avatar.php',0,NULL,0,1,0,1,112,0,-1,'0',0,1)
 ,(115,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/messages.php',0,NULL,0,1,0,2,112,0,-1,'0',0,1)
 ,(116,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/profile/friends.php',0,NULL,0,1,0,3,112,0,-1,'0',0,1)
 ,(117,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_not_found.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1)
 ,(118,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/page_forbidden.php',0,NULL,0,1,0,1,0,0,-1,'0',0,1)
 ,(119,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/download_file.php',0,NULL,0,1,0,1,1,0,-1,'0',0,1)
 ,(120,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/members.php',0,NULL,0,1,0,2,1,0,-1,'0',0,1)
 ,(121,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(122,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(124,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,109,0,-1,'0',0,1)
 ,(125,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,109,0,-1,'0',0,1)
 ,(126,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,109,0,-1,'0',0,1)
 ,(127,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,109,0,-1,'0',0,1)
 ,(128,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,109,0,-1,'0',0,1)
 ,(129,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,3,1,0,-1,'0',0,0)
 ,(130,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,1,4,1,0,-1,'0',0,0)
 ,(131,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,1,0,-1,'0',0,0)
 ,(132,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,1,0,-1,'0',0,0)
 ,(133,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,129,0,-1,'0',0,0)
 ,(134,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,129,0,-1,'0',0,0)
 ,(135,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,109,0,-1,'0',0,1)
 ,(136,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(137,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,130,0,-1,'0',0,0)
 ,(138,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(139,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(140,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,7,1,0,-1,'0',0,0);

DROP TABLE IF EXISTS PermissionAccess;

CREATE TABLE IF NOT EXISTS `PermissionAccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccess VALUES(1,1)
 ,(2,1)
 ,(3,1)
 ,(4,1)
 ,(5,1)
 ,(6,1)
 ,(7,1)
 ,(8,1)
 ,(9,1)
 ,(10,1)
 ,(11,1)
 ,(12,1)
 ,(13,1)
 ,(14,1)
 ,(15,1)
 ,(16,1)
 ,(17,1)
 ,(18,1)
 ,(19,1)
 ,(20,1)
 ,(21,1)
 ,(22,1)
 ,(23,1)
 ,(24,1)
 ,(25,1)
 ,(26,1)
 ,(27,1)
 ,(28,1)
 ,(29,1)
 ,(30,1)
 ,(31,1)
 ,(32,1)
 ,(33,1)
 ,(34,1)
 ,(35,1)
 ,(36,1)
 ,(37,1)
 ,(38,1)
 ,(39,1)
 ,(40,1)
 ,(41,1)
 ,(42,1)
 ,(43,1)
 ,(44,1)
 ,(45,1)
 ,(46,1)
 ,(47,1)
 ,(48,1)
 ,(49,1)
 ,(50,1)
 ,(51,1)
 ,(52,1)
 ,(53,1)
 ,(54,1)
 ,(55,1)
 ,(56,1)
 ,(57,1)
 ,(58,1)
 ,(59,1)
 ,(60,1)
 ,(61,1)
 ,(62,1)
 ,(63,1)
 ,(64,1)
 ,(65,1)
 ,(66,1)
 ,(67,1)
 ,(68,1);

DROP TABLE IF EXISTS PermissionAccessEntities;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntities VALUES(1,1)
 ,(2,1)
 ,(3,1)
 ,(4,5);

DROP TABLE IF EXISTS PermissionAccessEntityGroupSets;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionAccessEntityGroups;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntityGroups VALUES(1,1,3)
 ,(2,2,1)
 ,(3,3,2);

DROP TABLE IF EXISTS PermissionAccessEntityTypeCategories;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntityTypeCategories VALUES(1,1)
 ,(1,5)
 ,(1,6)
 ,(1,7)
 ,(1,8)
 ,(1,9)
 ,(1,10)
 ,(1,11)
 ,(1,12)
 ,(1,13)
 ,(1,14)
 ,(2,1)
 ,(2,5)
 ,(2,6)
 ,(2,7)
 ,(2,8)
 ,(2,9)
 ,(2,10)
 ,(2,11)
 ,(2,12)
 ,(2,13)
 ,(2,14)
 ,(3,1)
 ,(3,5)
 ,(3,6)
 ,(3,7)
 ,(3,8)
 ,(3,9)
 ,(3,10)
 ,(3,11)
 ,(3,12)
 ,(3,13)
 ,(3,14)
 ,(4,1)
 ,(4,5)
 ,(4,6)
 ,(4,7)
 ,(4,8)
 ,(4,9)
 ,(4,10)
 ,(4,11)
 ,(4,12)
 ,(4,13)
 ,(4,14)
 ,(5,1)
 ,(6,6)
 ,(6,7);

DROP TABLE IF EXISTS PermissionAccessEntityTypes;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessEntityTypes VALUES(1,'group','Group',0)
 ,(2,'user','User',0)
 ,(3,'group_set','Group Set',0)
 ,(4,'group_combination','Group Combination',0)
 ,(5,'page_owner','Page Owner',0)
 ,(6,'file_uploader','File Uploader',0);

DROP TABLE IF EXISTS PermissionAccessEntityUsers;

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionAccessList;

CREATE TABLE IF NOT EXISTS `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PermissionAccessList VALUES(1,1,0,10)
 ,(2,1,0,10)
 ,(3,1,0,10)
 ,(4,1,0,10)
 ,(5,1,0,10)
 ,(6,1,0,10)
 ,(7,1,0,10)
 ,(8,1,0,10)
 ,(9,1,0,10)
 ,(10,1,0,10)
 ,(11,1,0,10)
 ,(12,1,0,10)
 ,(13,1,0,10)
 ,(14,1,0,10)
 ,(15,1,0,10)
 ,(16,1,0,10)
 ,(17,1,0,10)
 ,(18,1,0,10)
 ,(19,1,0,10)
 ,(20,1,0,10)
 ,(21,1,0,10)
 ,(22,1,0,10)
 ,(23,1,0,10)
 ,(24,1,0,10)
 ,(25,1,0,10)
 ,(26,1,0,10)
 ,(27,1,0,10)
 ,(28,1,0,10)
 ,(29,1,0,10)
 ,(30,1,0,10)
 ,(31,1,0,10)
 ,(32,1,0,10)
 ,(33,1,0,10)
 ,(34,1,0,10)
 ,(35,2,0,10)
 ,(36,2,0,10)
 ,(37,2,0,10)
 ,(38,2,0,10)
 ,(39,2,0,10)
 ,(39,3,0,10)
 ,(40,2,0,10)
 ,(40,3,0,10)
 ,(41,2,0,10)
 ,(42,2,0,10)
 ,(43,2,0,10)
 ,(44,1,0,10)
 ,(44,2,0,10)
 ,(45,1,0,10)
 ,(46,1,0,10)
 ,(47,1,0,10)
 ,(48,1,0,10)
 ,(49,1,0,10)
 ,(50,1,0,10)
 ,(51,1,0,10)
 ,(52,1,0,10)
 ,(53,2,0,10)
 ,(54,1,0,10)
 ,(55,1,0,10)
 ,(56,1,0,10)
 ,(57,1,0,10)
 ,(58,1,0,10)
 ,(59,1,0,10)
 ,(60,1,0,10)
 ,(61,1,0,10)
 ,(62,1,0,10)
 ,(63,1,0,10)
 ,(64,1,0,10)
 ,(65,1,0,10)
 ,(66,1,0,10)
 ,(67,1,0,10)
 ,(68,1,0,10);

DROP TABLE IF EXISTS PermissionAccessWorkflows;

CREATE TABLE IF NOT EXISTS `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionAssignments;

CREATE TABLE IF NOT EXISTS `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO PermissionAssignments VALUES(1,17)
 ,(2,18)
 ,(3,55)
 ,(4,56)
 ,(5,57)
 ,(6,58)
 ,(7,60)
 ,(8,61)
 ,(9,62)
 ,(10,63)
 ,(11,64)
 ,(12,66)
 ,(13,67)
 ,(14,68)
 ,(15,69)
 ,(16,70)
 ,(17,71)
 ,(18,72);

DROP TABLE IF EXISTS PermissionDurationObjects;

CREATE TABLE IF NOT EXISTS `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS PermissionKeyCategories;

CREATE TABLE IF NOT EXISTS `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO PermissionKeyCategories VALUES(1,'page',NULL)
 ,(2,'single_page',NULL)
 ,(3,'stack',NULL)
 ,(4,'composer_page',NULL)
 ,(5,'user',NULL)
 ,(6,'file_set',NULL)
 ,(7,'file',NULL)
 ,(8,'area',NULL)
 ,(9,'block_type',NULL)
 ,(10,'block',NULL)
 ,(11,'admin',NULL)
 ,(12,'sitemap',NULL)
 ,(13,'marketplace_newsflow',NULL)
 ,(14,'basic_workflow',NULL);

DROP TABLE IF EXISTS PermissionKeys;

CREATE TABLE IF NOT EXISTS `PermissionKeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

INSERT INTO PermissionKeys VALUES(1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0)
 ,(2,'view_page_versions','View Versions',0,0,'Can view the page versions dialog and read past versions of a page.',1,0)
 ,(3,'view_page_in_sitemap','View Page in Sitemap',0,0,'Controls whether a user can see a page in the sitemap or intelligent search.',1,0)
 ,(4,'preview_page_as_user','Preview Page As User',0,0,'Ability to see what this page will look like at a specific time in the future as a specific user.',1,0)
 ,(5,'edit_page_properties','Edit Properties',0,1,'Ability to change anything in the Page Properties menu.',1,0)
 ,(6,'edit_page_contents','Edit Contents',0,0,'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ',1,0)
 ,(7,'edit_page_speed_settings','Edit Speed Settings',0,0,'Ability to change caching settings.',1,0)
 ,(8,'edit_page_theme','Change Theme',0,1,'Ability to change just the theme for this page.',1,0)
 ,(9,'edit_page_type','Change Page Type',0,0,'Ability to change just the page type for this page, also check out Theme permissions.',1,0)
 ,(10,'edit_page_permissions','Edit Permissions',1,0,'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.',1,0)
 ,(11,'delete_page','Delete',1,0,'Ability to move this page to the site\'s Trash.',1,0)
 ,(12,'delete_page_versions','Delete Versions',1,0,'Ability to remove old versions of this page.',1,0)
 ,(13,'approve_page_versions','Approve Changes',1,0,'Can publish an unapproved version of the page.',1,0)
 ,(14,'add_subpage','Add Sub-Page',0,1,'Can add a page beneath the current page.',1,0)
 ,(15,'move_or_copy_page','Move or Copy Page',1,0,'Can move or copy this page to another location.',1,0)
 ,(16,'schedule_page_contents_guest_access','Schedule Guest Access',0,0,'Can control scheduled guest access to this page.',1,0)
 ,(17,'add_block','Add Block',0,1,'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)',9,0)
 ,(18,'add_stack','Add Stack',0,0,'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)',9,0)
 ,(19,'view_area','View Area',0,0,'Can view the area and its contents.',8,0)
 ,(20,'edit_area_contents','Edit Area Contents',0,0,'Can edit blocks within this area.',8,0)
 ,(21,'add_block_to_area','Add Block to Area',0,1,'Can add blocks to this area. This setting overrides the global Add Block permission for this area.',8,0)
 ,(22,'add_stack_to_area','Add Stack to Area',0,0,'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.',8,0)
 ,(23,'add_layout_to_area','Add Layouts to Area',0,0,'Controls whether users get the ability to add layouts to a particular area.',8,0)
 ,(24,'edit_area_design','Edit Area Design',0,0,'Controls whether users see design controls and can modify an area\'s custom CSS.',8,0)
 ,(25,'edit_area_permissions','Edit Area Permissions',0,0,'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.',8,0)
 ,(26,'delete_area_contents','Delete Area Contents',0,0,'Controls whether users can delete blocks from this area.',8,0)
 ,(27,'schedule_area_contents_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.',8,0)
 ,(28,'view_block','View Block',0,0,'Controls whether users can view this block in the page.',10,0)
 ,(29,'edit_block','Edit Block',0,0,'Controls whether users can edit this block. This overrides any area or page permissions.',10,0)
 ,(30,'edit_block_custom_template','Change Custom Template',0,0,'Controls whether users can change the custom template on this block. This overrides any area or page permissions.',10,0)
 ,(31,'delete_block','Delete Block',0,0,'Controls whether users can delete this block. This overrides any area or page permissions.',10,0)
 ,(32,'edit_block_design','Edit Design',0,0,'Controls whether users can set custom design properties or CSS on this block.',10,0)
 ,(33,'edit_block_permissions','Edit Permissions',0,0,'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.',10,0)
 ,(34,'schedule_guest_access','Schedule Guest Access',0,0,'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.',10,0)
 ,(35,'view_file_set_file','View Files',0,0,'Can view and download files in the site.',6,0)
 ,(36,'search_file_set','Search Files in File Manager',0,0,'Can access the file manager',6,0)
 ,(37,'edit_file_set_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',6,0)
 ,(38,'edit_file_set_file_contents','Edit File Contents',0,0,'Can edit or replace files in set.',6,0)
 ,(39,'copy_file_set_files','Copy File',0,0,'Can copy files in file set.',6,0)
 ,(40,'edit_file_set_permissions','Edit File Access',0,0,'Can edit access to file sets.',6,0)
 ,(41,'delete_file_set','Delete File Set',0,0,'Can delete file set.',6,0)
 ,(42,'delete_file_set_files','Delete File',0,0,'Can delete files in set.',6,0)
 ,(43,'add_file','Add File',0,1,'Can add files to set.',6,0)
 ,(44,'view_file','View Files',0,0,'Can view and download files.',7,0)
 ,(45,'view_file_in_file_manager','View File in File Manager',0,0,'Can access the File Manager.',7,0)
 ,(46,'edit_file_properties','Edit File Properties',0,0,'Can edit a file\'s properties.',7,0)
 ,(47,'edit_file_contents','Edit File Contents',0,0,'Can edit or replace files.',7,0)
 ,(48,'copy_file','Copy File',0,0,'Can copy file.',7,0)
 ,(49,'edit_file_permissions','Edit File Access',0,0,'Can edit access to file.',7,0)
 ,(50,'delete_file','Delete File',0,0,'Can delete file.',7,0)
 ,(51,'approve_basic_workflow_action','Approve or Deny',0,0,'Grant ability to approve workflow.',14,0)
 ,(52,'notify_on_basic_workflow_entry','Notify on Entry',0,0,'Notify approvers that a change has entered the workflow.',14,0)
 ,(53,'notify_on_basic_workflow_approve','Notify on Approve',0,0,'Notify approvers that a change has been approved.',14,0)
 ,(54,'notify_on_basic_workflow_deny','Notify on Deny',0,0,'Notify approvers that a change has been denied.',14,0)
 ,(55,'access_user_search','Access User Search',0,1,'',5,0)
 ,(56,'edit_user_properties','Edit User Details',0,1,NULL,5,0)
 ,(57,'view_user_attributes','View User Attributes',0,1,NULL,5,0)
 ,(58,'activate_user','Activate/Deactivate User',0,0,NULL,5,0)
 ,(59,'sudo','Sign in as User',0,0,NULL,5,0)
 ,(60,'delete_user','Delete User',0,0,NULL,5,0)
 ,(61,'access_group_search','Access Group Search',0,0,'',5,0)
 ,(62,'edit_groups','Edit Groups',0,0,'',5,0)
 ,(63,'assign_user_groups','Assign Groups to User',0,1,'',5,0)
 ,(64,'backup','Perform Backups',0,0,NULL,11,0)
 ,(65,'access_task_permissions','Access Task Permissions',0,0,NULL,11,0)
 ,(66,'access_sitemap','Access Sitemap',0,0,NULL,12,0)
 ,(67,'access_page_defaults','Access Page Type Defaults',0,0,NULL,11,0)
 ,(68,'empty_trash','Empty Trash',0,0,NULL,11,0)
 ,(69,'uninstall_packages','Uninstall Packages',0,0,NULL,13,0)
 ,(70,'install_packages','Install Packages',0,0,NULL,13,0)
 ,(71,'view_newsflow','View Newsflow',0,0,NULL,13,0)
 ,(72,'access_user_search_export','Export Site Users',0,0,'Controls whether a user can export site users or not',5,0);

DROP TABLE IF EXISTS PileContents;

CREATE TABLE IF NOT EXISTS `PileContents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO PileContents VALUES(3,1,21,'BLOCK',1,'0000-00-00 00:00:00',0)
 ,(4,1,22,'BLOCK',1,'0000-00-00 00:00:00',1);

DROP TABLE IF EXISTS Piles;

CREATE TABLE IF NOT EXISTS `Piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Piles VALUES(1,1,1,'0000-00-00 00:00:00',NULL,'READY');

DROP TABLE IF EXISTS QueueMessages;

CREATE TABLE IF NOT EXISTS `QueueMessages` (
  `message_id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) DEFAULT NULL,
  `body` varchar(8192) NOT NULL,
  `md5` varchar(32) NOT NULL,
  `timeout` decimal(14,0) unsigned DEFAULT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`message_id`),
  UNIQUE KEY `message_handle` (`handle`),
  KEY `message_queueid` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS QueuePageDuplicationRelations;

CREATE TABLE IF NOT EXISTS `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Queues;

CREATE TABLE IF NOT EXISTS `Queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) NOT NULL,
  `timeout` int(5) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS SignupRequests;

CREATE TABLE IF NOT EXISTS `SignupRequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Stacks;

CREATE TABLE IF NOT EXISTS `Stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO Stacks VALUES(1,'Header',20,124)
 ,(2,'Pied de page - Gauche',20,125)
 ,(3,'Pied de page - Centre',20,126)
 ,(4,'Pied de page - Droite',20,127)
 ,(5,'Pied de page - Sitemap',20,128)
 ,(6,'Pied de page',20,135);

DROP TABLE IF EXISTS SystemAntispamLibraries;

CREATE TABLE IF NOT EXISTS `SystemAntispamLibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS SystemCaptchaLibraries;

CREATE TABLE IF NOT EXISTS `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO SystemCaptchaLibraries VALUES('securimage','SecurImage (Default)',1,0);

DROP TABLE IF EXISTS SystemNotifications;

CREATE TABLE IF NOT EXISTS `SystemNotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserAttributeKeys;

CREATE TABLE IF NOT EXISTS `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO UserAttributeKeys VALUES(10,0,0,1,0,1,0,1,1)
 ,(11,0,0,1,0,1,0,2,1);

DROP TABLE IF EXISTS UserAttributeValues;

CREATE TABLE IF NOT EXISTS `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserBannedIPs;

CREATE TABLE IF NOT EXISTS `UserBannedIPs` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserGroups;

CREATE TABLE IF NOT EXISTS `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserOpenIDs;

CREATE TABLE IF NOT EXISTS `UserOpenIDs` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionAssignGroupAccessList;

CREATE TABLE IF NOT EXISTS `UserPermissionAssignGroupAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionAssignGroupAccessListCustom;

CREATE TABLE IF NOT EXISTS `UserPermissionAssignGroupAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionEditPropertyAccessList;

CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionEditPropertyAttributeAccessListCustom;

CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionUserSearchAccessList;

CREATE TABLE IF NOT EXISTS `UserPermissionUserSearchAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionUserSearchAccessListCustom;

CREATE TABLE IF NOT EXISTS `UserPermissionUserSearchAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionViewAttributeAccessList;

CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPermissionViewAttributeAccessListCustom;

CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPointHistory;

CREATE TABLE IF NOT EXISTS `UserPointHistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL,
  PRIMARY KEY (`upID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPrivateMessages;

CREATE TABLE IF NOT EXISTS `UserPrivateMessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserPrivateMessagesTo;

CREATE TABLE IF NOT EXISTS `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserSearchIndexAttributes;

CREATE TABLE IF NOT EXISTS `UserSearchIndexAttributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS UserValidationHashes;

CREATE TABLE IF NOT EXISTS `UserValidationHashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS Users;

CREATE TABLE IF NOT EXISTS `Users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO Users VALUES(1,'admin','mathieu.rogelja@gmail.com','$2a$12$V7uOv0GtRN4IfyQrYT/koeK7VoR9bdDPu0Y/UBPrIK9ND4zV7uxc.','1',-1,1,'2014-02-14 10:04:57',0,1392654239,1392649382,2130706433,1392372754,4,NULL,NULL);

DROP TABLE IF EXISTS UsersFriends;

CREATE TABLE IF NOT EXISTS `UsersFriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS WorkflowProgress;

CREATE TABLE IF NOT EXISTS `WorkflowProgress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS WorkflowProgressCategories;

CREATE TABLE IF NOT EXISTS `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO WorkflowProgressCategories VALUES(1,'page',NULL)
 ,(2,'file',NULL)
 ,(3,'user',NULL);

DROP TABLE IF EXISTS WorkflowProgressHistory;

CREATE TABLE IF NOT EXISTS `WorkflowProgressHistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

INSERT INTO WorkflowProgressHistory VALUES(1,1,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"1\";}')
 ,(2,2,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"2\";}')
 ,(3,3,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"131\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"3\";}')
 ,(4,4,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"132\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"4\";}')
 ,(5,5,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"5\";}')
 ,(6,6,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"6\";}')
 ,(7,7,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"134\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"7\";}')
 ,(8,8,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:1:\"8\";}')
 ,(9,9,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:1:\"9\";}')
 ,(10,10,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"10\";}')
 ,(11,11,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"131\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"11\";}')
 ,(12,12,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"12\";}')
 ,(13,13,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"13\";}')
 ,(14,14,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"14\";}')
 ,(15,15,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"15\";}')
 ,(16,16,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"16\";}')
 ,(17,17,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"17\";}')
 ,(18,18,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"18\";}')
 ,(19,19,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"19\";}')
 ,(20,20,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"20\";}')
 ,(21,21,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"21\";}')
 ,(22,22,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"22\";}')
 ,(23,23,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"23\";}')
 ,(24,24,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"24\";}')
 ,(25,25,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"25\";}')
 ,(26,26,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"26\";}')
 ,(27,27,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"27\";}')
 ,(28,28,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"140\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"28\";}')
 ,(29,29,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"29\";}')
 ,(30,30,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"30\";}')
 ,(31,31,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"31\";}');

DROP TABLE IF EXISTS WorkflowRequestObjects;

CREATE TABLE IF NOT EXISTS `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS WorkflowTypes;

CREATE TABLE IF NOT EXISTS `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO WorkflowTypes VALUES(1,'basic','Basic Workflow',0);

DROP TABLE IF EXISTS Workflows;

CREATE TABLE IF NOT EXISTS `Workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atAddress;

CREATE TABLE IF NOT EXISTS `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atAddressCustomCountries;

CREATE TABLE IF NOT EXISTS `atAddressCustomCountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atAddressSettings;

CREATE TABLE IF NOT EXISTS `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atBoolean;

CREATE TABLE IF NOT EXISTS `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atBoolean VALUES(20,1)
 ,(31,1)
 ,(34,1)
 ,(64,1)
 ,(65,1)
 ,(68,1)
 ,(69,1)
 ,(75,1)
 ,(108,1)
 ,(117,1)
 ,(118,1)
 ,(119,1)
 ,(120,1)
 ,(127,1)
 ,(131,1)
 ,(132,1)
 ,(133,1)
 ,(134,1)
 ,(138,1)
 ,(139,1)
 ,(140,1)
 ,(141,1)
 ,(145,1)
 ,(146,1)
 ,(147,1)
 ,(148,1);

DROP TABLE IF EXISTS atBooleanSettings;

CREATE TABLE IF NOT EXISTS `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atBooleanSettings VALUES(5,0)
 ,(6,0)
 ,(8,0)
 ,(9,0)
 ,(10,1)
 ,(11,1);

DROP TABLE IF EXISTS atDateTime;

CREATE TABLE IF NOT EXISTS `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atDateTimeSettings;

CREATE TABLE IF NOT EXISTS `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atDefault;

CREATE TABLE IF NOT EXISTS `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atDefault VALUES(1,'blog, blogging')
 ,(2,'icon-book')
 ,(3,'new blog, write blog, blogging')
 ,(4,'icon-pencil')
 ,(5,'blog drafts, composer')
 ,(6,'icon-book')
 ,(7,'pages, add page, delete page, copy, move, alias')
 ,(8,'pages, add page, delete page, copy, move, alias')
 ,(9,'icon-home')
 ,(10,'pages, add page, delete page, copy, move, alias, bulk')
 ,(11,'icon-road')
 ,(12,'find page, search page, search, find, pages, sitemap')
 ,(13,'icon-search')
 ,(14,'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute')
 ,(15,'icon-picture')
 ,(16,'file, file attributes, title, attribute, description, rename')
 ,(17,'icon-cog')
 ,(18,'files, category, categories')
 ,(19,'icon-list-alt')
 ,(21,'new file set')
 ,(22,'icon-plus-sign')
 ,(23,'users, groups, people, find, delete user, remove user, change password, password')
 ,(24,'find, search, people, delete user, remove user, change password, password')
 ,(25,'icon-user')
 ,(26,'user, group, people, permissions, access, expire')
 ,(27,'icon-globe')
 ,(28,'user attributes, user data, gather data, registration data')
 ,(29,'icon-cog')
 ,(30,'new user, create')
 ,(32,'icon-plus-sign')
 ,(33,'new user group, new group, group, create')
 ,(35,'icon-plus')
 ,(36,'group set')
 ,(37,'icon-list')
 ,(38,'forms, log, error, email, mysql, exception, survey')
 ,(39,'hits, pageviews, visitors, activity')
 ,(40,'icon-signal')
 ,(41,'forms, questions, response, data')
 ,(42,'icon-briefcase')
 ,(43,'questions, quiz, response')
 ,(44,'icon-tasks')
 ,(45,'forms, log, error, email, mysql, exception, survey, history')
 ,(46,'icon-time')
 ,(47,'new theme, theme, active theme, change theme, template, css')
 ,(48,'icon-font')
 ,(49,'theme')
 ,(50,'page types')
 ,(51,'custom theme, change theme, custom css, css')
 ,(52,'page type defaults, global block, global area, starter, template')
 ,(53,'icon-file')
 ,(54,'page attributes, custom')
 ,(55,'icon-cog')
 ,(56,'single, page, custom, application')
 ,(57,'icon-wrench')
 ,(58,'add workflow, remove workflow')
 ,(59,'icon-list')
 ,(60,'icon-user')
 ,(61,'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo')
 ,(62,'icon-th')
 ,(63,'icon-lock')
 ,(66,'block, refresh, custom')
 ,(67,'icon-wrench')
 ,(70,'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks')
 ,(71,'update, upgrade')
 ,(72,'concrete5.org, my account, marketplace')
 ,(73,'buy theme, new theme, marketplace, template')
 ,(74,'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace')
 ,(76,'website name, title')
 ,(77,'logo, favicon, iphone, icon, bookmark')
 ,(78,'tinymce, content block, fonts, editor, content, overlay')
 ,(79,'translate, translation, internationalization, multilingual')
 ,(80,'timezone, profile, locale')
 ,(81,'interface, quick nav, dashboard background, background image')
 ,(82,'vanity, pretty url, seo, pageview, view')
 ,(83,'bulk, seo, change keywords, engine, optimization, search')
 ,(84,'traffic, statistics, google analytics, quant, pageviews, hits')
 ,(85,'pretty, slug')
 ,(86,'turn off statistics, tracking, statistics, pageviews, hits')
 ,(87,'configure search, site search, search option')
 ,(88,'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching')
 ,(89,'cache option, turn off cache, no cache, page cache, caching')
 ,(90,'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old')
 ,(91,'editors, hide site, offline, private, public, access')
 ,(92,'file options, file manager, upload, modify')
 ,(93,'security, files, media, extension, manager, upload')
 ,(94,'security, actions, administrator, admin, package, marketplace, search')
 ,(95,'security, lock ip, lock out, block ip, address, restrict, access')
 ,(96,'security, registration')
 ,(97,'antispam, block spam, security')
 ,(98,'lock site, under construction, hide, hidden')
 ,(99,'profile, login, redirect, specific, dashboard, administrators')
 ,(100,'member profile, member page, community, forums, social, avatar')
 ,(101,'signup, new user, community')
 ,(102,'smtp, mail settings')
 ,(103,'email server, mail settings, mail configuration, external, internal')
 ,(104,'email server, mail settings, mail configuration, private message, message system, import, email, message')
 ,(105,'attribute configuration')
 ,(106,'attributes, sets')
 ,(107,'attributes, types')
 ,(109,'overrides, system info, debug, support, help')
 ,(110,'errors, exceptions, develop, support, help')
 ,(111,'email, logging, logs, smtp, pop, errors, mysql, log')
 ,(112,'security, alternate storage, hide files')
 ,(113,'network, proxy server')
 ,(114,'export, backup, database, sql, mysql, encryption, restore')
 ,(115,'upgrade, new version, update')
 ,(116,'export, database, xml, starting, points, schema, refresh, custom, tables')
 ,(121,'')
 ,(122,'')
 ,(123,'')
 ,(124,'')
 ,(125,'')
 ,(126,'')
 ,(128,'')
 ,(129,'')
 ,(130,'')
 ,(135,'')
 ,(136,'')
 ,(137,'')
 ,(142,'')
 ,(143,'')
 ,(144,'');

DROP TABLE IF EXISTS atFile;

CREATE TABLE IF NOT EXISTS `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atNumber;

CREATE TABLE IF NOT EXISTS `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atSelectOptions;

CREATE TABLE IF NOT EXISTS `atSelectOptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atSelectOptionsSelected;

CREATE TABLE IF NOT EXISTS `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atSelectSettings;

CREATE TABLE IF NOT EXISTS `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atSelectSettings VALUES(15,1,'display_asc',1);

DROP TABLE IF EXISTS atTextareaSettings;

CREATE TABLE IF NOT EXISTS `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atTextareaSettings VALUES(2,'')
 ,(3,'')
 ,(4,'')
 ,(7,'');

DROP TABLE IF EXISTS btContentFile;

CREATE TABLE IF NOT EXISTS `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btContentImage;

CREATE TABLE IF NOT EXISTS `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btContentLocal;

CREATE TABLE IF NOT EXISTS `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btContentLocal VALUES(1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						')
 ,(2,'<div class=\"newsflow-column-first-run\">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/editors\')\" class=\"btn primary\">Editor\'s Guide</a></p>\n							</div>')
 ,(3,'<div class=\"newsflow-column-first-run\">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/developers\')\" class=\"btn primary\">Developer\'s Guide</a></p>\n							</div>')
 ,(4,'<div class=\"newsflow-column-first-run\">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/designers\')\" class=\"btn primary\">Designer\'s Guide</a></p>\n							</div>')
 ,(5,'\n						<div class=\"newsflow-column-first-run\">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href=\"javascript:void(0)\" onclick=\"ccm_getNewsflowByPath(\'/welcome/executives\')\" class=\"btn primary\">Executive\'s Guide</a></p>\n						</div>')
 ,(13,'<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>')
 ,(14,'<p><span>Chantal Lesieur - Bureau 2262 - 01 49 83 <strong>2418</strong></span></p>\r\n<p><span>Françoise Lamontagne - Bureau 2260 - 01 49 83 <strong>2106</strong></span></p>\r\n<p>Mail : <a href=\"mailto:cgt@ina.fr\">cgt@ina.fr</a></p>\r\n<p><span>Fax : 01 49 83 31 7</span></p>')
 ,(15,'<h2>Agenda</h2>\r\n<h3>Réunions avec la direction</h3>\r\n<p style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\"><strong>Jeudi 17 octobre       </strong><br />réunion d’information sur la CCMSI</p>\r\n<p style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\"><strong>Vendredi 18 octobre</strong> <strong>   <br /></strong>réunion mensuelle des délégués du personnel</p>\r\n<p style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\"><strong>Mercredi 22 octobre</strong>  <strong>   <br /></strong>réunion du Comité d’entreprise</p>\r\n<p style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\"><strong>Mardi 5  novembre</strong>   <strong>   <br /></strong>réunion du comité d’entreprise</p>\r\n<p style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\"><strong>Mercredi 6 novembre</strong>    <strong>   <br /></strong>négociation annuelle obligatoire sur les salaires (2)</p>\r\n<h3>Réunions syndicales</h3>\r\n<p><strong style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">Vendredi  8 novembre</strong><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"> </span><strong style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\">  <span class=\"Apple-converted-space\"> </span></strong><br style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\">commission exécutive</span></p>')
 ,(16,'<h2>Agenda</h2>\r\n<h3>Réunions avec la direction</h3>\r\n<p><strong>Jeudi 17 octobre</strong>       <br />réunion d’information sur la CCMSI<br /><br /><strong>Vendredi 18 octobre    </strong><br />réunion mensuelle des délégués du personnel<br /><br /><strong>Mercredi 22 octobre   </strong>  <br />réunion du Comité d’entreprise<br /><br /><strong>Mardi 5  novembre      </strong><br />réunion du comité d’entreprise<br /><br /><strong>Mercredi 6 novembre </strong>      <br />négociation annuelle obligatoire sur les salaires (2)</p>\r\n<h3>Réunions syndicales</h3>\r\n<p><strong style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\"></strong><span style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; display: inline !important; float: none;\"><br style=\"color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 13.333333015441895px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff;\" /></span></p>')
 ,(18,'<h2>Derniers communiqués</h2>')
 ,(19,'<p class=\"p2 ft5\">Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis <span class=\"ft4\">un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO.</span></p>\r\n<p class=\"p3 ft5\">Le CE, qui n’a qu’un rôle consultatif et pas le pouvoir de bloquer les décisions de la direction, a joué pleinement son rôle notamment en posant des questions sur :</p>\r\n<p class=\"p4 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Est-ce</span> un rapprochement ou une fusion ?</p>\r\n<p class=\"p5 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quelles sont les implications dans mon travail : « Je dépend de qui ? Qui est mon chef ? A qui poser mes questions professionnelles pour avoir des réponses ? »</span></p>\r\n<p class=\"p6 ft9\"><span class=\"ft0\">-</span><span class=\"ft8\">Où en sont les études sur les outils documentaires, techniques, informatiques ?...</span></p>\r\n<p class=\"p7 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quelles sont les suites données par la Direction au rapport Isast sur les conséquences de ce chantier (ce point était explicitement à l’ordre du jour du CE) ?</span></p>\r\n<p class=\"p6 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Quelles sont les suites données aux groupes Emergence organisés par Chrysalis ?</span></p>\r\n<p class=\"p6 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Comment la direction prend elle en compte les paroles des salarié/es ?</span></p>\r\n<p class=\"p8 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">S’il s’agit de prévenir les risques </span>psycho-sociaux on peut s’étonner que rien ne soit fait depuis les rapports Empreinte Humaine (mars 2013) puis Chrysalis (juillet 2013) ?</p>\r\n<p class=\"p9 ft5\"><span class=\"ft0\">-</span><span class=\"ft7\">Quant à la Gestion Prévisionnelle des Emplois et des Compétences (GPEC), il s’agit d’un outil au service de quelle politique ?</span></p>\r\n<p class=\"p10 ft9\"><span class=\"ft0\">-</span><span class=\"ft10\">Quelles interactions avec les autres directions de l’Ina, tout particulièrement la Direction déléguée aux contenus, elle aussi susceptible d’être réorganisée ?</span></p>\r\n<p class=\"p11 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">Quant à un éventuel rapprochement physique des salariés, où en </span>est-on ?</p>\r\n<p class=\"p12 ft5\">Le rôle de la DRH aurait été de proposer des préconisations à la suite des conclusions du rapport Isast. <span class=\"ft4\">Rien n’a été fait. La direction a même refusé la restitution, demandée par le CHS CT, du rapport auprès des salarié/es.</span></p>\r\n<p class=\"p13 ft5\">La première commission de suivi sera l’occasion pour la CGT d’exiger des points très précis et détaillés sur l’avancement de la réorganisation et de se rendre compte de la volonté de la DDcol, comme de la DRH, de jouer cartes sur table et de dire ce qu’elles font ou veulent faire,au-delàdes discours. Leurs réponses devront être à la hauteur des enjeux sous peine de voir s’accentuer encore un peu plus la suspicion, le doute, le mécontentement voire la colère.</p>\r\n<p class=\"p14 ft4\">Dernières minutes :</p>\r\n<p class=\"p15 ft12\"><span class=\"ft0\">-</span><span class=\"ft11\">le projet pourrait permettre de rendre des surfaces à Bry III. Nous avions cru qu’il s’agissait d’améliorer les conditions de travail des salarié/es de Bry III mais pas de faire des économies sur les espaces, en entassant les salarié/es. Où ? A Bry 1 ?</span></p>\r\n<p class=\"p16 ft5\"><span class=\"ft0\">-</span><span class=\"ft6\">la nomination de Michel Raynal par intérim à la tête du département documentation, alors qu’il</span></p>\r\n<p class=\"p17 ft5\"><span class=\"ft5\">«</span><span class=\"ft13\">remplace » déjà Jacqueline Blanc à la tête des ressources humaines de la DDCol. </span>Est-ce une illustration de la politique de GPEC ?</p>\r\n<p class=\"p18 ft14\">La CGT associera les salarié/es de la Direction déléguée aux collections à la préparation des réunions de la commission de suivi et les tiendra informé/es.</p>')
 ,(22,'<h2>Nouvelles du monde</h2>')
 ,(27,'<h1>Communiqués</h1>')
 ,(28,'<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>');

DROP TABLE IF EXISTS btCoreScrapbookDisplay;

CREATE TABLE IF NOT EXISTS `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btCoreScrapbookDisplay VALUES(23,16)
 ,(24,18)
 ,(25,21)
 ,(26,22);

DROP TABLE IF EXISTS btCoreStackDisplay;

CREATE TABLE IF NOT EXISTS `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btDashboardNewsflowLatest;

CREATE TABLE IF NOT EXISTS `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btDashboardNewsflowLatest VALUES(8,'A')
 ,(9,'B')
 ,(12,'C');

DROP TABLE IF EXISTS btDateNav;

CREATE TABLE IF NOT EXISTS `btDateNav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btExtendedSearch;

CREATE TABLE IF NOT EXISTS `btExtendedSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `searchPlaceholder` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btExtendedSearch VALUES(30,'Recherche','Rechercher','','','');

DROP TABLE IF EXISTS btExternalForm;

CREATE TABLE IF NOT EXISTS `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFlashContent;

CREATE TABLE IF NOT EXISTS `btFlashContent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btForm;

CREATE TABLE IF NOT EXISTS `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFormAnswerSet;

CREATE TABLE IF NOT EXISTS `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFormAnswers;

CREATE TABLE IF NOT EXISTS `btFormAnswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btFormQuestions;

CREATE TABLE IF NOT EXISTS `btFormQuestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btGoogleMap;

CREATE TABLE IF NOT EXISTS `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btGuestBook;

CREATE TABLE IF NOT EXISTS `btGuestBook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btGuestBookEntries;

CREATE TABLE IF NOT EXISTS `btGuestBookEntries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` datetime DEFAULT '0000-00-00 00:00:00',
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btNavigation;

CREATE TABLE IF NOT EXISTS `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btNextPrevious;

CREATE TABLE IF NOT EXISTS `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btPageList;

CREATE TABLE IF NOT EXISTS `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btPageList VALUES(17,0,'chrono_desc',130,0,0,0,1,0,0,'','',0,0,0)
 ,(20,0,'chrono_desc',130,0,0,0,1,0,0,'','',1,0,128)
 ,(21,0,'chrono_desc',130,0,0,0,1,0,0,'','',0,0,0)
 ,(31,0,'chrono_desc',130,1,0,0,1,0,0,'','',0,0,0);

DROP TABLE IF EXISTS btRssDisplay;

CREATE TABLE IF NOT EXISTS `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSearch;

CREATE TABLE IF NOT EXISTS `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSlideshow;

CREATE TABLE IF NOT EXISTS `btSlideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSlideshowImg;

CREATE TABLE IF NOT EXISTS `btSlideshowImg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSurvey;

CREATE TABLE IF NOT EXISTS `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSurveyOptions;

CREATE TABLE IF NOT EXISTS `btSurveyOptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btSurveyResults;

CREATE TABLE IF NOT EXISTS `btSurveyResults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btTags;

CREATE TABLE IF NOT EXISTS `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btVideo;

CREATE TABLE IF NOT EXISTS `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btYouTube;

CREATE TABLE IF NOT EXISTS `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



