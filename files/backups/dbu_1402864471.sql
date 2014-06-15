DROP TABLE IF EXISTS areapermissionassignments;

CREATE TABLE IF NOT EXISTS `areapermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO areapermissionassignments VALUES(1,'Zone gauche',19,53)
 ,(1,'Zone gauche',20,58)
 ,(1,'Zone gauche',21,1)
 ,(1,'Zone gauche',22,2)
 ,(1,'Zone gauche',23,58)
 ,(1,'Zone gauche',24,58)
 ,(1,'Zone gauche',25,62)
 ,(1,'Zone gauche',26,58)
 ,(1,'Zone gauche',27,68);

DROP TABLE IF EXISTS areapermissionblocktypeaccesslist;

CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS areapermissionblocktypeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS areas;

CREATE TABLE IF NOT EXISTS `areas` (
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

INSERT INTO areas VALUES(1,105,'Header',0,0,0)
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
 ,(59,140,'Pied de page',0,0,1)
 ,(60,141,'Zone principale',0,0,0)
 ,(61,141,'Pied de page',0,0,1)
 ,(62,142,'Header Nav',0,0,0)
 ,(63,142,'Header',0,0,1)
 ,(64,142,'Sidebar',0,0,0)
 ,(65,142,'Main',0,0,0)
 ,(66,142,'Zone principale',0,0,0)
 ,(67,142,'Pied de page - Gauche',0,0,1)
 ,(68,142,'Pied de page - Centre',0,0,1)
 ,(69,142,'Pied de page - Droite',0,0,1)
 ,(70,142,'Pied de page - Sitemap',0,0,1)
 ,(71,142,'Pied de page',0,0,1)
 ,(72,142,'Zone gauche',0,0,0)
 ,(73,142,'Zone centre',0,0,0)
 ,(74,142,'Zone droite',0,0,0)
 ,(75,143,'Zone principale',0,0,0)
 ,(76,143,'Pied de page',0,0,1)
 ,(77,133,'Zone principale',0,0,0)
 ,(78,133,'Pied de page',0,0,1)
 ,(79,144,'Zone principale',0,0,0)
 ,(80,144,'Pied de page',0,0,1)
 ,(81,143,'En tête',0,0,0)
 ,(82,1,'En tête',0,0,0)
 ,(83,145,'En tête',0,0,0)
 ,(84,145,'Zone principale',0,0,0)
 ,(85,145,'Pied de page',0,0,1)
 ,(86,145,'Zone colonne droite',0,0,0)
 ,(87,143,'Zone colonne droite',0,0,0)
 ,(88,130,'En tête',0,0,0)
 ,(89,131,'En tête',0,0,0)
 ,(90,142,'En tête',0,0,0)
 ,(91,144,'En tête',0,0,0)
 ,(92,133,'En tête',0,0,0)
 ,(93,141,'En tête',0,0,0)
 ,(94,137,'En tête',0,0,0)
 ,(95,140,'En tête',0,0,0)
 ,(96,146,'En tête',0,0,0)
 ,(97,146,'Zone colonne droite',0,0,0)
 ,(98,146,'Zone principale',0,0,0)
 ,(99,146,'Pied de page',0,0,1);

DROP TABLE IF EXISTS ataddress;

CREATE TABLE IF NOT EXISTS `ataddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ataddresscustomcountries;

CREATE TABLE IF NOT EXISTS `ataddresscustomcountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS ataddresssettings;

CREATE TABLE IF NOT EXISTS `ataddresssettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atboolean;

CREATE TABLE IF NOT EXISTS `atboolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atboolean VALUES(20,1)
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

DROP TABLE IF EXISTS atbooleansettings;

CREATE TABLE IF NOT EXISTS `atbooleansettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atbooleansettings VALUES(5,0)
 ,(6,0)
 ,(8,0)
 ,(9,0)
 ,(10,1)
 ,(11,1);

DROP TABLE IF EXISTS atdatetime;

CREATE TABLE IF NOT EXISTS `atdatetime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atdatetimesettings;

CREATE TABLE IF NOT EXISTS `atdatetimesettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atdefault;

CREATE TABLE IF NOT EXISTS `atdefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atdefault VALUES(1,'blog, blogging')
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
 ,(144,'')
 ,(149,'')
 ,(150,'')
 ,(151,'')
 ,(152,'')
 ,(153,'')
 ,(154,'')
 ,(155,'')
 ,(156,'')
 ,(157,'')
 ,(158,'')
 ,(159,'')
 ,(160,'')
 ,(161,'')
 ,(162,'')
 ,(163,'')
 ,(164,'')
 ,(165,'')
 ,(166,'')
 ,(167,'')
 ,(168,'')
 ,(169,'');

DROP TABLE IF EXISTS atfile;

CREATE TABLE IF NOT EXISTS `atfile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atnumber;

CREATE TABLE IF NOT EXISTS `atnumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atselectoptions;

CREATE TABLE IF NOT EXISTS `atselectoptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atselectoptionsselected;

CREATE TABLE IF NOT EXISTS `atselectoptionsselected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS atselectsettings;

CREATE TABLE IF NOT EXISTS `atselectsettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO atselectsettings VALUES(15,1,'display_asc',1);

DROP TABLE IF EXISTS attextareasettings;

CREATE TABLE IF NOT EXISTS `attextareasettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO attextareasettings VALUES(2,'')
 ,(3,'')
 ,(4,'')
 ,(7,'');

DROP TABLE IF EXISTS attributekeycategories;

CREATE TABLE IF NOT EXISTS `attributekeycategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO attributekeycategories VALUES(1,'collection',1,NULL)
 ,(2,'user',1,NULL)
 ,(3,'file',1,NULL);

DROP TABLE IF EXISTS attributekeys;

