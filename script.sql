CREATE DATABASE IF NOT EXISTS test;
use test;
DROP TABLE IF EXISTS notes;
CREATE TABLE `notes` (                      
            `id` BIGINT NOT NULL AUTO_INCREMENT,        
            `text` varchar(300) DEFAULT NULL,        
            `createDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,    
            `isCompleted` BOOLEAN NOT NULL default 0,  
            PRIMARY KEY (`id`)                           
          );
insert into notes(text,isCompleted,createDate) values ('The neighbourhood - Flawless, nado skachat sebe na fleshku [1]',1,20180212151621),
('V principe ne vazhno kak ya budu pisat 
ved eti frazi budut razbrosani sluchainim obrazom [2]',1,20180211151621),
('Ustal pridumivat texta napishu stih kakoi-nibud [3]',0,20180212151622),
('interesno menya vozmut na stazhirovku JR [4]',1,20180211151622),
('interesno menya vozmut na stazhirovku JR [5]',1,20180213151622),
('Da i napisivat mnogo texta mne kak to len 
no ya vse taki Pishu vot chtoto [6]',1,20180212151621),
('Noch ulitca fonar apteka 
Bessmislenniy i tuskliy svet 
Zhivi eshe hot chetvert veka 
Vse budet tak ishoda net [7]',1,20180211151621),
('Ok eto budet text zametki [8]',1,20180212151621),
('Ok eto budet text zametki [9]',0,20180212151621),
('Predposlednyaa zametka [10]',0,20180211151622),
('Da i napisivat mnogo texta mne kak to len 
no ya vse taki Pishu vot chtoto [11]',1,20180212151621),
('Noch ulitca fonar apteka 
Bessmislenniy i tuskliy svet 
Zhivi eshe hot chetvert veka 
Vse budet tak ishoda net [12]',1,20180213151622),
('The neighbourhood - Flawless, nado skachat sebe na fleshku [13]',1,20180213151621),
('Da i napisivat mnogo texta mne kak to len 
no ya vse taki Pishu vot chtoto [14]',0,20180212151622),
('V principe ne vazhno kak ya budu pisat 
ved eti frazi budut razbrosani sluchainim obrazom [15]',1,20180212151622),
('interesno menya vozmut na stazhirovku JR [16]',0,20180213151622),
('Predposlednyaa zametka [17]',0,20180211151622),
('Ustal pridumivat texta napishu stih kakoi-nibud [18]',0,20180212151622),
('Da i napisivat mnogo texta mne kak to len 
no ya vse taki Pishu vot chtoto [19]',1,20180213151621),
('Ya bi shas ne proch pereslushat nekotorie pesni Muse. [20]',1,20180211151621),
('interesno menya vozmut na stazhirovku JR [21]',0,20180212151621),
('Ustal pridumivat texta napishu stih kakoi-nibud [22]',0,20180211151622),
('interesno menya vozmut na stazhirovku JR [23]',0,20180213151622),
('Ya bi shas ne proch pereslushat nekotorie pesni Muse. [24]',1,20180213151622),
('Ya bi shas ne proch pereslushat nekotorie pesni Muse. [25]',1,20180212151621),
('Noch ulitca fonar apteka 
Bessmislenniy i tuskliy svet 
Zhivi eshe hot chetvert veka 
Vse budet tak ishoda net [26]',0,20180211151622),
('V principe ne vazhno kak ya budu pisat 
ved eti frazi budut razbrosani sluchainim obrazom [27]',0,20180211151621),
('V principe ne vazhno kak ya budu pisat 
ved eti frazi budut razbrosani sluchainim obrazom [28]',0,20180213151622),
('Ustal pridumivat texta napishu stih kakoi-nibud [29]',0,20180213151621),
('Ya bi shas ne proch pereslushat nekotorie pesni Muse. [30]',1,20180211151622);