CREATE TABLE IF NOT EXISTS `attributekeys` (
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

INSERT INTO attributekeys VALUES(1,'meta_title','Meta Title',1,1,0,0,0,1,1,1,0)
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
 ,(15,'tags','Tags',0,0,0,0,0,1,8,1,0);

DROP TABLE IF EXISTS attributesetkeys;

CREATE TABLE IF NOT EXISTS `attributesetkeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO attributesetkeys VALUES(1,1,1)
 ,(2,1,2)
 ,(3,1,3)
 ,(5,2,1)
 ,(6,2,2)
 ,(7,1,4)
 ,(8,2,3)
 ,(9,2,4);

DROP TABLE IF EXISTS attributesets;

CREATE TABLE IF NOT EXISTS `attributesets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO attributesets VALUES(1,'Page Header','page_header',1,0,0,0)
 ,(2,'Navigation and Indexing','navigation',1,0,0,1);

DROP TABLE IF EXISTS attributetypecategories;

CREATE TABLE IF NOT EXISTS `attributetypecategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO attributetypecategories VALUES(1,1)
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

DROP TABLE IF EXISTS attributetypes;

CREATE TABLE IF NOT EXISTS `attributetypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO attributetypes VALUES(1,'text','Text',0)
 ,(2,'textarea','Text Area',0)
 ,(3,'boolean','Checkbox',0)
 ,(4,'date_time','Date/Time',0)
 ,(5,'image_file','Image/File',0)
 ,(6,'number','Number',0)
 ,(7,'rating','Rating',0)
 ,(8,'select','Select',0)
 ,(9,'address','Address',0);

DROP TABLE IF EXISTS attributevalues;

CREATE TABLE IF NOT EXISTS `attributevalues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8;

INSERT INTO attributevalues VALUES(1,3,'2014-02-14 10:05:49',1,2)
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
 ,(148,9,'2014-02-14 16:39:50',1,3)
 ,(149,1,'2014-02-18 16:15:36',1,1)
 ,(150,2,'2014-02-18 16:15:37',1,2)
 ,(151,3,'2014-02-18 16:15:37',1,2)
 ,(152,1,'2014-02-19 16:51:50',1,1)
 ,(153,2,'2014-02-19 16:51:50',1,2)
 ,(154,3,'2014-02-19 16:51:50',1,2)
 ,(155,1,'2014-02-19 17:20:16',1,1)
 ,(156,2,'2014-02-19 17:20:16',1,2)
 ,(157,3,'2014-02-19 17:20:16',1,2)
 ,(158,1,'2014-02-27 15:47:32',1,1)
 ,(159,2,'2014-02-27 15:47:32',1,2)
 ,(160,3,'2014-02-27 15:47:32',1,2)
 ,(161,1,'2014-02-27 16:00:47',1,1)
 ,(162,2,'2014-02-27 16:00:47',1,2)
 ,(163,3,'2014-02-27 16:00:47',1,2)
 ,(164,1,'2014-02-27 16:42:15',1,1)
 ,(165,2,'2014-02-27 16:42:16',1,2)
 ,(166,3,'2014-02-27 16:42:16',1,2)
 ,(167,1,'2014-05-05 13:18:35',1,1)
 ,(168,2,'2014-05-05 13:18:35',1,2)
 ,(169,3,'2014-05-05 13:18:35',1,2);

DROP TABLE IF EXISTS basicworkflowpermissionassignments;

CREATE TABLE IF NOT EXISTS `basicworkflowpermissionassignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS basicworkflowprogressdata;

CREATE TABLE IF NOT EXISTS `basicworkflowprogressdata` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS blockpermissionassignments;

CREATE TABLE IF NOT EXISTS `blockpermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO blockpermissionassignments VALUES(1,13,69,28,87)
 ,(1,13,69,29,58)
 ,(1,13,69,30,58)
 ,(1,13,69,31,58)
 ,(1,13,69,32,58)
 ,(1,13,69,33,62)
 ,(1,13,69,34,68)
 ,(1,14,69,28,87)
 ,(1,14,69,29,58)
 ,(1,14,69,30,58)
 ,(1,14,69,31,58)
 ,(1,14,69,32,58)
 ,(1,14,69,33,62)
 ,(1,14,69,34,68)
 ,(1,15,69,28,87)
 ,(1,15,69,29,58)
 ,(1,15,69,30,58)
 ,(1,15,69,31,58)
 ,(1,15,69,32,58)
 ,(1,15,69,33,62)
 ,(1,15,69,34,68)
 ,(1,16,69,28,88)
 ,(1,16,69,29,58)
 ,(1,16,69,30,58)
 ,(1,16,69,31,58)
 ,(1,16,69,32,58)
 ,(1,16,69,33,62)
 ,(1,16,69,34,68)
 ,(1,17,73,28,88)
 ,(1,17,73,29,58)
 ,(1,17,73,30,58)
 ,(1,17,73,31,58)
 ,(1,17,73,32,58)
 ,(1,17,73,33,62)
 ,(1,17,73,34,68)
 ,(1,18,73,28,88)
 ,(1,18,73,29,58)
 ,(1,18,73,30,58)
 ,(1,18,73,31,58)
 ,(1,18,73,32,58)
 ,(1,18,73,33,62)
 ,(1,18,73,34,68)
 ,(1,19,73,28,88)
 ,(1,19,73,29,58)
 ,(1,19,73,30,58)
 ,(1,19,73,31,58)
 ,(1,19,73,32,58)
 ,(1,19,73,33,62)
 ,(1,19,73,34,68)
 ,(1,19,81,28,88)
 ,(1,19,81,29,58)
 ,(1,19,81,30,58)
 ,(1,19,81,31,58)
 ,(1,19,81,32,58)
 ,(1,19,81,33,62)
 ,(1,19,81,34,68)
 ,(1,20,82,28,88)
 ,(1,20,82,29,58)
 ,(1,20,82,30,58)
 ,(1,20,82,31,58)
 ,(1,20,82,32,58)
 ,(1,20,82,33,62)
 ,(1,20,82,34,68);

DROP TABLE IF EXISTS blockrelations;

CREATE TABLE IF NOT EXISTS `blockrelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO blockrelations VALUES(1,16,15,'DUPLICATE')
 ,(2,20,17,'DUPLICATE')
 ,(3,21,20,'DUPLICATE')
 ,(4,38,14,'DUPLICATE')
 ,(5,40,16,'DUPLICATE')
 ,(6,44,42,'DUPLICATE')
 ,(7,55,46,'DUPLICATE')
 ,(8,57,56,'DUPLICATE')
 ,(9,60,57,'DUPLICATE')
 ,(10,61,58,'DUPLICATE')
 ,(11,63,55,'DUPLICATE')
 ,(12,64,48,'DUPLICATE')
 ,(13,65,61,'DUPLICATE')
 ,(14,66,62,'DUPLICATE')
 ,(15,70,40,'DUPLICATE')
 ,(16,72,66,'DUPLICATE')
 ,(17,73,69,'DUPLICATE')
 ,(18,82,73,'DUPLICATE');

DROP TABLE IF EXISTS blocks;

CREATE TABLE IF NOT EXISTS `blocks` (
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

INSERT INTO blocks VALUES(1,'','2014-02-14 10:06:01','2014-02-14 10:06:02',NULL,'1',9,1,NULL)
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
 ,(14,NULL,'2014-02-14 11:55:34','2014-02-14 11:56:06',NULL,'1',9,1,NULL)
 ,(15,NULL,'2014-02-14 12:04:31','2014-02-14 12:04:31',NULL,'1',9,1,NULL)
 ,(16,NULL,'2014-02-14 12:07:11','2014-02-14 12:07:11',NULL,'1',9,1,NULL)
 ,(17,NULL,'2014-02-14 12:09:44','2014-02-14 12:09:44',NULL,'1',20,1,NULL)
 ,(18,NULL,'2014-02-14 12:10:11','2014-02-14 12:10:11',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=18\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"18\";i:1;s:30:\"<h2>Derniers communiqués</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"18\";s:7:\"content\";s:30:\"<h2>Derniers communiqués</h2>\";}')
 ,(19,NULL,'2014-02-14 12:15:15','2014-02-14 12:15:15',NULL,'1',9,1,NULL)
 ,(20,NULL,'2014-02-14 12:16:02','2014-02-14 12:16:03',NULL,'1',20,1,NULL)
 ,(21,NULL,'2014-02-14 12:17:27','2014-02-14 12:17:27',NULL,'1',20,1,'O:11:\"BlockRecord\":24:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:10:\"btPageList\";s:8:\"_tableat\";s:10:\"btPageList\";s:6:\"_where\";s:6:\"bID=21\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:15:{i:0;s:2:\"21\";i:1;s:1:\"0\";i:2;s:11:\"chrono_desc\";i:3;s:3:\"130\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"1\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:0:\"\";i:11;s:0:\"\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"21\";s:3:\"num\";s:1:\"0\";s:7:\"orderBy\";s:11:\"chrono_desc\";s:9:\"cParentID\";s:3:\"130\";s:5:\"cThis\";s:1:\"0\";s:21:\"includeAllDescendents\";s:1:\"0\";s:8:\"paginate\";s:1:\"0\";s:14:\"displayAliases\";s:1:\"1\";s:4:\"ctID\";s:1:\"0\";s:3:\"rss\";s:1:\"0\";s:8:\"rssTitle\";s:0:\"\";s:14:\"rssDescription\";s:0:\"\";s:17:\"truncateSummaries\";s:1:\"0\";s:19:\"displayFeaturedOnly\";s:1:\"0\";s:13:\"truncateChars\";s:1:\"0\";}')
 ,(22,NULL,'2014-02-14 12:19:12','2014-02-14 12:19:12',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=22\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"22\";i:1;s:27:\"<h2>Nouvelles du monde</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"22\";s:7:\"content\";s:27:\"<h2>Nouvelles du monde</h2>\";}')
 ,(23,NULL,'2014-02-14 12:22:04','2014-02-14 12:22:04',NULL,'1',1,1,NULL)
 ,(24,NULL,'2014-02-14 12:22:12','2014-02-14 12:22:12',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";s:6:\"bID=24\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"24\";i:1;s:2:\"18\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"24\";s:11:\"bOriginalID\";s:2:\"18\";}')
 ,(25,NULL,'2014-02-14 12:22:17','2014-02-14 12:22:17',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";s:6:\"bID=25\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"25\";i:1;s:2:\"21\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"25\";s:11:\"bOriginalID\";s:2:\"21\";}')
 ,(26,NULL,'2014-02-14 12:22:23','2014-02-14 12:22:23',NULL,'1',1,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:22:\"btCoreScrapbookDisplay\";s:8:\"_tableat\";s:22:\"btCoreScrapbookDisplay\";s:6:\"_where\";s:6:\"bID=26\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"26\";i:1;s:2:\"22\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"26\";s:11:\"bOriginalID\";s:2:\"22\";}')
 ,(27,NULL,'2014-02-14 14:15:00','2014-02-14 14:15:00',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=27\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"27\";i:1;s:21:\"<h1>Communiqués</h1>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"27\";s:7:\"content\";s:21:\"<h1>Communiqués</h1>\";}')
 ,(28,NULL,'2014-02-14 14:15:43','2014-02-14 14:15:43',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=28\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"28\";i:1;s:70:\"<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"28\";s:7:\"content\";s:70:\"<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>\";}')
 ,(30,NULL,'2014-02-14 16:43:11','2014-02-14 16:43:11',NULL,'1',28,1,NULL)
 ,(31,NULL,'2014-02-17 16:17:13','2014-02-17 16:17:13',NULL,'1',20,1,'O:11:\"BlockRecord\":24:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:10:\"btPageList\";s:8:\"_tableat\";s:10:\"btPageList\";s:6:\"_where\";s:6:\"bID=31\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:15:{i:0;s:2:\"31\";i:1;s:1:\"0\";i:2;s:11:\"chrono_desc\";i:3;s:3:\"130\";i:4;s:1:\"1\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"1\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:0:\"\";i:11;s:0:\"\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"31\";s:3:\"num\";s:1:\"0\";s:7:\"orderBy\";s:11:\"chrono_desc\";s:9:\"cParentID\";s:3:\"130\";s:5:\"cThis\";s:1:\"1\";s:21:\"includeAllDescendents\";s:1:\"0\";s:8:\"paginate\";s:1:\"0\";s:14:\"displayAliases\";s:1:\"1\";s:4:\"ctID\";s:1:\"0\";s:3:\"rss\";s:1:\"0\";s:8:\"rssTitle\";s:0:\"\";s:14:\"rssDescription\";s:0:\"\";s:17:\"truncateSummaries\";s:1:\"0\";s:19:\"displayFeaturedOnly\";s:1:\"0\";s:13:\"truncateChars\";s:1:\"0\";}')
 ,(32,NULL,'2014-02-18 12:16:01','2014-02-18 12:16:01',NULL,'1',30,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:11:\"btPdfReader\";s:8:\"_tableat\";s:11:\"btPdfReader\";s:6:\"_where\";s:6:\"bID=32\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"32\";i:1;s:1:\"1\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"32\";s:3:\"fID\";s:1:\"1\";}')
 ,(33,NULL,'2014-02-18 16:16:10','2014-02-18 16:16:10',NULL,'1',30,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:11:\"btPdfReader\";s:8:\"_tableat\";s:11:\"btPdfReader\";s:6:\"_where\";s:6:\"bID=33\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"33\";i:1;s:1:\"2\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"33\";s:3:\"fID\";s:1:\"2\";}')
 ,(35,NULL,'2014-02-18 17:45:43','2014-02-18 17:45:52',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=35\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"35\";i:1;s:22:\"<h2>Rapport ISAST</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"35\";s:7:\"content\";s:22:\"<h2>Rapport ISAST</h2>\";}')
 ,(36,NULL,'2014-02-19 15:36:56','2014-02-19 15:36:56',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=36\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"36\";i:1;s:24:\"<h3>Confédération</h3>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"36\";s:7:\"content\";s:24:\"<h3>Confédération</h3>\";}')
 ,(37,NULL,'2014-02-19 15:38:09','2014-02-19 15:39:02',NULL,'1',21,1,'O:11:\"BlockRecord\":16:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:12:\"btRssDisplay\";s:8:\"_tableat\";s:12:\"btRssDisplay\";s:6:\"_where\";s:6:\"bID=37\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:7:{i:0;s:2:\"37\";i:1;s:0:\"\";i:2;s:54:\"http://www.cgt.fr/spip.php?page=backend&id_rubrique=66\";i:3;s:3:\"d/m\";i:4;s:1:\"5\";i:5;s:1:\"1\";i:6;s:1:\"1\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"37\";s:5:\"title\";s:0:\"\";s:3:\"url\";s:54:\"http://www.cgt.fr/spip.php?page=backend&id_rubrique=66\";s:10:\"dateFormat\";s:3:\"d/m\";s:14:\"itemsToDisplay\";s:1:\"5\";s:11:\"showSummary\";s:1:\"1\";s:17:\"launchInNewWindow\";s:1:\"1\";}')
 ,(38,NULL,'2014-02-19 16:19:03','2014-02-19 16:26:22',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=38\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"38\";i:1;s:356:\"<h3>Chantal Lesieur</h3>\r\n<h6>Bureau 2262</h6>\r\n<div>01 49 83 <strong>2418</strong></div>\r\n<div><strong><br /></strong></div>\r\n<h3>Françoise Lamontagne</h3>\r\n<h6>Bureau 2260</h6>\r\n<div>01 49 83 <strong>2106</strong></div>\r\n<div><strong><br /></strong></div>\r\n<div><strong><br /></strong></div>\r\n<div>Mail : cgt@ina.fr</div>\r\n<div>Fax : 01 49 83 31 7</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"38\";s:7:\"content\";s:356:\"<h3>Chantal Lesieur</h3>\r\n<h6>Bureau 2262</h6>\r\n<div>01 49 83 <strong>2418</strong></div>\r\n<div><strong><br /></strong></div>\r\n<h3>Françoise Lamontagne</h3>\r\n<h6>Bureau 2260</h6>\r\n<div>01 49 83 <strong>2106</strong></div>\r\n<div><strong><br /></strong></div>\r\n<div><strong><br /></strong></div>\r\n<div>Mail : cgt@ina.fr</div>\r\n<div>Fax : 01 49 83 31 7</div>\";}')
 ,(40,NULL,'2014-02-19 16:53:43','2014-02-19 16:54:49',NULL,'1',9,1,NULL)
 ,(41,NULL,'2014-02-19 17:20:56','2014-02-19 17:20:56',NULL,'1',20,1,NULL)
 ,(42,NULL,'2014-02-19 17:21:20','2014-02-19 17:23:07',NULL,'1',9,1,NULL)
 ,(44,NULL,'2014-02-19 17:22:02','2014-02-19 17:22:03',NULL,'1',9,1,NULL)
 ,(45,NULL,'2014-02-19 17:22:21','2014-02-19 17:22:21',NULL,'1',20,1,NULL)
 ,(46,NULL,'2014-02-27 15:49:14','2014-02-27 15:53:33',NULL,'1',9,1,NULL)
 ,(47,NULL,'2014-02-27 15:50:52','2014-02-27 15:50:52',NULL,'1',8,1,NULL)
 ,(48,NULL,'2014-02-27 15:51:11','2014-02-27 15:51:11',NULL,'1',9,1,NULL)
 ,(49,NULL,'2014-02-27 15:51:35','2014-02-27 15:51:35',NULL,'1',8,1,NULL)
 ,(50,NULL,'2014-02-27 15:54:57','2014-02-27 15:54:57',NULL,'1',8,1,NULL)
 ,(51,NULL,'2014-02-27 16:01:00','2014-02-27 16:01:12',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=51\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"51\";i:1;s:239:\"<h3><a class=\"ID_prd_1002434 ctxTooltipCard ID_prd_1002434 exa-preview\" href=\"https://reflex.ina.fr/jcms/prd_1002434/accord-portant-sur-le-statut-collectif-des-salaries-ina\">Accord portant sur le statut collectif des salariés Ina</a></h3>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"51\";s:7:\"content\";s:239:\"<h3><a class=\"ID_prd_1002434 ctxTooltipCard ID_prd_1002434 exa-preview\" href=\"https://reflex.ina.fr/jcms/prd_1002434/accord-portant-sur-le-statut-collectif-des-salaries-ina\">Accord portant sur le statut collectif des salariés Ina</a></h3>\";}')
 ,(52,NULL,'2014-02-27 16:01:38','2014-02-27 16:01:38',NULL,'1',30,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:11:\"btPdfReader\";s:8:\"_tableat\";s:11:\"btPdfReader\";s:6:\"_where\";s:6:\"bID=52\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"52\";i:1;s:1:\"3\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"52\";s:3:\"fID\";s:1:\"3\";}')
 ,(53,NULL,'2014-02-27 16:06:50','2014-02-27 16:06:50',NULL,'1',20,1,'O:11:\"BlockRecord\":24:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:10:\"btPageList\";s:8:\"_tableat\";s:10:\"btPageList\";s:6:\"_where\";s:6:\"bID=53\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:15:{i:0;s:2:\"53\";i:1;s:1:\"0\";i:2;s:11:\"display_asc\";i:3;s:3:\"133\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"1\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:0:\"\";i:11;s:0:\"\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"53\";s:3:\"num\";s:1:\"0\";s:7:\"orderBy\";s:11:\"display_asc\";s:9:\"cParentID\";s:3:\"133\";s:5:\"cThis\";s:1:\"0\";s:21:\"includeAllDescendents\";s:1:\"0\";s:8:\"paginate\";s:1:\"0\";s:14:\"displayAliases\";s:1:\"1\";s:4:\"ctID\";s:1:\"0\";s:3:\"rss\";s:1:\"0\";s:8:\"rssTitle\";s:0:\"\";s:14:\"rssDescription\";s:0:\"\";s:17:\"truncateSummaries\";s:1:\"0\";s:19:\"displayFeaturedOnly\";s:1:\"0\";s:13:\"truncateChars\";s:1:\"0\";}')
 ,(54,NULL,'2014-02-27 16:08:02','2014-02-27 16:08:02',NULL,'1',20,1,'O:11:\"BlockRecord\":24:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:10:\"btPageList\";s:8:\"_tableat\";s:10:\"btPageList\";s:6:\"_where\";s:6:\"bID=54\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:15:{i:0;s:2:\"54\";i:1;s:1:\"0\";i:2;s:11:\"display_asc\";i:3;s:3:\"134\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"1\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:0:\"\";i:11;s:0:\"\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"54\";s:3:\"num\";s:1:\"0\";s:7:\"orderBy\";s:11:\"display_asc\";s:9:\"cParentID\";s:3:\"134\";s:5:\"cThis\";s:1:\"0\";s:21:\"includeAllDescendents\";s:1:\"0\";s:8:\"paginate\";s:1:\"0\";s:14:\"displayAliases\";s:1:\"1\";s:4:\"ctID\";s:1:\"0\";s:3:\"rss\";s:1:\"0\";s:8:\"rssTitle\";s:0:\"\";s:14:\"rssDescription\";s:0:\"\";s:17:\"truncateSummaries\";s:1:\"0\";s:19:\"displayFeaturedOnly\";s:1:\"0\";s:13:\"truncateChars\";s:1:\"0\";}')
 ,(55,NULL,'2014-02-27 16:08:40','2014-02-27 16:08:40',NULL,'1',9,1,NULL)
 ,(56,NULL,'2014-02-27 16:45:07','2014-02-27 16:45:07',NULL,'1',9,1,NULL)
 ,(57,NULL,'2014-02-27 16:46:23','2014-02-27 16:48:23',NULL,'1',9,1,NULL)
 ,(58,NULL,'2014-02-27 17:11:51','2014-02-27 17:11:51',NULL,'1',31,1,NULL)
 ,(59,NULL,'2014-02-27 17:47:41','2014-02-27 17:48:08',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=59\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"59\";i:1;s:2366:\"<h2 align=\"justify\"><a name=\"formation\"></a>Le droit à la formation syndicale</h2>\r\n<p align=\"justify\">Ce droit est reconnu par le code du travail (article L.451-1 et suivants). La formation dite « économique, sociale et syndicale» concerne tous les salariés qu’ils soient syndiqués ou non. <br />Les salariés qui souhaitent participer à de tels stages doivent en faire la demande auprès de la direction. Ce droit est égal à 12 jours par an qui peuvent être pris en une ou plusieurs fois.<br />Ce congé est indépendant des droits à congés annuels, des jours fractionnés auxquels nous avons droit par la convention collective, des jours de RTT.<br />Le stage doit être organisé par un organisme agréé dont la liste est régulièrement remise à jour par le ministère du Travail.<br />Le salarié doit recevoir une attestation de stage, à l’issue de celui-ci. Cette attestation doit être remise à la DRH lors du retour de l’entreprise ; elle certifie la présence du salarié à la formation.</p>\r\n<div align=\"justify\">\r\n<p>Le nombre total de jours pris par l’ensemble des salariés de l’entreprise ne peut excéder un certain seuil.</p>\r\n<p>Ces formations peuvent être de divers ordres :</p>\r\n<p>- stage d\'accueil pour les nouveaux adhérents,</p>\r\n<p>- stages de différents niveaux pour les adhérents un peu plus anciens,</p>\r\n<p>- Stages \"thématiques\" : élus et mandatés, CHS CT, élus du CE, délégués du personnel. Chaque activité est expliquée, analysée pour aider les élus à bien comprendre quels sont les différents rôles et prérogatives,</p>\r\n<p>- stages plus \"techniques\" : analyse des comptes, comment négocier un accord sur le handicap, sur une mutuelle d\'entreprise...</p>\r\n<p>Ces formations peuvent être organisées par des structures de la CGT (Union locale, Union départementale, SNRT, commissions confédérales) mais aussi délivrées par des organismes spécialisés agréés.</p>\r\n<p>La section encourage ses adhérents à participer aux formations syndicales. Elles sont toujours l\'occasion d\'apprendre et d\'approfondir ses connaissances ainsi que de rencontrer d\'autres militants investis dans des secteurs qui peuvent être différents du nôtre et de notre entreprise. C\'est notamment le cas pour toutes les informations organisées par les structures de l\'interprofessionnel</p>\r\n</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"59\";s:7:\"content\";s:2366:\"<h2 align=\"justify\"><a name=\"formation\"></a>Le droit à la formation syndicale</h2>\r\n<p align=\"justify\">Ce droit est reconnu par le code du travail (article L.451-1 et suivants). La formation dite « économique, sociale et syndicale» concerne tous les salariés qu’ils soient syndiqués ou non. <br />Les salariés qui souhaitent participer à de tels stages doivent en faire la demande auprès de la direction. Ce droit est égal à 12 jours par an qui peuvent être pris en une ou plusieurs fois.<br />Ce congé est indépendant des droits à congés annuels, des jours fractionnés auxquels nous avons droit par la convention collective, des jours de RTT.<br />Le stage doit être organisé par un organisme agréé dont la liste est régulièrement remise à jour par le ministère du Travail.<br />Le salarié doit recevoir une attestation de stage, à l’issue de celui-ci. Cette attestation doit être remise à la DRH lors du retour de l’entreprise ; elle certifie la présence du salarié à la formation.</p>\r\n<div align=\"justify\">\r\n<p>Le nombre total de jours pris par l’ensemble des salariés de l’entreprise ne peut excéder un certain seuil.</p>\r\n<p>Ces formations peuvent être de divers ordres :</p>\r\n<p>- stage d\'accueil pour les nouveaux adhérents,</p>\r\n<p>- stages de différents niveaux pour les adhérents un peu plus anciens,</p>\r\n<p>- Stages \"thématiques\" : élus et mandatés, CHS CT, élus du CE, délégués du personnel. Chaque activité est expliquée, analysée pour aider les élus à bien comprendre quels sont les différents rôles et prérogatives,</p>\r\n<p>- stages plus \"techniques\" : analyse des comptes, comment négocier un accord sur le handicap, sur une mutuelle d\'entreprise...</p>\r\n<p>Ces formations peuvent être organisées par des structures de la CGT (Union locale, Union départementale, SNRT, commissions confédérales) mais aussi délivrées par des organismes spécialisés agréés.</p>\r\n<p>La section encourage ses adhérents à participer aux formations syndicales. Elles sont toujours l\'occasion d\'apprendre et d\'approfondir ses connaissances ainsi que de rencontrer d\'autres militants investis dans des secteurs qui peuvent être différents du nôtre et de notre entreprise. C\'est notamment le cas pour toutes les informations organisées par les structures de l\'interprofessionnel</p>\r\n</div>\";}')
 ,(60,NULL,'2014-02-27 17:48:26','2014-02-27 17:48:56',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=60\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"60\";i:1;s:3664:\"<h2 align=\"justify\"><a name=\"greve\"></a>Le droit de grève</h2>\r\n<p align=\"justify\">En France, la grève est un droit reconnu même s’il est encadré, ce qui n’est pas le cas dans tous les pays. Nous considérons qu’il s’agit d’un acquis : le droit pour les salariés de se faire entendre collectivement quand ils sont mécontents. Il doit s’agir d’une « cessation concertée du travail ».</p>\r\n<p align=\"justify\">À l’Ina, pour faire grève, il faut qu’il y ait dépôt d’un préavis de grève 5 jours à l’avance par une des organisations syndicales représentatives de l’entreprise. C’est une des conséquences de notre statut d’établissement public et de la notion de continuation du service public. Le préavis doit indiquer « le lieu, la date, l’heure du début de la grève ainsi que sa durée, limitée ou non ». Pendant la durée du préavis, des négociations doivent avoir lieu.</p>\r\n<p align=\"justify\">Chaque salarié a le droit de faire grève et ne peut être sanctionné pour cela, ne l’oublions pas. La grève ne rompt pas le contrat de travail. Du moment qu\'un préavis est déposé et qu\'il n\'a pas été levé, tous les salariés sont couverts qu\'ils soient adhérents ou pas du syndicat qui dépose le préavis.</p>\r\n<p align=\"justify\">Contrairement à ce qu’on entend souvent dans les médias, on ne fait jamais grève par plaisir : cesser le travail est une décision importante, qu’on ne prend pas tout seul dans son coin.<br />C’est aussi une décision qui coûte : il n’y a qu’à regarder notre bulletin de salaire quand il y a eu des jours de grève, comme pendant la mobilisation contre le CPE !</p>\r\n<p align=\"justify\">La retenue sur salaire est liée à la durée d\'absence. Elle se fait sur le salaire mensuel et est égale à :<br />- 1/60ème pour une absence de moins d\'une heure<br />- 1/50ème pour une absence de plus d\'une heure mais de moins d\'une demi-journée<br />- 1/30ème pour une absence de plus d\'une demi-journée mais de moins d\'une journée.</p>\r\n<p align=\"justify\">Il est également possible de déposer un préavis pour une demi-journée. Dans ce cas, la retenue sur salaire est équivalente à une demi-journée de travail.</p>\r\n<div align=\"justify\">\r\n<p>Évidemment, pour qu’une grève soit réussie, c’est-à-dire finalement pour gagner, elle doit être organisée et mobiliser le plus possible de salariés, être démocratique, les salariés doivent pouvoir s’exprimer en assemblée générale, les organisations syndicales ont bien sûr un rôle important à y jouer.</p>\r\n<p>N’oublions pas que ce sont de grandes grèves, massives, populaires, qui ont pu arracher des revendications importantes : la semaine de 40 heures, les congés payés en 1936 et, plus proche de nous, les accords de Grenelle en 1968 mais aussi des gains sur des revendications plus ponctuelles mais néanmoins importantes dans les entreprises : des embauches, des gains sur les salaires, sur les conditions de travail. </p>\r\n<p>La grève, c’est la matérialisation d’un rapport de forces qui, à un moment, se concrétise dans l’action. </p>\r\n<p>La grève, c’est aussi un moment où beaucoup de choses changent : finis les impératifs du boulot, on a plus de temps même si on fait beaucoup de choses inhabituelles, on se parle et on parle même avec des collègues que l’on connaît peu, on a des activités qu’on n’aurait jamais cru possibles… Tous les salariés qui ont vécu des périodes de grève savent qu’après, ce n’est plus jamais exactement pareil : il s’est passé quelque chose qu’on a pris nous-mêmes en main. </p>\r\n</div>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"60\";s:7:\"content\";s:3664:\"<h2 align=\"justify\"><a name=\"greve\"></a>Le droit de grève</h2>\r\n<p align=\"justify\">En France, la grève est un droit reconnu même s’il est encadré, ce qui n’est pas le cas dans tous les pays. Nous considérons qu’il s’agit d’un acquis : le droit pour les salariés de se faire entendre collectivement quand ils sont mécontents. Il doit s’agir d’une « cessation concertée du travail ».</p>\r\n<p align=\"justify\">À l’Ina, pour faire grève, il faut qu’il y ait dépôt d’un préavis de grève 5 jours à l’avance par une des organisations syndicales représentatives de l’entreprise. C’est une des conséquences de notre statut d’établissement public et de la notion de continuation du service public. Le préavis doit indiquer « le lieu, la date, l’heure du début de la grève ainsi que sa durée, limitée ou non ». Pendant la durée du préavis, des négociations doivent avoir lieu.</p>\r\n<p align=\"justify\">Chaque salarié a le droit de faire grève et ne peut être sanctionné pour cela, ne l’oublions pas. La grève ne rompt pas le contrat de travail. Du moment qu\'un préavis est déposé et qu\'il n\'a pas été levé, tous les salariés sont couverts qu\'ils soient adhérents ou pas du syndicat qui dépose le préavis.</p>\r\n<p align=\"justify\">Contrairement à ce qu’on entend souvent dans les médias, on ne fait jamais grève par plaisir : cesser le travail est une décision importante, qu’on ne prend pas tout seul dans son coin.<br />C’est aussi une décision qui coûte : il n’y a qu’à regarder notre bulletin de salaire quand il y a eu des jours de grève, comme pendant la mobilisation contre le CPE !</p>\r\n<p align=\"justify\">La retenue sur salaire est liée à la durée d\'absence. Elle se fait sur le salaire mensuel et est égale à :<br />- 1/60ème pour une absence de moins d\'une heure<br />- 1/50ème pour une absence de plus d\'une heure mais de moins d\'une demi-journée<br />- 1/30ème pour une absence de plus d\'une demi-journée mais de moins d\'une journée.</p>\r\n<p align=\"justify\">Il est également possible de déposer un préavis pour une demi-journée. Dans ce cas, la retenue sur salaire est équivalente à une demi-journée de travail.</p>\r\n<div align=\"justify\">\r\n<p>Évidemment, pour qu’une grève soit réussie, c’est-à-dire finalement pour gagner, elle doit être organisée et mobiliser le plus possible de salariés, être démocratique, les salariés doivent pouvoir s’exprimer en assemblée générale, les organisations syndicales ont bien sûr un rôle important à y jouer.</p>\r\n<p>N’oublions pas que ce sont de grandes grèves, massives, populaires, qui ont pu arracher des revendications importantes : la semaine de 40 heures, les congés payés en 1936 et, plus proche de nous, les accords de Grenelle en 1968 mais aussi des gains sur des revendications plus ponctuelles mais néanmoins importantes dans les entreprises : des embauches, des gains sur les salaires, sur les conditions de travail. </p>\r\n<p>La grève, c’est la matérialisation d’un rapport de forces qui, à un moment, se concrétise dans l’action. </p>\r\n<p>La grève, c’est aussi un moment où beaucoup de choses changent : finis les impératifs du boulot, on a plus de temps même si on fait beaucoup de choses inhabituelles, on se parle et on parle même avec des collègues que l’on connaît peu, on a des activités qu’on n’aurait jamais cru possibles… Tous les salariés qui ont vécu des périodes de grève savent qu’après, ce n’est plus jamais exactement pareil : il s’est passé quelque chose qu’on a pris nous-mêmes en main. </p>\r\n</div>\";}')
 ,(61,NULL,'2014-02-28 09:58:26','2014-02-28 09:58:26',NULL,'1',31,1,NULL)
 ,(62,NULL,'2014-02-28 10:46:20','2014-02-28 10:46:20',NULL,'1',31,1,NULL)
 ,(63,NULL,'2014-02-28 10:46:40','2014-02-28 10:46:40',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=63\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"63\";i:1;s:51:\"<h2><a name=\"accords\"></a>Accords d\'entreprise</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"63\";s:7:\"content\";s:51:\"<h2><a name=\"accords\"></a>Accords d\'entreprise</h2>\";}')
 ,(64,NULL,'2014-02-28 10:46:51','2014-02-28 10:46:51',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=64\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"64\";i:1;s:36:\"<h2><a name=\"status\"></a>Status</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"64\";s:7:\"content\";s:36:\"<h2><a name=\"status\"></a>Status</h2>\";}')
 ,(65,NULL,'2014-02-28 10:58:21','2014-02-28 10:58:22',NULL,'1',31,1,NULL)
 ,(66,NULL,'2014-02-28 11:00:27','2014-02-28 11:00:27',NULL,'1',31,1,NULL)
 ,(68,NULL,'2014-02-28 14:59:59','2014-02-28 14:59:59',NULL,'1',20,1,'O:11:\"BlockRecord\":24:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:10:\"btPageList\";s:8:\"_tableat\";s:10:\"btPageList\";s:6:\"_where\";s:6:\"bID=68\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:15:{i:0;s:2:\"68\";i:1;s:1:\"0\";i:2;s:11:\"display_asc\";i:3;s:3:\"133\";i:4;s:1:\"1\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"1\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:0:\"\";i:11;s:0:\"\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"68\";s:3:\"num\";s:1:\"0\";s:7:\"orderBy\";s:11:\"display_asc\";s:9:\"cParentID\";s:3:\"133\";s:5:\"cThis\";s:1:\"1\";s:21:\"includeAllDescendents\";s:1:\"0\";s:8:\"paginate\";s:1:\"0\";s:14:\"displayAliases\";s:1:\"1\";s:4:\"ctID\";s:1:\"0\";s:3:\"rss\";s:1:\"0\";s:8:\"rssTitle\";s:0:\"\";s:14:\"rssDescription\";s:0:\"\";s:17:\"truncateSummaries\";s:1:\"0\";s:19:\"displayFeaturedOnly\";s:1:\"0\";s:13:\"truncateChars\";s:1:\"0\";}')
 ,(69,NULL,'2014-02-28 16:01:04','2014-02-28 16:01:04',NULL,'1',33,1,NULL)
 ,(70,NULL,'2014-02-28 16:52:06','2014-02-28 16:52:06',NULL,'1',9,1,'O:11:\"BlockRecord\":11:{s:5:\"_dbat\";i:1;s:6:\"_table\";s:14:\"btContentLocal\";s:8:\"_tableat\";s:14:\"btContentLocal\";s:6:\"_where\";s:6:\"bID=70\";s:6:\"_saved\";b:1;s:8:\"_lasterr\";b:0;s:9:\"_original\";a:2:{i:0;s:2:\"70\";i:1;s:15:\"<h2>Agenda</h2>\";}s:11:\"foreignName\";s:11:\"blockrecord\";s:8:\"lockMode\";s:12:\" for update \";s:3:\"bID\";s:2:\"70\";s:7:\"content\";s:15:\"<h2>Agenda</h2>\";}')
 ,(71,NULL,'2014-02-28 17:33:20','2014-02-28 17:33:20',NULL,'1',33,1,NULL)
 ,(72,NULL,'2014-02-28 17:43:20','2014-02-28 17:43:28',NULL,'1',31,1,NULL)
 ,(73,NULL,'2014-02-28 17:43:58','2014-02-28 17:43:58',NULL,'1',33,1,NULL)
 ,(74,NULL,'2014-02-28 17:47:17','2014-02-28 17:47:17',NULL,'1',33,1,NULL)
 ,(75,NULL,'2014-02-28 17:47:59','2014-02-28 17:47:59',NULL,'1',33,1,NULL)
 ,(76,NULL,'2014-02-28 17:48:37','2014-02-28 17:48:37',NULL,'1',33,1,NULL)
 ,(77,NULL,'2014-02-28 17:49:06','2014-02-28 17:49:06',NULL,'1',33,1,NULL)
 ,(78,NULL,'2014-02-28 17:50:01','2014-02-28 17:50:01',NULL,'1',33,1,NULL)
 ,(79,NULL,'2014-02-28 17:50:11','2014-02-28 17:50:11',NULL,'1',33,1,NULL)
 ,(81,NULL,'2014-03-03 16:45:44','2014-03-03 16:45:44',NULL,'1',33,1,NULL)
 ,(82,NULL,'2014-03-03 16:49:18','2014-03-03 16:49:18',NULL,'1',33,1,NULL)
 ,(83,NULL,'2014-03-03 17:03:49','2014-03-03 17:03:49',NULL,'1',33,1,NULL)
 ,(84,NULL,'2014-03-03 17:04:31','2014-03-03 17:04:31',NULL,'1',33,1,NULL)
 ,(85,NULL,'2014-05-05 13:08:53','2014-05-05 13:11:34',NULL,'1',9,1,NULL)
 ,(86,NULL,'2014-05-05 13:11:13','2014-05-05 13:13:23',NULL,'1',9,1,NULL)
 ,(87,NULL,'2014-05-05 13:32:07','2014-05-05 13:32:07',NULL,'1',9,1,NULL);

DROP TABLE IF EXISTS blocktypepermissionblocktypeaccesslist;

CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS blocktypepermissionblocktypeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS blocktypes;

CREATE TABLE IF NOT EXISTS `blocktypes` (
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

INSERT INTO blocktypes VALUES(1,'core_scrapbook_display','Scrapbook Display (Core)','Proxy block for blocks pasted through the scrapbook.',1,0,0,1,0,400,400,0)
 ,(2,'core_stack_display','Stack Display (Core)','Proxy block for stacks added through the UI.',1,0,0,1,0,400,400,0)
 ,(3,'dashboard_featured_addon','Dashboard Featured Add-On','Features an add-on from concrete5.org.',1,0,0,1,0,300,100,0)
 ,(4,'dashboard_featured_theme','Dashboard Featured Theme','Features a theme from concrete5.org.',1,0,0,1,0,300,100,0)
 ,(5,'dashboard_newsflow_latest','Dashboard Newsflow Latest','Grabs the latest newsflow data from concrete5.org.',1,0,0,1,0,400,400,0)
 ,(6,'dashboard_app_status','Dashboard App Status','Displays update and welcome back information on your dashboard.',1,0,0,1,0,400,400,0)
 ,(7,'dashboard_site_activity','Dashboard Site Activity','Displays a summary of website activity.',1,0,0,1,0,400,400,0)
 ,(8,'autonav','Auto-Nav','Creates navigation trees and sitemaps.',1,0,0,0,4,500,350,0)
 ,(9,'content','Content','HTML/WYSIWYG Editor Content.',1,0,0,0,1,600,465,0)
 ,(10,'date_nav','Date Navigation','A collapsible date based navigation tree',1,0,0,0,5,500,350,0)
 ,(11,'external_form','External Form','Include external forms in the filesystem and place them on pages.',1,0,0,0,6,370,100,0)
 ,(12,'file','File','Link to files stored in the asset library.',1,0,0,0,7,300,250,0)
 ,(13,'flash_content','Flash Content','Embeds SWF files, including flash detection.',1,0,0,0,8,380,200,0)
 ,(14,'form','Form','Build simple forms and surveys.',1,0,0,0,9,420,430,0)
 ,(15,'google_map','Google Map','Enter an address and a Google Map of that location will be placed in your page.',1,0,0,0,10,400,200,0)
 ,(16,'guestbook','Guestbook / Comments','Adds blog-style comments (a guestbook) to your page.',1,0,1,0,11,370,480,0)
 ,(17,'html','HTML','For adding HTML by hand.',1,0,0,0,12,600,465,0)
 ,(18,'image','Image','Adds images and onstates from the library to pages.',1,0,0,0,13,400,550,0)
 ,(19,'next_previous','Next & Previous Nav','Navigate through sibling pages.',1,0,0,0,14,430,400,0)
 ,(20,'page_list','Page List','List pages based on type, area.',1,0,0,0,15,500,350,0)
 ,(21,'rss_displayer','RSS Displayer','Fetch, parse and display the contents of an RSS or Atom feed.',1,0,0,0,16,400,330,0)
 ,(22,'search','Search','Add a search box to your site.',1,0,0,0,17,400,240,0)
 ,(23,'slideshow','Slideshow','Display a running loop of images.',1,0,0,0,18,550,400,0)
 ,(24,'survey','Survey','Provide a simple survey, along with results in a pie chart format.',1,0,0,0,19,420,300,0)
 ,(25,'tags','Tags','List pages based on type, area.',1,0,0,0,20,450,260,0)
 ,(26,'video','Video Player','Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.',1,0,0,0,21,320,220,0)
 ,(27,'youtube','YouTube Video','Embeds a YouTube Video in your web page.',1,0,0,0,22,400,210,0)
 ,(28,'extended_search','Extended Search','A more advanced search box for your site.',1,0,0,0,23,400,170,1)
 ,(30,'pdf_reader','PDF Reader','Reads a PDF file stored in the asset library.',1,0,0,0,2,600,250,0)
 ,(31,'aside_menu','Menu interne à la page','Ce menu permet de scanner tous les blocks de type « Contenu », trouver les ancres et en faire des liens dans un menu de navigation',1,0,0,0,3,600,250,0)
 ,(32,'swp_breadcrumbs','Breadcrumbs','Add breadcrumbs to your website<br />By <a href=\"http://www.smartwebprojects.net/\">www.smartwebprojects.net</a>',1,0,0,0,24,400,80,2)
 ,(33,'calendar','Calendrier','Affiche un calendrier avec des évènements',1,0,0,0,25,600,250,0);

DROP TABLE IF EXISTS btasidemenu;

CREATE TABLE IF NOT EXISTS `btasidemenu` (
  `bID` int(10) unsigned NOT NULL,
  `isSticky` tinyint(3) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT 'none',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btasidemenu VALUES(58,1,'none')
 ,(61,1,'none')
 ,(62,1,'none')
 ,(65,1,'Menu')
 ,(66,1,'Menu')
 ,(72,1,'Menu');

DROP TABLE IF EXISTS btcalendar;

CREATE TABLE IF NOT EXISTS `btcalendar` (
  `bID` int(10) unsigned NOT NULL,
  `events` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btcalendar VALUES(84,'{\"03-03-2014\":{\"11.00\":\"TEst\",\"12.00\":\"dd\",\"13.30\":\"R\\u00e9union des d\\u00e9l\\u00e9gu\\u00e9s du personnel 2\",\"14.00\":\"R\\u00e9union des d\\u00e9l\\u00e9gu\\u00e9s du personnel\",\"15.00\":\"Test\"},\"14-05-2014\":{\"14.00\":\"TEST\"}}');

DROP TABLE IF EXISTS btcontentfile;

CREATE TABLE IF NOT EXISTS `btcontentfile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btcontentimage;

CREATE TABLE IF NOT EXISTS `btcontentimage` (
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



DROP TABLE IF EXISTS btcontentlocal;

CREATE TABLE IF NOT EXISTS `btcontentlocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btcontentlocal VALUES(1,'	<div id=\"newsflow-header-first-run\"><h1>Welcome to concrete5.</h1>\n						<h2>It\'s easy to edit content and add pages using in-context editing.</h2></div>\n						')
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
 ,(28,'<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>')
 ,(35,'<h2>Rapport ISAST</h2>')
 ,(36,'<h3>Confédération</h3>')
 ,(38,'<h3>Chantal Lesieur</h3>\r\n<h6>Bureau 2262</h6>\r\n<div>01 49 83 <strong>2418</strong></div>\r\n<div><strong><br /></strong></div>\r\n<h3>Françoise Lamontagne</h3>\r\n<h6>Bureau 2260</h6>\r\n<div>01 49 83 <strong>2106</strong></div>\r\n<div><strong><br /></strong></div>\r\n<div><strong><br /></strong></div>\r\n<div>Mail : cgt@ina.fr</div>\r\n<div>Fax : 01 49 83 31 7</div>')
 ,(40,'<h2>Agenda</h2>\r\n<h3>Réunions avec la direction</h3>\r\n<p><strong>Jeudi 17 octobre</strong>       <br />réunion d’information sur la CCMSI<br /><br /><strong>Vendredi 18 octobre    </strong><br />réunion mensuelle des délégués du personnel<br /><br /><strong>Mercredi 22 octobre   </strong>  <br />réunion du Comité d’entreprise<br /><br /><strong>Mardi 5  novembre      </strong><br />réunion du comité d’entreprise<br /><br /><strong>Mercredi 6 novembre </strong>      <br />négociation annuelle obligatoire sur les salaires (2)</p>\r\n<h3>Réunions syndicales</h3>\r\n<p><strong>Vendredi 7 mars </strong><span>      </span><br /><span>Réunion des délégués du personnel</span></p>')
 ,(42,'<h2>Accords d\'entreprise</h2>\r\n<p>Dans cette rubrique vous pouvez trouver tous les accords d\'entreprises classés par date.</p>')
 ,(44,'<h2>Statuts</h2>')
 ,(46,'<h2>Accords d\'entreprise</h2>\r\n<p><a title=\"Accords d\'entreprise\" href=\"{CCM:CID_133}\">Voir tous les accords</a></p>')
 ,(48,'<h2>Status</h2>')
 ,(51,'<h3><a class=\"ID_prd_1002434 ctxTooltipCard ID_prd_1002434 exa-preview\" href=\"https://reflex.ina.fr/jcms/prd_1002434/accord-portant-sur-le-statut-collectif-des-salaries-ina\">Accord portant sur le statut collectif des salariés Ina</a></h3>')
 ,(55,'<h2>Accords d\'entreprise</h2>')
 ,(56,'<h2 align=\"justify\">L<span style=\"font-size: 1.6875rem; line-height: 1.4;\">e droit de grève</span></h2>\r\n<p align=\"justify\">En France, la grève est un droit reconnu même s’il est encadré, ce qui n’est pas le cas dans tous les pays. Nous considérons qu’il s’agit d’un acquis : le droit pour les salariés de se faire entendre collectivement quand ils sont mécontents. Il doit s’agir d’une « cessation concertée du travail ».</p>\r\n<p align=\"justify\">À l’Ina, pour faire grève, il faut qu’il y ait dépôt d’un préavis de grève 5 jours à l’avance par une des organisations syndicales représentatives de l’entreprise. C’est une des conséquences de notre statut d’établissement public et de la notion de continuation du service public. Le préavis doit indiquer « le lieu, la date, l’heure du début de la grève ainsi que sa durée, limitée ou non ». Pendant la durée du préavis, des négociations doivent avoir lieu.</p>\r\n<p align=\"justify\">Chaque salarié a le droit de faire grève et ne peut être sanctionné pour cela, ne l’oublions pas. La grève ne rompt pas le contrat de travail. Du moment qu\'un préavis est déposé et qu\'il n\'a pas été levé, tous les salariés sont couverts qu\'ils soient adhérents ou pas du syndicat qui dépose le préavis.</p>\r\n<p align=\"justify\">Contrairement à ce qu’on entend souvent dans les médias, on ne fait jamais grève par plaisir : cesser le travail est une décision importante, qu’on ne prend pas tout seul dans son coin.<br />C’est aussi une décision qui coûte : il n’y a qu’à regarder notre bulletin de salaire quand il y a eu des jours de grève, comme pendant la mobilisation contre le CPE !</p>\r\n<p align=\"justify\">La retenue sur salaire est liée à la durée d\'absence. Elle se fait sur le salaire mensuel et est égale à :<br />- 1/60ème pour une absence de moins d\'une heure<br />- 1/50ème pour une absence de plus d\'une heure mais de moins d\'une demi-journée<br />- 1/30ème pour une absence de plus d\'une demi-journée mais de moins d\'une journée.</p>\r\n<p align=\"justify\">Il est également possible de déposer un préavis pour une demi-journée. Dans ce cas, la retenue sur salaire est équivalente à une demi-journée de travail.</p>\r\n<div align=\"justify\">\r\n<p>Évidemment, pour qu’une grève soit réussie, c’est-à-dire finalement pour gagner, elle doit être organisée et mobiliser le plus possible de salariés, être démocratique, les salariés doivent pouvoir s’exprimer en assemblée générale, les organisations syndicales ont bien sûr un rôle important à y jouer.</p>\r\n<p>N’oublions pas que ce sont de grandes grèves, massives, populaires, qui ont pu arracher des revendications importantes : la semaine de 40 heures, les congés payés en 1936 et, plus proche de nous, les accords de Grenelle en 1968 mais aussi des gains sur des revendications plus ponctuelles mais néanmoins importantes dans les entreprises : des embauches, des gains sur les salaires, sur les conditions de travail. </p>\r\n<p>La grève, c’est la matérialisation d’un rapport de forces qui, à un moment, se concrétise dans l’action. </p>\r\n<p>La grève, c’est aussi un moment où beaucoup de choses changent : finis les impératifs du boulot, on a plus de temps même si on fait beaucoup de choses inhabituelles, on se parle et on parle même avec des collègues que l’on connaît peu, on a des activités qu’on n’aurait jamais cru possibles… Tous les salariés qui ont vécu des périodes de grève savent qu’après, ce n’est plus jamais exactement pareil : il s’est passé quelque chose qu’on a pris nous-mêmes en main. </p>\r\n</div>')
 ,(57,'<h2 align=\"justify\"><a name=\"greve\"></a>L<span style=\"font-size: 1.6875rem; line-height: 1.4;\">e droit de grève</span></h2>\r\n<p align=\"justify\">En France, la grève est un droit reconnu même s’il est encadré, ce qui n’est pas le cas dans tous les pays. Nous considérons qu’il s’agit d’un acquis : le droit pour les salariés de se faire entendre collectivement quand ils sont mécontents. Il doit s’agir d’une « cessation concertée du travail ».</p>\r\n<p align=\"justify\">À l’Ina, pour faire grève, il faut qu’il y ait dépôt d’un préavis de grève 5 jours à l’avance par une des organisations syndicales représentatives de l’entreprise. C’est une des conséquences de notre statut d’établissement public et de la notion de continuation du service public. Le préavis doit indiquer « le lieu, la date, l’heure du début de la grève ainsi que sa durée, limitée ou non ». Pendant la durée du préavis, des négociations doivent avoir lieu.</p>\r\n<p align=\"justify\">Chaque salarié a le droit de faire grève et ne peut être sanctionné pour cela, ne l’oublions pas. La grève ne rompt pas le contrat de travail. Du moment qu\'un préavis est déposé et qu\'il n\'a pas été levé, tous les salariés sont couverts qu\'ils soient adhérents ou pas du syndicat qui dépose le préavis.</p>\r\n<p align=\"justify\">Contrairement à ce qu’on entend souvent dans les médias, on ne fait jamais grève par plaisir : cesser le travail est une décision importante, qu’on ne prend pas tout seul dans son coin.<br />C’est aussi une décision qui coûte : il n’y a qu’à regarder notre bulletin de salaire quand il y a eu des jours de grève, comme pendant la mobilisation contre le CPE !</p>\r\n<p align=\"justify\">La retenue sur salaire est liée à la durée d\'absence. Elle se fait sur le salaire mensuel et est égale à :<br />- 1/60ème pour une absence de moins d\'une heure<br />- 1/50ème pour une absence de plus d\'une heure mais de moins d\'une demi-journée<br />- 1/30ème pour une absence de plus d\'une demi-journée mais de moins d\'une journée.</p>\r\n<p align=\"justify\">Il est également possible de déposer un préavis pour une demi-journée. Dans ce cas, la retenue sur salaire est équivalente à une demi-journée de travail.</p>\r\n<div align=\"justify\">\r\n<p>Évidemment, pour qu’une grève soit réussie, c’est-à-dire finalement pour gagner, elle doit être organisée et mobiliser le plus possible de salariés, être démocratique, les salariés doivent pouvoir s’exprimer en assemblée générale, les organisations syndicales ont bien sûr un rôle important à y jouer.</p>\r\n<p>N’oublions pas que ce sont de grandes grèves, massives, populaires, qui ont pu arracher des revendications importantes : la semaine de 40 heures, les congés payés en 1936 et, plus proche de nous, les accords de Grenelle en 1968 mais aussi des gains sur des revendications plus ponctuelles mais néanmoins importantes dans les entreprises : des embauches, des gains sur les salaires, sur les conditions de travail. </p>\r\n<p>La grève, c’est la matérialisation d’un rapport de forces qui, à un moment, se concrétise dans l’action. </p>\r\n<p>La grève, c’est aussi un moment où beaucoup de choses changent : finis les impératifs du boulot, on a plus de temps même si on fait beaucoup de choses inhabituelles, on se parle et on parle même avec des collègues que l’on connaît peu, on a des activités qu’on n’aurait jamais cru possibles… Tous les salariés qui ont vécu des périodes de grève savent qu’après, ce n’est plus jamais exactement pareil : il s’est passé quelque chose qu’on a pris nous-mêmes en main. </p>\r\n</div>')
 ,(59,'<h2 align=\"justify\"><a name=\"formation\"></a>Le droit à la formation syndicale</h2>\r\n<p align=\"justify\">Ce droit est reconnu par le code du travail (article L.451-1 et suivants). La formation dite « économique, sociale et syndicale» concerne tous les salariés qu’ils soient syndiqués ou non. <br />Les salariés qui souhaitent participer à de tels stages doivent en faire la demande auprès de la direction. Ce droit est égal à 12 jours par an qui peuvent être pris en une ou plusieurs fois.<br />Ce congé est indépendant des droits à congés annuels, des jours fractionnés auxquels nous avons droit par la convention collective, des jours de RTT.<br />Le stage doit être organisé par un organisme agréé dont la liste est régulièrement remise à jour par le ministère du Travail.<br />Le salarié doit recevoir une attestation de stage, à l’issue de celui-ci. Cette attestation doit être remise à la DRH lors du retour de l’entreprise ; elle certifie la présence du salarié à la formation.</p>\r\n<div align=\"justify\">\r\n<p>Le nombre total de jours pris par l’ensemble des salariés de l’entreprise ne peut excéder un certain seuil.</p>\r\n<p>Ces formations peuvent être de divers ordres :</p>\r\n<p>- stage d\'accueil pour les nouveaux adhérents,</p>\r\n<p>- stages de différents niveaux pour les adhérents un peu plus anciens,</p>\r\n<p>- Stages \"thématiques\" : élus et mandatés, CHS CT, élus du CE, délégués du personnel. Chaque activité est expliquée, analysée pour aider les élus à bien comprendre quels sont les différents rôles et prérogatives,</p>\r\n<p>- stages plus \"techniques\" : analyse des comptes, comment négocier un accord sur le handicap, sur une mutuelle d\'entreprise...</p>\r\n<p>Ces formations peuvent être organisées par des structures de la CGT (Union locale, Union départementale, SNRT, commissions confédérales) mais aussi délivrées par des organismes spécialisés agréés.</p>\r\n<p>La section encourage ses adhérents à participer aux formations syndicales. Elles sont toujours l\'occasion d\'apprendre et d\'approfondir ses connaissances ainsi que de rencontrer d\'autres militants investis dans des secteurs qui peuvent être différents du nôtre et de notre entreprise. C\'est notamment le cas pour toutes les informations organisées par les structures de l\'interprofessionnel</p>\r\n</div>')
 ,(60,'<h2 align=\"justify\"><a name=\"greve\"></a>Le droit de grève</h2>\r\n<p align=\"justify\">En France, la grève est un droit reconnu même s’il est encadré, ce qui n’est pas le cas dans tous les pays. Nous considérons qu’il s’agit d’un acquis : le droit pour les salariés de se faire entendre collectivement quand ils sont mécontents. Il doit s’agir d’une « cessation concertée du travail ».</p>\r\n<p align=\"justify\">À l’Ina, pour faire grève, il faut qu’il y ait dépôt d’un préavis de grève 5 jours à l’avance par une des organisations syndicales représentatives de l’entreprise. C’est une des conséquences de notre statut d’établissement public et de la notion de continuation du service public. Le préavis doit indiquer « le lieu, la date, l’heure du début de la grève ainsi que sa durée, limitée ou non ». Pendant la durée du préavis, des négociations doivent avoir lieu.</p>\r\n<p align=\"justify\">Chaque salarié a le droit de faire grève et ne peut être sanctionné pour cela, ne l’oublions pas. La grève ne rompt pas le contrat de travail. Du moment qu\'un préavis est déposé et qu\'il n\'a pas été levé, tous les salariés sont couverts qu\'ils soient adhérents ou pas du syndicat qui dépose le préavis.</p>\r\n<p align=\"justify\">Contrairement à ce qu’on entend souvent dans les médias, on ne fait jamais grève par plaisir : cesser le travail est une décision importante, qu’on ne prend pas tout seul dans son coin.<br />C’est aussi une décision qui coûte : il n’y a qu’à regarder notre bulletin de salaire quand il y a eu des jours de grève, comme pendant la mobilisation contre le CPE !</p>\r\n<p align=\"justify\">La retenue sur salaire est liée à la durée d\'absence. Elle se fait sur le salaire mensuel et est égale à :<br />- 1/60ème pour une absence de moins d\'une heure<br />- 1/50ème pour une absence de plus d\'une heure mais de moins d\'une demi-journée<br />- 1/30ème pour une absence de plus d\'une demi-journée mais de moins d\'une journée.</p>\r\n<p align=\"justify\">Il est également possible de déposer un préavis pour une demi-journée. Dans ce cas, la retenue sur salaire est équivalente à une demi-journée de travail.</p>\r\n<div align=\"justify\">\r\n<p>Évidemment, pour qu’une grève soit réussie, c’est-à-dire finalement pour gagner, elle doit être organisée et mobiliser le plus possible de salariés, être démocratique, les salariés doivent pouvoir s’exprimer en assemblée générale, les organisations syndicales ont bien sûr un rôle important à y jouer.</p>\r\n<p>N’oublions pas que ce sont de grandes grèves, massives, populaires, qui ont pu arracher des revendications importantes : la semaine de 40 heures, les congés payés en 1936 et, plus proche de nous, les accords de Grenelle en 1968 mais aussi des gains sur des revendications plus ponctuelles mais néanmoins importantes dans les entreprises : des embauches, des gains sur les salaires, sur les conditions de travail. </p>\r\n<p>La grève, c’est la matérialisation d’un rapport de forces qui, à un moment, se concrétise dans l’action. </p>\r\n<p>La grève, c’est aussi un moment où beaucoup de choses changent : finis les impératifs du boulot, on a plus de temps même si on fait beaucoup de choses inhabituelles, on se parle et on parle même avec des collègues que l’on connaît peu, on a des activités qu’on n’aurait jamais cru possibles… Tous les salariés qui ont vécu des périodes de grève savent qu’après, ce n’est plus jamais exactement pareil : il s’est passé quelque chose qu’on a pris nous-mêmes en main. </p>\r\n</div>')
 ,(63,'<h2><a name=\"accords\"></a>Accords d\'entreprise</h2>')
 ,(64,'<h2><a name=\"status\"></a>Status</h2>')
 ,(70,'<h2>Agenda</h2>')
 ,(85,'<h2>Edito</h2>')
 ,(86,'<p>La CGT a été reçue au Ministère de la Culture et de la Communication, dans le cadre d’une délégation des élu/es du Comité d’entreprise à l’occasion du droit d’alerte déclenché en novembre 2013, ou seule comme en mars dernier.<br /> <br /> Nous avons toujours dit la même chose aux représentant/es de la Direction générale des médias et des industries culturelles (DGMIC) ou aux conseillers de la Ministre de la Culture et de la Communication (Daniel Guérin puis Alexandre Ruff, conseiller social, et Kil Pham, conseiller pour l’audiovisuel et le cinéma) :</p>\r\n<p>- l’Ina a besoin d’une stratégie d’entreprise qui mette au cœur l’ensemble de ses missions de service public,</p>\r\n<p>- pour cela, le financement public de l’Institut doit être garanti,</p>\r\n<p>- les objectifs du Com 4, qui va bientôt être négocié, doivent s’appuyer en tout premier lieu sur les missions, sur ce que l’Ina sait faire et sur ce qui fait sa spécificité ; les activités commerciales doivent s’y adosser. Il n’est pas envisageable, et il serait dangereux d’inverser cette vision</p>\r\n<p>- sur le plan social, au vu des spécificités de l’Ina, de sa pyramide des âges, des métiers exercés, le chantier de la gestion prévisionnelle des emplois et des compétences est urgent et incontournable ; il ne peut exister que dans le cadre d’un travail avec les organisations syndicales représentatives, et elles le sont, de l’Ina</p>\r\n<p>- le besoin d’un projet immobilier est toujours là. Il doit lui aussi être adossé à la stratégie de l’entreprise.</p>\r\n<p>Depuis des semaines, des mois, nous tenons le même discours. Il est écouté mais sera-t-il entendu ? Ce discours est évidemment aussi à destination de la prochaine présidence. Madame Saal vient d’être nommée mercredi 7 mai et arrivera le 12 mai à l’Ina. Son arrivée est attendue dans l’entreprise et suscité, comme il est normal, beaucoup de questions.</p>\r\n<p>Dès qu’elle sera installée, la CGT demandera un rendez vous et ses représentant/es tiendront le même discours.  Nous avons une certaine constance et de solides convictions…</p>')
 ,(87,'<h1>Liens utiles</h1>\r\n<h2>La CGT</h2>\r\n<ul>\r\n<li><a href=\"http://www.cgt.fr/\" target=\"_blank\">Site de la confédération</a></li>\r\n<li><a href=\"http://www.fnsac-cgt.com\">Site de la CGT Spectacle</a></li>\r\n<li><a href=\"http://www.cgt94.fr/\">Site de l\'Union Départementale 94</a></li>\r\n<li>Site de l\'Union Locale de Champigny</li>\r\n</ul>\r\n<h2>L\'audiovisuel public</h2>\r\n<ul>\r\n<li><a href=\"http://www.snrt-cgt-ftv.org/\">Site de la CGT France Télévisions</a></li>\r\n<li><a href=\"http://www.cgt-radiofrance.org/\">Site de la CGT Radio France</a></li>\r\n</ul>');

DROP TABLE IF EXISTS btcorescrapbookdisplay;

CREATE TABLE IF NOT EXISTS `btcorescrapbookdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btcorescrapbookdisplay VALUES(23,16)
 ,(24,18)
 ,(25,21)
 ,(26,22);

DROP TABLE IF EXISTS btcorestackdisplay;

CREATE TABLE IF NOT EXISTS `btcorestackdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btdashboardnewsflowlatest;

CREATE TABLE IF NOT EXISTS `btdashboardnewsflowlatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btdashboardnewsflowlatest VALUES(8,'A')
 ,(9,'B')
 ,(12,'C');

DROP TABLE IF EXISTS btdatenav;

CREATE TABLE IF NOT EXISTS `btdatenav` (
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



DROP TABLE IF EXISTS btextendedsearch;

CREATE TABLE IF NOT EXISTS `btextendedsearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `searchPlaceholder` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btextendedsearch VALUES(30,'Recherche','Rechercher','','','');

DROP TABLE IF EXISTS btexternalform;

CREATE TABLE IF NOT EXISTS `btexternalform` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btflashcontent;

CREATE TABLE IF NOT EXISTS `btflashcontent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btform;

CREATE TABLE IF NOT EXISTS `btform` (
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



DROP TABLE IF EXISTS btformanswers;

CREATE TABLE IF NOT EXISTS `btformanswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btformanswerset;

CREATE TABLE IF NOT EXISTS `btformanswerset` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NULL DEFAULT NULL,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btformquestions;

CREATE TABLE IF NOT EXISTS `btformquestions` (
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



DROP TABLE IF EXISTS btgooglemap;

CREATE TABLE IF NOT EXISTS `btgooglemap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btguestbook;

CREATE TABLE IF NOT EXISTS `btguestbook` (
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



DROP TABLE IF EXISTS btguestbookentries;

CREATE TABLE IF NOT EXISTS `btguestbookentries` (
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



DROP TABLE IF EXISTS btnavigation;

CREATE TABLE IF NOT EXISTS `btnavigation` (
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

INSERT INTO btnavigation VALUES(47,'display_asc','custom',133,0,'none','enough',0,0)
 ,(49,'display_asc','custom',134,0,'none','enough',0,0)
 ,(50,'display_asc','custom',133,0,'none','enough',0,0);

DROP TABLE IF EXISTS btnextprevious;

CREATE TABLE IF NOT EXISTS `btnextprevious` (
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



DROP TABLE IF EXISTS btpagelist;

CREATE TABLE IF NOT EXISTS `btpagelist` (
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

INSERT INTO btpagelist VALUES(17,0,'chrono_desc',130,0,0,0,1,0,0,'','',0,0,0)
 ,(20,0,'chrono_desc',130,0,0,0,1,0,0,'','',1,0,128)
 ,(21,0,'chrono_desc',130,0,0,0,1,0,0,'','',0,0,0)
 ,(31,0,'chrono_desc',130,1,0,0,1,0,0,'','',0,0,0)
 ,(41,0,'display_asc',133,0,0,0,1,0,0,'','',0,0,0)
 ,(45,0,'display_asc',134,0,0,0,1,0,0,'','',0,0,0)
 ,(53,0,'display_asc',133,0,0,0,1,0,0,'','',0,0,0)
 ,(54,0,'display_asc',134,0,0,0,1,0,0,'','',0,0,0)
 ,(68,0,'display_asc',133,1,0,0,1,0,0,'','',0,0,0);

DROP TABLE IF EXISTS btpdfreader;

CREATE TABLE IF NOT EXISTS `btpdfreader` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btpdfreader VALUES(32,1)
 ,(33,2)
 ,(52,3);

DROP TABLE IF EXISTS btrssdisplay;

CREATE TABLE IF NOT EXISTS `btrssdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO btrssdisplay VALUES(37,'','http://www.cgt.fr/spip.php?page=backend&id_rubrique=66','d/m',5,1,1);

DROP TABLE IF EXISTS btsearch;

CREATE TABLE IF NOT EXISTS `btsearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btslideshow;

CREATE TABLE IF NOT EXISTS `btslideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btslideshowimg;

CREATE TABLE IF NOT EXISTS `btslideshowimg` (
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



DROP TABLE IF EXISTS btsurvey;

CREATE TABLE IF NOT EXISTS `btsurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btsurveyoptions;

CREATE TABLE IF NOT EXISTS `btsurveyoptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btsurveyresults;

CREATE TABLE IF NOT EXISTS `btsurveyresults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btswpbreadcrumbs;

CREATE TABLE IF NOT EXISTS `btswpbreadcrumbs` (
  `bID` int(10) unsigned NOT NULL,
  `delimiter` varchar(255) DEFAULT '',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS bttags;

CREATE TABLE IF NOT EXISTS `bttags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btvideo;

CREATE TABLE IF NOT EXISTS `btvideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS btyoutube;

CREATE TABLE IF NOT EXISTS `btyoutube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS collectionattributevalues;

CREATE TABLE IF NOT EXISTS `collectionattributevalues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO collectionattributevalues VALUES(1,3,5,120)
 ,(1,4,5,120)
 ,(1,5,5,120)
 ,(1,6,5,120)
 ,(1,7,5,120)
 ,(1,8,5,120)
 ,(1,9,5,120)
 ,(1,10,5,120)
 ,(1,11,5,120)
 ,(1,12,5,120)
 ,(1,13,5,120)
 ,(1,14,5,120)
 ,(1,15,5,120)
 ,(1,16,5,120)
 ,(1,17,5,120)
 ,(1,18,5,120)
 ,(1,19,5,120)
 ,(1,20,5,120)
 ,(1,21,5,120)
 ,(1,22,5,120)
 ,(1,23,5,120)
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
 ,(133,2,1,155)
 ,(133,2,2,156)
 ,(133,2,3,157)
 ,(133,3,1,155)
 ,(133,3,2,156)
 ,(133,3,3,157)
 ,(133,4,1,155)
 ,(133,4,2,156)
 ,(133,4,3,157)
 ,(133,5,1,155)
 ,(133,5,2,156)
 ,(133,5,3,157)
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
 ,(140,6,9,148)
 ,(141,1,1,149)
 ,(141,1,2,150)
 ,(141,1,3,151)
 ,(141,2,1,149)
 ,(141,2,2,150)
 ,(141,2,3,151)
 ,(142,1,1,152)
 ,(142,1,2,153)
 ,(142,1,3,154)
 ,(143,1,1,158)
 ,(143,1,2,159)
 ,(143,1,3,160)
 ,(143,2,1,158)
 ,(143,2,2,159)
 ,(143,2,3,160)
 ,(143,3,1,158)
 ,(143,3,2,159)
 ,(143,3,3,160)
 ,(143,4,1,158)
 ,(143,4,2,159)
 ,(143,4,3,160)
 ,(143,5,1,158)
 ,(143,5,2,159)
 ,(143,5,3,160)
 ,(143,6,1,158)
 ,(143,6,2,159)
 ,(143,6,3,160)
 ,(143,7,1,158)
 ,(143,7,2,159)
 ,(143,7,3,160)
 ,(144,1,1,161)
 ,(144,1,2,162)
 ,(144,1,3,163)
 ,(145,1,1,164)
 ,(145,1,2,165)
 ,(145,1,3,166)
 ,(145,2,1,164)
 ,(145,2,2,165)
 ,(145,2,3,166)
 ,(145,3,1,164)
 ,(145,3,2,165)
 ,(145,3,3,166)
 ,(145,4,1,164)
 ,(145,4,2,165)
 ,(145,4,3,166)
 ,(145,5,1,164)
 ,(145,5,2,165)
 ,(145,5,3,166)
 ,(145,6,1,164)
 ,(145,6,2,165)
 ,(145,6,3,166)
 ,(145,7,1,164)
 ,(145,7,2,165)
 ,(145,7,3,166)
 ,(146,1,1,167)
 ,(146,1,2,168)
 ,(146,1,3,169)
 ,(146,2,1,167)
 ,(146,2,2,168)
 ,(146,2,3,169);

DROP TABLE IF EXISTS collections;

CREATE TABLE IF NOT EXISTS `collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

INSERT INTO collections VALUES(1,'2014-02-14 10:05:03','2014-05-05 13:17:33','home')
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
 ,(129,'2014-02-14 10:31:24','2014-02-27 15:48:49','accords-status')
 ,(130,'2014-02-14 10:31:41','2014-02-17 16:17:45','communiques')
 ,(131,'2014-02-14 10:31:58','2014-02-19 16:26:58','nous-contacter')
 ,(132,'2014-02-14 10:32:12','2014-02-19 16:47:29','blog')
 ,(133,'2014-02-14 11:00:09','2014-02-28 15:00:05','accords')
 ,(134,'2014-02-14 11:00:21','2014-02-27 15:48:38','stat')
 ,(135,'2014-02-14 11:12:04','2014-02-14 11:34:20','pied-de-page')
 ,(136,'2014-02-14 11:42:21','2014-02-14 11:42:21',NULL)
 ,(137,'2014-02-14 12:13:13','2014-02-18 14:19:56','direction-des-collections-et-maintenant')
 ,(138,'2014-02-14 14:04:56','2014-02-14 14:04:56',NULL)
 ,(139,'2014-02-14 14:05:16','2014-02-14 14:05:16',NULL)
 ,(140,'2014-02-14 15:00:35','2014-02-14 16:52:38','recherche')
 ,(141,'2014-02-18 16:15:36','2014-02-18 17:46:03','rapport-isast')
 ,(142,'2014-02-19 16:51:50','2014-02-19 16:51:51','les-elus')
 ,(143,'2014-02-27 15:47:32','2014-02-28 17:43:32','accords-et-statuts')
 ,(144,'2014-02-27 16:00:47','2014-02-27 16:03:19','accord-portant-sur-le-statut-collectif-des-salaries-ina')
 ,(145,'2014-02-27 16:42:15','2014-02-28 11:00:36','vos-droits')
 ,(146,'2014-05-05 13:18:35','2014-05-05 13:34:28','liens-utiles');

DROP TABLE IF EXISTS collectionsearchindexattributes;

CREATE TABLE IF NOT EXISTS `collectionsearchindexattributes` (
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

INSERT INTO collectionsearchindexattributes VALUES(1,NULL,NULL,NULL,NULL,1,0,NULL,0,0,NULL)
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
 ,(133,'','','',NULL,0,0,NULL,0,0,NULL)
 ,(134,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(135,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(137,NULL,NULL,NULL,NULL,0,0,NULL,0,0,NULL)
 ,(140,'','','',NULL,1,1,NULL,1,1,NULL)
 ,(141,'','','',NULL,0,0,NULL,0,0,NULL)
 ,(142,'','','',NULL,0,0,NULL,0,0,NULL)
 ,(143,'','','',NULL,0,0,NULL,0,0,NULL)
 ,(144,'','','',NULL,0,0,NULL,0,0,NULL)
 ,(145,'','','',NULL,0,0,NULL,0,0,NULL)
 ,(146,'','','',NULL,0,0,NULL,0,0,NULL);

DROP TABLE IF EXISTS collectionversionarealayouts;

CREATE TABLE IF NOT EXISTS `collectionversionarealayouts` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS collectionversionareastyles;

CREATE TABLE IF NOT EXISTS `collectionversionareastyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS collectionversionblocks;

CREATE TABLE IF NOT EXISTS `collectionversionblocks` (
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

INSERT INTO collectionversionblocks VALUES(1,6,23,'Zone gauche',0,1,0,0)
 ,(1,6,24,'Zone centre',0,1,0,0)
 ,(1,6,25,'Zone centre',1,1,0,0)
 ,(1,6,26,'Zone droite',0,1,0,0)
 ,(1,7,23,'Zone gauche',0,0,0,0)
 ,(1,7,24,'Zone centre',0,0,0,0)
 ,(1,7,25,'Zone centre',1,0,0,0)
 ,(1,7,26,'Zone droite',0,0,0,0)
 ,(1,7,36,'Zone droite',1,1,0,0)
 ,(1,7,37,'Zone droite',2,1,0,0)
 ,(1,8,24,'Zone centre',0,0,0,0)
 ,(1,8,25,'Zone centre',1,0,0,0)
 ,(1,8,26,'Zone droite',0,0,0,0)
 ,(1,8,36,'Zone droite',1,0,0,0)
 ,(1,8,37,'Zone droite',2,0,0,0)
 ,(1,8,40,'Zone gauche',0,1,0,0)
 ,(1,9,24,'Zone centre',0,0,0,0)
 ,(1,9,25,'Zone centre',1,0,0,0)
 ,(1,9,26,'Zone droite',0,0,0,0)
 ,(1,9,36,'Zone droite',1,0,0,0)
 ,(1,9,37,'Zone droite',2,0,0,0)
 ,(1,9,40,'Zone gauche',0,0,0,0)
 ,(1,10,24,'Zone centre',0,0,0,0)
 ,(1,10,25,'Zone centre',1,0,0,0)
 ,(1,10,26,'Zone droite',0,0,0,0)
 ,(1,10,36,'Zone droite',1,0,0,0)
 ,(1,10,37,'Zone droite',2,0,0,0)
 ,(1,10,40,'Zone gauche',0,0,0,0)
 ,(1,10,69,'Zone gauche',1,1,0,0)
 ,(1,11,24,'Zone centre',0,0,0,0)
 ,(1,11,25,'Zone centre',1,0,0,0)
 ,(1,11,26,'Zone droite',0,0,0,0)
 ,(1,11,36,'Zone droite',1,0,0,0)
 ,(1,11,37,'Zone droite',2,0,0,0)
 ,(1,11,40,'Zone gauche',1,0,0,0)
 ,(1,11,69,'Zone gauche',0,0,0,0)
 ,(1,12,24,'Zone centre',0,0,0,0)
 ,(1,12,25,'Zone centre',1,0,0,0)
 ,(1,12,26,'Zone droite',0,0,0,0)
 ,(1,12,36,'Zone droite',1,0,0,0)
 ,(1,12,37,'Zone droite',2,0,0,0)
 ,(1,12,69,'Zone gauche',1,0,0,0)
 ,(1,12,70,'Zone gauche',0,1,0,0)
 ,(1,13,24,'Zone centre',0,0,0,0)
 ,(1,13,25,'Zone centre',1,0,0,0)
 ,(1,13,26,'Zone droite',0,0,0,0)
 ,(1,13,36,'Zone droite',1,0,0,0)
 ,(1,13,37,'Zone droite',2,0,0,0)
 ,(1,13,69,'Zone gauche',1,0,1,0)
 ,(1,13,70,'Zone gauche',0,0,0,0)
 ,(1,14,24,'Zone centre',0,0,0,0)
 ,(1,14,25,'Zone centre',1,0,0,0)
 ,(1,14,26,'Zone droite',0,0,0,0)
 ,(1,14,36,'Zone droite',1,0,0,0)
 ,(1,14,37,'Zone droite',2,0,0,0)
 ,(1,14,69,'Zone gauche',1,0,1,0)
 ,(1,14,70,'Zone gauche',0,0,0,0)
 ,(1,14,71,'Zone centre',2,1,0,0)
 ,(1,15,24,'Zone centre',0,0,0,0)
 ,(1,15,25,'Zone centre',1,0,0,0)
 ,(1,15,26,'Zone droite',0,0,0,0)
 ,(1,15,36,'Zone droite',1,0,0,0)
 ,(1,15,37,'Zone droite',2,0,0,0)
 ,(1,15,69,'Zone gauche',1,0,1,0)
 ,(1,15,70,'Zone gauche',0,0,0,0)
 ,(1,16,24,'Zone centre',0,0,0,0)
 ,(1,16,25,'Zone centre',1,0,0,0)
 ,(1,16,26,'Zone droite',0,0,0,0)
 ,(1,16,36,'Zone droite',1,0,0,0)
 ,(1,16,37,'Zone droite',2,0,0,0)
 ,(1,16,69,'Zone gauche',1,0,1,0)
 ,(1,16,70,'Zone gauche',0,0,0,0)
 ,(1,17,24,'Zone centre',0,0,0,0)
 ,(1,17,25,'Zone centre',1,0,0,0)
 ,(1,17,26,'Zone droite',0,0,0,0)
 ,(1,17,36,'Zone droite',1,0,0,0)
 ,(1,17,37,'Zone droite',2,0,0,0)
 ,(1,17,70,'Zone gauche',0,0,0,0)
 ,(1,17,73,'Zone gauche',1,1,1,0)
 ,(1,18,24,'Zone centre',0,0,0,0)
 ,(1,18,25,'Zone centre',1,0,0,0)
 ,(1,18,26,'Zone droite',0,0,0,0)
 ,(1,18,36,'Zone droite',1,0,0,0)
 ,(1,18,37,'Zone droite',2,0,0,0)
 ,(1,18,70,'Zone gauche',0,0,0,0)
 ,(1,18,73,'Zone gauche',1,0,1,0)
 ,(1,19,24,'Zone centre',0,0,0,0)
 ,(1,19,25,'Zone centre',1,0,0,0)
 ,(1,19,26,'Zone droite',0,0,0,0)
 ,(1,19,36,'Zone droite',1,0,0,0)
 ,(1,19,37,'Zone droite',2,0,0,0)
 ,(1,19,70,'Zone gauche',0,0,0,0)
 ,(1,19,73,'Zone gauche',1,0,1,0)
 ,(1,20,24,'Zone centre',0,0,0,0)
 ,(1,20,25,'Zone centre',1,0,0,0)
 ,(1,20,26,'Zone droite',0,0,0,0)
 ,(1,20,36,'Zone droite',1,0,0,0)
 ,(1,20,37,'Zone droite',2,0,0,0)
 ,(1,20,70,'Zone gauche',0,0,0,0)
 ,(1,20,82,'Zone gauche',1,1,1,0)
 ,(1,21,24,'Zone centre',0,0,0,0)
 ,(1,21,25,'Zone centre',1,0,0,0)
 ,(1,21,26,'Zone droite',0,0,0,0)
 ,(1,21,36,'Zone droite',1,0,0,0)
 ,(1,21,37,'Zone droite',2,0,0,0)
 ,(1,21,70,'Zone gauche',0,0,0,0)
 ,(1,21,84,'Zone gauche',1,1,0,0)
 ,(1,22,24,'Zone centre',2,0,0,0)
 ,(1,22,25,'Zone centre',3,0,0,0)
 ,(1,22,26,'Zone droite',0,0,0,0)
 ,(1,22,36,'Zone droite',1,0,0,0)
 ,(1,22,37,'Zone droite',2,0,0,0)
 ,(1,22,70,'Zone gauche',0,0,0,0)
 ,(1,22,84,'Zone gauche',1,0,0,0)
 ,(1,22,85,'Zone centre',0,1,0,0)
 ,(1,22,86,'Zone centre',1,1,0,0)
 ,(1,23,24,'Zone gauche',2,0,0,0)
 ,(1,23,25,'Zone gauche',3,0,0,0)
 ,(1,23,26,'Zone droite',0,0,0,0)
 ,(1,23,36,'Zone droite',1,0,0,0)
 ,(1,23,37,'Zone droite',2,0,0,0)
 ,(1,23,70,'Zone gauche',0,0,0,0)
 ,(1,23,84,'Zone gauche',1,0,0,0)
 ,(1,23,85,'Zone centre',0,0,0,0)
 ,(1,23,86,'Zone centre',1,0,0,0)
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
 ,(129,11,41,'Zone principale',1,1,0,0)
 ,(129,11,42,'Zone principale',0,1,0,0)
 ,(129,11,44,'Zone principale',2,1,0,0)
 ,(129,11,45,'Zone principale',3,1,0,0)
 ,(130,2,27,'Zone principale',0,1,0,0)
 ,(130,2,28,'Zone principale',1,1,0,0)
 ,(130,3,27,'Zone principale',0,0,0,0)
 ,(130,3,28,'Zone principale',1,0,0,0)
 ,(130,3,31,'Zone principale',2,1,0,0)
 ,(130,4,27,'Zone principale',0,0,0,0)
 ,(130,4,28,'Zone principale',1,0,0,0)
 ,(130,4,31,'Zone principale',2,0,0,0)
 ,(131,2,14,'Zone principale',0,1,0,0)
 ,(131,3,38,'Zone principale',0,1,0,0)
 ,(133,3,50,'Zone principale',0,1,0,0)
 ,(133,5,68,'Zone principale',0,1,0,0)
 ,(135,2,13,'Main',0,1,0,0)
 ,(137,1,19,'Zone principale',0,1,0,0)
 ,(137,2,19,'Zone principale',0,0,0,0)
 ,(137,3,32,'Zone principale',0,1,0,0)
 ,(140,6,30,'Zone principale',0,1,0,0)
 ,(141,1,33,'Zone principale',0,1,0,0)
 ,(141,2,33,'Zone principale',1,0,0,0)
 ,(141,2,35,'Zone principale',0,1,0,0)
 ,(143,2,46,'Zone principale',0,1,0,0)
 ,(143,2,47,'Zone principale',1,1,0,0)
 ,(143,2,48,'Zone principale',2,1,0,0)
 ,(143,2,49,'Zone principale',3,1,0,0)
 ,(143,3,46,'Zone principale',0,0,0,0)
 ,(143,3,48,'Zone principale',3,0,0,0)
 ,(143,3,53,'Zone principale',2,1,0,0)
 ,(143,3,54,'Zone principale',4,1,0,0)
 ,(143,4,48,'Zone principale',2,0,0,0)
 ,(143,4,53,'Zone principale',1,0,0,0)
 ,(143,4,54,'Zone principale',3,0,0,0)
 ,(143,4,55,'Zone principale',0,1,0,0)
 ,(143,5,53,'Zone principale',1,0,0,0)
 ,(143,5,54,'Zone principale',3,0,0,0)
 ,(143,5,62,'Zone colonne droite',0,1,0,0)
 ,(143,5,63,'Zone principale',0,1,0,0)
 ,(143,5,64,'Zone principale',2,1,0,0)
 ,(143,6,53,'Zone principale',1,0,0,0)
 ,(143,6,54,'Zone principale',3,0,0,0)
 ,(143,6,63,'Zone principale',0,0,0,0)
 ,(143,6,64,'Zone principale',2,0,0,0)
 ,(143,6,66,'Zone colonne droite',0,1,0,0)
 ,(143,7,53,'Zone principale',1,0,0,0)
 ,(143,7,54,'Zone principale',3,0,0,0)
 ,(143,7,63,'Zone principale',0,0,0,0)
 ,(143,7,64,'Zone principale',2,0,0,0)
 ,(143,7,72,'Zone colonne droite',0,1,0,0)
 ,(144,1,51,'Zone principale',0,1,0,0)
 ,(144,1,52,'Zone principale',1,1,0,0)
 ,(145,2,56,'Zone principale',0,1,0,0)
 ,(145,3,57,'Zone principale',0,1,0,0)
 ,(145,3,58,'Zone colonne droite',0,1,0,0)
 ,(145,4,58,'Zone colonne droite',0,0,0,0)
 ,(145,4,59,'Zone principale',1,1,0,0)
 ,(145,4,60,'Zone principale',0,1,0,0)
 ,(145,5,59,'Zone principale',1,0,0,0)
 ,(145,5,60,'Zone principale',0,0,0,0)
 ,(145,5,61,'Zone colonne droite',0,1,0,0)
 ,(145,6,59,'Zone principale',1,0,0,0)
 ,(145,6,60,'Zone principale',0,0,0,0)
 ,(145,6,61,'Zone colonne droite',0,0,0,0)
 ,(145,7,59,'Zone principale',1,0,0,0)
 ,(145,7,60,'Zone principale',0,0,0,0)
 ,(145,7,65,'Zone colonne droite',0,1,0,0)
 ,(146,2,87,'Zone principale',0,1,0,0);

DROP TABLE IF EXISTS collectionversionblocksoutputcache;

CREATE TABLE IF NOT EXISTS `collectionversionblocksoutputcache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO collectionversionblocksoutputcache VALUES(1,21,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1552907645)
 ,(1,21,18,'Zone centre','<h2>Derniers communiqués</h2>',1552907645)
 ,(1,21,22,'Zone droite','<h2>Nouvelles du monde</h2>',1552907645)
 ,(1,21,36,'Zone droite','<h3>Confédération</h3>',1552907645)
 ,(1,21,37,'Zone droite','\n<div class=\"rss\">\n\n    \n    \n            <div class=\"item\">\n                <div>\n                    <span class=\"date\">02/05</span>\n                    <a class=\"title\" href=\"http://www.cgt.fr/1er-mai-2014-Thierry-Lepaon-est-l.html\" target=\"_blank\" >\n                        1er mai 2014, Thierry Lepaon invité de plusieurs médias                    </a>\n                </div>\n                <div class=\"summary\">\n                    Invit&eacute; du 1er mai 2014 sur RTL : le leader de la CGT a ironis&eacute; sur la \"petite\" conf&eacute;rence sociale pr&eacute;vue par le gouvernement d&eacute;but juillet, qui sera plus \"concentr&eacute;e sur les 50 milliards d\'&eacute;conomies\" que su…                </div>\n            </div>\n\n        \n            <div class=\"item\">\n                <div>\n                    <span class=\"date\">30/04</span>\n                    <a class=\"title\" href=\"http://www.cgt.fr/Les-syndicats-en-justice-pour.html\" target=\"_blank\" >\n                        Les syndicats en justice pour faire respecter le droit                    </a>\n                </div>\n                <div class=\"summary\">\n                    Apr&egrave;s une d&eacute;cision du Conseil constitutionnel r&eacute;affirmant l\'exceptionnalit&eacute; du travail de nuit, deux plaintes contre des magasins s\'autorisant &agrave; faire travailler leurs employ&eacute;s jusque tr&egrave;s tard le soir &eac…                </div>\n            </div>\n\n        \n            <div class=\"item\">\n                <div>\n                    <span class=\"date\">29/04</span>\n                    <a class=\"title\" href=\"http://www.cgt.fr/Rendez-vous-le-12-mai-pour.html\" target=\"_blank\" >\n                        Rendez vous le 12 mai pour dénoncer la pénibilité                    </a>\n                </div>\n                <div class=\"summary\">\n                    Alors que le mouvement syndical se rassemblait hier, 28 avril, pour combattre le &laquo; mal travail &raquo;, la fili&egrave;re CGT collecte et traitement des d&eacute;chets appelle les balayeurs, chauffeurs, &eacute;boueurs, agents de tri, agents de trai…                </div>\n            </div>\n\n        \n            <div class=\"item\">\n                <div>\n                    <span class=\"date\">25/04</span>\n                    <a class=\"title\" href=\"http://www.cgt.fr/Le-secretaire-general-de-la-CGT.html\" target=\"_blank\" >\n                        Le secrétaire général de la CGT écrit à Mumia Abu Jamal                    </a>\n                </div>\n                <div class=\"summary\">\n                    Alors que le journaliste afro-am&eacute;ricain prisonnier vient d\'atteindre son soixanti&egrave;me anniversaire, la campagne pour sa lib&eacute;ration doit s\'intensifier. Extrait du couloir de la mort en 2011 apr&egrave;s une d&eacute;cision de la Cour su…                </div>\n            </div>\n\n        \n            <div class=\"item\">\n                <div>\n                    <span class=\"date\">24/04</span>\n                    <a class=\"title\" href=\"http://www.cgt.fr/Les-salaries-de-la-construction.html\" target=\"_blank\" >\n                        Les salariés de la construction veulent un départ anticipé pour travaux pénibles                    </a>\n                </div>\n                <div class=\"summary\">\n                    Une soixantaine de salari&eacute;s du b&acirc;timent, militants de la CGT Construction ont occup&eacute; ce jeudi le si&egrave;ge de la F&eacute;d&eacute;ration fran&ccedil;aise du b&acirc;timent, &agrave; Paris, pour demander l\'ouverture de n&eacute;goci…                </div>\n            </div>\n\n        </div>',1399284079)
 ,(1,21,70,'Zone gauche','<h2>Agenda</h2>',1552907645)
 ,(106,1,6,'Primary','\n<h1>Heureux de vous revoir</h1>\n<br/>\n\n\n\n',1399366905)
 ,(106,1,8,'Secondary 1','\n',1399287705)
 ,(106,1,9,'Secondary 2','\n',1399287705)
 ,(106,1,10,'Secondary 3','<h6>Thème vedette</h6>\n	<p>Impossible de retrouver les données depuis le Marketplace de concrete5.org</p>\n',1399287705)
 ,(106,1,11,'Secondary 4','<h6>Extension vedette</h6>\n	<p>Impossible de retrouver les données depuis le Marketplace de concrete5.org</p>\n',1399287705)
 ,(106,1,12,'Secondary 5','\n	<div class=\"newsflow-paging-next\"><a href=\"javascript:void(0)\" onclick=\"ccm_showNewsflowOffsite()\"><span></span></a></div>\n\n	<script type=\"text/javascript\">\n	$(function() {\n		ccm_setNewsflowPagingArrowHeight();\n	});\n	</script>\n	\n',1399287705)
 ,(130,4,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1553504439)
 ,(130,4,27,'Zone principale','<h1>Communiqués</h1>',1553504439)
 ,(130,4,28,'Zone principale','<p>Dans cette rubrique vous pourrez trouver tous les communiqués.</p>',1553504439)
 ,(131,3,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1553504456)
 ,(131,3,38,'Zone principale','<h3>Chantal Lesieur</h3>\r\n<h6>Bureau 2262</h6>\r\n<div>01 49 83 <strong>2418</strong></div>\r\n<div><strong><br /></strong></div>\r\n<h3>Françoise Lamontagne</h3>\r\n<h6>Bureau 2260</h6>\r\n<div>01 49 83 <strong>2106</strong></div>\r\n<div><strong><br /></strong></div>\r\n<div><strong><br /></strong></div>\r\n<div>Mail : cgt@ina.fr</div>\r\n<div>Fax : 01 49 83 31 7</div>',1553504456)
 ,(133,5,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1554652617)
 ,(137,3,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1553505432)
 ,(137,3,32,'Zone principale','    <iframe width=\"100%\" height=\"900px\" src=\"/c-website/blocks/pdf_reader/pdf/web/viewer.html?file=/c-website/index.php/download_file/1/137/\" frameborder=\"0\" ></iframe>\n\n',1553505432)
 ,(140,6,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1553504522)
 ,(141,2,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1553504524)
 ,(141,2,33,'Zone principale','    <iframe width=\"100%\" height=\"900px\" src=\"/c-website/blocks/pdf_reader/pdf/web/viewer.html?file=/c-website/index.php/download_file/2/141/\" frameborder=\"0\" ></iframe>\n\n',1553504524)
 ,(141,2,35,'Zone principale','<h2>Rapport ISAST</h2>',1553504524)
 ,(143,7,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1553504440)
 ,(143,7,63,'Zone principale','<h2><a name=\"accords\"></a>Accords d\'entreprise</h2>',1553504440)
 ,(143,7,64,'Zone principale','<h2><a name=\"status\"></a>Status</h2>',1553504440)
 ,(144,1,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1553504441)
 ,(144,1,51,'Zone principale','<h3><a class=\"ID_prd_1002434 ctxTooltipCard ID_prd_1002434 exa-preview\" href=\"https://reflex.ina.fr/jcms/prd_1002434/accord-portant-sur-le-statut-collectif-des-salaries-ina\">Accord portant sur le statut collectif des salariés Ina</a></h3>',1553504441)
 ,(144,1,52,'Zone principale','    <iframe width=\"100%\" height=\"900px\" src=\"/c-website/blocks/pdf_reader/pdf/web/viewer.html?file=/c-website/index.php/download_file/3/144/\" frameborder=\"0\" ></iframe>\n\n',1553504441)
 ,(145,7,13,'Pied de page','<p>CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr</p>',1553504451)
 ,(145,7,59,'Zone principale','<h2 align=\"justify\"><a name=\"formation\"></a>Le droit à la formation syndicale</h2>\r\n<p align=\"justify\">Ce droit est reconnu par le code du travail (article L.451-1 et suivants). La formation dite « économique, sociale et syndicale» concerne tous les salariés qu’ils soient syndiqués ou non. <br />Les salariés qui souhaitent participer à de tels stages doivent en faire la demande auprès de la direction. Ce droit est égal à 12 jours par an qui peuvent être pris en une ou plusieurs fois.<br />Ce congé est indépendant des droits à congés annuels, des jours fractionnés auxquels nous avons droit par la convention collective, des jours de RTT.<br />Le stage doit être organisé par un organisme agréé dont la liste est régulièrement remise à jour par le ministère du Travail.<br />Le salarié doit recevoir une attestation de stage, à l’issue de celui-ci. Cette attestation doit être remise à la DRH lors du retour de l’entreprise ; elle certifie la présence du salarié à la formation.</p>\r\n<div align=\"justify\">\r\n<p>Le nombre total de jours pris par l’ensemble des salariés de l’entreprise ne peut excéder un certain seuil.</p>\r\n<p>Ces formations peuvent être de divers ordres :</p>\r\n<p>- stage d\'accueil pour les nouveaux adhérents,</p>\r\n<p>- stages de différents niveaux pour les adhérents un peu plus anciens,</p>\r\n<p>- Stages \"thématiques\" : élus et mandatés, CHS CT, élus du CE, délégués du personnel. Chaque activité est expliquée, analysée pour aider les élus à bien comprendre quels sont les différents rôles et prérogatives,</p>\r\n<p>- stages plus \"techniques\" : analyse des comptes, comment négocier un accord sur le handicap, sur une mutuelle d\'entreprise...</p>\r\n<p>Ces formations peuvent être organisées par des structures de la CGT (Union locale, Union départementale, SNRT, commissions confédérales) mais aussi délivrées par des organismes spécialisés agréés.</p>\r\n<p>La section encourage ses adhérents à participer aux formations syndicales. Elles sont toujours l\'occasion d\'apprendre et d\'approfondir ses connaissances ainsi que de rencontrer d\'autres militants investis dans des secteurs qui peuvent être différents du nôtre et de notre entreprise. C\'est notamment le cas pour toutes les informations organisées par les structures de l\'interprofessionnel</p>\r\n</div>',1553504451)
 ,(145,7,60,'Zone principale','<h2 align=\"justify\"><a name=\"greve\"></a>Le droit de grève</h2>\r\n<p align=\"justify\">En France, la grève est un droit reconnu même s’il est encadré, ce qui n’est pas le cas dans tous les pays. Nous considérons qu’il s’agit d’un acquis : le droit pour les salariés de se faire entendre collectivement quand ils sont mécontents. Il doit s’agir d’une « cessation concertée du travail ».</p>\r\n<p align=\"justify\">À l’Ina, pour faire grève, il faut qu’il y ait dépôt d’un préavis de grève 5 jours à l’avance par une des organisations syndicales représentatives de l’entreprise. C’est une des conséquences de notre statut d’établissement public et de la notion de continuation du service public. Le préavis doit indiquer « le lieu, la date, l’heure du début de la grève ainsi que sa durée, limitée ou non ». Pendant la durée du préavis, des négociations doivent avoir lieu.</p>\r\n<p align=\"justify\">Chaque salarié a le droit de faire grève et ne peut être sanctionné pour cela, ne l’oublions pas. La grève ne rompt pas le contrat de travail. Du moment qu\'un préavis est déposé et qu\'il n\'a pas été levé, tous les salariés sont couverts qu\'ils soient adhérents ou pas du syndicat qui dépose le préavis.</p>\r\n<p align=\"justify\">Contrairement à ce qu’on entend souvent dans les médias, on ne fait jamais grève par plaisir : cesser le travail est une décision importante, qu’on ne prend pas tout seul dans son coin.<br />C’est aussi une décision qui coûte : il n’y a qu’à regarder notre bulletin de salaire quand il y a eu des jours de grève, comme pendant la mobilisation contre le CPE !</p>\r\n<p align=\"justify\">La retenue sur salaire est liée à la durée d\'absence. Elle se fait sur le salaire mensuel et est égale à :<br />- 1/60ème pour une absence de moins d\'une heure<br />- 1/50ème pour une absence de plus d\'une heure mais de moins d\'une demi-journée<br />- 1/30ème pour une absence de plus d\'une demi-journée mais de moins d\'une journée.</p>\r\n<p align=\"justify\">Il est également possible de déposer un préavis pour une demi-journée. Dans ce cas, la retenue sur salaire est équivalente à une demi-journée de travail.</p>\r\n<div align=\"justify\">\r\n<p>Évidemment, pour qu’une grève soit réussie, c’est-à-dire finalement pour gagner, elle doit être organisée et mobiliser le plus possible de salariés, être démocratique, les salariés doivent pouvoir s’exprimer en assemblée générale, les organisations syndicales ont bien sûr un rôle important à y jouer.</p>\r\n<p>N’oublions pas que ce sont de grandes grèves, massives, populaires, qui ont pu arracher des revendications importantes : la semaine de 40 heures, les congés payés en 1936 et, plus proche de nous, les accords de Grenelle en 1968 mais aussi des gains sur des revendications plus ponctuelles mais néanmoins importantes dans les entreprises : des embauches, des gains sur les salaires, sur les conditions de travail. </p>\r\n<p>La grève, c’est la matérialisation d’un rapport de forces qui, à un moment, se concrétise dans l’action. </p>\r\n<p>La grève, c’est aussi un moment où beaucoup de choses changent : finis les impératifs du boulot, on a plus de temps même si on fait beaucoup de choses inhabituelles, on se parle et on parle même avec des collègues que l’on connaît peu, on a des activités qu’on n’aurait jamais cru possibles… Tous les salariés qui ont vécu des périodes de grève savent qu’après, ce n’est plus jamais exactement pareil : il s’est passé quelque chose qu’on a pris nous-mêmes en main. </p>\r\n</div>',1553504451);

DROP TABLE IF EXISTS collectionversionblockstyles;

CREATE TABLE IF NOT EXISTS `collectionversionblockstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO collectionversionblockstyles VALUES(145,6,61,'Zone colonne droite',1)
 ,(145,7,65,'Zone colonne droite',1);

DROP TABLE IF EXISTS collectionversionrelatededits;

CREATE TABLE IF NOT EXISTS `collectionversionrelatededits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS collectionversions;

CREATE TABLE IF NOT EXISTS `collectionversions` (
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

INSERT INTO collectionversions VALUES(1,1,'Home','home','','2014-02-14 10:05:03','2014-02-14 10:05:03','Initial Version',0,0,1,NULL,5,4,NULL)
 ,(1,2,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 10:45:40','New Version 2',0,0,1,1,5,4,NULL)
 ,(1,3,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 11:01:23','Version 3',0,0,1,1,5,4,NULL)
 ,(1,4,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 11:34:10','Version 4',0,0,1,1,5,4,NULL)
 ,(1,5,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 11:42:31','Version 5',0,0,1,1,5,7,NULL)
 ,(1,6,'Accueil','home','','2014-02-14 10:05:00','2014-02-14 12:21:24','Version 6',0,0,1,1,5,7,NULL)
 ,(1,7,'Accueil','home','','2014-02-14 10:05:00','2014-02-19 15:36:56','Version 7',0,0,1,1,5,7,NULL)
 ,(1,8,'Accueil','home','','2014-02-14 10:05:00','2014-02-19 16:53:42','Version 8',0,0,1,1,5,7,NULL)
 ,(1,9,'Accueil','home','','2014-02-14 10:05:00','2014-02-28 11:16:23','Version 9',0,0,1,1,5,7,NULL)
 ,(1,10,'Accueil','home','','2014-02-14 10:05:00','2014-02-28 16:01:03','Version 10',0,0,1,1,5,7,NULL)
 ,(1,11,'Accueil','home','','2014-02-14 10:05:00','2014-02-28 16:11:38','Version 11',0,0,1,1,5,7,NULL)
 ,(1,12,'Accueil','home','','2014-02-14 10:05:00','2014-02-28 16:51:57','Version 12',0,0,1,1,5,7,NULL)
 ,(1,13,'Accueil','home','','2014-02-14 10:05:00','2014-02-28 17:28:24','Version 13',0,0,1,1,5,7,NULL)
 ,(1,14,'Accueil','home','','2014-02-14 10:05:00','2014-02-28 17:33:20','Version 14',0,0,1,1,5,7,NULL)
 ,(1,15,'Accueil','home','','2014-02-14 10:05:00','2014-02-28 17:33:41','Version 15',0,0,1,1,5,7,NULL)
 ,(1,16,'Accueil','home','','2014-02-14 10:05:00','2014-02-28 17:35:34','Nouvelle version 16',0,0,1,1,5,7,NULL)
 ,(1,17,'Accueil','home','','2014-02-14 10:05:00','2014-02-28 17:43:58','Version 17',0,0,1,1,5,7,NULL)
 ,(1,18,'Accueil','home','','2014-02-14 10:05:00','2014-03-03 16:16:42','Version 18',0,0,1,1,5,7,NULL)
 ,(1,19,'Accueil','home','','2014-02-14 10:05:00','2014-03-03 16:45:44','Version 19',0,0,1,1,5,7,NULL)
 ,(1,20,'Accueil','home','','2014-02-14 10:05:00','2014-03-03 16:49:17','Version 20',0,0,1,1,5,7,NULL)
 ,(1,21,'Accueil','home','','2014-02-14 10:05:00','2014-03-03 17:03:44','Version 21',0,0,1,1,5,7,NULL)
 ,(1,22,'Accueil','home','','2014-02-14 10:05:00','2014-05-05 13:08:53','Version 22',0,0,1,1,5,7,NULL)
 ,(1,23,'Accueil','home','','2014-02-14 10:05:00','2014-05-05 13:14:57','Version 23',1,0,1,1,5,7,NULL)
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
 ,(129,9,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-14 12:24:18','New Version 9',0,0,1,1,5,4,NULL)
 ,(129,10,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-18 17:43:27','Nouvelle version 10',0,0,1,1,5,4,NULL)
 ,(129,11,'Accords, status...','accords-status','','2014-02-14 10:30:00','2014-02-19 17:20:56','Version 11',1,0,1,1,5,4,NULL)
 ,(130,1,'Communiqués','communiques','','2014-02-14 10:31:00','2014-02-14 10:31:41','Version 1',0,0,1,1,5,5,NULL)
 ,(130,2,'Communiqués','communiques','','2014-02-14 10:31:00','2014-02-14 14:10:52','Version 2',0,0,1,1,5,8,NULL)
 ,(130,3,'Communiqués','communiques','','2014-02-14 10:31:00','2014-02-17 16:17:13','Version 3',0,0,1,1,5,8,NULL)
 ,(130,4,'Communiqués','communiques','','2014-02-14 10:31:00','2014-02-17 16:17:40','Version 4',1,0,1,1,5,5,NULL)
 ,(131,1,'Nous contacter','nous-contacter','','2014-02-14 10:31:00','2014-02-14 10:31:58','Initial Version',0,0,1,1,5,5,NULL)
 ,(131,2,'Nous contacter','nous-contacter','','2014-02-14 10:31:00','2014-02-14 11:55:34','Version 2',0,0,1,1,5,5,NULL)
 ,(131,3,'Nous contacter','nous-contacter','','2014-02-14 10:31:00','2014-02-19 16:19:03','Version 3',1,0,1,1,5,5,NULL)
 ,(132,1,'Blog','blog','','2014-02-14 10:32:00','2014-02-14 10:32:12','Initial Version',1,0,1,1,5,5,NULL)
 ,(133,1,'Accords','accords','','2014-02-14 11:00:00','2014-02-14 11:00:09','Initial Version',0,0,1,1,5,5,NULL)
 ,(133,2,'Accords d\'entreprise','accords','','2014-02-14 11:00:00','2014-02-19 17:20:16','Nouvelle version 2',0,0,1,1,5,5,NULL)
 ,(133,3,'Accords d\'entreprise','accords','','2014-02-14 11:00:00','2014-02-27 15:54:57','Nouvelle version 3',0,0,1,1,5,5,NULL)
 ,(133,4,'Accords d\'entreprise','accords','','2014-02-14 11:00:00','2014-02-27 16:08:24','Nouvelle version 4',0,0,1,1,5,5,NULL)
 ,(133,5,'Accords d\'entreprise','accords','','2014-02-14 11:00:00','2014-02-28 14:59:59','Version 5',1,0,1,1,5,5,NULL)
 ,(134,1,'Status','stat','','2014-02-14 11:00:00','2014-02-14 11:00:21','Initial Version',1,0,1,1,5,5,NULL)
 ,(135,1,'Pied de page','pied-de-page',NULL,'2014-02-14 11:12:04','2014-02-14 11:12:04','Initial Version',0,0,1,NULL,5,1,NULL)
 ,(135,2,'Pied de page','pied-de-page',NULL,'2014-02-14 11:12:04','2014-02-14 11:34:10','New Version 2',1,0,1,1,5,1,NULL)
 ,(136,1,'',NULL,NULL,'2014-02-14 11:42:21','2014-02-14 11:42:21','Initial Version',1,0,NULL,NULL,0,7,NULL)
 ,(137,1,'Direction des collections et maintenant ??','direction-des-collections-et-maintenant','','2014-02-14 12:12:00','2014-02-14 12:13:13','Version 1',0,0,1,1,5,5,NULL)
 ,(137,2,'Direction des collections et maintenant ??','direction-des-collections-et-maintenant','Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO.','2014-02-14 12:12:00','2014-02-14 12:16:56','New Version 2',0,0,1,1,5,5,NULL)
 ,(137,3,'Direction des collections et maintenant ??','direction-des-collections-et-maintenant','Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO.','2014-02-14 12:12:00','2014-02-18 11:37:31','Version 3',1,0,1,1,5,5,NULL)
 ,(138,1,'',NULL,NULL,'2014-02-14 14:04:56','2014-02-14 14:04:56','Initial Version',1,0,NULL,NULL,0,8,NULL)
 ,(139,1,'',NULL,NULL,'2014-02-14 14:05:16','2014-02-14 14:05:16','Initial Version',1,0,NULL,NULL,0,9,NULL)
 ,(140,1,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 15:00:35','Initial Version',0,0,1,1,5,5,NULL)
 ,(140,2,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 15:00:49','New Version 2',0,0,1,1,5,5,NULL)
 ,(140,3,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 15:01:04','New Version 3',0,0,1,1,5,5,NULL)
 ,(140,4,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 15:01:55','New Version 4',0,0,1,1,5,5,NULL)
 ,(140,5,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 16:39:49','New Version 5',0,0,1,1,5,5,NULL)
 ,(140,6,'Recherche','recherche','','2014-02-14 15:00:00','2014-02-14 16:43:11','New Version 6',1,0,1,1,5,5,NULL)
 ,(141,1,'Rapport ISAST','rapport-isast','Aperçu du rapport Isast','2014-02-18 16:15:00','2014-02-18 16:15:36','Version 1',0,0,1,1,5,5,NULL)
 ,(141,2,'Rapport ISAST','rapport-isast','Aperçu du rapport Isast','2014-02-18 16:15:00','2014-02-18 17:45:43','Version 2',1,0,1,1,5,5,NULL)
 ,(142,1,'Les élus','les-elus','','2014-02-19 16:51:00','2014-02-19 16:51:50','Initial Version',1,0,1,1,5,5,NULL)
 ,(143,1,'Accords et statuts','accords-et-statuts','','2014-02-27 15:47:00','2014-02-27 15:47:32','Initial Version',0,0,1,1,5,5,NULL)
 ,(143,2,'Accords et statuts','accords-et-statuts','','2014-02-27 15:47:00','2014-02-27 15:49:14','Version 2',0,0,1,1,5,5,NULL)
 ,(143,3,'Accords et statuts','accords-et-statuts','','2014-02-27 15:47:00','2014-02-27 16:06:00','Version 3',0,0,1,1,5,5,NULL)
 ,(143,4,'Accords et statuts','accords-et-statuts','','2014-02-27 15:47:00','2014-02-27 16:08:39','Version 4',0,0,1,1,5,5,NULL)
 ,(143,5,'Accords et statuts','accords-et-statuts','','2014-02-27 15:47:00','2014-02-28 10:46:12','Version 5',0,0,1,1,5,9,NULL)
 ,(143,6,'Accords et statuts','accords-et-statuts','','2014-02-27 15:47:00','2014-02-28 11:00:26','Version 6',0,0,1,1,5,9,NULL)
 ,(143,7,'Accords et statuts','accords-et-statuts','','2014-02-27 15:47:00','2014-02-28 17:43:20','Version 7',1,0,1,1,5,9,NULL)
 ,(144,1,'Accord portant sur le statut collectif des salariés Ina','accord-portant-sur-le-statut-collectif-des-salaries-ina','','2014-02-27 16:00:00','2014-02-27 16:00:47','Version 1',1,0,1,1,5,5,NULL)
 ,(145,1,'Vos droits','vos-droits','','2014-02-27 16:42:00','2014-02-27 16:42:15','Initial Version',0,0,1,1,5,5,NULL)
 ,(145,2,'Vos droits','vos-droits','','2014-02-27 16:42:00','2014-02-27 16:44:03','Version 2',0,0,1,1,5,9,NULL)
 ,(145,3,'Vos droits','vos-droits','','2014-02-27 16:42:00','2014-02-27 16:46:23','Version 3',0,0,1,1,5,9,NULL)
 ,(145,4,'Vos droits','vos-droits','','2014-02-27 16:42:00','2014-02-27 17:47:41','Version 4',0,0,1,1,5,9,NULL)
 ,(145,5,'Vos droits','vos-droits','','2014-02-27 16:42:00','2014-02-28 09:58:26','Version 5',0,0,1,1,5,9,NULL)
 ,(145,6,'Vos droits','vos-droits','','2014-02-27 16:42:00','2014-02-28 10:14:06','Version 6',0,0,1,1,5,9,NULL)
 ,(145,7,'Vos droits','vos-droits','','2014-02-27 16:42:00','2014-02-28 10:58:21','Nouvelle version 7',1,0,1,1,5,9,NULL)
 ,(146,1,'Liens utiles','liens-utiles','','2014-05-05 13:18:00','2014-05-05 13:18:35','Initial Version',0,0,1,1,5,9,NULL)
 ,(146,2,'Liens utiles','liens-utiles','','2014-05-05 13:18:00','2014-05-05 13:32:07','Version 2',1,0,1,1,5,9,NULL);

DROP TABLE IF EXISTS composercontentlayout;

CREATE TABLE IF NOT EXISTS `composercontentlayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS composerdrafts;

CREATE TABLE IF NOT EXISTS `composerdrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS composertypes;

CREATE TABLE IF NOT EXISTS `composertypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS config;

CREATE TABLE IF NOT EXISTS `config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO config VALUES('ACCESS_ENTITY_UPDATED','2014-02-18 12:04:33','1392721473',0,0)
 ,('ANTISPAM_LOG_SPAM','2014-02-14 10:06:09','1',0,0)
 ,('APP_VERSION_LATEST','2014-06-15 22:33:48','5.6.3.1',0,0)
 ,('DO_PAGE_REINDEX_CHECK','2014-05-05 13:34:35','0',0,0)
 ,('ENABLE_BLOCK_CACHE','2014-05-05 10:32:33','0',0,0)
 ,('ENABLE_LOG_EMAILS','2014-02-14 10:06:09','1',0,0)
 ,('ENABLE_LOG_ERRORS','2014-02-14 10:06:09','1',0,0)
 ,('ENABLE_MARKETPLACE_SUPPORT','2014-02-14 10:06:09','1',0,0)
 ,('ENABLE_OVERRIDE_CACHE','2014-05-05 10:32:33','1',0,0)
 ,('FULL_PAGE_CACHE_GLOBAL','2014-05-05 10:32:33','0',0,0)
 ,('FULL_PAGE_CACHE_LIFETIME','2014-05-05 10:32:33','default',0,0)
 ,('FULL_PAGE_CACHE_LIFETIME_CUSTOM','2014-05-05 10:32:33',NULL,0,0)
 ,('LANGUAGE_CHOOSE_ON_LOGIN','2014-02-17 16:04:42','1',0,0)
 ,('NEWSFLOW_LAST_VIEWED','2014-06-15 22:33:47','1402864427',1,0)
 ,('SECURITY_TOKEN_ENCRYPTION','2014-02-14 10:06:12','0xFfJOxbPsioBhPvhVY8jgsEu8twuLrGEmn3cy4R9bgpt4Han0zlYXU6sh3s3yXH',0,0)
 ,('SECURITY_TOKEN_JOBS','2014-02-14 10:06:12','5tbz4aKNRgX9gIlGXZfGoH7P7e0os1123akwRDpEKM0reDRqPgowqRLLZZzlLkD8',0,0)
 ,('SECURITY_TOKEN_VALIDATION','2014-02-14 10:06:12','enRi9oeSBRjMpxE2DTTSD5JLhJU83EMV8lRGCyPnUj1wHtstXAiJpmRiamTPCL2u',0,0)
 ,('SEEN_INTRODUCTION','2014-02-14 10:06:15','1',0,0)
 ,('SITE','2014-02-14 10:06:10','CGT Ina',0,0)
 ,('SITE_APP_VERSION','2014-02-14 10:06:11','5.6.3RC1',0,0)
 ,('SITE_DEBUG_LEVEL','2014-02-14 10:06:09','1',0,0)
 ,('SITE_INSTALLED_APP_VERSION','2014-02-14 10:06:11','5.6.3RC1',0,0)
 ,('SITE_LOCALE','2014-02-17 16:04:42','fr_FR',0,0);

DROP TABLE IF EXISTS customstylepresets;

CREATE TABLE IF NOT EXISTS `customstylepresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS customstylerules;

CREATE TABLE IF NOT EXISTS `customstylerules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO customstylerules VALUES(1,'','','a:20:{s:11:\"font_family\";s:7:\"inherit\";s:5:\"color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:10:\"text_align\";s:0:\"\";s:16:\"background_color\";s:0:\"\";s:12:\"border_style\";s:4:\"none\";s:12:\"border_color\";s:0:\"\";s:12:\"border_width\";s:1:\"0\";s:15:\"border_position\";s:4:\"full\";s:10:\"margin_top\";s:0:\"\";s:12:\"margin_right\";s:0:\"\";s:13:\"margin_bottom\";s:0:\"\";s:11:\"margin_left\";s:0:\"\";s:11:\"padding_top\";s:0:\"\";s:13:\"padding_right\";s:0:\"\";s:14:\"padding_bottom\";s:0:\"\";s:12:\"padding_left\";s:0:\"\";s:16:\"background_image\";s:1:\"0\";s:17:\"background_repeat\";s:9:\"no-repeat\";}','width: 200px');

DROP TABLE IF EXISTS downloadstatistics;

CREATE TABLE IF NOT EXISTS `downloadstatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB AUTO_INCREMENT=902 DEFAULT CHARSET=utf8;

INSERT INTO downloadstatistics VALUES(1,1,1,1,137,'0000-00-00 00:00:00')
 ,(2,1,1,1,137,'0000-00-00 00:00:00')
 ,(3,1,1,1,137,'0000-00-00 00:00:00')
 ,(4,1,1,1,137,'0000-00-00 00:00:00')
 ,(5,1,1,1,137,'0000-00-00 00:00:00')
 ,(6,1,1,1,137,'0000-00-00 00:00:00')
 ,(7,1,1,1,137,'0000-00-00 00:00:00')
 ,(8,1,1,1,137,'0000-00-00 00:00:00')
 ,(9,1,1,1,137,'0000-00-00 00:00:00')
 ,(10,1,1,1,137,'0000-00-00 00:00:00')
 ,(11,1,1,1,137,'0000-00-00 00:00:00')
 ,(12,1,1,1,137,'0000-00-00 00:00:00')
 ,(13,1,1,1,137,'0000-00-00 00:00:00')
 ,(14,1,1,1,137,'0000-00-00 00:00:00')
 ,(15,1,1,1,137,'0000-00-00 00:00:00')
 ,(16,1,1,1,137,'0000-00-00 00:00:00')
 ,(17,1,1,1,137,'0000-00-00 00:00:00')
 ,(18,1,1,1,137,'0000-00-00 00:00:00')
 ,(19,1,1,1,137,'0000-00-00 00:00:00')
 ,(20,1,1,1,137,'0000-00-00 00:00:00')
 ,(21,1,1,1,137,'0000-00-00 00:00:00')
 ,(22,1,1,1,137,'0000-00-00 00:00:00')
 ,(23,1,1,1,137,'0000-00-00 00:00:00')
 ,(24,1,1,1,137,'0000-00-00 00:00:00')
 ,(25,1,1,1,137,'0000-00-00 00:00:00')
 ,(26,1,1,1,137,'0000-00-00 00:00:00')
 ,(27,1,1,1,137,'0000-00-00 00:00:00')
 ,(28,1,1,1,137,'0000-00-00 00:00:00')
 ,(29,1,1,1,137,'0000-00-00 00:00:00')
 ,(30,1,1,1,137,'0000-00-00 00:00:00')
 ,(31,1,1,1,137,'0000-00-00 00:00:00')
 ,(32,1,1,1,137,'0000-00-00 00:00:00')
 ,(33,1,1,1,137,'0000-00-00 00:00:00')
 ,(34,1,1,1,137,'0000-00-00 00:00:00')
 ,(35,1,1,1,137,'0000-00-00 00:00:00')
 ,(36,1,1,1,137,'0000-00-00 00:00:00')
 ,(37,1,1,1,137,'0000-00-00 00:00:00')
 ,(38,1,1,1,137,'0000-00-00 00:00:00')
 ,(39,1,1,1,137,'0000-00-00 00:00:00')
 ,(40,1,1,1,137,'0000-00-00 00:00:00')
 ,(41,1,1,1,137,'0000-00-00 00:00:00')
 ,(42,1,1,1,137,'0000-00-00 00:00:00')
 ,(43,1,1,1,137,'0000-00-00 00:00:00')
 ,(44,1,1,1,137,'0000-00-00 00:00:00')
 ,(45,1,1,1,137,'0000-00-00 00:00:00')
 ,(46,1,1,1,137,'0000-00-00 00:00:00')
 ,(47,1,1,1,137,'0000-00-00 00:00:00')
 ,(48,1,1,1,137,'0000-00-00 00:00:00')
 ,(49,1,1,1,137,'0000-00-00 00:00:00')
 ,(50,1,1,1,137,'0000-00-00 00:00:00')
 ,(51,1,1,1,137,'0000-00-00 00:00:00')
 ,(52,1,1,1,137,'0000-00-00 00:00:00')
 ,(53,1,1,1,137,'0000-00-00 00:00:00')
 ,(54,1,1,1,137,'0000-00-00 00:00:00')
 ,(55,1,1,1,137,'0000-00-00 00:00:00')
 ,(56,1,1,1,137,'0000-00-00 00:00:00')
 ,(57,1,1,1,137,'0000-00-00 00:00:00')
 ,(58,1,1,1,137,'0000-00-00 00:00:00')
 ,(59,1,1,1,137,'0000-00-00 00:00:00')
 ,(60,1,1,1,137,'0000-00-00 00:00:00')
 ,(61,1,1,1,137,'0000-00-00 00:00:00')
 ,(62,1,1,1,137,'0000-00-00 00:00:00')
 ,(63,1,1,1,137,'0000-00-00 00:00:00')
 ,(64,1,1,1,137,'0000-00-00 00:00:00')
 ,(65,1,1,1,137,'0000-00-00 00:00:00')
 ,(66,1,1,1,137,'0000-00-00 00:00:00')
 ,(67,1,1,1,137,'0000-00-00 00:00:00')
 ,(68,1,1,1,137,'0000-00-00 00:00:00')
 ,(69,1,1,1,137,'0000-00-00 00:00:00')
 ,(70,1,1,1,137,'0000-00-00 00:00:00')
 ,(71,1,1,1,137,'0000-00-00 00:00:00')
 ,(72,1,1,1,137,'0000-00-00 00:00:00')
 ,(73,1,1,1,137,'0000-00-00 00:00:00')
 ,(74,1,1,1,137,'0000-00-00 00:00:00')
 ,(75,1,1,1,137,'0000-00-00 00:00:00')
 ,(76,1,1,1,137,'0000-00-00 00:00:00')
 ,(77,1,1,1,137,'0000-00-00 00:00:00')
 ,(78,1,1,1,137,'0000-00-00 00:00:00')
 ,(79,1,1,1,137,'0000-00-00 00:00:00')
 ,(80,1,1,1,137,'0000-00-00 00:00:00')
 ,(81,1,1,1,137,'0000-00-00 00:00:00')
 ,(82,1,1,1,137,'0000-00-00 00:00:00')
 ,(83,1,1,1,137,'0000-00-00 00:00:00')
 ,(84,1,1,1,137,'0000-00-00 00:00:00')
 ,(85,1,1,1,137,'0000-00-00 00:00:00')
 ,(86,1,1,1,137,'0000-00-00 00:00:00')
 ,(87,1,1,1,137,'0000-00-00 00:00:00')
 ,(88,1,1,1,137,'0000-00-00 00:00:00')
 ,(89,1,1,1,137,'0000-00-00 00:00:00')
 ,(90,1,1,1,137,'0000-00-00 00:00:00')
 ,(91,1,1,1,137,'0000-00-00 00:00:00')
 ,(92,1,1,1,137,'0000-00-00 00:00:00')
 ,(93,1,1,1,137,'0000-00-00 00:00:00')
 ,(94,1,1,1,137,'0000-00-00 00:00:00')
 ,(95,1,1,1,137,'0000-00-00 00:00:00')
 ,(96,1,1,1,137,'0000-00-00 00:00:00')
 ,(97,1,1,1,137,'0000-00-00 00:00:00')
 ,(98,1,1,1,137,'0000-00-00 00:00:00')
 ,(99,1,1,1,137,'0000-00-00 00:00:00')
 ,(100,1,1,1,137,'0000-00-00 00:00:00')
 ,(101,1,1,1,137,'0000-00-00 00:00:00')
 ,(102,1,1,1,137,'0000-00-00 00:00:00')
 ,(103,1,1,1,137,'0000-00-00 00:00:00')
 ,(104,1,1,1,137,'0000-00-00 00:00:00')
 ,(105,1,1,1,137,'0000-00-00 00:00:00')
 ,(106,1,1,1,137,'0000-00-00 00:00:00')
 ,(107,1,1,1,137,'0000-00-00 00:00:00')
 ,(108,1,1,1,137,'0000-00-00 00:00:00')
 ,(109,1,1,1,137,'0000-00-00 00:00:00')
 ,(110,1,1,1,137,'0000-00-00 00:00:00')
 ,(111,1,1,1,137,'0000-00-00 00:00:00')
 ,(112,1,1,1,137,'0000-00-00 00:00:00')
 ,(113,1,1,1,137,'0000-00-00 00:00:00')
 ,(114,1,1,1,137,'0000-00-00 00:00:00')
 ,(115,1,1,1,137,'0000-00-00 00:00:00')
 ,(116,1,1,1,137,'0000-00-00 00:00:00')
 ,(117,1,1,1,137,'0000-00-00 00:00:00')
 ,(118,1,1,1,137,'0000-00-00 00:00:00')
 ,(119,1,1,1,137,'0000-00-00 00:00:00')
 ,(120,1,1,1,137,'0000-00-00 00:00:00')
 ,(121,1,1,1,137,'0000-00-00 00:00:00')
 ,(122,2,1,1,141,'0000-00-00 00:00:00')
 ,(123,2,1,1,141,'0000-00-00 00:00:00')
 ,(124,2,1,1,141,'0000-00-00 00:00:00')
 ,(125,2,1,1,141,'0000-00-00 00:00:00')
 ,(126,2,1,1,141,'0000-00-00 00:00:00')
 ,(127,2,1,1,141,'0000-00-00 00:00:00')
 ,(128,2,1,1,141,'0000-00-00 00:00:00')
 ,(129,2,1,1,141,'0000-00-00 00:00:00')
 ,(130,2,1,1,141,'0000-00-00 00:00:00')
 ,(131,2,1,1,141,'0000-00-00 00:00:00')
 ,(132,2,1,1,141,'0000-00-00 00:00:00')
 ,(133,2,1,1,141,'0000-00-00 00:00:00')
 ,(134,2,1,1,141,'0000-00-00 00:00:00')
 ,(135,2,1,1,141,'0000-00-00 00:00:00')
 ,(136,2,1,1,141,'0000-00-00 00:00:00')
 ,(137,2,1,1,141,'0000-00-00 00:00:00')
 ,(138,2,1,1,141,'0000-00-00 00:00:00')
 ,(139,2,1,1,141,'0000-00-00 00:00:00')
 ,(140,2,1,1,141,'0000-00-00 00:00:00')
 ,(141,2,1,1,141,'0000-00-00 00:00:00')
 ,(142,2,1,1,141,'0000-00-00 00:00:00')
 ,(143,2,1,1,141,'0000-00-00 00:00:00')
 ,(144,2,1,1,141,'0000-00-00 00:00:00')
 ,(145,2,1,1,141,'0000-00-00 00:00:00')
 ,(146,2,1,1,141,'0000-00-00 00:00:00')
 ,(147,2,1,1,141,'0000-00-00 00:00:00')
 ,(148,2,1,1,141,'0000-00-00 00:00:00')
 ,(149,2,1,1,141,'0000-00-00 00:00:00')
 ,(150,2,1,1,141,'0000-00-00 00:00:00')
 ,(151,2,1,1,141,'0000-00-00 00:00:00')
 ,(152,2,1,1,141,'0000-00-00 00:00:00')
 ,(153,2,1,1,141,'0000-00-00 00:00:00')
 ,(154,2,1,1,141,'0000-00-00 00:00:00')
 ,(155,2,1,1,141,'0000-00-00 00:00:00')
 ,(156,2,1,1,141,'0000-00-00 00:00:00')
 ,(157,2,1,1,141,'0000-00-00 00:00:00')
 ,(158,2,1,1,141,'0000-00-00 00:00:00')
 ,(159,2,1,1,141,'0000-00-00 00:00:00')
 ,(160,2,1,1,141,'0000-00-00 00:00:00')
 ,(161,2,1,0,141,'0000-00-00 00:00:00')
 ,(162,2,1,0,141,'0000-00-00 00:00:00')
 ,(163,2,1,0,141,'0000-00-00 00:00:00')
 ,(164,2,1,0,141,'0000-00-00 00:00:00')
 ,(165,2,1,0,141,'0000-00-00 00:00:00')
 ,(166,2,1,0,141,'0000-00-00 00:00:00')
 ,(167,2,1,0,141,'0000-00-00 00:00:00')
 ,(168,2,1,0,141,'0000-00-00 00:00:00')
 ,(169,2,1,0,141,'0000-00-00 00:00:00')
 ,(170,2,1,0,141,'0000-00-00 00:00:00')
 ,(171,2,1,0,141,'0000-00-00 00:00:00')
 ,(172,2,1,0,141,'0000-00-00 00:00:00')
 ,(173,2,1,0,141,'0000-00-00 00:00:00')
 ,(174,2,1,1,141,'0000-00-00 00:00:00')
 ,(175,2,1,1,141,'0000-00-00 00:00:00')
 ,(176,2,1,1,141,'0000-00-00 00:00:00')
 ,(177,2,1,1,141,'0000-00-00 00:00:00')
 ,(178,2,1,1,141,'0000-00-00 00:00:00')
 ,(179,2,1,1,141,'0000-00-00 00:00:00')
 ,(180,2,1,1,141,'0000-00-00 00:00:00')
 ,(181,2,1,1,141,'0000-00-00 00:00:00')
 ,(182,2,1,1,141,'0000-00-00 00:00:00')
 ,(183,2,1,1,141,'0000-00-00 00:00:00')
 ,(184,2,1,1,141,'0000-00-00 00:00:00')
 ,(185,2,1,1,141,'0000-00-00 00:00:00')
 ,(186,2,1,1,141,'0000-00-00 00:00:00')
 ,(187,2,1,1,141,'0000-00-00 00:00:00')
 ,(188,2,1,1,141,'0000-00-00 00:00:00')
 ,(189,2,1,1,141,'0000-00-00 00:00:00')
 ,(190,2,1,1,141,'0000-00-00 00:00:00')
 ,(191,2,1,1,141,'0000-00-00 00:00:00')
 ,(192,2,1,1,141,'0000-00-00 00:00:00')
 ,(193,2,1,1,141,'0000-00-00 00:00:00')
 ,(194,2,1,1,141,'0000-00-00 00:00:00')
 ,(195,2,1,1,141,'0000-00-00 00:00:00')
 ,(196,2,1,1,141,'0000-00-00 00:00:00')
 ,(197,2,1,1,141,'0000-00-00 00:00:00')
 ,(198,2,1,1,141,'0000-00-00 00:00:00')
 ,(199,2,1,1,141,'0000-00-00 00:00:00')
 ,(200,2,1,1,141,'0000-00-00 00:00:00')
 ,(201,2,1,1,141,'0000-00-00 00:00:00')
 ,(202,2,1,1,141,'0000-00-00 00:00:00')
 ,(203,2,1,1,141,'0000-00-00 00:00:00')
 ,(204,2,1,1,141,'0000-00-00 00:00:00')
 ,(205,2,1,1,141,'0000-00-00 00:00:00')
 ,(206,2,1,1,141,'0000-00-00 00:00:00')
 ,(207,2,1,1,141,'0000-00-00 00:00:00')
 ,(208,2,1,1,141,'0000-00-00 00:00:00')
 ,(209,2,1,1,141,'0000-00-00 00:00:00')
 ,(210,2,1,1,141,'0000-00-00 00:00:00')
 ,(211,2,1,1,141,'0000-00-00 00:00:00')
 ,(212,2,1,1,141,'0000-00-00 00:00:00')
 ,(213,2,1,1,141,'0000-00-00 00:00:00')
 ,(214,2,1,1,141,'0000-00-00 00:00:00')
 ,(215,2,1,1,141,'0000-00-00 00:00:00')
 ,(216,2,1,1,141,'0000-00-00 00:00:00')
 ,(217,2,1,1,141,'0000-00-00 00:00:00')
 ,(218,2,1,1,141,'0000-00-00 00:00:00')
 ,(219,2,1,1,141,'0000-00-00 00:00:00')
 ,(220,2,1,1,141,'0000-00-00 00:00:00')
 ,(221,2,1,1,141,'0000-00-00 00:00:00')
 ,(222,2,1,1,141,'0000-00-00 00:00:00')
 ,(223,2,1,1,141,'0000-00-00 00:00:00')
 ,(224,2,1,1,141,'0000-00-00 00:00:00')
 ,(225,2,1,1,141,'0000-00-00 00:00:00')
 ,(226,2,1,1,141,'0000-00-00 00:00:00')
 ,(227,2,1,1,141,'0000-00-00 00:00:00')
 ,(228,2,1,1,141,'0000-00-00 00:00:00')
 ,(229,2,1,1,141,'0000-00-00 00:00:00')
 ,(230,2,1,1,141,'0000-00-00 00:00:00')
 ,(231,2,1,1,141,'0000-00-00 00:00:00')
 ,(232,2,1,1,141,'0000-00-00 00:00:00')
 ,(233,2,1,1,141,'0000-00-00 00:00:00')
 ,(234,2,1,1,141,'0000-00-00 00:00:00')
 ,(235,2,1,1,141,'0000-00-00 00:00:00')
 ,(236,2,1,1,141,'0000-00-00 00:00:00')
 ,(237,2,1,1,141,'0000-00-00 00:00:00')
 ,(238,2,1,1,141,'0000-00-00 00:00:00')
 ,(239,2,1,1,141,'0000-00-00 00:00:00')
 ,(240,2,1,1,141,'0000-00-00 00:00:00')
 ,(241,2,1,1,141,'0000-00-00 00:00:00')
 ,(242,2,1,1,141,'0000-00-00 00:00:00')
 ,(243,2,1,1,141,'0000-00-00 00:00:00')
 ,(244,2,1,1,141,'0000-00-00 00:00:00')
 ,(245,2,1,1,141,'0000-00-00 00:00:00')
 ,(246,2,1,1,141,'0000-00-00 00:00:00')
 ,(247,2,1,1,141,'0000-00-00 00:00:00')
 ,(248,2,1,1,141,'0000-00-00 00:00:00')
 ,(249,2,1,1,141,'0000-00-00 00:00:00')
 ,(250,2,1,1,141,'0000-00-00 00:00:00')
 ,(251,2,1,1,141,'0000-00-00 00:00:00')
 ,(252,2,1,1,141,'0000-00-00 00:00:00')
 ,(253,2,1,1,141,'0000-00-00 00:00:00')
 ,(254,2,1,1,141,'0000-00-00 00:00:00')
 ,(255,2,1,1,141,'0000-00-00 00:00:00')
 ,(256,2,1,1,141,'0000-00-00 00:00:00')
 ,(257,2,1,1,141,'0000-00-00 00:00:00')
 ,(258,2,1,1,141,'0000-00-00 00:00:00')
 ,(259,2,1,1,141,'0000-00-00 00:00:00')
 ,(260,2,1,1,141,'0000-00-00 00:00:00')
 ,(261,2,1,1,141,'0000-00-00 00:00:00')
 ,(262,2,1,1,141,'0000-00-00 00:00:00')
 ,(263,2,1,1,141,'0000-00-00 00:00:00')
 ,(264,2,1,1,141,'0000-00-00 00:00:00')
 ,(265,2,1,1,141,'0000-00-00 00:00:00')
 ,(266,2,1,1,141,'0000-00-00 00:00:00')
 ,(267,2,1,1,141,'0000-00-00 00:00:00')
 ,(268,2,1,1,141,'0000-00-00 00:00:00')
 ,(269,2,1,1,141,'0000-00-00 00:00:00')
 ,(270,2,1,1,141,'0000-00-00 00:00:00')
 ,(271,2,1,1,141,'0000-00-00 00:00:00')
 ,(272,2,1,1,141,'0000-00-00 00:00:00')
 ,(273,2,1,1,141,'0000-00-00 00:00:00')
 ,(274,2,1,1,141,'0000-00-00 00:00:00')
 ,(275,2,1,1,141,'0000-00-00 00:00:00')
 ,(276,2,1,1,141,'0000-00-00 00:00:00')
 ,(277,2,1,1,141,'0000-00-00 00:00:00')
 ,(278,2,1,1,141,'0000-00-00 00:00:00')
 ,(279,2,1,1,141,'0000-00-00 00:00:00')
 ,(280,2,1,1,141,'0000-00-00 00:00:00')
 ,(281,2,1,1,141,'0000-00-00 00:00:00')
 ,(282,2,1,1,141,'0000-00-00 00:00:00')
 ,(283,2,1,1,141,'0000-00-00 00:00:00')
 ,(284,2,1,1,141,'0000-00-00 00:00:00')
 ,(285,2,1,1,141,'0000-00-00 00:00:00')
 ,(286,2,1,1,141,'0000-00-00 00:00:00')
 ,(287,2,1,1,141,'0000-00-00 00:00:00')
 ,(288,2,1,1,141,'0000-00-00 00:00:00')
 ,(289,2,1,1,141,'0000-00-00 00:00:00')
 ,(290,2,1,1,141,'0000-00-00 00:00:00')
 ,(291,2,1,1,141,'0000-00-00 00:00:00')
 ,(292,2,1,1,141,'0000-00-00 00:00:00')
 ,(293,2,1,1,141,'0000-00-00 00:00:00')
 ,(294,2,1,1,141,'0000-00-00 00:00:00')
 ,(295,2,1,1,141,'0000-00-00 00:00:00')
 ,(296,2,1,1,141,'0000-00-00 00:00:00')
 ,(297,2,1,1,141,'0000-00-00 00:00:00')
 ,(298,2,1,1,141,'0000-00-00 00:00:00')
 ,(299,2,1,1,141,'0000-00-00 00:00:00')
 ,(300,2,1,1,141,'0000-00-00 00:00:00')
 ,(301,2,1,1,141,'0000-00-00 00:00:00')
 ,(302,2,1,1,141,'0000-00-00 00:00:00')
 ,(303,2,1,1,141,'0000-00-00 00:00:00')
 ,(304,2,1,1,141,'0000-00-00 00:00:00')
 ,(305,2,1,1,141,'0000-00-00 00:00:00')
 ,(306,2,1,1,141,'0000-00-00 00:00:00')
 ,(307,2,1,1,141,'0000-00-00 00:00:00')
 ,(308,2,1,1,141,'0000-00-00 00:00:00')
 ,(309,2,1,1,141,'0000-00-00 00:00:00')
 ,(310,2,1,1,141,'0000-00-00 00:00:00')
 ,(311,2,1,1,141,'0000-00-00 00:00:00')
 ,(312,2,1,1,141,'0000-00-00 00:00:00')
 ,(313,2,1,1,141,'0000-00-00 00:00:00')
 ,(314,2,1,1,141,'0000-00-00 00:00:00')
 ,(315,2,1,1,141,'0000-00-00 00:00:00')
 ,(316,2,1,1,141,'0000-00-00 00:00:00')
 ,(317,2,1,1,141,'0000-00-00 00:00:00')
 ,(318,2,1,1,141,'0000-00-00 00:00:00')
 ,(319,2,1,1,141,'0000-00-00 00:00:00')
 ,(320,2,1,1,141,'0000-00-00 00:00:00')
 ,(321,2,1,1,141,'0000-00-00 00:00:00')
 ,(322,2,1,1,141,'0000-00-00 00:00:00')
 ,(323,2,1,1,141,'0000-00-00 00:00:00')
 ,(324,2,1,1,141,'0000-00-00 00:00:00')
 ,(325,2,1,1,141,'0000-00-00 00:00:00')
 ,(326,2,1,1,141,'0000-00-00 00:00:00')
 ,(327,2,1,1,141,'0000-00-00 00:00:00')
 ,(328,2,1,1,141,'0000-00-00 00:00:00')
 ,(329,2,1,1,141,'0000-00-00 00:00:00')
 ,(330,2,1,1,141,'0000-00-00 00:00:00')
 ,(331,2,1,1,141,'0000-00-00 00:00:00')
 ,(332,2,1,1,141,'0000-00-00 00:00:00')
 ,(333,2,1,1,141,'0000-00-00 00:00:00')
 ,(334,2,1,1,141,'0000-00-00 00:00:00')
 ,(335,2,1,1,141,'0000-00-00 00:00:00')
 ,(336,2,1,1,141,'0000-00-00 00:00:00')
 ,(337,2,1,1,141,'0000-00-00 00:00:00')
 ,(338,2,1,1,141,'0000-00-00 00:00:00')
 ,(339,2,1,1,141,'0000-00-00 00:00:00')
 ,(340,2,1,1,141,'0000-00-00 00:00:00')
 ,(341,2,1,1,141,'0000-00-00 00:00:00')
 ,(342,2,1,1,141,'0000-00-00 00:00:00')
 ,(343,2,1,1,141,'0000-00-00 00:00:00')
 ,(344,2,1,1,141,'0000-00-00 00:00:00')
 ,(345,2,1,1,141,'0000-00-00 00:00:00')
 ,(346,2,1,1,141,'0000-00-00 00:00:00')
 ,(347,2,1,1,141,'0000-00-00 00:00:00')
 ,(348,2,1,1,141,'0000-00-00 00:00:00')
 ,(349,2,1,1,141,'0000-00-00 00:00:00')
 ,(350,2,1,1,141,'0000-00-00 00:00:00')
 ,(351,2,1,1,141,'0000-00-00 00:00:00')
 ,(352,2,1,1,141,'0000-00-00 00:00:00')
 ,(353,2,1,1,141,'0000-00-00 00:00:00')
 ,(354,2,1,1,141,'0000-00-00 00:00:00')
 ,(355,2,1,1,141,'0000-00-00 00:00:00')
 ,(356,2,1,1,141,'0000-00-00 00:00:00')
 ,(357,2,1,1,141,'0000-00-00 00:00:00')
 ,(358,2,1,1,141,'0000-00-00 00:00:00')
 ,(359,2,1,1,141,'0000-00-00 00:00:00')
 ,(360,2,1,1,141,'0000-00-00 00:00:00')
 ,(361,2,1,1,141,'0000-00-00 00:00:00')
 ,(362,2,1,1,141,'0000-00-00 00:00:00')
 ,(363,2,1,1,141,'0000-00-00 00:00:00')
 ,(364,2,1,1,141,'0000-00-00 00:00:00')
 ,(365,2,1,1,141,'0000-00-00 00:00:00')
 ,(366,2,1,1,141,'0000-00-00 00:00:00')
 ,(367,2,1,1,141,'0000-00-00 00:00:00')
 ,(368,2,1,1,141,'0000-00-00 00:00:00')
 ,(369,2,1,1,141,'0000-00-00 00:00:00')
 ,(370,2,1,1,141,'0000-00-00 00:00:00')
 ,(371,2,1,1,141,'0000-00-00 00:00:00')
 ,(372,2,1,1,141,'0000-00-00 00:00:00')
 ,(373,2,1,1,141,'0000-00-00 00:00:00')
 ,(374,2,1,1,141,'0000-00-00 00:00:00')
 ,(375,2,1,1,141,'0000-00-00 00:00:00')
 ,(376,2,1,1,141,'0000-00-00 00:00:00')
 ,(377,2,1,1,141,'0000-00-00 00:00:00')
 ,(378,2,1,1,141,'0000-00-00 00:00:00')
 ,(379,2,1,1,141,'0000-00-00 00:00:00')
 ,(380,2,1,1,141,'0000-00-00 00:00:00')
 ,(381,2,1,1,141,'0000-00-00 00:00:00')
 ,(382,2,1,1,141,'0000-00-00 00:00:00')
 ,(383,3,1,1,144,'0000-00-00 00:00:00')
 ,(384,3,1,1,144,'0000-00-00 00:00:00')
 ,(385,3,1,1,144,'0000-00-00 00:00:00')
 ,(386,3,1,1,144,'0000-00-00 00:00:00')
 ,(387,3,1,1,144,'0000-00-00 00:00:00')
 ,(388,3,1,1,144,'0000-00-00 00:00:00')
 ,(389,3,1,1,144,'0000-00-00 00:00:00')
 ,(390,3,1,1,144,'0000-00-00 00:00:00')
 ,(391,3,1,1,144,'0000-00-00 00:00:00')
 ,(392,3,1,1,144,'0000-00-00 00:00:00')
 ,(393,3,1,1,144,'0000-00-00 00:00:00')
 ,(394,3,1,1,144,'0000-00-00 00:00:00')
 ,(395,3,1,1,144,'0000-00-00 00:00:00')
 ,(396,3,1,1,144,'0000-00-00 00:00:00')
 ,(397,3,1,1,144,'0000-00-00 00:00:00')
 ,(398,3,1,1,144,'0000-00-00 00:00:00')
 ,(399,3,1,1,144,'0000-00-00 00:00:00')
 ,(400,3,1,1,144,'0000-00-00 00:00:00')
 ,(401,3,1,1,144,'0000-00-00 00:00:00')
 ,(402,3,1,1,144,'0000-00-00 00:00:00')
 ,(403,3,1,1,144,'0000-00-00 00:00:00')
 ,(404,3,1,1,144,'0000-00-00 00:00:00')
 ,(405,3,1,1,144,'0000-00-00 00:00:00')
 ,(406,3,1,1,144,'0000-00-00 00:00:00')
 ,(407,3,1,1,144,'0000-00-00 00:00:00')
 ,(408,3,1,1,144,'0000-00-00 00:00:00')
 ,(409,3,1,1,144,'0000-00-00 00:00:00')
 ,(410,3,1,1,144,'0000-00-00 00:00:00')
 ,(411,3,1,1,144,'0000-00-00 00:00:00')
 ,(412,3,1,1,144,'0000-00-00 00:00:00')
 ,(413,3,1,1,144,'0000-00-00 00:00:00')
 ,(414,3,1,1,144,'0000-00-00 00:00:00')
 ,(415,3,1,1,144,'0000-00-00 00:00:00')
 ,(416,2,1,1,141,'0000-00-00 00:00:00')
 ,(417,2,1,1,141,'0000-00-00 00:00:00')
 ,(418,2,1,1,141,'0000-00-00 00:00:00')
 ,(419,2,1,1,141,'0000-00-00 00:00:00')
 ,(420,2,1,1,141,'0000-00-00 00:00:00')
 ,(421,2,1,1,141,'0000-00-00 00:00:00')
 ,(422,2,1,1,141,'0000-00-00 00:00:00')
 ,(423,2,1,1,141,'0000-00-00 00:00:00')
 ,(424,2,1,1,141,'0000-00-00 00:00:00')
 ,(425,2,1,1,141,'0000-00-00 00:00:00')
 ,(426,2,1,1,141,'0000-00-00 00:00:00')
 ,(427,2,1,1,141,'0000-00-00 00:00:00')
 ,(428,2,1,1,141,'0000-00-00 00:00:00')
 ,(429,3,1,1,144,'0000-00-00 00:00:00')
 ,(430,3,1,1,144,'0000-00-00 00:00:00')
 ,(431,3,1,1,144,'0000-00-00 00:00:00')
 ,(432,3,1,1,144,'0000-00-00 00:00:00')
 ,(433,3,1,1,144,'0000-00-00 00:00:00')
 ,(434,3,1,1,144,'0000-00-00 00:00:00')
 ,(435,3,1,1,144,'0000-00-00 00:00:00')
 ,(436,3,1,1,144,'0000-00-00 00:00:00')
 ,(437,3,1,1,144,'0000-00-00 00:00:00')
 ,(438,3,1,1,144,'0000-00-00 00:00:00')
 ,(439,3,1,1,144,'0000-00-00 00:00:00')
 ,(440,3,1,1,144,'0000-00-00 00:00:00')
 ,(441,3,1,1,144,'0000-00-00 00:00:00')
 ,(442,3,1,1,144,'0000-00-00 00:00:00')
 ,(443,3,1,1,144,'0000-00-00 00:00:00')
 ,(444,3,1,1,144,'0000-00-00 00:00:00')
 ,(445,3,1,1,144,'0000-00-00 00:00:00')
 ,(446,3,1,1,144,'0000-00-00 00:00:00')
 ,(447,3,1,1,144,'0000-00-00 00:00:00')
 ,(448,3,1,1,144,'0000-00-00 00:00:00')
 ,(449,3,1,1,144,'0000-00-00 00:00:00')
 ,(450,3,1,1,144,'0000-00-00 00:00:00')
 ,(451,3,1,1,144,'0000-00-00 00:00:00')
 ,(452,3,1,1,144,'0000-00-00 00:00:00')
 ,(453,3,1,1,144,'0000-00-00 00:00:00')
 ,(454,3,1,1,144,'0000-00-00 00:00:00')
 ,(455,3,1,1,144,'0000-00-00 00:00:00')
 ,(456,3,1,1,144,'0000-00-00 00:00:00')
 ,(457,3,1,1,144,'0000-00-00 00:00:00')
 ,(458,3,1,1,144,'0000-00-00 00:00:00')
 ,(459,3,1,1,144,'0000-00-00 00:00:00')
 ,(460,3,1,1,144,'0000-00-00 00:00:00')
 ,(461,3,1,1,144,'0000-00-00 00:00:00')
 ,(462,3,1,1,144,'0000-00-00 00:00:00')
 ,(463,3,1,1,144,'0000-00-00 00:00:00')
 ,(464,3,1,1,144,'0000-00-00 00:00:00')
 ,(465,3,1,1,144,'0000-00-00 00:00:00')
 ,(466,3,1,1,144,'0000-00-00 00:00:00')
 ,(467,3,1,1,144,'0000-00-00 00:00:00')
 ,(468,3,1,1,144,'0000-00-00 00:00:00')
 ,(469,3,1,1,144,'0000-00-00 00:00:00')
 ,(470,3,1,1,144,'0000-00-00 00:00:00')
 ,(471,3,1,1,144,'0000-00-00 00:00:00')
 ,(472,3,1,1,144,'0000-00-00 00:00:00')
 ,(473,3,1,1,144,'0000-00-00 00:00:00')
 ,(474,3,1,1,144,'0000-00-00 00:00:00')
 ,(475,3,1,1,144,'0000-00-00 00:00:00')
 ,(476,3,1,1,144,'0000-00-00 00:00:00')
 ,(477,3,1,1,144,'0000-00-00 00:00:00')
 ,(478,3,1,1,144,'0000-00-00 00:00:00')
 ,(479,3,1,1,144,'0000-00-00 00:00:00')
 ,(480,3,1,1,144,'0000-00-00 00:00:00')
 ,(481,3,1,1,144,'0000-00-00 00:00:00')
 ,(482,3,1,1,144,'0000-00-00 00:00:00')
 ,(483,3,1,1,144,'0000-00-00 00:00:00')
 ,(484,3,1,1,144,'0000-00-00 00:00:00')
 ,(485,3,1,1,144,'0000-00-00 00:00:00')
 ,(486,3,1,1,144,'0000-00-00 00:00:00')
 ,(487,3,1,1,144,'0000-00-00 00:00:00')
 ,(488,3,1,1,144,'0000-00-00 00:00:00')
 ,(489,3,1,1,144,'0000-00-00 00:00:00')
 ,(490,3,1,1,144,'0000-00-00 00:00:00')
 ,(491,3,1,1,144,'0000-00-00 00:00:00')
 ,(492,3,1,1,144,'0000-00-00 00:00:00')
 ,(493,3,1,1,144,'0000-00-00 00:00:00')
 ,(494,3,1,1,144,'0000-00-00 00:00:00')
 ,(495,3,1,1,144,'0000-00-00 00:00:00')
 ,(496,3,1,1,144,'0000-00-00 00:00:00')
 ,(497,3,1,1,144,'0000-00-00 00:00:00')
 ,(498,3,1,1,144,'0000-00-00 00:00:00')
 ,(499,3,1,1,144,'0000-00-00 00:00:00')
 ,(500,3,1,1,144,'0000-00-00 00:00:00')
 ,(501,3,1,1,144,'0000-00-00 00:00:00')
 ,(502,3,1,1,144,'0000-00-00 00:00:00')
 ,(503,3,1,1,144,'0000-00-00 00:00:00')
 ,(504,3,1,1,144,'0000-00-00 00:00:00')
 ,(505,3,1,1,144,'0000-00-00 00:00:00')
 ,(506,3,1,1,144,'0000-00-00 00:00:00')
 ,(507,3,1,1,144,'0000-00-00 00:00:00')
 ,(508,3,1,1,144,'0000-00-00 00:00:00')
 ,(509,3,1,1,144,'0000-00-00 00:00:00')
 ,(510,3,1,1,144,'0000-00-00 00:00:00')
 ,(511,3,1,1,144,'0000-00-00 00:00:00')
 ,(512,3,1,1,144,'0000-00-00 00:00:00')
 ,(513,3,1,1,144,'0000-00-00 00:00:00')
 ,(514,3,1,1,144,'0000-00-00 00:00:00')
 ,(515,3,1,1,144,'0000-00-00 00:00:00')
 ,(516,3,1,1,144,'0000-00-00 00:00:00')
 ,(517,3,1,1,144,'0000-00-00 00:00:00')
 ,(518,3,1,1,144,'0000-00-00 00:00:00')
 ,(519,3,1,1,144,'0000-00-00 00:00:00')
 ,(520,3,1,1,144,'0000-00-00 00:00:00')
 ,(521,3,1,1,144,'0000-00-00 00:00:00')
 ,(522,3,1,1,144,'0000-00-00 00:00:00')
 ,(523,3,1,1,144,'0000-00-00 00:00:00')
 ,(524,3,1,1,144,'0000-00-00 00:00:00')
 ,(525,3,1,1,144,'0000-00-00 00:00:00')
 ,(526,3,1,1,144,'0000-00-00 00:00:00')
 ,(527,3,1,1,144,'0000-00-00 00:00:00')
 ,(528,3,1,1,144,'0000-00-00 00:00:00')
 ,(529,3,1,1,144,'0000-00-00 00:00:00')
 ,(530,3,1,1,144,'0000-00-00 00:00:00')
 ,(531,3,1,1,144,'0000-00-00 00:00:00')
 ,(532,3,1,1,144,'0000-00-00 00:00:00')
 ,(533,3,1,1,144,'0000-00-00 00:00:00')
 ,(534,3,1,1,144,'0000-00-00 00:00:00')
 ,(535,3,1,1,144,'0000-00-00 00:00:00')
 ,(536,3,1,1,144,'0000-00-00 00:00:00')
 ,(537,3,1,1,144,'0000-00-00 00:00:00')
 ,(538,3,1,1,144,'0000-00-00 00:00:00')
 ,(539,3,1,1,144,'0000-00-00 00:00:00')
 ,(540,3,1,1,144,'0000-00-00 00:00:00')
 ,(541,3,1,1,144,'0000-00-00 00:00:00')
 ,(542,3,1,1,144,'0000-00-00 00:00:00')
 ,(543,3,1,1,144,'0000-00-00 00:00:00')
 ,(544,3,1,1,144,'0000-00-00 00:00:00')
 ,(545,3,1,1,144,'0000-00-00 00:00:00')
 ,(546,3,1,1,144,'0000-00-00 00:00:00')
 ,(547,3,1,1,144,'0000-00-00 00:00:00')
 ,(548,3,1,1,144,'0000-00-00 00:00:00')
 ,(549,3,1,1,144,'0000-00-00 00:00:00')
 ,(550,3,1,1,144,'0000-00-00 00:00:00')
 ,(551,3,1,1,144,'0000-00-00 00:00:00')
 ,(552,3,1,1,144,'0000-00-00 00:00:00')
 ,(553,3,1,1,144,'0000-00-00 00:00:00')
 ,(554,3,1,1,144,'0000-00-00 00:00:00')
 ,(555,3,1,1,144,'0000-00-00 00:00:00')
 ,(556,3,1,1,144,'0000-00-00 00:00:00')
 ,(557,3,1,1,144,'0000-00-00 00:00:00')
 ,(558,3,1,1,144,'0000-00-00 00:00:00')
 ,(559,3,1,1,144,'0000-00-00 00:00:00')
 ,(560,3,1,1,144,'0000-00-00 00:00:00')
 ,(561,3,1,1,144,'0000-00-00 00:00:00')
 ,(562,3,1,1,144,'0000-00-00 00:00:00')
 ,(563,3,1,1,144,'0000-00-00 00:00:00')
 ,(564,3,1,1,144,'0000-00-00 00:00:00')
 ,(565,3,1,1,144,'0000-00-00 00:00:00')
 ,(566,3,1,1,144,'0000-00-00 00:00:00')
 ,(567,3,1,1,144,'0000-00-00 00:00:00')
 ,(568,3,1,1,144,'0000-00-00 00:00:00')
 ,(569,3,1,1,144,'0000-00-00 00:00:00')
 ,(570,3,1,1,144,'0000-00-00 00:00:00')
 ,(571,3,1,1,144,'0000-00-00 00:00:00')
 ,(572,3,1,1,144,'0000-00-00 00:00:00')
 ,(573,3,1,1,144,'0000-00-00 00:00:00')
 ,(574,3,1,1,144,'0000-00-00 00:00:00')
 ,(575,3,1,1,144,'0000-00-00 00:00:00')
 ,(576,3,1,1,144,'0000-00-00 00:00:00')
 ,(577,3,1,1,144,'0000-00-00 00:00:00')
 ,(578,3,1,1,144,'0000-00-00 00:00:00')
 ,(579,3,1,1,144,'0000-00-00 00:00:00')
 ,(580,3,1,1,144,'0000-00-00 00:00:00')
 ,(581,3,1,1,144,'0000-00-00 00:00:00')
 ,(582,3,1,1,144,'0000-00-00 00:00:00')
 ,(583,3,1,1,144,'0000-00-00 00:00:00')
 ,(584,3,1,1,144,'0000-00-00 00:00:00')
 ,(585,3,1,1,144,'0000-00-00 00:00:00')
 ,(586,3,1,1,144,'0000-00-00 00:00:00')
 ,(587,3,1,1,144,'0000-00-00 00:00:00')
 ,(588,3,1,1,144,'0000-00-00 00:00:00')
 ,(589,3,1,1,144,'0000-00-00 00:00:00')
 ,(590,3,1,1,144,'0000-00-00 00:00:00')
 ,(591,3,1,1,144,'0000-00-00 00:00:00')
 ,(592,3,1,1,144,'0000-00-00 00:00:00')
 ,(593,3,1,1,144,'0000-00-00 00:00:00')
 ,(594,3,1,1,144,'0000-00-00 00:00:00')
 ,(595,3,1,1,144,'0000-00-00 00:00:00')
 ,(596,3,1,1,144,'0000-00-00 00:00:00')
 ,(597,3,1,1,144,'0000-00-00 00:00:00')
 ,(598,3,1,1,144,'0000-00-00 00:00:00')
 ,(599,3,1,1,144,'0000-00-00 00:00:00')
 ,(600,3,1,1,144,'0000-00-00 00:00:00')
 ,(601,3,1,1,144,'0000-00-00 00:00:00')
 ,(602,3,1,1,144,'0000-00-00 00:00:00')
 ,(603,3,1,1,144,'0000-00-00 00:00:00')
 ,(604,3,1,1,144,'0000-00-00 00:00:00')
 ,(605,3,1,1,144,'0000-00-00 00:00:00')
 ,(606,3,1,1,144,'0000-00-00 00:00:00')
 ,(607,3,1,1,144,'0000-00-00 00:00:00')
 ,(608,3,1,1,144,'0000-00-00 00:00:00')
 ,(609,3,1,1,144,'0000-00-00 00:00:00')
 ,(610,3,1,1,144,'0000-00-00 00:00:00')
 ,(611,3,1,1,144,'0000-00-00 00:00:00')
 ,(612,3,1,1,144,'0000-00-00 00:00:00')
 ,(613,3,1,1,144,'0000-00-00 00:00:00')
 ,(614,3,1,1,144,'0000-00-00 00:00:00')
 ,(615,3,1,1,144,'0000-00-00 00:00:00')
 ,(616,3,1,0,144,'0000-00-00 00:00:00')
 ,(617,3,1,0,144,'0000-00-00 00:00:00')
 ,(618,3,1,0,144,'0000-00-00 00:00:00')
 ,(619,3,1,0,144,'0000-00-00 00:00:00')
 ,(620,3,1,0,144,'0000-00-00 00:00:00')
 ,(621,3,1,0,144,'0000-00-00 00:00:00')
 ,(622,3,1,0,144,'0000-00-00 00:00:00')
 ,(623,3,1,0,144,'0000-00-00 00:00:00')
 ,(624,3,1,0,144,'0000-00-00 00:00:00')
 ,(625,3,1,0,144,'0000-00-00 00:00:00')
 ,(626,3,1,0,144,'0000-00-00 00:00:00')
 ,(627,3,1,0,144,'0000-00-00 00:00:00')
 ,(628,3,1,0,144,'0000-00-00 00:00:00')
 ,(629,3,1,0,144,'0000-00-00 00:00:00')
 ,(630,3,1,0,144,'0000-00-00 00:00:00')
 ,(631,3,1,0,144,'0000-00-00 00:00:00')
 ,(632,3,1,0,144,'0000-00-00 00:00:00')
 ,(633,3,1,0,144,'0000-00-00 00:00:00')
 ,(634,3,1,0,144,'0000-00-00 00:00:00')
 ,(635,3,1,0,144,'0000-00-00 00:00:00')
 ,(636,3,1,0,144,'0000-00-00 00:00:00')
 ,(637,3,1,0,144,'0000-00-00 00:00:00')
 ,(638,3,1,0,144,'0000-00-00 00:00:00')
 ,(639,3,1,0,144,'0000-00-00 00:00:00')
 ,(640,3,1,0,144,'0000-00-00 00:00:00')
 ,(641,3,1,0,144,'0000-00-00 00:00:00')
 ,(642,3,1,0,144,'0000-00-00 00:00:00')
 ,(643,3,1,0,144,'0000-00-00 00:00:00')
 ,(644,3,1,0,144,'0000-00-00 00:00:00')
 ,(645,3,1,0,144,'0000-00-00 00:00:00')
 ,(646,3,1,0,144,'0000-00-00 00:00:00')
 ,(647,3,1,0,144,'0000-00-00 00:00:00')
 ,(648,3,1,0,144,'0000-00-00 00:00:00')
 ,(649,3,1,1,144,'0000-00-00 00:00:00')
 ,(650,3,1,1,144,'0000-00-00 00:00:00')
 ,(651,3,1,1,144,'0000-00-00 00:00:00')
 ,(652,3,1,1,144,'0000-00-00 00:00:00')
 ,(653,3,1,1,144,'0000-00-00 00:00:00')
 ,(654,2,1,0,141,'0000-00-00 00:00:00')
 ,(655,2,1,0,141,'0000-00-00 00:00:00')
 ,(656,2,1,0,141,'0000-00-00 00:00:00')
 ,(657,2,1,0,141,'0000-00-00 00:00:00')
 ,(658,2,1,0,141,'0000-00-00 00:00:00')
 ,(659,2,1,0,141,'0000-00-00 00:00:00')
 ,(660,2,1,0,141,'0000-00-00 00:00:00')
 ,(661,2,1,0,141,'0000-00-00 00:00:00')
 ,(662,2,1,0,141,'0000-00-00 00:00:00')
 ,(663,2,1,0,141,'0000-00-00 00:00:00')
 ,(664,2,1,0,141,'0000-00-00 00:00:00')
 ,(665,2,1,0,141,'0000-00-00 00:00:00')
 ,(666,2,1,0,141,'0000-00-00 00:00:00')
 ,(667,2,1,0,141,'0000-00-00 00:00:00')
 ,(668,3,1,0,144,'0000-00-00 00:00:00')
 ,(669,3,1,0,144,'0000-00-00 00:00:00')
 ,(670,3,1,0,144,'0000-00-00 00:00:00')
 ,(671,3,1,0,144,'0000-00-00 00:00:00')
 ,(672,3,1,0,144,'0000-00-00 00:00:00')
 ,(673,3,1,0,144,'0000-00-00 00:00:00')
 ,(674,3,1,0,144,'0000-00-00 00:00:00')
 ,(675,3,1,0,144,'0000-00-00 00:00:00')
 ,(676,3,1,0,144,'0000-00-00 00:00:00')
 ,(677,3,1,0,144,'0000-00-00 00:00:00')
 ,(678,3,1,0,144,'0000-00-00 00:00:00')
 ,(679,3,1,0,144,'0000-00-00 00:00:00')
 ,(680,3,1,0,144,'0000-00-00 00:00:00')
 ,(681,3,1,0,144,'0000-00-00 00:00:00')
 ,(682,3,1,0,144,'0000-00-00 00:00:00')
 ,(683,3,1,0,144,'0000-00-00 00:00:00')
 ,(684,3,1,0,144,'0000-00-00 00:00:00')
 ,(685,3,1,0,144,'0000-00-00 00:00:00')
 ,(686,3,1,0,144,'0000-00-00 00:00:00')
 ,(687,3,1,0,144,'0000-00-00 00:00:00')
 ,(688,3,1,0,144,'0000-00-00 00:00:00')
 ,(689,3,1,0,144,'0000-00-00 00:00:00')
 ,(690,3,1,0,144,'0000-00-00 00:00:00')
 ,(691,3,1,0,144,'0000-00-00 00:00:00')
 ,(692,3,1,0,144,'0000-00-00 00:00:00')
 ,(693,3,1,0,144,'0000-00-00 00:00:00')
 ,(694,3,1,0,144,'0000-00-00 00:00:00')
 ,(695,3,1,0,144,'0000-00-00 00:00:00')
 ,(696,3,1,0,144,'0000-00-00 00:00:00')
 ,(697,3,1,0,144,'0000-00-00 00:00:00')
 ,(698,3,1,0,144,'0000-00-00 00:00:00')
 ,(699,3,1,0,144,'0000-00-00 00:00:00')
 ,(700,3,1,0,144,'0000-00-00 00:00:00')
 ,(701,3,1,0,144,'0000-00-00 00:00:00')
 ,(702,3,1,0,144,'0000-00-00 00:00:00')
 ,(703,3,1,0,144,'0000-00-00 00:00:00')
 ,(704,3,1,0,144,'0000-00-00 00:00:00')
 ,(705,3,1,0,144,'0000-00-00 00:00:00')
 ,(706,3,1,0,144,'0000-00-00 00:00:00')
 ,(707,3,1,0,144,'0000-00-00 00:00:00')
 ,(708,3,1,0,144,'0000-00-00 00:00:00')
 ,(709,3,1,0,144,'0000-00-00 00:00:00')
 ,(710,3,1,0,144,'0000-00-00 00:00:00')
 ,(711,3,1,0,144,'0000-00-00 00:00:00')
 ,(712,2,1,0,141,'0000-00-00 00:00:00')
 ,(713,2,1,0,141,'0000-00-00 00:00:00')
 ,(714,2,1,0,141,'0000-00-00 00:00:00')
 ,(715,2,1,0,141,'0000-00-00 00:00:00')
 ,(716,2,1,0,141,'0000-00-00 00:00:00')
 ,(717,2,1,0,141,'0000-00-00 00:00:00')
 ,(718,2,1,0,141,'0000-00-00 00:00:00')
 ,(719,2,1,0,141,'0000-00-00 00:00:00')
 ,(720,2,1,0,141,'0000-00-00 00:00:00')
 ,(721,2,1,0,141,'0000-00-00 00:00:00')
 ,(722,2,1,0,141,'0000-00-00 00:00:00')
 ,(723,2,1,0,141,'0000-00-00 00:00:00')
 ,(724,2,1,0,141,'0000-00-00 00:00:00')
 ,(725,3,1,0,144,'0000-00-00 00:00:00')
 ,(726,3,1,0,144,'0000-00-00 00:00:00')
 ,(727,3,1,0,144,'0000-00-00 00:00:00')
 ,(728,3,1,0,144,'0000-00-00 00:00:00')
 ,(729,3,1,0,144,'0000-00-00 00:00:00')
 ,(730,3,1,0,144,'0000-00-00 00:00:00')
 ,(731,3,1,0,144,'0000-00-00 00:00:00')
 ,(732,3,1,0,144,'0000-00-00 00:00:00')
 ,(733,3,1,0,144,'0000-00-00 00:00:00')
 ,(734,3,1,0,144,'0000-00-00 00:00:00')
 ,(735,3,1,0,144,'0000-00-00 00:00:00')
 ,(736,1,1,0,137,'0000-00-00 00:00:00')
 ,(737,1,1,0,137,'0000-00-00 00:00:00')
 ,(738,1,1,0,137,'0000-00-00 00:00:00')
 ,(739,1,1,0,137,'0000-00-00 00:00:00')
 ,(740,1,1,0,137,'0000-00-00 00:00:00')
 ,(741,3,1,0,144,'0000-00-00 00:00:00')
 ,(742,3,1,0,144,'0000-00-00 00:00:00')
 ,(743,3,1,0,144,'0000-00-00 00:00:00')
 ,(744,3,1,0,144,'0000-00-00 00:00:00')
 ,(745,3,1,0,144,'0000-00-00 00:00:00')
 ,(746,3,1,0,144,'0000-00-00 00:00:00')
 ,(747,3,1,0,144,'0000-00-00 00:00:00')
 ,(748,3,1,0,144,'0000-00-00 00:00:00')
 ,(749,3,1,0,144,'0000-00-00 00:00:00')
 ,(750,3,1,0,144,'0000-00-00 00:00:00')
 ,(751,3,1,0,144,'0000-00-00 00:00:00')
 ,(752,2,1,0,141,'0000-00-00 00:00:00')
 ,(753,2,1,0,141,'0000-00-00 00:00:00')
 ,(754,2,1,0,141,'0000-00-00 00:00:00')
 ,(755,2,1,0,141,'0000-00-00 00:00:00')
 ,(756,2,1,0,141,'0000-00-00 00:00:00')
 ,(757,2,1,0,141,'0000-00-00 00:00:00')
 ,(758,2,1,0,141,'0000-00-00 00:00:00')
 ,(759,2,1,0,141,'0000-00-00 00:00:00')
 ,(760,2,1,0,141,'0000-00-00 00:00:00')
 ,(761,2,1,0,141,'0000-00-00 00:00:00')
 ,(762,2,1,0,141,'0000-00-00 00:00:00')
 ,(763,2,1,0,141,'0000-00-00 00:00:00')
 ,(764,2,1,0,141,'0000-00-00 00:00:00')
 ,(765,3,1,0,144,'0000-00-00 00:00:00')
 ,(766,3,1,0,144,'0000-00-00 00:00:00')
 ,(767,3,1,0,144,'0000-00-00 00:00:00')
 ,(768,3,1,0,144,'0000-00-00 00:00:00')
 ,(769,3,1,0,144,'0000-00-00 00:00:00')
 ,(770,3,1,0,144,'0000-00-00 00:00:00')
 ,(771,3,1,0,144,'0000-00-00 00:00:00')
 ,(772,3,1,0,144,'0000-00-00 00:00:00')
 ,(773,3,1,0,144,'0000-00-00 00:00:00')
 ,(774,3,1,0,144,'0000-00-00 00:00:00')
 ,(775,3,1,0,144,'0000-00-00 00:00:00')
 ,(776,1,1,0,137,'0000-00-00 00:00:00')
 ,(777,1,1,0,137,'0000-00-00 00:00:00')
 ,(778,1,1,0,137,'0000-00-00 00:00:00')
 ,(779,1,1,0,137,'0000-00-00 00:00:00')
 ,(780,1,1,0,137,'0000-00-00 00:00:00')
 ,(781,1,1,0,137,'0000-00-00 00:00:00')
 ,(782,1,1,0,137,'0000-00-00 00:00:00')
 ,(783,1,1,0,137,'0000-00-00 00:00:00')
 ,(784,1,1,0,137,'0000-00-00 00:00:00')
 ,(785,1,1,0,137,'0000-00-00 00:00:00')
 ,(786,2,1,0,141,'0000-00-00 00:00:00')
 ,(787,2,1,0,141,'0000-00-00 00:00:00')
 ,(788,2,1,0,141,'0000-00-00 00:00:00')
 ,(789,2,1,0,141,'0000-00-00 00:00:00')
 ,(790,2,1,0,141,'0000-00-00 00:00:00')
 ,(791,2,1,0,141,'0000-00-00 00:00:00')
 ,(792,2,1,0,141,'0000-00-00 00:00:00')
 ,(793,2,1,0,141,'0000-00-00 00:00:00')
 ,(794,2,1,0,141,'0000-00-00 00:00:00')
 ,(795,2,1,0,141,'0000-00-00 00:00:00')
 ,(796,2,1,0,141,'0000-00-00 00:00:00')
 ,(797,2,1,0,141,'0000-00-00 00:00:00')
 ,(798,2,1,0,141,'0000-00-00 00:00:00')
 ,(799,3,1,0,144,'0000-00-00 00:00:00')
 ,(800,3,1,0,144,'0000-00-00 00:00:00')
 ,(801,3,1,0,144,'0000-00-00 00:00:00')
 ,(802,3,1,0,144,'0000-00-00 00:00:00')
 ,(803,3,1,0,144,'0000-00-00 00:00:00')
 ,(804,3,1,0,144,'0000-00-00 00:00:00')
 ,(805,3,1,0,144,'0000-00-00 00:00:00')
 ,(806,3,1,0,144,'0000-00-00 00:00:00')
 ,(807,3,1,0,144,'0000-00-00 00:00:00')
 ,(808,3,1,0,144,'0000-00-00 00:00:00')
 ,(809,3,1,0,144,'0000-00-00 00:00:00')
 ,(810,3,1,0,144,'0000-00-00 00:00:00')
 ,(811,3,1,0,144,'0000-00-00 00:00:00')
 ,(812,3,1,0,144,'0000-00-00 00:00:00')
 ,(813,3,1,0,144,'0000-00-00 00:00:00')
 ,(814,3,1,0,144,'0000-00-00 00:00:00')
 ,(815,3,1,0,144,'0000-00-00 00:00:00')
 ,(816,3,1,0,144,'0000-00-00 00:00:00')
 ,(817,3,1,0,144,'0000-00-00 00:00:00')
 ,(818,3,1,0,144,'0000-00-00 00:00:00')
 ,(819,3,1,0,144,'0000-00-00 00:00:00')
 ,(820,3,1,0,144,'0000-00-00 00:00:00')
 ,(821,2,1,0,141,'0000-00-00 00:00:00')
 ,(822,2,1,0,141,'0000-00-00 00:00:00')
 ,(823,2,1,0,141,'0000-00-00 00:00:00')
 ,(824,2,1,0,141,'0000-00-00 00:00:00')
 ,(825,2,1,0,141,'0000-00-00 00:00:00')
 ,(826,2,1,0,141,'0000-00-00 00:00:00')
 ,(827,2,1,0,141,'0000-00-00 00:00:00')
 ,(828,2,1,0,141,'0000-00-00 00:00:00')
 ,(829,2,1,0,141,'0000-00-00 00:00:00')
 ,(830,2,1,0,141,'0000-00-00 00:00:00')
 ,(831,2,1,0,141,'0000-00-00 00:00:00')
 ,(832,2,1,0,141,'0000-00-00 00:00:00')
 ,(833,2,1,0,141,'0000-00-00 00:00:00')
 ,(834,2,1,1,141,'0000-00-00 00:00:00')
 ,(835,2,1,1,141,'0000-00-00 00:00:00')
 ,(836,2,1,1,141,'0000-00-00 00:00:00')
 ,(837,2,1,1,141,'0000-00-00 00:00:00')
 ,(838,2,1,1,141,'0000-00-00 00:00:00')
 ,(839,2,1,1,141,'0000-00-00 00:00:00')
 ,(840,2,1,1,141,'0000-00-00 00:00:00')
 ,(841,2,1,1,141,'0000-00-00 00:00:00')
 ,(842,2,1,1,141,'0000-00-00 00:00:00')
 ,(843,2,1,1,141,'0000-00-00 00:00:00')
 ,(844,2,1,1,141,'0000-00-00 00:00:00')
 ,(845,2,1,1,141,'0000-00-00 00:00:00')
 ,(846,2,1,1,141,'0000-00-00 00:00:00')
 ,(847,2,1,0,141,'0000-00-00 00:00:00')
 ,(848,2,1,0,141,'0000-00-00 00:00:00')
 ,(849,2,1,0,141,'0000-00-00 00:00:00')
 ,(850,2,1,0,141,'0000-00-00 00:00:00')
 ,(851,2,1,0,141,'0000-00-00 00:00:00')
 ,(852,2,1,0,141,'0000-00-00 00:00:00')
 ,(853,2,1,0,141,'0000-00-00 00:00:00')
 ,(854,2,1,0,141,'0000-00-00 00:00:00')
 ,(855,2,1,0,141,'0000-00-00 00:00:00')
 ,(856,2,1,0,141,'0000-00-00 00:00:00')
 ,(857,2,1,0,141,'0000-00-00 00:00:00')
 ,(858,2,1,0,141,'0000-00-00 00:00:00')
 ,(859,2,1,0,141,'0000-00-00 00:00:00')
 ,(860,2,1,1,141,'2014-05-05 10:34:26')
 ,(861,2,1,1,141,'2014-05-05 10:34:28')
 ,(862,2,1,1,141,'2014-05-05 10:34:29')
 ,(863,2,1,1,141,'2014-05-05 10:34:31')
 ,(864,2,1,1,141,'2014-05-05 10:34:32')
 ,(865,2,1,1,141,'2014-05-05 10:34:34')
 ,(866,2,1,1,141,'2014-05-05 10:34:35')
 ,(867,2,1,1,141,'2014-05-05 10:34:37')
 ,(868,2,1,1,141,'2014-05-05 10:34:38')
 ,(869,2,1,1,141,'2014-05-05 10:34:40')
 ,(870,2,1,1,141,'2014-05-05 10:34:41')
 ,(871,1,1,1,137,'2014-05-05 10:34:54')
 ,(872,1,1,1,137,'2014-05-05 10:34:55')
 ,(873,1,1,1,137,'2014-05-05 10:34:57')
 ,(874,1,1,1,137,'2014-05-05 10:34:58')
 ,(875,1,1,1,137,'2014-05-05 10:35:00')
 ,(876,2,1,1,141,'2014-05-05 11:57:40')
 ,(877,2,1,1,141,'2014-05-05 11:57:42')
 ,(878,2,1,1,141,'2014-05-05 11:57:44')
 ,(879,2,1,1,141,'2014-05-05 11:57:45')
 ,(880,2,1,1,141,'2014-05-05 11:57:47')
 ,(881,2,1,1,141,'2014-05-05 11:57:48')
 ,(882,2,1,1,141,'2014-05-05 11:57:50')
 ,(883,2,1,1,141,'2014-05-05 11:57:51')
 ,(884,2,1,1,141,'2014-05-05 11:57:53')
 ,(885,2,1,1,141,'2014-05-05 11:57:54')
 ,(886,2,1,1,141,'2014-05-05 11:57:56')
 ,(887,2,1,1,141,'2014-05-05 13:03:29')
 ,(888,2,1,1,141,'2014-05-05 13:03:31')
 ,(889,2,1,1,141,'2014-05-05 13:03:32')
 ,(890,2,1,1,141,'2014-05-05 13:03:34')
 ,(891,2,1,1,141,'2014-05-05 13:03:35')
 ,(892,2,1,1,141,'2014-05-05 13:03:37')
 ,(893,2,1,1,141,'2014-05-05 13:03:38')
 ,(894,2,1,1,141,'2014-05-05 13:03:40')
 ,(895,2,1,1,141,'2014-05-05 13:03:41')
 ,(896,2,1,1,141,'2014-05-05 13:03:43')
 ,(897,2,1,1,141,'2014-05-05 13:03:44')
 ,(898,2,1,1,141,'2014-05-05 13:03:46')
 ,(899,2,1,1,141,'2014-05-05 13:03:47')
 ,(900,1,1,1,137,'2014-05-05 13:04:11')
 ,(901,3,1,1,144,'2014-05-05 13:04:23');

DROP TABLE IF EXISTS fileattributevalues;

CREATE TABLE IF NOT EXISTS `fileattributevalues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filepermissionassignments;

CREATE TABLE IF NOT EXISTS `filepermissionassignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filepermissionfiletypes;

CREATE TABLE IF NOT EXISTS `filepermissionfiletypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS files;

CREATE TABLE IF NOT EXISTS `files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO files VALUES(1,'2014-02-18 12:04:33',1,0,137,0,NULL)
 ,(2,'2014-02-18 16:15:52',1,0,141,0,NULL)
 ,(3,'2014-02-27 16:01:31',1,0,144,0,NULL);

DROP TABLE IF EXISTS filesearchindexattributes;

CREATE TABLE IF NOT EXISTS `filesearchindexattributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO filesearchindexattributes VALUES(1,0.0000,0.0000,0.0000)
 ,(2,0.0000,0.0000,0.0000)
 ,(3,0.0000,0.0000,0.0000);

DROP TABLE IF EXISTS filesetfiles;

CREATE TABLE IF NOT EXISTS `filesetfiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filesetpermissionassignments;

CREATE TABLE IF NOT EXISTS `filesetpermissionassignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO filesetpermissionassignments VALUES(0,44,35)
 ,(0,45,36)
 ,(0,46,37)
 ,(0,47,38)
 ,(0,48,39)
 ,(0,49,40)
 ,(0,50,42)
 ,(0,51,41)
 ,(0,52,43);

DROP TABLE IF EXISTS filesetpermissionfiletypeaccesslist;

CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filesetpermissionfiletypeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filesets;

CREATE TABLE IF NOT EXISTS `filesets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filesetsavedsearches;

CREATE TABLE IF NOT EXISTS `filesetsavedsearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS filestoragelocations;

CREATE TABLE IF NOT EXISTS `filestoragelocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS fileversionlog;

CREATE TABLE IF NOT EXISTS `fileversionlog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS fileversions;

CREATE TABLE IF NOT EXISTS `fileversions` (
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

INSERT INTO fileversions VALUES(1,1,'2014-02-14-Tract-Direction-Des-Collections.pdf','981392721473',0,204810,'2014-02-14-Tract-Direction-Des-Collections.pdf','','',1,'2014-02-18 12:04:33',1,1,'2014-02-18 12:04:33',0,0,0,'pdf',5)
 ,(2,1,'ISAST_rapport_expertise_sur_reorganisation_DDCOLL_3_janv_2013v2.pdf','771392736552',0,821621,'ISAST_rapport_expertise_sur_reorganisation_DDCOLL_3_janv_2013v2.pdf','','',1,'2014-02-18 16:15:52',1,1,'2014-02-18 16:15:52',0,0,0,'pdf',5)
 ,(3,1,'2013-accord-collectif.pdf','131393513291',0,615635,'2013-accord-collectif.pdf','','',1,'2014-02-27 16:01:31',1,1,'2014-02-27 16:01:31',0,0,0,'pdf',5);

DROP TABLE IF EXISTS groups;

CREATE TABLE IF NOT EXISTS `groups` (
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

INSERT INTO groups VALUES(1,'Guest','The guest group represents unregistered visitors to your site.',0,NULL,NULL,0,NULL)
 ,(2,'Registered Users','The registered users group represents all user accounts.',0,NULL,NULL,0,NULL)
 ,(3,'Administrators','',0,NULL,NULL,0,NULL);

DROP TABLE IF EXISTS groupsetgroups;

CREATE TABLE IF NOT EXISTS `groupsetgroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS groupsets;

CREATE TABLE IF NOT EXISTS `groupsets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS jobs;

CREATE TABLE IF NOT EXISTS `jobs` (
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

INSERT INTO jobs VALUES(1,'Index Search Engine - Updates','Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','index_search',1,0,'days',0)
 ,(2,'Index Search Engine - All','Empties the page search index and reindexes all pages.','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','index_search_all',1,0,'days',0)
 ,(3,'Generate the sitemap.xml file','Generate the sitemap.xml file that search engines use to crawl your site.','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','generate_sitemap',0,0,'days',0)
 ,(4,'Process Email Posts','Polls an email account and grabs private messages/postings that are sent there..','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','process_email',0,0,'days',0)
 ,(5,'Remove Old Page Versions','Removes all except the 10 most recent page versions for each page.','2014-02-14 10:05:19',NULL,0,NULL,0,'ENABLED','remove_old_page_versions',0,0,'days',0);

DROP TABLE IF EXISTS jobsetjobs;

CREATE TABLE IF NOT EXISTS `jobsetjobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`,`jID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO jobsetjobs VALUES(1,1,0)
 ,(1,3,0)
 ,(1,4,0)
 ,(1,5,0);

DROP TABLE IF EXISTS jobsets;

CREATE TABLE IF NOT EXISTS `jobsets` (
  `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jsName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(1) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) NOT NULL DEFAULT 'days',
  `scheduledValue` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jsID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO jobsets VALUES(1,'Default',0,NULL,0,'days',0);

DROP TABLE IF EXISTS jobslog;

CREATE TABLE IF NOT EXISTS `jobslog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS layoutpresets;

CREATE TABLE IF NOT EXISTS `layoutpresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS layouts;

CREATE TABLE IF NOT EXISTS `layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO layouts VALUES(1,1,3,0,'30%,67%',0);

DROP TABLE IF EXISTS logs;

CREATE TABLE IF NOT EXISTS `logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO logs VALUES(1,'Page Action','0000-00-00 00:00:00','Page &quot;&quot; at path &quot;&quot; deleted\n',1,0)
 ,(2,'Action sur la page','0000-00-00 00:00:00','Page &quot;Blog&quot; du chemin &quot;/blog&quot; d&eacute;plac&eacute;e &agrave; la corbeille\n',1,0)
 ,(3,'exceptions','0000-00-00 00:00:00','Une exception est survenue:/ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/permissions.php:73 Impossible d&amp;apos;obtenir la cl&eacute; de permission pour write (0)\n\n#0 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(724): Concrete5_Model_Permissions-&gt;__call(\'canWrite\', Array)\n#1 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(724): Permissions-&gt;canWrite()\n#2 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/dispatcher.php(250): require(\'/ap01/studiohd1...\')\n#3 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/index.php(2): require(\'/ap01/studiohd1...\')\n#4 {main}\n',1,1)
 ,(4,'Action sur la page','0000-00-00 00:00:00','Page &quot;Accords, status...&quot; du chemin &quot;/accords-status&quot; d&eacute;plac&eacute;e &agrave; la corbeille\n',1,0)
 ,(5,'exceptions','0000-00-00 00:00:00','Une exception est survenue:/ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1048: Column \'testID\' cannot be null] in EXECUTE(&quot;INSERT INTO btCalendar (bID,testID) VALUES (74,NULL)&quot;)\n (1048)\n\n#0 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1048, \'Column \'testID\'...\', \'INSERT INTO btC...\', false, Object(ADODB_mysqlt))\n#1 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1049): ADOConnection-&gt;_Execute(\'INSERT INTO btC...\', false)\n#2 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-lib.inc.php(208): ADOConnection-&gt;Execute(\'INSERT INTO btC...\')\n#3 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1696): _adodb_replace(Object(ADODB_mysqlt), \'btCalendar\', Array, Array, false, false)\n#4 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-active-record.inc.php(858): ADOConnection-&gt;Replace(\'btCalendar\', Array, Array)\n#5 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/libraries/block_controller.php(170): ADODB_Active_Record-&gt;Replace()\n#6 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/block_types.php(971): Concrete5_Library_BlockController-&gt;save(Array)\n#7 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/collection.php(834): Concrete5_Model_BlockType-&gt;add(Array, Object(Page), Object(Area))\n#8 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(902): Concrete5_Model_Collection-&gt;addBlock(Object(BlockType), Object(Area), Array)\n#9 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/dispatcher.php(250): require(\'/ap01/studiohd1...\')\n#10 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/index.php(2): require(\'/ap01/studiohd1...\')\n#11 {main}\n',1,1)
 ,(6,'exceptions','0000-00-00 00:00:00','Une exception est survenue:/ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1048: Column \'testID\' cannot be null] in EXECUTE(&quot;INSERT INTO btCalendar (bID,testID) VALUES (75,NULL)&quot;)\n (1048)\n\n#0 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1048, \'Column \'testID\'...\', \'INSERT INTO btC...\', false, Object(ADODB_mysqlt))\n#1 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1049): ADOConnection-&gt;_Execute(\'INSERT INTO btC...\', false)\n#2 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-lib.inc.php(208): ADOConnection-&gt;Execute(\'INSERT INTO btC...\')\n#3 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1696): _adodb_replace(Object(ADODB_mysqlt), \'btCalendar\', Array, Array, false, false)\n#4 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-active-record.inc.php(858): ADOConnection-&gt;Replace(\'btCalendar\', Array, Array)\n#5 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/libraries/block_controller.php(170): ADODB_Active_Record-&gt;Replace()\n#6 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/block_types.php(971): Concrete5_Library_BlockController-&gt;save(Array)\n#7 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/collection.php(834): Concrete5_Model_BlockType-&gt;add(Array, Object(Page), Object(Area))\n#8 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(902): Concrete5_Model_Collection-&gt;addBlock(Object(BlockType), Object(Area), Array)\n#9 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/dispatcher.php(250): require(\'/ap01/studiohd1...\')\n#10 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/index.php(2): require(\'/ap01/studiohd1...\')\n#11 {main}\n',1,1)
 ,(7,'exceptions','0000-00-00 00:00:00','Une exception est survenue:/ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1048: Column \'testID\' cannot be null] in EXECUTE(&quot;INSERT INTO btCalendar (bID,testID) VALUES (76,NULL)&quot;)\n (1048)\n\n#0 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1048, \'Column \'testID\'...\', \'INSERT INTO btC...\', false, Object(ADODB_mysqlt))\n#1 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1049): ADOConnection-&gt;_Execute(\'INSERT INTO btC...\', false)\n#2 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-lib.inc.php(208): ADOConnection-&gt;Execute(\'INSERT INTO btC...\')\n#3 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1696): _adodb_replace(Object(ADODB_mysqlt), \'btCalendar\', Array, Array, false, false)\n#4 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-active-record.inc.php(858): ADOConnection-&gt;Replace(\'btCalendar\', Array, Array)\n#5 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/libraries/block_controller.php(170): ADODB_Active_Record-&gt;Replace()\n#6 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/block_types.php(971): Concrete5_Library_BlockController-&gt;save(Array)\n#7 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/collection.php(834): Concrete5_Model_BlockType-&gt;add(Array, Object(Page), Object(Area))\n#8 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(902): Concrete5_Model_Collection-&gt;addBlock(Object(BlockType), Object(Area), Array)\n#9 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/dispatcher.php(250): require(\'/ap01/studiohd1...\')\n#10 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/index.php(2): require(\'/ap01/studiohd1...\')\n#11 {main}\n',1,1)
 ,(8,'exceptions','0000-00-00 00:00:00','Une exception est survenue:/ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1048: Column \'testID\' cannot be null] in EXECUTE(&quot;INSERT INTO btCalendar (bID,testID) VALUES (77,NULL)&quot;)\n (1048)\n\n#0 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1048, \'Column \'testID\'...\', \'INSERT INTO btC...\', false, Object(ADODB_mysqlt))\n#1 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1049): ADOConnection-&gt;_Execute(\'INSERT INTO btC...\', false)\n#2 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-lib.inc.php(208): ADOConnection-&gt;Execute(\'INSERT INTO btC...\')\n#3 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1696): _adodb_replace(Object(ADODB_mysqlt), \'btCalendar\', Array, Array, false, false)\n#4 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-active-record.inc.php(858): ADOConnection-&gt;Replace(\'btCalendar\', Array, Array)\n#5 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/libraries/block_controller.php(170): ADODB_Active_Record-&gt;Replace()\n#6 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/block_types.php(971): Concrete5_Library_BlockController-&gt;save(Array)\n#7 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/collection.php(834): Concrete5_Model_BlockType-&gt;add(Array, Object(Page), Object(Area))\n#8 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(902): Concrete5_Model_Collection-&gt;addBlock(Object(BlockType), Object(Area), Array)\n#9 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/dispatcher.php(250): require(\'/ap01/studiohd1...\')\n#10 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/index.php(2): require(\'/ap01/studiohd1...\')\n#11 {main}\n',1,1)
 ,(9,'exceptions','0000-00-00 00:00:00','Une exception est survenue:/ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1048: Column \'testID\' cannot be null] in EXECUTE(&quot;INSERT INTO btCalendar (bID,testID) VALUES (78,NULL)&quot;)\n (1048)\n\n#0 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1048, \'Column \'testID\'...\', \'INSERT INTO btC...\', false, Object(ADODB_mysqlt))\n#1 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1049): ADOConnection-&gt;_Execute(\'INSERT INTO btC...\', false)\n#2 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-lib.inc.php(208): ADOConnection-&gt;Execute(\'INSERT INTO btC...\')\n#3 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1696): _adodb_replace(Object(ADODB_mysqlt), \'btCalendar\', Array, Array, false, false)\n#4 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-active-record.inc.php(858): ADOConnection-&gt;Replace(\'btCalendar\', Array, Array)\n#5 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/libraries/block_controller.php(170): ADODB_Active_Record-&gt;Replace()\n#6 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/block_types.php(971): Concrete5_Library_BlockController-&gt;save(Array)\n#7 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/collection.php(834): Concrete5_Model_BlockType-&gt;add(Array, Object(Page), Object(Area))\n#8 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(902): Concrete5_Model_Collection-&gt;addBlock(Object(BlockType), Object(Area), Array)\n#9 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/dispatcher.php(250): require(\'/ap01/studiohd1...\')\n#10 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/index.php(2): require(\'/ap01/studiohd1...\')\n#11 {main}\n',1,1)
 ,(10,'exceptions','0000-00-00 00:00:00','Une exception est survenue:/ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1048: Column \'testID\' cannot be null] in EXECUTE(&quot;INSERT INTO btCalendar (bID,testID) VALUES (79,NULL)&quot;)\n (1048)\n\n#0 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1048, \'Column \'testID\'...\', \'INSERT INTO btC...\', false, Object(ADODB_mysqlt))\n#1 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1049): ADOConnection-&gt;_Execute(\'INSERT INTO btC...\', false)\n#2 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-lib.inc.php(208): ADOConnection-&gt;Execute(\'INSERT INTO btC...\')\n#3 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1696): _adodb_replace(Object(ADODB_mysqlt), \'btCalendar\', Array, Array, false, false)\n#4 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-active-record.inc.php(858): ADOConnection-&gt;Replace(\'btCalendar\', Array, Array)\n#5 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/libraries/block_controller.php(170): ADODB_Active_Record-&gt;Replace()\n#6 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/block_types.php(971): Concrete5_Library_BlockController-&gt;save(Array)\n#7 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/collection.php(834): Concrete5_Model_BlockType-&gt;add(Array, Object(Page), Object(Area))\n#8 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(902): Concrete5_Model_Collection-&gt;addBlock(Object(BlockType), Object(Area), Array)\n#9 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/dispatcher.php(250): require(\'/ap01/studiohd1...\')\n#10 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/index.php(2): require(\'/ap01/studiohd1...\')\n#11 {main}\n',1,1)
 ,(11,'exceptions','0000-00-00 00:00:00','Une exception est survenue:/ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1048: Column \'testID\' cannot be null] in EXECUTE(&quot;INSERT INTO btCalendar(bID,testID) VALUES (\'81\',NULL)&quot;)\n (1048)\n\n#0 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1048, \'Column \'testID\'...\', \'INSERT INTO btC...\', false, Object(ADODB_mysqlt))\n#1 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1030): ADOConnection-&gt;_Execute(\'INSERT INTO btC...\')\n#2 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-active-record.inc.php(775): ADOConnection-&gt;Execute(\'INSERT INTO btC...\', Array)\n#3 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/libraries/block_controller.php(208): ADODB_Active_Record-&gt;Insert()\n#4 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/block.php(616): Concrete5_Library_BlockController-&gt;duplicate(\'81\')\n#5 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(786): Concrete5_Model_Block-&gt;duplicate(Object(Page))\n#6 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/dispatcher.php(250): require(\'/ap01/studiohd1...\')\n#7 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/index.php(2): require(\'/ap01/studiohd1...\')\n#8 {main}\n',1,1)
 ,(12,'exceptions','0000-00-00 00:00:00','Une exception est survenue:/ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-exceptions.inc.php:78 mysqlt error: [1048: Column \'testID\' cannot be null] in EXECUTE(&quot;INSERT INTO btCalendar (bID,testID) VALUES (83,NULL)&quot;)\n (1048)\n\n#0 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1074): adodb_throw(\'mysqlt\', \'EXECUTE\', 1048, \'Column \'testID\'...\', \'INSERT INTO btC...\', false, Object(ADODB_mysqlt))\n#1 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1049): ADOConnection-&gt;_Execute(\'INSERT INTO btC...\', false)\n#2 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-lib.inc.php(208): ADOConnection-&gt;Execute(\'INSERT INTO btC...\')\n#3 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb.inc.php(1696): _adodb_replace(Object(ADODB_mysqlt), \'btCalendar\', Array, Array, false, false)\n#4 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/libraries/3rdparty/adodb/adodb-active-record.inc.php(858): ADOConnection-&gt;Replace(\'btCalendar\', Array, Array)\n#5 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/libraries/block_controller.php(170): ADODB_Active_Record-&gt;Replace()\n#6 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/block_types.php(971): Concrete5_Library_BlockController-&gt;save(Array)\n#7 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/core/models/collection.php(834): Concrete5_Model_BlockType-&gt;add(Array, Object(Page), Object(Area))\n#8 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/startup/process.php(902): Concrete5_Model_Collection-&gt;addBlock(Object(BlockType), Object(Area), Array)\n#9 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/concrete/dispatcher.php(250): require(\'/ap01/studiohd1...\')\n#10 /ap01/studiohd1/data/httpd/studioh-sitesweb/c-website/index.php(2): require(\'/ap01/studiohd1...\')\n#11 {main}\n',1,1);

DROP TABLE IF EXISTS mailimporters;

CREATE TABLE IF NOT EXISTS `mailimporters` (
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

INSERT INTO mailimporters VALUES(1,'private_message',NULL,NULL,NULL,NULL,0,NULL,0,0,'POP');

DROP TABLE IF EXISTS mailvalidationhashes;

CREATE TABLE IF NOT EXISTS `mailvalidationhashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS packages;

CREATE TABLE IF NOT EXISTS `packages` (
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO packages VALUES(1,'Extended Search','jacks_extended_search','Provides a more advanced Search block ','2014-02-14 14:25:45',1,'1.0',NULL)
 ,(2,'Breadcrumbs','swp_breadcrumbs','Allows to add breadcrumbs navigation as a block.<br />By <a href=\"http://www.smartwebprojects.net/\">www.smartwebprojects.net</a>','2014-02-28 11:16:04',1,'2.0',NULL);

DROP TABLE IF EXISTS pagepaths;

CREATE TABLE IF NOT EXISTS `pagepaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8;

INSERT INTO pagepaths VALUES(1,2,'/dashboard','1')
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
 ,(129,135,'/!stacks/pied-de-page','1')
 ,(161,140,'/recherche','1')
 ,(167,130,'/communiques','1')
 ,(169,137,'/communiques/direction-des-collections-et-maintenant','1')
 ,(171,141,'/communiques/rapport-isast','1')
 ,(172,131,'/nous-contacter','1')
 ,(176,132,'/!trash/blog','1')
 ,(177,142,'/les-elus','1')
 ,(185,129,'/!trash/accords-status','1')
 ,(214,145,'/vos-droits','1')
 ,(219,143,'/accords-et-statuts','1')
 ,(220,133,'/accords-et-statuts/accords','1')
 ,(221,144,'/accords-et-statuts/accords/accord-portant-sur-le-statut-collectif-des-salaries-ina','1')
 ,(222,134,'/accords-et-statuts/stat','1')
 ,(224,146,'/liens-utiles','1');

DROP TABLE IF EXISTS pagepermissionassignments;

CREATE TABLE IF NOT EXISTS `pagepermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pagepermissionassignments VALUES(1,1,53)
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
 ,(111,3,42)
 ,(142,1,69)
 ,(142,2,70)
 ,(142,3,55)
 ,(142,4,77)
 ,(142,5,71)
 ,(142,6,72)
 ,(142,7,73)
 ,(142,8,74)
 ,(142,9,75)
 ,(142,10,76)
 ,(142,11,79)
 ,(142,12,80)
 ,(142,13,81)
 ,(142,14,82)
 ,(142,15,83)
 ,(142,16,78);

DROP TABLE IF EXISTS pagepermissionpagetypeaccesslist;

CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionpagetypeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionpropertyaccesslist;

CREATE TABLE IF NOT EXISTS `pagepermissionpropertyaccesslist` (
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



DROP TABLE IF EXISTS pagepermissionpropertyattributeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionthemeaccesslist;

CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagepermissionthemeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pages;

CREATE TABLE IF NOT EXISTS `pages` (
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

INSERT INTO pages VALUES(1,0,1,0,NULL,NULL,NULL,1,1,'OVERRIDE',NULL,0,NULL,0,1,18,0,0,0,-1,'0',0,0)
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
 ,(108,0,1,0,NULL,NULL,NULL,1,1,'PARENT','/!trash/view.php',0,NULL,0,1,2,0,0,0,-1,'0',0,1)
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
 ,(129,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,1,108,0,-1,'0',0,1)
 ,(130,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,0,1,0,-1,'0',0,0)
 ,(131,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,3,1,0,-1,'0',0,0)
 ,(132,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,0,0,0,108,0,-1,'0',0,1)
 ,(133,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,1,0,143,0,-1,'0',0,0)
 ,(134,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,143,0,-1,'0',0,0)
 ,(135,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,5,109,0,-1,'0',0,1)
 ,(136,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(137,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,130,0,-1,'0',0,0)
 ,(138,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(139,1,NULL,0,NULL,NULL,NULL,1,0,'PARENT',NULL,0,NULL,0,1,0,0,0,0,-1,'0',0,0)
 ,(140,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,4,1,0,-1,'0',0,0)
 ,(141,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,1,130,0,-1,'0',0,0)
 ,(142,0,1,0,NULL,NULL,NULL,1,142,'OVERRIDE',NULL,0,NULL,0,1,0,5,1,0,-1,'0',0,0)
 ,(143,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,2,1,1,0,-1,'0',0,0)
 ,(144,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,0,133,0,-1,'0',0,0)
 ,(145,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,2,1,0,-1,'0',0,0)
 ,(146,0,1,0,NULL,NULL,NULL,1,1,'PARENT',NULL,0,NULL,0,1,0,6,1,0,-1,'0',0,0);

DROP TABLE IF EXISTS pagesearchindex;

CREATE TABLE IF NOT EXISTS `pagesearchindex` (
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

INSERT INTO pagesearchindex VALUES(3,'','Composer','Write for your site.','/dashboard/composer','2014-02-14 10:05:21','2014-02-14 10:05:49',NULL,0)
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
 ,(1,'Derniers communiqués Nouvelles du monde Confédération Les agents tirent la sonnette d\'alarme Parce qu\'ils dénoncent les dégradations de leurs conditions de travail, les agents de mairies d\'arrondissements parisiens seront en grève ce lundi 5 mai. Ils manifesteront, à l\'appel de la CGT et de FO, devant la mairie du XIVe. Lieu d\'où est parti la colère des syndicats. Un mouvement de contestation y avait eu lieu en février dernier. Les syndicats dénoncent le sous-effectif dans les services d\'Etat-civil -le nombre de postes d\'adjoints administratifs a diminué de 25% entre 2006 et 2012-, la « (...) 1er mai 2014, Thierry Lepaon invité de plusieurs médias Invité du 1er mai 2014 sur RTL : le leader de la CGT a ironisé sur la \"petite\" conférence sociale prévue par le gouvernement début juillet, qui sera plus \"concentrée sur les 50 milliards d\'économies\" que sur les salaires. Thierry Lepaon ironise sur la prochaine... par rtl-fr Jean-Jacques Bourdin reçoit Thierry Lepaon , secrétaire général de la CGT sur RMC-BFM TV. Europe 1 midi, le journal de Wendy Bouchard, invité Thierry Lepaon \"Le message de la CGT c\'est l\'espoir et le... par (...) Les syndicats en justice pour faire respecter le droit Après une décision du Conseil constitutionnel réaffirmant l\'exceptionnalité du travail de nuit, deux plaintes contre des magasins s\'autorisant à faire travailler leurs employés jusque très tard le soir étaient examinées par la justice, les 30 avril et 2 mai 2014. Dans l\'affaire opposant la CGT à Monoprix le jugement sera rendu le 6 juin. Mercredi 30 avril, le magasin Printemps Haussmann était poursuivi devant le Tribunal de grande instance de Paris après une plainte du Comité d\'entreprise, de la CGT et (...) Rendez vous le 12 mai pour dénoncer la pénibilité Alors que le mouvement syndical se rassemblait hier, 28 avril, pour combattre le « mal travail », la filière CGT collecte et traitement des déchets appelle les balayeurs, chauffeurs, éboueurs, agents de tri, agents de traitement des déchets, qu\'ils soient du public ou du privé, à la mobilisation le 12 mai prochain. Ils dénoncent la pénibilité et l\'insalubrité de leurs missions. « Tout le monde s\'accorde à dire que ces métiers sont pénibles et peu gratifiants, mais ils sont essentiels au bien-être de (...) Le secrétaire général de la CGT écrit à Mumia Abu Jamal Alors que le journaliste afro-américain prisonnier vient d\'atteindre son soixantième anniversaire, la campagne pour sa libération doit s\'intensifier. Extrait du couloir de la mort en 2011 après une décision de la Cour suprême des Etats Unis qui a jugé sa condamnation à mort anticonstitutionnelle, Mumia est toujours incarcéré. Le secrétaire général de la CGT, Thierry Lepaon, s\'est adressé hier 24 avril à Mumia dans un courrier ci dessous qui devrait lui être remis en mains propres. Cher Mumia, Pour (...) Les salariés de la construction veulent un départ anticipé pour travaux pénibles Une soixantaine de salariés du bâtiment, militants de la CGT Construction ont occupé ce jeudi le siège de la Fédération française du bâtiment, à Paris, pour demander l\'ouverture de négociations sur la mise en œuvre effective des départs anticipés à la retraite dans le cadre des métiers pénibles. \"Ce n\'est pas par provocation ou par plaisir que des militants arrivent à faire une action extrême. Mais ils se heurtent à un vrai mur d\'arrogance\", souligne Jean Pascal François, secrétaire de la FNSCBA-CGT. \"Les (...) 500 marcheurs pour l\'emploi à Carquefou Après le choc des annonces de suppression d\'emploi et de fermeture du site de production cigarettier de Carquefou, une marche pour l\'emploi a réuni hier 23 avril plus de 500 manifestants ( pour l\'essentiel salariés SEITA et des salariés de l\'interprofessionnel ) dans cette localité proche de Nantes. Partie du siège de l\'entreprise, la marche a fait une halte à l\'usine voisine Trelleborg où sont prévus plus de 95 licenciements d\'ici la fin de l\'année. L\'objectif de la CGT étant \"d\'informer les salariés (...) Mouvement de grève contre l\'externalisation A l\'appel d\'une intersyndicale CGT-CFDT-FO-Unsa, les salariés de l\'usine Areva de Beaumont-Hague se sont mis en grève contre des projets de sous-traitance de certaines activités du site. Deux sujets sont à l\'origine de ce mouvement : l\'emploi et la sûreté nucléaire. Areva veut en effet externaliser certains services, comme celui de l\'environnement, qui assure les prélèvements autour du site pour les faire analyser, ou encore celui des réactifs, qui s\'occupe de la gestion et de l\'approvisionnement de (...) Conférence sur la création d\'un réseau syndical européen pour l\'aide aux migrants Une conférence sur la création d\'un réseau syndical européen pour l\'aide à l\'intégration des travailleurs migrants a eu lieu à Turin du 14 au16 avril 2014 à l\'initiative de la Confédération Européenne des Syndicats. Plusieurs syndicats européens étaient au rendez-vous : syndicats italiens, allemands, belges, bulgares, finlandais, français dont une délégation de la CGT, conduite par Francine Blanche, hongrois, irlandais, lettons, néerlandais, serbes, slovènes, espagnols et britanniques. Dans le campus de (...) Le spectre de la délocalisation s\'éloigne grâce aux contre-propositions syndicales C\'est un soulagement, mais pas encore le relâchement et l\'insouciance pour les salariés de Hill Rom à Pluvigner (56), menacés depuis janvier dernier d\'une délocalisation massive des services et la suppression de 140 emplois Hill Rom Europe dont 39 pour Hill Rom SAS France. Le fabricant américain de lits médicalisés d\'annoncer l\'arrêt du processus de délocalisation des sept centres de services locaux. « Cette victoire ne doit pas cacher la seconde partie du dossier, à savoir la suppression de 55 postes du (...)  Agenda Edito  La CGT a été reçue au Ministère de la Culture et de la Communication, dans le cadre d’une délégation des élu/es du Comité d’entreprise à l’occasion du droit d’alerte déclenché en novembre 2013, ou seule comme en mars dernier.    Nous avons toujours dit la même chose aux représentant/es de la Direction générale des médias et des industries culturelles (DGMIC) ou aux conseillers de la Ministre de la Culture et de la Communication (Daniel Guérin puis Alexandre Ruff, conseiller social, et Kil Pham, conseiller pour l’audiovisuel et le cinéma) : \r\n - l’Ina a besoin d’une stratégie d’entreprise qui mette au cœur l’ensemble de ses missions de service public, \r\n - pour cela, le financement public de l’Institut doit être garanti, \r\n - les objectifs du Com 4, qui va bientôt être négocié, doivent s’appuyer en tout premier lieu sur les missions, sur ce que l’Ina sait faire et sur ce qui fait sa spécificité ; les activités commerciales doivent s’y adosser. Il n’est pas envisageable, et il serait dangereux d’inverser cette vision \r\n - sur le plan social, au vu des spécificités de l’Ina, de sa pyramide des âges, des métiers exercés, le chantier de la gestion prévisionnelle des emplois et des compétences est urgent et incontournable ; il ne peut exister que dans le cadre d’un travail avec les organisations syndicales représentatives, et elles le sont, de l’Ina \r\n - le besoin d’un projet immobilier est toujours là. Il doit lui aussi être adossé à la stratégie de l’entreprise. \r\n Depuis des semaines, des mois, nous tenons le même discours. Il est écouté mais sera-t-il entendu ? Ce discours est évidemment aussi à destination de la prochaine présidence. Madame Saal vient d’être nommée mercredi 7 mai et arrivera le 12 mai à l’Ina. Son arrivée est attendue dans l’entreprise et suscité, comme il est normal, beaucoup de questions. \r\n Dès qu’elle sera installée, la CGT demandera un rendez vous et ses représentant/es tiendront le même discours.  Nous avons une certaine constance et de solides convictions…  ','Accueil','',NULL,'2014-02-14 10:05:00','2014-05-05 13:17:40',NULL,0)
 ,(129,'Accords d\'entreprise\r\n Dans cette rubrique vous pouvez trouver tous les accords d\'entreprises classés par date.  Statuts ','Accords, status...','','/accords-status','2014-02-14 10:30:00','2014-02-19 17:23:30',NULL,0)
 ,(130,'Communiqués  Dans cette rubrique vous pourrez trouver tous les communiqués.  ','Communiqués','','/communiques','2014-02-14 10:31:00','2014-02-17 16:17:47',NULL,0)
 ,(131,'Chantal Lesieur\r\nBureau 2262\r\n 01 49 83 2418 \r\n   \r\nFrançoise Lamontagne\r\nBureau 2260\r\n 01 49 83 2106 \r\n   \r\n   \r\n Mail : cgt@ina.fr \r\n Fax : 01 49 83 31 7  ','Nous contacter','','/nous-contacter','2014-02-14 10:31:00','2014-02-19 16:26:58',NULL,0)
 ,(132,'','Blog','','/blog','2014-02-14 10:32:00','2014-02-14 10:32:13',NULL,0)
 ,(133,'','Accords d\'entreprise','','/accords-et-statuts/accords','2014-02-14 11:00:00','2014-02-28 15:00:06',NULL,0)
 ,(134,'','Status','','/accords-status/stat','2014-02-14 11:00:00','2014-02-14 11:00:22',NULL,0)
 ,(135,' CGT INA - 4, avenue de l’Europe – 94366 Bry sur Marne Cedex Tel. 01 49 83 21 06/24 18 - Fax 01 49 83 31 74 - E-mail : cgt@ina.fr  ','Pied de page',NULL,'/!stacks/pied-de-page','2014-02-14 11:12:04','2014-02-14 11:34:21',NULL,0)
 ,(140,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0)
 ,(137,'','Direction des collections et maintenant ??','Vendredi 7 février, vous avez été informé/es via Reflex de la mise en œuvre de la réorganisation de la Direction déléguée aux collections (DDCol). En effet, le Comité d’Entreprise extraordinaire a été consulté, mais ce que ne dit pas la Direction c’est qu’il a émis un avis défavorable au projet par 6 voix CGT et 5 abstentions CFDT et FO.','/communiques/direction-des-collections-et-maintenant','2014-02-14 12:12:00','2014-02-18 14:19:57',NULL,0)
 ,(141,'Rapport ISAST ','Rapport ISAST','Aperçu du rapport Isast','/communiques/rapport-isast','2014-02-18 16:15:00','2014-02-18 17:46:04',NULL,0)
 ,(142,'','Les élus','','/les-elus','2014-02-19 16:51:00','2014-02-19 16:51:51',NULL,0)
 ,(143,'Accords d\'entreprise Status ','Accords et statuts','','/accords-et-statuts','2014-02-27 15:47:00','2014-02-28 17:43:34',NULL,0)
 ,(144,'Accord portant sur le statut collectif des salariés Ina ','Accord portant sur le statut collectif des salariés Ina','','/accords-et-statuts/accord-portant-sur-le-statut-collectif-des-salaries-ina','2014-02-27 16:00:00','2014-02-27 16:01:44',NULL,0)
 ,(145,'Le droit à la formation syndicale\r\nCe droit est reconnu par le code du travail (article L.451-1 et suivants). La formation dite « économique, sociale et syndicale» concerne tous les salariés qu’ils soient syndiqués ou non.  Les salariés qui souhaitent participer à de tels stages doivent en faire la demande auprès de la direction. Ce droit est égal à 12 jours par an qui peuvent être pris en une ou plusieurs fois. Ce congé est indépendant des droits à congés annuels, des jours fractionnés auxquels nous avons droit par la convention collective, des jours de RTT. Le stage doit être organisé par un organisme agréé dont la liste est régulièrement remise à jour par le ministère du Travail. Le salarié doit recevoir une attestation de stage, à l’issue de celui-ci. Cette attestation doit être remise à la DRH lors du retour de l’entreprise ; elle certifie la présence du salarié à la formation. \r\n\r\n Le nombre total de jours pris par l’ensemble des salariés de l’entreprise ne peut excéder un certain seuil. \r\n Ces formations peuvent être de divers ordres : \r\n - stage d\'accueil pour les nouveaux adhérents, \r\n - stages de différents niveaux pour les adhérents un peu plus anciens, \r\n - Stages \"thématiques\" : élus et mandatés, CHS CT, élus du CE, délégués du personnel. Chaque activité est expliquée, analysée pour aider les élus à bien comprendre quels sont les différents rôles et prérogatives, \r\n - stages plus \"techniques\" : analyse des comptes, comment négocier un accord sur le handicap, sur une mutuelle d\'entreprise... \r\n Ces formations peuvent être organisées par des structures de la CGT (Union locale, Union départementale, SNRT, commissions confédérales) mais aussi délivrées par des organismes spécialisés agréés. \r\n La section encourage ses adhérents à participer aux formations syndicales. Elles sont toujours l\'occasion d\'apprendre et d\'approfondir ses connaissances ainsi que de rencontrer d\'autres militants investis dans des secteurs qui peuvent être différents du nôtre et de notre entreprise. C\'est notamment le cas pour toutes les informations organisées par les structures de l\'interprofessionnel \r\n  Le droit de grève\r\nEn France, la grève est un droit reconnu même s’il est encadré, ce qui n’est pas le cas dans tous les pays. Nous considérons qu’il s’agit d’un acquis : le droit pour les salariés de se faire entendre collectivement quand ils sont mécontents. Il doit s’agir d’une « cessation concertée du travail ». \r\nÀ l’Ina, pour faire grève, il faut qu’il y ait dépôt d’un préavis de grève 5 jours à l’avance par une des organisations syndicales représentatives de l’entreprise. C’est une des conséquences de notre statut d’établissement public et de la notion de continuation du service public. Le préavis doit indiquer « le lieu, la date, l’heure du début de la grève ainsi que sa durée, limitée ou non ». Pendant la durée du préavis, des négociations doivent avoir lieu. \r\nChaque salarié a le droit de faire grève et ne peut être sanctionné pour cela, ne l’oublions pas. La grève ne rompt pas le contrat de travail. Du moment qu\'un préavis est déposé et qu\'il n\'a pas été levé, tous les salariés sont couverts qu\'ils soient adhérents ou pas du syndicat qui dépose le préavis. \r\nContrairement à ce qu’on entend souvent dans les médias, on ne fait jamais grève par plaisir : cesser le travail est une décision importante, qu’on ne prend pas tout seul dans son coin. C’est aussi une décision qui coûte : il n’y a qu’à regarder notre bulletin de salaire quand il y a eu des jours de grève, comme pendant la mobilisation contre le CPE ! \r\nLa retenue sur salaire est liée à la durée d\'absence. Elle se fait sur le salaire mensuel et est égale à : - 1/60ème pour une absence de moins d\'une heure - 1/50ème pour une absence de plus d\'une heure mais de moins d\'une demi-journée - 1/30ème pour une absence de plus d\'une demi-journée mais de moins d\'une journée. \r\nIl est également possible de déposer un préavis pour une demi-journée. Dans ce cas, la retenue sur salaire est équivalente à une demi-journée de travail. \r\n\r\n Évidemment, pour qu’une grève soit réussie, c’est-à-dire finalement pour gagner, elle doit être organisée et mobiliser le plus possible de salariés, être démocratique, les salariés doivent pouvoir s’exprimer en assemblée générale, les organisations syndicales ont bien sûr un rôle important à y jouer. \r\n N’oublions pas que ce sont de grandes grèves, massives, populaires, qui ont pu arracher des revendications importantes : la semaine de 40 heures, les congés payés en 1936 et, plus proche de nous, les accords de Grenelle en 1968 mais aussi des gains sur des revendications plus ponctuelles mais néanmoins importantes dans les entreprises : des embauches, des gains sur les salaires, sur les conditions de travail.  \r\n La grève, c’est la matérialisation d’un rapport de forces qui, à un moment, se concrétise dans l’action.  \r\n La grève, c’est aussi un moment où beaucoup de choses changent : finis les impératifs du boulot, on a plus de temps même si on fait beaucoup de choses inhabituelles, on se parle et on parle même avec des collègues que l’on connaît peu, on a des activités qu’on n’aurait jamais cru possibles… Tous les salariés qui ont vécu des périodes de grève savent qu’après, ce n’est plus jamais exactement pareil : il s’est passé quelque chose qu’on a pris nous-mêmes en main.  \r\n  ','Vos droits','','/vos-droits','2014-02-27 16:42:00','2014-02-28 11:00:37',NULL,0)
 ,(146,'Liens utiles\r\nLa CGT\r\n\r\nSite de la confédération\r\nSite de la CGT Spectacle\r\nSite de l\'Union Départementale 94\r\nSite de l\'Union Locale de Champigny\r\n\r\nL\'audiovisuel public\r\n\r\nSite de la CGT France Télévisions\r\nSite de la CGT Radio France\r\n ','Liens utiles','','/liens-utiles','2014-05-05 13:18:00','2014-05-05 13:34:35',NULL,0);

DROP TABLE IF EXISTS pagestatistics;

CREATE TABLE IF NOT EXISTS `pagestatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM AUTO_INCREMENT=3608 DEFAULT CHARSET=utf8;

INSERT INTO pagestatistics VALUES(1,1,'2014-02-14','0000-00-00 00:00:00',1)
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
 ,(613,98,'2014-02-17','0000-00-00 00:00:00',1)
 ,(614,1,'2014-02-17','0000-00-00 00:00:00',1)
 ,(615,1,'2014-02-17','0000-00-00 00:00:00',1)
 ,(616,130,'2014-02-18','0000-00-00 00:00:00',0)
 ,(617,110,'2014-02-18','0000-00-00 00:00:00',0)
 ,(618,110,'2014-02-18','0000-00-00 00:00:00',0)
 ,(619,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(620,2,'2014-02-18','0000-00-00 00:00:00',1)
 ,(621,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(622,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(623,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(624,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(625,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(626,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(627,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(628,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(629,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(630,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(631,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(632,2,'2014-02-18','0000-00-00 00:00:00',1)
 ,(633,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(634,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(635,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(636,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(637,43,'2014-02-18','0000-00-00 00:00:00',1)
 ,(638,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(639,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(640,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(641,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(642,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(643,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(644,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(645,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(646,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(647,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(648,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(649,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(650,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(651,2,'2014-02-18','0000-00-00 00:00:00',1)
 ,(652,2,'2014-02-18','0000-00-00 00:00:00',1)
 ,(653,51,'2014-02-18','0000-00-00 00:00:00',1)
 ,(654,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(655,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(656,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(657,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(658,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(659,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(660,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(661,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(662,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(663,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(664,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(665,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(666,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(667,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(668,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(669,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(670,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(671,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(672,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(673,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(674,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(675,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(676,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(677,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(678,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(679,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(680,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(681,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(682,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(683,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(684,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(685,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(686,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(687,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(688,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(689,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(690,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(691,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(692,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(693,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(694,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(695,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(696,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(697,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(698,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(699,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(700,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(701,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(702,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(703,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(704,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(705,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(706,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(707,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(708,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(709,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(710,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(711,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(712,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(713,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(714,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(715,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(716,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(717,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(718,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(719,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(720,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(721,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(722,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(723,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(724,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(725,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(726,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(727,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(728,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(729,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(730,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(731,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(732,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(733,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(734,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(735,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(736,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(737,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(738,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(739,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(740,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(741,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(742,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(743,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(744,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(745,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(746,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(747,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(748,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(749,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(750,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(751,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(752,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(753,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(754,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(755,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(756,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(757,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(758,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(759,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(760,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(761,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(762,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(763,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(764,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(765,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(766,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(767,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(768,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(769,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(770,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(771,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(772,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(773,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(774,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(775,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(776,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(777,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(778,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(779,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(780,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(781,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(782,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(783,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(784,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(785,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(786,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(787,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(788,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(789,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(790,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(791,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(792,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(793,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(794,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(795,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(796,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(797,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(798,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(799,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(800,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(801,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(802,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(803,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(804,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(805,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(806,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(807,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(808,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(809,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(810,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(811,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(812,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(813,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(814,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(815,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(816,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(817,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(818,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(819,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(820,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(821,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(822,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(823,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(824,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(825,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(826,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(827,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(828,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(829,106,'2014-02-18','0000-00-00 00:00:00',1)
 ,(830,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(831,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(832,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(833,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(834,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(835,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(836,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(837,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(838,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(839,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(840,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(841,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(842,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(843,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(844,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(845,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(846,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(847,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(848,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(849,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(850,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(851,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(852,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(853,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(854,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(855,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(856,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(857,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(858,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(859,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(860,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(861,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(862,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(863,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(864,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(865,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(866,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(867,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(868,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(869,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(870,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(871,137,'2014-02-18','0000-00-00 00:00:00',1)
 ,(872,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(873,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(874,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(875,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(876,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(877,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(878,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(879,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(880,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(881,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(882,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(883,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(884,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(885,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(886,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(887,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(888,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(889,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(890,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(891,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(892,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(893,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(894,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(895,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(896,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(897,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(898,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(899,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(900,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(901,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(902,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(903,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(904,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(905,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(906,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(907,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(908,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(909,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(910,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(911,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(912,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(913,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(914,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(915,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(916,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(917,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(918,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(919,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(920,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(921,141,'2014-02-18','0000-00-00 00:00:00',0)
 ,(922,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(923,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(924,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(925,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(926,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(927,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(928,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(929,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(930,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(931,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(932,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(933,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(934,119,'2014-02-18','0000-00-00 00:00:00',0)
 ,(935,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(936,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(937,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(938,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(939,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(940,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(941,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(942,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(943,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(944,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(945,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(946,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(947,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(948,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(949,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(950,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(951,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(952,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(953,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(954,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(955,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(956,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(957,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(958,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(959,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(960,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(961,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(962,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(963,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(964,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(965,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(966,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(967,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(968,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(969,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(970,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(971,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(972,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(973,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(974,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(975,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(976,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(977,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(978,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(979,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(980,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(981,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(982,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(983,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(984,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(985,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(986,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(987,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(988,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(989,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(990,68,'2014-02-18','0000-00-00 00:00:00',1)
 ,(991,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(992,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(993,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(994,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(995,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(996,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(997,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(998,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(999,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1000,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1001,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1002,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1003,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1004,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1005,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1006,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1007,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1008,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1009,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1010,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1011,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1012,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1013,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1014,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1015,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1016,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1017,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1018,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1019,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1020,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1021,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1022,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1023,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1024,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1025,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1026,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1027,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1028,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1029,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1030,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1031,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1032,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1033,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1034,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1035,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1036,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1037,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1038,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1039,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1040,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1041,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1042,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1043,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1044,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1045,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1046,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1047,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1048,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1049,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1050,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1051,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1052,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1053,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1054,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1055,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1056,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1057,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1058,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1059,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1060,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1061,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1062,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1063,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1064,2,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1065,11,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1066,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1067,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1068,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1069,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1070,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1071,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1072,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1073,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1074,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1075,131,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1076,132,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1077,131,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1078,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1079,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1080,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1081,131,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1082,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1083,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1084,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1085,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1086,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1087,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1088,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1089,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1090,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1091,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1092,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1093,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1094,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1095,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1096,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1097,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1098,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1099,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1100,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1101,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1102,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1103,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1104,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1105,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1106,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1107,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1108,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1109,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1110,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1111,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1112,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1113,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1114,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1115,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1116,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1117,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1118,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1119,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1120,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1121,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1122,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1123,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1124,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1125,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1126,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1127,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1128,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1129,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1130,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1131,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1132,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1133,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1134,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1135,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1136,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1137,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1138,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1139,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1140,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1141,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1142,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1143,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1144,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1145,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1146,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1147,1,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1148,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1149,129,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1150,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1151,131,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1152,132,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1153,132,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1154,130,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1155,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1156,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1157,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1158,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1159,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1160,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1161,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1162,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1163,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1164,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1165,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1166,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1167,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1168,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1169,140,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1170,140,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1171,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1172,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1173,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1174,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1175,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1176,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1177,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1178,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1179,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1180,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1181,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1182,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1183,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1184,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1185,140,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1186,141,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1187,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1188,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1189,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1190,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1191,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1192,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1193,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1194,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1195,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1196,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1197,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1198,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1199,119,'2014-02-18','0000-00-00 00:00:00',1)
 ,(1200,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1201,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1202,129,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1203,130,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1204,129,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1205,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1206,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1207,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1208,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1209,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1210,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1211,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1212,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1213,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1214,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1215,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1216,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1217,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1218,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1219,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1220,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1221,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1222,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1223,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1224,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1225,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1226,140,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1227,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1228,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1229,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1230,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1231,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1232,129,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1233,130,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1234,129,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1235,130,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1236,129,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1237,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1238,110,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1239,110,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1240,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1241,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1242,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1243,55,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1244,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1245,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1246,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1247,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1248,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1249,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1250,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1251,2,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1252,51,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1253,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1254,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1255,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1256,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1257,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1258,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1259,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1260,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1261,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1262,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1263,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1264,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1265,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1266,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1267,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1268,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1269,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1270,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1271,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1272,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1273,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1274,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1275,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1276,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1277,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1278,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1279,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1280,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1281,106,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1282,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1283,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1284,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1285,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1286,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1287,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1288,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1289,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1290,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1291,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1292,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1293,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1294,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1295,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1296,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1297,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1298,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1299,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1300,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1301,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1302,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1303,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1304,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1305,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1306,130,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1307,129,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1308,129,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1309,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1310,129,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1311,130,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1312,131,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1313,131,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1314,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1315,68,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1316,141,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1317,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1318,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1319,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1320,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1321,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1322,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1323,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1324,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1325,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1326,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1327,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1328,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1329,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1330,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1331,131,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1332,131,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1333,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1334,131,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1335,131,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1336,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1337,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1338,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1339,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1340,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1341,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1342,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1343,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1344,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1345,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1346,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1347,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1348,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1349,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1350,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1351,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1352,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1353,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1354,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1355,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1356,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1357,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1358,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1359,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1360,2,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1361,8,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1362,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1363,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1364,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1365,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1366,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1367,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1368,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1369,2,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1370,8,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1371,8,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1372,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1373,1,'2014-02-19','0000-00-00 00:00:00',0)
 ,(1374,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1375,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1376,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1377,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1378,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1379,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1380,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1381,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1382,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1383,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1384,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1385,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1386,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1387,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1388,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1389,131,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1390,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1391,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1392,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1393,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1394,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1395,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1396,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1397,131,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1398,130,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1399,141,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1400,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1401,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1402,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1403,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1404,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1405,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1406,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1407,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1408,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1409,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1410,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1411,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1412,119,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1413,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1414,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1415,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1416,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1417,2,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1418,7,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1419,1,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1420,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1421,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1422,129,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1423,2,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1424,51,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1425,98,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1426,98,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1427,98,'2014-02-19','0000-00-00 00:00:00',1)
 ,(1428,1,'2014-02-25','0000-00-00 00:00:00',0)
 ,(1429,129,'2014-02-25','0000-00-00 00:00:00',0)
 ,(1430,131,'2014-02-25','0000-00-00 00:00:00',0)
 ,(1431,129,'2014-02-25','0000-00-00 00:00:00',0)
 ,(1432,130,'2014-02-25','0000-00-00 00:00:00',0)
 ,(1433,1,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1434,1,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1435,130,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1436,1,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1437,130,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1438,1,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1439,129,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1440,130,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1441,1,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1442,129,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1443,110,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1444,110,'2014-02-27','0000-00-00 00:00:00',0)
 ,(1445,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1446,106,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1447,129,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1448,129,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1449,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1450,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1451,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1452,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1453,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1454,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1455,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1456,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1457,7,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1458,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1459,129,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1460,129,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1461,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1462,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1463,12,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1464,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1465,34,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1466,34,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1467,34,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1468,34,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1469,34,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1470,34,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1471,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1472,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1473,129,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1474,129,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1475,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1476,129,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1477,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1478,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1479,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1480,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1481,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1482,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1483,7,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1484,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1485,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1486,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1487,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1488,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1489,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1490,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1491,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1492,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1493,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1494,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1495,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1496,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1497,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1498,133,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1499,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1500,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1501,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1502,133,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1503,133,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1504,130,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1505,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1506,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1507,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1508,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1509,144,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1510,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1511,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1512,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1513,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1514,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1515,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1516,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1517,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1518,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1519,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1520,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1521,144,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1522,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1523,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1524,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1525,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1526,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1527,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1528,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1529,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1530,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1531,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1532,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1533,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1534,133,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1535,133,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1536,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1537,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1538,133,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1539,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1540,133,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1541,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1542,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1543,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1544,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1545,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1546,7,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1547,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1548,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1549,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1550,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1551,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1552,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1553,144,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1554,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1555,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1556,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1557,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1558,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1559,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1560,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1561,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1562,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1563,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1564,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1565,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1566,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1567,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1568,133,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1569,133,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1570,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1571,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1572,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1573,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1574,130,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1575,141,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1576,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1577,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1578,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1579,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1580,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1581,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1582,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1583,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1584,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1585,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1586,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1587,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1588,119,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1589,130,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1590,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1591,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1592,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1593,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1594,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1595,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1596,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1597,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1598,143,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1599,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1600,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1601,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1602,7,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1603,6,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1604,7,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1605,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1606,8,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1607,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1608,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1609,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1610,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1611,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1612,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1613,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1614,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1615,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1616,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1617,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1618,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1619,43,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1620,43,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1621,43,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1622,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1623,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1624,2,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1625,51,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1626,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1627,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1628,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1629,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1630,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1631,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1632,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1633,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1634,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1635,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1636,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1637,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1638,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1639,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1640,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1641,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1642,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1643,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1644,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1645,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1646,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1647,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1648,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1649,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1650,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1651,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1652,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1653,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1654,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1655,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1656,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1657,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1658,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1659,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1660,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1661,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1662,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1663,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1664,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1665,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1666,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1667,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1668,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1669,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1670,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1671,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1672,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1673,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1674,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1675,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1676,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1677,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1678,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1679,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1680,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1681,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1682,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1683,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1684,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1685,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1686,1,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1687,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1688,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1689,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1690,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1691,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1692,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1693,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1694,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1695,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1696,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1697,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1698,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1699,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1700,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1701,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1702,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1703,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1704,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1705,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1706,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1707,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1708,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1709,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1710,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1711,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1712,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1713,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1714,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1715,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1716,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1717,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1718,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1719,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1720,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1721,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1722,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1723,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1724,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1725,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1726,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1727,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1728,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1729,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1730,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1731,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1732,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1733,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1734,68,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1735,145,'2014-02-27','0000-00-00 00:00:00',1)
 ,(1736,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(1737,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(1738,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(1739,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(1740,110,'2014-02-28','0000-00-00 00:00:00',0)
 ,(1741,110,'2014-02-28','0000-00-00 00:00:00',0)
 ,(1742,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1743,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1744,51,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1745,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1746,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1747,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1748,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1749,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1750,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1751,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1752,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1753,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1754,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1755,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1756,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1757,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1758,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1759,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1760,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1761,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1762,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1763,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1764,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1765,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1766,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1767,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1768,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1769,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1770,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1771,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1772,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1773,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1774,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1775,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1776,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1777,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1778,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1779,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1780,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1781,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1782,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1783,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1784,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1785,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1786,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1787,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1788,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1789,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1790,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1791,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1792,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1793,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1794,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1795,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1796,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1797,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1798,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1799,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1800,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1801,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1802,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1803,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1804,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1805,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1806,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1807,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1808,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1809,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1810,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1811,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1812,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1813,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1814,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1815,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1816,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1817,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1818,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1819,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1820,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1821,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1822,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1823,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1824,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1825,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1826,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1827,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1828,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1829,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1830,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1831,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1832,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1833,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1834,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1835,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1836,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1837,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1838,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1839,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1840,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1841,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1842,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1843,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1844,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1845,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1846,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1847,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1848,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1849,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1850,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1851,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1852,131,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1853,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1854,142,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1855,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1856,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1857,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1858,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1859,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1860,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1861,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1862,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1863,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1864,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1865,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1866,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1867,34,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1868,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1869,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1870,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1871,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1872,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1873,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1874,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1875,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1876,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1877,51,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1878,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1879,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1880,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1881,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1882,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1883,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1884,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1885,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1886,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1887,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1888,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1889,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1890,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1891,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1892,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1893,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1894,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1895,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1896,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1897,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1898,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1899,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1900,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1901,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1902,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1903,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1904,46,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1905,46,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1906,46,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1907,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1908,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1909,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1910,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1911,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1912,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1913,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1914,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1915,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1916,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1917,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1918,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1919,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1920,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1921,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1922,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1923,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1924,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1925,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1926,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1927,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1928,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1929,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1930,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1931,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1932,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1933,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1934,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1935,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1936,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1937,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1938,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1939,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1940,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1941,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1942,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1943,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1944,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1945,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1946,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1947,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1948,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1949,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1950,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1951,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1952,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1953,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1954,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1955,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1956,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1957,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1958,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1959,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1960,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1961,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1962,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1963,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1964,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1965,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1966,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1967,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1968,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1969,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1970,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1971,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1972,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1973,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1974,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1975,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1976,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1977,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1978,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1979,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1980,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1981,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1982,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1983,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1984,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1985,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1986,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1987,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1988,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1989,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1990,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1991,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1992,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1993,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1994,133,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1995,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1996,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1997,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1998,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(1999,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2000,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2001,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2002,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2003,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2004,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2005,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2006,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2007,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2008,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2009,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2010,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2011,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2012,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2013,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2014,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2015,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2016,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2017,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2018,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2019,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2020,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2021,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2022,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2023,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2024,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2025,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2026,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2027,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2028,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2029,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2030,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2031,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2032,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2033,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2034,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2035,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2036,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2037,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2038,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2039,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2040,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2041,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2042,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2043,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2044,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2045,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2046,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2047,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2048,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2049,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2050,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2051,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2052,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2053,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2054,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2055,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2056,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2057,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2058,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2059,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2060,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2061,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2062,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2063,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2064,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2065,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2066,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2067,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2068,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2069,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2070,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2071,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2072,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2073,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2074,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2075,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2076,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2077,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2078,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2079,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2080,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2081,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2082,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2083,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2084,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2085,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2086,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2087,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2088,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2089,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2090,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2091,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2092,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2093,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2094,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2095,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2096,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2097,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2098,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2099,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2100,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2101,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2102,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2103,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2104,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2105,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2106,131,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2107,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2108,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2109,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2110,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2111,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2112,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2113,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2114,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2115,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2116,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2117,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2118,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2119,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2120,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2121,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2122,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2123,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2124,133,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2125,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2126,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2127,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2128,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2129,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2130,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2131,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2132,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2133,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2134,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2135,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2136,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2137,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2138,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2139,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2140,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2141,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2142,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2143,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2144,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2145,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2146,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2147,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2148,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2149,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2150,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2151,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2152,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2153,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2154,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2155,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2156,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2157,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2158,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2159,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2160,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2161,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2162,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2163,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2164,131,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2165,142,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2166,131,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2167,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2168,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2169,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2170,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2171,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2172,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2173,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2174,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2175,144,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2176,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2177,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2178,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2179,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2180,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2181,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2182,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2183,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2184,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2185,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2186,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2187,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2188,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2189,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2190,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2191,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2192,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2193,144,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2194,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2195,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2196,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2197,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2198,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2199,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2200,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2201,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2202,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2203,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2204,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2205,133,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2206,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2207,144,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2208,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2209,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2210,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2211,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2212,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2213,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2214,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2215,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2216,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2217,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2218,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2219,133,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2220,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2221,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2222,144,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2223,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2224,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2225,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2226,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2227,119,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2228,133,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2229,133,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2230,133,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2231,133,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2232,133,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2233,133,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2234,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2235,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2236,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2237,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2238,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2239,130,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2240,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2241,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2242,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2243,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2244,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2245,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2246,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2247,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2248,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2249,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2250,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2251,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2252,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2253,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2254,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2255,106,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2256,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2257,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2258,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2259,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2260,51,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2261,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2262,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2263,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2264,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2265,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2266,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2267,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2268,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2269,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2270,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2271,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2272,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2273,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2274,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2275,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2276,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2277,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2278,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2279,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2280,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2281,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2282,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2283,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2284,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2285,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2286,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2287,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2288,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2289,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2290,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2291,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2292,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2293,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2294,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2295,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2296,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2297,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2298,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2299,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2300,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2301,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2302,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2303,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2304,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2305,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2306,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2307,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2308,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2309,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2310,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2311,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2312,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2313,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2314,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2315,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2316,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2317,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2318,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2319,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2320,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2321,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2322,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2323,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2324,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2325,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2326,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2327,110,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2328,110,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2329,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2330,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2331,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2332,110,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2333,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2334,110,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2335,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2336,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2337,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2338,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2339,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2340,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2341,141,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2342,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2343,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2344,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2345,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2346,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2347,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2348,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2349,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2350,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2351,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2352,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2353,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2354,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2355,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2356,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2357,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2358,110,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2359,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2360,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2361,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2362,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2363,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2364,51,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2365,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2366,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2367,68,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2368,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2369,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2370,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2371,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2372,144,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2373,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2374,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2375,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2376,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2377,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2378,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2379,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2380,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2381,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2382,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2383,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2384,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2385,144,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2386,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2387,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2388,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2389,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2390,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2391,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2392,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2393,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2394,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2395,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2396,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2397,133,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2398,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2399,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2400,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2401,16,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2402,16,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2403,16,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2404,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2405,41,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2406,41,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2407,41,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2408,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2409,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2410,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2411,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2412,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2413,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2414,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2415,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2416,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2417,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2418,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2419,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2420,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2421,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2422,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2423,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2424,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2425,32,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2426,32,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2427,32,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2428,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2429,41,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2430,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2431,18,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2432,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2433,16,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2434,16,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2435,16,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2436,16,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2437,16,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2438,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2439,40,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2440,40,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2441,40,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2442,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2443,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2444,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2445,32,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2446,32,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2447,32,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2448,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2449,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2450,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2451,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2452,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2453,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2454,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2455,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2456,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2457,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2458,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2459,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2460,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2461,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2462,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2463,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2464,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2465,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2466,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2467,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2468,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2469,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2470,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2471,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2472,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2473,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2474,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2475,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2476,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2477,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2478,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2479,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2480,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2481,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2482,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2483,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2484,145,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2485,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2486,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2487,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2488,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2489,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2490,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2491,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2492,143,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2493,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2494,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2495,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2496,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2497,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2498,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2499,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2500,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2501,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2502,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2503,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2504,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2505,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2506,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2507,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2508,32,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2509,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2510,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2511,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2512,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2513,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2514,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2515,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2516,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2517,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2518,2,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2519,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2520,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2521,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2522,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2523,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2524,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2525,43,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2526,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2527,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2528,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2529,131,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2530,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2531,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2532,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2533,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2534,144,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2535,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2536,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2537,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2538,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2539,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2540,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2541,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2542,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2543,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2544,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2545,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2546,133,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2547,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2548,144,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2549,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2550,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2551,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2552,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2553,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2554,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2555,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2556,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2557,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2558,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2559,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2560,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2561,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2562,141,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2563,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2564,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2565,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2566,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2567,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2568,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2569,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2570,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2571,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2572,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2573,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2574,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2575,119,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2576,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2577,145,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2578,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2579,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2580,143,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2581,130,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2582,1,'2014-02-28','0000-00-00 00:00:00',0)
 ,(2583,1,'2014-02-28','0000-00-00 00:00:00',1)
 ,(2584,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2585,110,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2586,110,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2587,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2588,106,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2589,130,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2590,143,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2591,130,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2592,143,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2593,130,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2594,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2595,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2596,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2597,110,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2598,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2599,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2600,2,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2601,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2602,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2603,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2604,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2605,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2606,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2607,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2608,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2609,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2610,2,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2611,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2612,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2613,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2614,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2615,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2616,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2617,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2618,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2619,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2620,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2621,2,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2622,51,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2623,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2624,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2625,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2626,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2627,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2628,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2629,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2630,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2631,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2632,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2633,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2634,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2635,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2636,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2637,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2638,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2639,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2640,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2641,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2642,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2643,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2644,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2645,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2646,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2647,110,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2648,110,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2649,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2650,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2651,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2652,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2653,110,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2654,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2655,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2656,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2657,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2658,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2659,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2660,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2661,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2662,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2663,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2664,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2665,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2666,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2667,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2668,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2669,2,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2670,51,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2671,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2672,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2673,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2674,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2675,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2676,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2677,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2678,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2679,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2680,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2681,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2682,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2683,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2684,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2685,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2686,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2687,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2688,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2689,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2690,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2691,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2692,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2693,2,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2694,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2695,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2696,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2697,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2698,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2699,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2700,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2701,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2702,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2703,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2704,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2705,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2706,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2707,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2708,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2709,2,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2710,51,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2711,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2712,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2713,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2714,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2715,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2716,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2717,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2718,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2719,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2720,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2721,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2722,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2723,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2724,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2725,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2726,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2727,143,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2728,145,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2729,143,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2730,130,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2731,130,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2732,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2733,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2734,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2735,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2736,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2737,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2738,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2739,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2740,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2741,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2742,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2743,143,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2744,145,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2745,143,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2746,143,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2747,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2748,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2749,143,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2750,145,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2751,143,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2752,143,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2753,130,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2754,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2755,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2756,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2757,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2758,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2759,68,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2760,2,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2761,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2762,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2763,43,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2764,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2765,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2766,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2767,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2768,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2769,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2770,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2771,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2772,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2773,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2774,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2775,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2776,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2777,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2778,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2779,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2780,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2781,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2782,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2783,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2784,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2785,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2786,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2787,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2788,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2789,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2790,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2791,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2792,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2793,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2794,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2795,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2796,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2797,1,'2014-03-03','0000-00-00 00:00:00',0)
 ,(2798,1,'2014-03-03','0000-00-00 00:00:00',1)
 ,(2799,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2800,143,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2801,144,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2802,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2803,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2804,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2805,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2806,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2807,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2808,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2809,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2810,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2811,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2812,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2813,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2814,137,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2815,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2816,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2817,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2818,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2819,119,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2820,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2821,130,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2822,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2823,143,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2824,130,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2825,143,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2826,130,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2827,143,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2828,143,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2829,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2830,130,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2831,143,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2832,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2833,143,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2834,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2835,110,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2836,110,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2837,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2838,106,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2839,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2840,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2841,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2842,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2843,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2844,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2845,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2846,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2847,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2848,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2849,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2850,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2851,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2852,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2853,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2854,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2855,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2856,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2857,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2858,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2859,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2860,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2861,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2862,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2863,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2864,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2865,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2866,2,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2867,51,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2868,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2869,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2870,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2871,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2872,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2873,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2874,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2875,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2876,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2877,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2878,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2879,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2880,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2881,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2882,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2883,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2884,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2885,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2886,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2887,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2888,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2889,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2890,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2891,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2892,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2893,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2894,68,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2895,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2896,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2897,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2898,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2899,110,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2900,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2901,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2902,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2903,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2904,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2905,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2906,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2907,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2908,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2909,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2910,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2911,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2912,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2913,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2914,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2915,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2916,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2917,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2918,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2919,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2920,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2921,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2922,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2923,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2924,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2925,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2926,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2927,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2928,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2929,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2930,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2931,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2932,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2933,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2934,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2935,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2936,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(2937,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2938,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2939,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2940,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2941,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2942,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2943,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2944,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2945,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2946,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2947,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2948,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2949,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2950,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2951,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2952,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2953,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2954,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2955,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2956,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2957,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2958,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2959,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2960,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2961,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2962,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2963,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2964,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2965,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2966,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2967,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2968,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2969,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2970,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2971,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2972,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2973,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2974,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2975,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2976,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2977,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2978,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2979,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2980,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2981,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2982,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2983,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2984,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2985,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2986,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2987,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2988,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2989,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2990,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2991,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2992,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2993,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2994,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2995,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2996,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2997,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2998,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(2999,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3000,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3001,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3002,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3003,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3004,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3005,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3006,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3007,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3008,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3009,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3010,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3011,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3012,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3013,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3014,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3015,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3016,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3017,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3018,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3019,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3020,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3021,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3022,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3023,1,'2014-03-18','0000-00-00 00:00:00',0)
 ,(3024,110,'2014-03-18','0000-00-00 00:00:00',0)
 ,(3025,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3026,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3027,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3028,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3029,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3030,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3031,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3032,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3033,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3034,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3035,1,'2014-03-18','0000-00-00 00:00:00',1)
 ,(3036,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3037,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3038,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3039,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3040,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3041,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3042,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3043,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3044,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3045,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3046,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3047,110,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3048,110,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3049,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3050,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3051,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3052,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3053,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3054,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3055,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3056,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3057,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3058,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3059,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3060,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3061,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3062,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3063,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3064,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3065,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3066,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3067,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3068,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3069,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3070,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3071,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3072,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3073,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3074,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3075,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3076,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3077,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3078,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3079,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3080,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3081,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3082,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3083,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3084,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3085,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3086,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3087,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3088,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3089,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3090,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3091,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3092,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3093,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3094,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3095,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3096,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3097,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3098,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3099,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3100,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3101,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3102,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3103,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3104,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3105,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3106,1,'2014-03-19','0000-00-00 00:00:00',1)
 ,(3107,1,'2014-03-19','0000-00-00 00:00:00',0)
 ,(3108,1,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3109,1,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3110,130,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3111,143,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3112,144,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3113,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3114,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3115,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3116,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3117,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3118,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3119,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3120,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3121,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3122,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3123,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3124,130,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3125,143,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3126,130,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3127,145,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3128,130,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3129,131,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3130,130,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3131,1,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3132,143,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3133,1,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3134,140,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3135,141,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3136,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3137,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3138,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3139,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3140,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3141,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3142,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3143,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3144,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3145,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3146,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3147,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3148,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3149,1,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3150,1,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3151,143,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3152,144,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3153,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3154,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3155,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3156,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3157,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3158,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3159,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3160,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3161,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3162,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3163,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3164,1,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3165,137,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3166,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3167,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3168,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3169,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3170,119,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3171,1,'2014-03-25','0000-00-00 00:00:00',0)
 ,(3172,1,'2014-03-27','0000-00-00 00:00:00',0)
 ,(3173,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3174,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3175,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3176,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3177,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3178,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3179,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3180,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3181,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3182,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3183,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3184,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3185,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3186,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3187,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3188,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3189,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3190,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3191,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3192,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3193,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3194,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3195,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3196,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3197,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3198,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3199,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3200,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3201,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3202,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3203,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3204,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3205,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3206,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3207,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3208,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3209,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3210,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3211,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3212,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3213,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3214,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3215,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3216,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3217,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3218,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3219,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3220,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3221,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3222,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3223,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3224,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3225,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3226,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3227,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3228,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3229,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3230,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3231,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3232,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3233,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3234,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3235,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3236,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3237,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3238,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3239,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3240,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3241,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3242,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3243,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3244,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3245,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3246,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3247,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3248,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3249,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3250,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3251,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3252,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3253,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3254,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3255,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3256,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3257,110,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3258,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3259,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3260,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3261,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3262,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3263,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3264,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3265,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3266,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3267,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3268,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3269,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3270,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3271,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3272,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3273,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3274,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3275,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3276,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3277,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3278,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3279,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3280,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3281,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3282,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3283,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3284,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3285,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3286,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3287,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3288,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3289,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3290,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3291,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3292,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3293,137,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3294,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3295,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3296,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3297,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3298,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3299,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3300,141,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3301,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3302,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3303,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3304,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3305,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3306,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3307,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3308,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3309,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3310,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3311,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3312,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3313,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3314,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3315,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3316,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3317,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3318,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3319,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3320,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3321,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3322,144,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3323,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3324,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3325,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3326,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3327,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3328,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3329,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3330,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3331,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3332,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3333,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3334,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3335,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3336,144,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3337,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3338,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3339,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3340,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3341,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3342,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3343,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3344,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3345,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3346,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3347,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3348,133,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3349,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3350,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3351,141,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3352,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3353,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3354,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3355,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3356,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3357,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3358,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3359,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3360,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3361,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3362,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3363,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3364,119,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3365,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3366,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3367,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3368,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3369,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3370,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3371,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3372,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3373,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3374,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3375,110,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3376,110,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3377,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3378,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3379,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3380,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3381,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3382,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3383,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3384,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3385,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3386,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3387,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3388,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3389,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3390,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3391,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3392,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3393,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3394,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3395,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3396,143,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3397,145,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3398,131,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3399,130,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3400,1,'2014-04-07','0000-00-00 00:00:00',0)
 ,(3401,1,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3402,130,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3403,143,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3404,145,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3405,130,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3406,1,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3407,143,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3408,130,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3409,1,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3410,1,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3411,110,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3412,110,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3413,1,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3414,106,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3415,1,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3416,141,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3417,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3418,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3419,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3420,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3421,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3422,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3423,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3424,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3425,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3426,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3427,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3428,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3429,119,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3430,1,'2014-04-08','0000-00-00 00:00:00',1)
 ,(3431,1,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3432,131,'2014-04-08','0000-00-00 00:00:00',0)
 ,(3433,1,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3434,143,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3435,145,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3436,131,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3437,130,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3438,1,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3439,141,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3440,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3441,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3442,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3443,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3444,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3445,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3446,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3447,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3448,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3449,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3450,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3451,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3452,119,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3453,1,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3454,131,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3455,145,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3456,143,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3457,145,'2014-04-24','0000-00-00 00:00:00',0)
 ,(3458,1,'2014-05-05','0000-00-00 00:00:00',0)
 ,(3459,110,'2014-05-05','0000-00-00 00:00:00',0)
 ,(3460,110,'2014-05-05','0000-00-00 00:00:00',0)
 ,(3461,1,'2014-05-05','0000-00-00 00:00:00',1)
 ,(3462,106,'2014-05-05','0000-00-00 00:00:00',1)
 ,(3463,1,'2014-05-05','0000-00-00 00:00:00',1)
 ,(3464,2,'2014-05-05','0000-00-00 00:00:00',1)
 ,(3465,51,'2014-05-05','0000-00-00 00:00:00',1)
 ,(3466,98,'2014-05-05','0000-00-00 00:00:00',1)
 ,(3467,98,'2014-05-05','0000-00-00 00:00:00',1)
 ,(3468,1,'2014-05-05','2014-05-05 10:20:15',0)
 ,(3469,141,'2014-05-05','2014-05-05 10:20:52',0)
 ,(3470,130,'2014-05-05','2014-05-05 10:21:07',0)
 ,(3471,143,'2014-05-05','2014-05-05 10:21:11',0)
 ,(3472,144,'2014-05-05','2014-05-05 10:21:24',0)
 ,(3473,110,'2014-05-05','2014-05-05 10:23:29',0)
 ,(3474,110,'2014-05-05','2014-05-05 10:23:41',0)
 ,(3475,1,'2014-05-05','2014-05-05 10:23:45',1)
 ,(3476,2,'2014-05-05','2014-05-05 10:23:55',1)
 ,(3477,11,'2014-05-05','2014-05-05 10:24:00',1)
 ,(3478,1,'2014-05-05','2014-05-05 10:24:17',1)
 ,(3479,141,'2014-05-05','2014-05-05 10:24:24',1)
 ,(3480,2,'2014-05-05','2014-05-05 10:24:58',1)
 ,(3481,43,'2014-05-05','2014-05-05 10:25:16',1)
 ,(3482,43,'2014-05-05','2014-05-05 10:25:23',1)
 ,(3483,1,'2014-05-05','2014-05-05 10:25:37',1)
 ,(3484,141,'2014-05-05','2014-05-05 10:25:42',1)
 ,(3485,2,'2014-05-05','2014-05-05 10:30:27',1)
 ,(3486,51,'2014-05-05','2014-05-05 10:30:35',1)
 ,(3487,68,'2014-05-05','2014-05-05 10:30:41',1)
 ,(3488,68,'2014-05-05','2014-05-05 10:30:46',1)
 ,(3489,68,'2014-05-05','2014-05-05 10:30:48',1)
 ,(3490,1,'2014-05-05','2014-05-05 10:30:53',1)
 ,(3491,141,'2014-05-05','2014-05-05 10:30:58',1)
 ,(3492,141,'2014-05-05','2014-05-05 10:31:45',1)
 ,(3493,2,'2014-05-05','2014-05-05 10:31:59',1)
 ,(3494,51,'2014-05-05','2014-05-05 10:32:12',1)
 ,(3495,67,'2014-05-05','2014-05-05 10:32:17',1)
 ,(3496,67,'2014-05-05','2014-05-05 10:32:33',1)
 ,(3497,67,'2014-05-05','2014-05-05 10:32:35',1)
 ,(3498,141,'2014-05-05','2014-05-05 10:32:38',1)
 ,(3499,141,'2014-05-05','2014-05-05 10:32:55',1)
 ,(3500,141,'2014-05-05','2014-05-05 10:33:31',1)
 ,(3501,141,'2014-05-05','2014-05-05 10:34:21',1)
 ,(3502,119,'2014-05-05','2014-05-05 10:34:26',1)
 ,(3503,119,'2014-05-05','2014-05-05 10:34:28',1)
 ,(3504,119,'2014-05-05','2014-05-05 10:34:29',1)
 ,(3505,119,'2014-05-05','2014-05-05 10:34:31',1)
 ,(3506,119,'2014-05-05','2014-05-05 10:34:32',1)
 ,(3507,119,'2014-05-05','2014-05-05 10:34:34',1)
 ,(3508,119,'2014-05-05','2014-05-05 10:34:35',1)
 ,(3509,119,'2014-05-05','2014-05-05 10:34:37',1)
 ,(3510,119,'2014-05-05','2014-05-05 10:34:38',1)
 ,(3511,119,'2014-05-05','2014-05-05 10:34:40',1)
 ,(3512,119,'2014-05-05','2014-05-05 10:34:41',1)
 ,(3513,130,'2014-05-05','2014-05-05 10:34:43',1)
 ,(3514,137,'2014-05-05','2014-05-05 10:34:49',1)
 ,(3515,119,'2014-05-05','2014-05-05 10:34:54',1)
 ,(3516,119,'2014-05-05','2014-05-05 10:34:55',1)
 ,(3517,119,'2014-05-05','2014-05-05 10:34:57',1)
 ,(3518,119,'2014-05-05','2014-05-05 10:34:58',1)
 ,(3519,119,'2014-05-05','2014-05-05 10:35:00',1)
 ,(3520,130,'2014-05-05','2014-05-05 10:35:13',1)
 ,(3521,143,'2014-05-05','2014-05-05 10:35:18',1)
 ,(3522,145,'2014-05-05','2014-05-05 10:35:23',1)
 ,(3523,131,'2014-05-05','2014-05-05 10:35:28',1)
 ,(3524,142,'2014-05-05','2014-05-05 10:35:38',1)
 ,(3525,130,'2014-05-05','2014-05-05 10:35:45',1)
 ,(3526,1,'2014-05-05','2014-05-05 10:44:48',1)
 ,(3527,1,'2014-05-05','2014-05-05 11:48:01',1)
 ,(3528,1,'2014-05-05','2014-05-05 11:49:04',1)
 ,(3529,1,'2014-05-05','2014-05-05 11:49:44',1)
 ,(3530,1,'2014-05-05','2014-05-05 11:50:08',1)
 ,(3531,1,'2014-05-05','2014-05-05 11:51:16',1)
 ,(3532,1,'2014-05-05','2014-05-05 11:57:23',1)
 ,(3533,141,'2014-05-05','2014-05-05 11:57:35',1)
 ,(3534,119,'2014-05-05','2014-05-05 11:57:40',1)
 ,(3535,119,'2014-05-05','2014-05-05 11:57:42',1)
 ,(3536,119,'2014-05-05','2014-05-05 11:57:44',1)
 ,(3537,119,'2014-05-05','2014-05-05 11:57:45',1)
 ,(3538,119,'2014-05-05','2014-05-05 11:57:47',1)
 ,(3539,119,'2014-05-05','2014-05-05 11:57:48',1)
 ,(3540,119,'2014-05-05','2014-05-05 11:57:50',1)
 ,(3541,119,'2014-05-05','2014-05-05 11:57:51',1)
 ,(3542,119,'2014-05-05','2014-05-05 11:57:53',1)
 ,(3543,119,'2014-05-05','2014-05-05 11:57:54',1)
 ,(3544,119,'2014-05-05','2014-05-05 11:57:56',1)
 ,(3545,1,'2014-05-05','2014-05-05 11:57:57',1)
 ,(3546,1,'2014-05-05','2014-05-05 12:34:57',1)
 ,(3547,110,'2014-05-05','2014-05-05 12:35:08',1)
 ,(3548,1,'2014-05-05','2014-05-05 12:35:10',0)
 ,(3549,145,'2014-05-05','2014-05-05 12:58:51',0)
 ,(3550,110,'2014-05-05','2014-05-05 12:59:14',0)
 ,(3551,145,'2014-05-05','2014-05-05 12:59:19',0)
 ,(3552,145,'2014-05-05','2014-05-05 12:59:35',0)
 ,(3553,110,'2014-05-05','2014-05-05 12:59:47',0)
 ,(3554,110,'2014-05-05','2014-05-05 13:00:00',0)
 ,(3555,1,'2014-05-05','2014-05-05 13:00:04',1)
 ,(3556,141,'2014-05-05','2014-05-05 13:03:24',1)
 ,(3557,119,'2014-05-05','2014-05-05 13:03:29',1)
 ,(3558,119,'2014-05-05','2014-05-05 13:03:30',1)
 ,(3559,119,'2014-05-05','2014-05-05 13:03:32',1)
 ,(3560,119,'2014-05-05','2014-05-05 13:03:34',1)
 ,(3561,119,'2014-05-05','2014-05-05 13:03:35',1)
 ,(3562,119,'2014-05-05','2014-05-05 13:03:37',1)
 ,(3563,119,'2014-05-05','2014-05-05 13:03:38',1)
 ,(3564,119,'2014-05-05','2014-05-05 13:03:40',1)
 ,(3565,119,'2014-05-05','2014-05-05 13:03:41',1)
 ,(3566,119,'2014-05-05','2014-05-05 13:03:43',1)
 ,(3567,119,'2014-05-05','2014-05-05 13:03:44',1)
 ,(3568,119,'2014-05-05','2014-05-05 13:03:46',1)
 ,(3569,119,'2014-05-05','2014-05-05 13:03:47',1)
 ,(3570,1,'2014-05-05','2014-05-05 13:04:01',1)
 ,(3571,137,'2014-05-05','2014-05-05 13:04:06',1)
 ,(3572,119,'2014-05-05','2014-05-05 13:04:11',1)
 ,(3573,143,'2014-05-05','2014-05-05 13:04:12',1)
 ,(3574,144,'2014-05-05','2014-05-05 13:04:17',1)
 ,(3575,119,'2014-05-05','2014-05-05 13:04:23',1)
 ,(3576,145,'2014-05-05','2014-05-05 13:04:24',1)
 ,(3577,1,'2014-05-05','2014-05-05 13:06:08',0)
 ,(3578,130,'2014-05-05','2014-05-05 13:06:13',0)
 ,(3579,1,'2014-05-05','2014-05-05 13:06:33',0)
 ,(3580,1,'2014-05-05','2014-05-05 13:06:56',1)
 ,(3581,1,'2014-05-05','2014-05-05 13:07:48',1)
 ,(3582,1,'2014-05-05','2014-05-05 13:13:46',1)
 ,(3583,1,'2014-05-05','2014-05-05 13:14:16',1)
 ,(3584,1,'2014-05-05','2014-05-05 13:14:19',1)
 ,(3585,1,'2014-05-05','2014-05-05 13:17:35',1)
 ,(3586,146,'2014-05-05','2014-05-05 13:18:37',1)
 ,(3587,131,'2014-05-05','2014-05-05 13:18:50',1)
 ,(3588,2,'2014-05-05','2014-05-05 13:19:02',1)
 ,(3589,7,'2014-05-05','2014-05-05 13:19:08',1)
 ,(3590,146,'2014-05-05','2014-05-05 13:20:13',1)
 ,(3591,146,'2014-05-05','2014-05-05 13:20:25',1)
 ,(3592,146,'2014-05-05','2014-05-05 13:20:43',1)
 ,(3593,146,'2014-05-05','2014-05-05 13:20:52',1)
 ,(3594,146,'2014-05-05','2014-05-05 13:34:29',1)
 ,(3595,1,'2014-05-05','2014-05-05 13:36:03',0)
 ,(3596,2,'2014-05-05','2014-05-05 13:37:13',1)
 ,(3597,7,'2014-05-05','2014-05-05 13:37:19',1)
 ,(3598,1,'2014-05-05','2014-05-05 13:44:22',1)
 ,(3599,1,'2014-06-15','2014-06-15 22:33:20',0)
 ,(3600,110,'2014-06-15','2014-06-15 22:33:32',0)
 ,(3601,110,'2014-06-15','2014-06-15 22:33:40',0)
 ,(3602,1,'2014-06-15','2014-06-15 22:33:43',1)
 ,(3603,106,'2014-06-15','2014-06-15 22:33:47',1)
 ,(3604,2,'2014-06-15','2014-06-15 22:34:03',1)
 ,(3605,51,'2014-06-15','2014-06-15 22:34:16',1)
 ,(3606,98,'2014-06-15','2014-06-15 22:34:23',1)
 ,(3607,98,'2014-06-15','2014-06-15 22:34:31',1);

DROP TABLE IF EXISTS pagethemes;

CREATE TABLE IF NOT EXISTS `pagethemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO pagethemes VALUES(1,'default','Plain Yogurt','Plain Yogurt is concrete5\'s default theme.',0)
 ,(2,'greensalad','Green Salad Theme','This is concrete5\'s Green Salad site theme.',0)
 ,(3,'dark_chocolate','Dark Chocolate','Dark Chocolate is concrete5\'s default theme in black.',0)
 ,(4,'greek_yogurt','Greek Yogurt','An elegant theme for concrete5.',0)
 ,(5,'cgt','Thème CGT','Épuré, rouge sur blanc',0);

DROP TABLE IF EXISTS pagethemestyles;

CREATE TABLE IF NOT EXISTS `pagethemestyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS pagetypeattributes;

CREATE TABLE IF NOT EXISTS `pagetypeattributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pagetypeattributes VALUES(5,1)
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

DROP TABLE IF EXISTS pagetypes;

CREATE TABLE IF NOT EXISTS `pagetypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO pagetypes VALUES(1,'core_stack','main.png','Stack',1,0)
 ,(2,'dashboard_primary_five','main.png','Dashboard Primary + Five',1,0)
 ,(3,'dashboard_header_four_col','main.png','Dashboard Header + Four Column',1,0)
 ,(5,'page_type_full','main.png','Une seule colonne centrale',0,0)
 ,(7,'page_type_3_columns','template3.png','Trois colonnes',0,0)
 ,(8,'page_type_left_column','right_sidebar.png','Deux colonnes',0,0)
 ,(9,'page_type_right_column','template1.png','Deux colonnes',0,0);

DROP TABLE IF EXISTS pageworkflowprogress;

CREATE TABLE IF NOT EXISTS `pageworkflowprogress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS permissionaccess;

CREATE TABLE IF NOT EXISTS `permissionaccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

INSERT INTO permissionaccess VALUES(1,1)
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
 ,(68,1)
 ,(69,1)
 ,(70,1)
 ,(71,1)
 ,(72,1)
 ,(73,1)
 ,(74,1)
 ,(75,1)
 ,(76,1)
 ,(77,1)
 ,(78,1)
 ,(79,1)
 ,(80,1)
 ,(81,1)
 ,(82,1)
 ,(83,1)
 ,(84,0)
 ,(85,0)
 ,(86,0)
 ,(87,1)
 ,(88,1);

DROP TABLE IF EXISTS permissionaccessentities;

CREATE TABLE IF NOT EXISTS `permissionaccessentities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO permissionaccessentities VALUES(1,1)
 ,(2,1)
 ,(3,1)
 ,(4,5)
 ,(5,6);

DROP TABLE IF EXISTS permissionaccessentitygroups;

CREATE TABLE IF NOT EXISTS `permissionaccessentitygroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO permissionaccessentitygroups VALUES(1,1,3)
 ,(2,2,1)
 ,(3,3,2);

DROP TABLE IF EXISTS permissionaccessentitygroupsets;

CREATE TABLE IF NOT EXISTS `permissionaccessentitygroupsets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS permissionaccessentitytypecategories;

CREATE TABLE IF NOT EXISTS `permissionaccessentitytypecategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO permissionaccessentitytypecategories VALUES(1,1)
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

DROP TABLE IF EXISTS permissionaccessentitytypes;

CREATE TABLE IF NOT EXISTS `permissionaccessentitytypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO permissionaccessentitytypes VALUES(1,'group','Group',0)
 ,(2,'user','User',0)
 ,(3,'group_set','Group Set',0)
 ,(4,'group_combination','Group Combination',0)
 ,(5,'page_owner','Page Owner',0)
 ,(6,'file_uploader','File Uploader',0);

DROP TABLE IF EXISTS permissionaccessentityusers;

CREATE TABLE IF NOT EXISTS `permissionaccessentityusers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS permissionaccesslist;

CREATE TABLE IF NOT EXISTS `permissionaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO permissionaccesslist VALUES(1,1,0,10)
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
 ,(68,1,0,10)
 ,(69,3,0,10)
 ,(70,1,0,10)
 ,(71,1,0,10)
 ,(72,1,0,10)
 ,(73,1,0,10)
 ,(74,1,0,10)
 ,(75,1,0,10)
 ,(76,1,0,10)
 ,(77,1,0,10)
 ,(78,1,0,10)
 ,(79,1,0,10)
 ,(80,1,0,10)
 ,(81,1,0,10)
 ,(82,1,0,10)
 ,(83,1,0,10)
 ,(84,1,0,10)
 ,(85,1,0,10)
 ,(86,2,0,10)
 ,(87,2,0,10)
 ,(88,2,0,10);

DROP TABLE IF EXISTS permissionaccessworkflows;

CREATE TABLE IF NOT EXISTS `permissionaccessworkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS permissionassignments;

CREATE TABLE IF NOT EXISTS `permissionassignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO permissionassignments VALUES(1,17)
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

DROP TABLE IF EXISTS permissiondurationobjects;

CREATE TABLE IF NOT EXISTS `permissiondurationobjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS permissionkeycategories;

CREATE TABLE IF NOT EXISTS `permissionkeycategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO permissionkeycategories VALUES(1,'page',NULL)
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

DROP TABLE IF EXISTS permissionkeys;

CREATE TABLE IF NOT EXISTS `permissionkeys` (
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

INSERT INTO permissionkeys VALUES(1,'view_page','View',0,0,'Can see a page exists and read its content.',1,0)
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

DROP TABLE IF EXISTS pilecontents;

CREATE TABLE IF NOT EXISTS `pilecontents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO pilecontents VALUES(3,1,21,'BLOCK',1,'0000-00-00 00:00:00',0)
 ,(4,1,22,'BLOCK',1,'0000-00-00 00:00:00',1)
 ,(5,1,42,'BLOCK',1,'0000-00-00 00:00:00',2)
 ,(6,1,62,'BLOCK',1,'0000-00-00 00:00:00',3);

DROP TABLE IF EXISTS piles;

CREATE TABLE IF NOT EXISTS `piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO piles VALUES(1,1,1,'0000-00-00 00:00:00',NULL,'READY');

DROP TABLE IF EXISTS queuemessages;

CREATE TABLE IF NOT EXISTS `queuemessages` (
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



DROP TABLE IF EXISTS queuepageduplicationrelations;

CREATE TABLE IF NOT EXISTS `queuepageduplicationrelations` (
  `queue_name` varchar(255) NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`originalCID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS queues;

CREATE TABLE IF NOT EXISTS `queues` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue_name` varchar(100) NOT NULL,
  `timeout` int(5) unsigned NOT NULL DEFAULT '30',
  PRIMARY KEY (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS signuprequests;

CREATE TABLE IF NOT EXISTS `signuprequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS stacks;

CREATE TABLE IF NOT EXISTS `stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO stacks VALUES(1,'Header',20,124)
 ,(2,'Pied de page - Gauche',20,125)
 ,(3,'Pied de page - Centre',20,126)
 ,(4,'Pied de page - Droite',20,127)
 ,(5,'Pied de page - Sitemap',20,128)
 ,(6,'Pied de page',20,135);

DROP TABLE IF EXISTS systemantispamlibraries;

CREATE TABLE IF NOT EXISTS `systemantispamlibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS systemcaptchalibraries;

CREATE TABLE IF NOT EXISTS `systemcaptchalibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO systemcaptchalibraries VALUES('securimage','SecurImage (Default)',1,0);

DROP TABLE IF EXISTS systemnotifications;

CREATE TABLE IF NOT EXISTS `systemnotifications` (
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO systemnotifications VALUES(1,10,'/index.php/dashboard/system/backup_restore/update/',NULL,'2014-06-15 22:33:48',0,1,'Une nouvelle version de concrete5 est disponible.','','\n\n                <h2>5.6.3.1 Release Notes</h2>\n\n                <h3>Huge Maintenance Update</h3>\n\n                <p>\n                    Version 5.6.3 and 5.6.3.1 introduce a lot of bug fixes, security improvements, and a large number of multilingual website improvements.\n                    They are highly recommended for all users of concrete5.\n                </p>\n                <p>\n                    As always, backup your data and site before running the upgrade live.\n                </p>\n\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-release-notes/\" target=\"_blank\">Full 5.6.3 Release Notes</a></h3>\n                <h3><a href=\"http://www.concrete5.org/documentation/background/version_history/5-6-3-1-release-notes/\" target=\"_blank\">Full 5.6.3.1 Release Notes</a></h3>\n\n\n                ');

DROP TABLE IF EXISTS userattributekeys;

CREATE TABLE IF NOT EXISTS `userattributekeys` (
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

INSERT INTO userattributekeys VALUES(10,0,0,1,0,1,0,1,1)
 ,(11,0,0,1,0,1,0,2,1);

DROP TABLE IF EXISTS userattributevalues;

CREATE TABLE IF NOT EXISTS `userattributevalues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userbannedips;

CREATE TABLE IF NOT EXISTS `userbannedips` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS usergroups;

CREATE TABLE IF NOT EXISTS `usergroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS useropenids;

CREATE TABLE IF NOT EXISTS `useropenids` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionassigngroupaccesslist;

CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionassigngroupaccesslistcustom;

CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissioneditpropertyaccesslist;

CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyaccesslist` (
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



DROP TABLE IF EXISTS userpermissioneditpropertyattributeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionusersearchaccesslist;

CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionusersearchaccesslistcustom;

CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionviewattributeaccesslist;

CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpermissionviewattributeaccesslistcustom;

CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userpointhistory;

CREATE TABLE IF NOT EXISTS `userpointhistory` (
  `upID` int(11) NOT NULL AUTO_INCREMENT,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`upID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userprivatemessages;

CREATE TABLE IF NOT EXISTS `userprivatemessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS userprivatemessagesto;

CREATE TABLE IF NOT EXISTS `userprivatemessagesto` (
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



DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS `users` (
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

INSERT INTO users VALUES(1,'admin','mathieu.rogelja@gmail.com','$2a$12$V7uOv0GtRN4IfyQrYT/koeK7VoR9bdDPu0Y/UBPrIK9ND4zV7uxc.','1',-1,1,'2014-02-14 10:04:57',0,1402864423,1402864421,2130706433,1399287601,18,NULL,NULL);

DROP TABLE IF EXISTS usersearchindexattributes;

CREATE TABLE IF NOT EXISTS `usersearchindexattributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS usersfriends;

CREATE TABLE IF NOT EXISTS `usersfriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS uservalidationhashes;

CREATE TABLE IF NOT EXISTS `uservalidationhashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS workflowprogress;

CREATE TABLE IF NOT EXISTS `workflowprogress` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS workflowprogresscategories;

CREATE TABLE IF NOT EXISTS `workflowprogresscategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO workflowprogresscategories VALUES(1,'page',NULL)
 ,(2,'file',NULL)
 ,(3,'user',NULL);

DROP TABLE IF EXISTS workflowprogresshistory;

CREATE TABLE IF NOT EXISTS `workflowprogresshistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

INSERT INTO workflowprogresshistory VALUES(1,1,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"1\";}')
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
 ,(31,31,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"130\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"31\";}')
 ,(32,32,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"137\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"32\";}')
 ,(33,33,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"141\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"33\";}')
 ,(34,34,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"141\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"34\";}')
 ,(35,35,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"35\";}')
 ,(36,36,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"131\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"36\";}')
 ,(37,37,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"37\";}')
 ,(38,38,'0000-00-00 00:00:00','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"132\";s:4:\"wrID\";s:2:\"38\";}')
 ,(39,39,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"142\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"39\";}')
 ,(40,40,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"8\";s:4:\"wrID\";s:2:\"40\";}')
 ,(41,41,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"41\";}')
 ,(42,42,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"129\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"42\";}')
 ,(43,43,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"143\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"43\";}')
 ,(44,44,'0000-00-00 00:00:00','O:27:\"MovePagePageWorkflowRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"143\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"15\";s:3:\"cID\";s:3:\"133\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:2:\"44\";}')
 ,(45,45,'0000-00-00 00:00:00','O:27:\"MovePagePageWorkflowRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"143\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"15\";s:3:\"cID\";s:3:\"134\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:2:\"45\";}')
 ,(46,46,'0000-00-00 00:00:00','O:29:\"DeletePagePageWorkflowRequest\":7:{s:14:\"\0*\0wrStatusNum\";i:100;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"11\";s:3:\"cID\";s:3:\"129\";s:4:\"wrID\";s:2:\"46\";}')
 ,(47,47,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"143\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"47\";}')
 ,(48,48,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"144\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"48\";}')
 ,(49,49,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"49\";}')
 ,(50,50,'0000-00-00 00:00:00','O:27:\"MovePagePageWorkflowRequest\":9:{s:12:\"\0*\0targetCID\";s:3:\"133\";s:14:\"\0*\0wrStatusNum\";i:50;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"15\";s:3:\"cID\";s:3:\"144\";s:15:\"saveOldPagePath\";N;s:4:\"wrID\";s:2:\"50\";}')
 ,(51,51,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"143\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"51\";}')
 ,(52,52,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"143\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"52\";}')
 ,(53,53,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:2:\"53\";}')
 ,(54,54,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:2:\"54\";}')
 ,(55,55,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"3\";s:4:\"wrID\";s:2:\"55\";}')
 ,(56,56,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"56\";}')
 ,(57,57,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"57\";}')
 ,(58,58,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"58\";}')
 ,(59,59,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"143\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"59\";}')
 ,(60,60,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"143\";s:4:\"cvID\";s:1:\"6\";s:4:\"wrID\";s:2:\"60\";}')
 ,(61,61,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"145\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"61\";}')
 ,(62,62,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:1:\"9\";s:4:\"wrID\";s:2:\"62\";}')
 ,(63,63,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"4\";s:4:\"wrID\";s:2:\"63\";}')
 ,(64,64,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"133\";s:4:\"cvID\";s:1:\"5\";s:4:\"wrID\";s:2:\"64\";}')
 ,(65,65,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"10\";s:4:\"wrID\";s:2:\"65\";}')
 ,(66,66,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"11\";s:4:\"wrID\";s:2:\"66\";}')
 ,(67,67,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"12\";s:4:\"wrID\";s:2:\"67\";}')
 ,(68,68,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"13\";s:4:\"wrID\";s:2:\"68\";}')
 ,(69,69,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"14\";s:4:\"wrID\";s:2:\"69\";}')
 ,(70,70,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"15\";s:4:\"wrID\";s:2:\"70\";}')
 ,(71,71,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"143\";s:4:\"cvID\";s:1:\"7\";s:4:\"wrID\";s:2:\"71\";}')
 ,(72,72,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"16\";s:4:\"wrID\";s:2:\"72\";}')
 ,(73,73,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"17\";s:4:\"wrID\";s:2:\"73\";}')
 ,(74,74,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"18\";s:4:\"wrID\";s:2:\"74\";}')
 ,(75,75,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"19\";s:4:\"wrID\";s:2:\"75\";}')
 ,(76,76,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"20\";s:4:\"wrID\";s:2:\"76\";}')
 ,(77,77,'0000-00-00 00:00:00','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"21\";s:4:\"wrID\";s:2:\"77\";}')
 ,(78,1,'2014-05-05 13:13:44','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"22\";s:4:\"wrID\";s:1:\"1\";}')
 ,(79,2,'2014-05-05 13:17:33','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:1:\"1\";s:4:\"cvID\";s:2:\"23\";s:4:\"wrID\";s:1:\"2\";}')
 ,(80,3,'2014-05-05 13:20:24','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"146\";s:4:\"cvID\";s:1:\"1\";s:4:\"wrID\";s:1:\"3\";}')
 ,(81,4,'2014-05-05 13:34:28','O:30:\"ApprovePagePageWorkflowRequest\":8:{s:14:\"\0*\0wrStatusNum\";i:30;s:12:\"\0*\0currentWP\";N;s:6:\"\0*\0uID\";s:1:\"1\";s:5:\"error\";s:0:\"\";s:4:\"pkID\";s:2:\"13\";s:3:\"cID\";s:3:\"146\";s:4:\"cvID\";s:1:\"2\";s:4:\"wrID\";s:1:\"4\";}');

DROP TABLE IF EXISTS workflowrequestobjects;

CREATE TABLE IF NOT EXISTS `workflowrequestobjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS workflows;

CREATE TABLE IF NOT EXISTS `workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS workflowtypes;

CREATE TABLE IF NOT EXISTS `workflowtypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO workflowtypes VALUES(1,'basic','Basic Workflow',0);

