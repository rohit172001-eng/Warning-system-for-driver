/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - mini_proj
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `mini_proj`;

USE `mini_proj`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `acc_prone` */

DROP TABLE IF EXISTS `acc_prone`;

CREATE TABLE `acc_prone` (
  `sno` int(11) NOT NULL,
  `route` varchar(100) default NULL,
  `areas` varchar(100) default NULL,
  `station` varchar(100) default NULL,
  `latitude` float default NULL,
  `longitude` float default NULL,
  `sound_db` float default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `acc_prone` */

insert  into `acc_prone`(`sno`,`route`,`areas`,`station`,`latitude`,`longitude`,`sound_db`) values (1,'Abid road','Between Tajmahal to Abids circle','Abids',10.3312,119.349,NULL),(2,'Alaska to Mangalhat','Baradari','Goshamahal',17.3789,78.4681,NULL),(3,'Amberpet to Ramanthapur','Amberpet T Junction, Gadribagh lane, Gandhi statue, Golnaka, Blue sea hotel.','Kachiguda',17.3901,78.4933,NULL),(4,'AOC rotary to R.K. Puram X Roads','R.K. Puram X Roads','Trimulgherry',17.4777,78.5107,NULL),(5,'Ayodhya Junction to pti building','Opposite PTI building.','Nampally',17.3861,78.4639,NULL),(6,'Ballamrai Junction to Tadbund Junction','Tadbund Junction','Trimulgherry',17.4777,78.5107,NULL),(7,'Bank street to DM and HS','Old P.S.. Troop Bazar, Feroz Gandhi Park, Andhra bank','Sultan bazar',57.4127,-6.20124,NULL),(8,'BJR statue Chermas','Between SBH, Chermas','Abids',10.393,78.473,NULL),(9,'Military Diary form road Junction','Bowenpally check post towards Suchitra Junction.','Suchitra bridge',17.5428,78.4814,NULL),(10,'Trimulgherry','Bowenpally towards Balanagar','Air force station',17.4747,78.507,NULL),(11,'Trimulgherry','Bowenpally checkpost','Bowenpally X Roads to Bowenpally check post',17.4747,78.507,NULL),(12,'Safe express','Trimulgherry','Brook bond X Roads towards new Monda market, Bowenpally',51.3178,-0.557653,NULL),(13,'Delhi public school, Diamond point','Trimulgherry','Chadarghat to Ramkoti',17.3757,78.494,NULL),(14,'Television cafÃƒÂ©, Ganesh temple, Crazy canner, dm & hs bus terminal, Hanuman Tekdi','Sultan bazar','Chaderghat rotary towards S.J. Rotary via Kalikabher.',17.3757,78.494,NULL),(15,'Kalikabher','Mirchowk','Chadharghat to M.J. Market',17.3828,78.4748,NULL),(16,'Sai Baba temple, Ranghmahal, Putlibowli, Jambagh','Sultan bazar','Foot of fly over at NMDC end and NMDC Junction',NULL,NULL,NULL),(17,'Foot of fly over, nmdc turning','Asif nagar','Chikkadpally market to RTC X Roads',NULL,NULL,NULL),(18,'Between Chikkadpally market to Sri Venkateshwara temple.','Chikkadpally','RTC X Roadss to Golconda X Roads',NULL,NULL,NULL),(19,'Near Saptagiri theatre.','Chikkadpally','Tankbund Arch to Dailing club',NULL,NULL,NULL),(20,'Chikkadpally','VST to RTC X Roads','Chikkadpally',17.4009,78.4976,NULL),(21,'v v statue khairatabad to gokul theater erragadda ( via nims, panjaguut, s.r. Nagar, esi NH-9)','V.V. statue circle, NIMS, Panjagutta, Ameerpet, S.R. Nagar, ESI, Rythubazar','Panjagutta',17.4245,78.4511,NULL),(22,'Greenlands fly over to V.V. statue (via raj bhavan)','In between V V statue Junction and Raj bhavan, MMTS, near Yashoda hospital','Panjagutta',17.4245,78.4511,NULL),(23,'Greenlands to Ameerpet','D.K. Road, Mata temple, near Green Park hotel','Panjagutta',17.4498,78.4411,NULL),(24,'Grrenlands to NFCL Junction','Near Grand khakathiya hotel, Panjagutta','Panjagutta',17.4245,78.4511,NULL),(25,'Hanuman temple in between RTA office','Hanuman temple','Trimulgherry',17.4777,78.5107,NULL),(26,'Himayath nagar road','Near Himayath nagar Y Junction','Abids',17.399,78.4858,NULL),(27,'JBS towards airtel office','SecÃ¢Â€Â™bad club','Trimulgherry',17.4777,78.5107,NULL),(28,'Jubilee hills check post to madhapur','At road no. 36/10 jubilee hills','Banjara Hills',NULL,NULL,NULL),(29,'Lakdi-ka-pool','From DGP office gate to lucky hotel turning','Saifabad',17.4048,78.4611,NULL),(30,'Liberty to Telugutalli','Via brk and GHMC','Saifabad',NULL,NULL,NULL),(31,'Lothukunta towards st. AnnÃ¢Â€Â™s school Bollaram (Rahadari)','Alwal Raithu bazar','Trimulgherry',17.4777,78.5107,NULL),(32,'M.J.market to Taj Island','Ajantha gate','Goshamahal',17.3789,78.4681,NULL),(33,'Malakunta to M.J..bridge','Feelkhana','Goshamahal',17.3789,78.4681,NULL),(34,'Mehdipatnam to Attapur bridge','Rethi bowli, Lakshmi nagar, crystal garden and Moghalka nala','Asif nagar',NULL,NULL,NULL),(35,'Military Diary form road Junction towards holy family Junction','Near RTC colony Junction','Trimulgherry',NULL,NULL,NULL),(36,'Infront of Durga bhavan hotel (on the road between A1 nampally Junction to chapel road Junction)','Nampally Junction to AP legislative assembly','Mahboobia gate to AR petrol pump',NULL,NULL,NULL),(37,'Nampally','Nanal nagar to Tipu khan bridge','Balika bhavan, Andhra flour mills turning, Military hospital, Langer house, Bapughat.',16.8855,78.9614,NULL),(38,'Asif nagar','Nayapool bridge, Afzalgunj to S.A.Bazar','Nayapool bridge, Afzal gunj, S.A. Bazar',24.921,67.0755,NULL),(39,'Sultan bazar','Near foot of the flyover near old gate sect','Particularly at flyover Ending point',17.387,78.487,NULL),(40,'Saifabad','Necklace road','From Necklace rotary to P.V. memorial',17.4048,78.4658,NULL),(41,'Saifabad','New Monda market, Bowenpally towards Bapunjinagar','Dubai gate',17.4048,78.4658,NULL),(42,'Trimulgherry','NMDC to Mehdipatnam','Radhika dental clinic, Pochamma Basthi lane, S.D. Eye hospital',17.4747,78.507,NULL),(43,'Asif nagar','NTR marg','From Telugu thalli Junction to Necklace rotary',24.921,67.0755,NULL),(44,'Saifabad','Old Saifabad PS Junction','Old Saifabad ps Junction',17.4048,78.4658,NULL),(45,'Saifabad','CTO flyover','Anand theatre',17.4048,78.4658,NULL),(46,'Shopper stop','Plaza to Begumpet flyover, S.P. Road','Begumpet flyover',12.8761,77.5959,NULL),(47,'Begumpet','Ramser cafÃƒÂ© Junction to AOC centre','AOC rotary',17.444,78.4625,NULL),(48,'Trimulgherry','Ranghamahal to Afzalgunj','C.B.S, S.J.. Bridge, Central library',17.4747,78.507,NULL),(49,'Sultan bazar','Ravindra Barathi','Near Ravindra Barathi Junction',17.387,78.487,NULL),(50,'Saifabad','Rd no.12 Banjara Hills','In between kaman to Orissa island',17.4048,78.4658,NULL),(51,'Banjara Hills','Rd no.2 Banjara Hills','In between Green Mosque to Jubleehills checkpost',17.4177,78.4399,NULL),(52,'Banjara Hills','Rethi Bowli to Shaikpet Nala','Rethi bowli, nanal nagar, moghal residency, toli chowki and galaxy',17.4177,78.4399,NULL),(53,'Asif nagar','S.A.bazar to M.J.market','Osmangunj',24.921,67.0755,NULL),(54,'Goshamahal','Sailing club to CTO, M.G.road','CTO',17.3806,78.4688,NULL),(55,'Begumpet','Salarjung Rotary towards Nayapool','Salarjung',17.444,78.4625,NULL),(56,'Mirchowk','Plaza X Roads','Sardar patel road',23.0883,72.5918,NULL),(57,'MCH swimming pool bus stop','Mahankali','St. AnnÃ¢Â€Â™s school bollaram to Bollaram checkpost',NULL,NULL,NULL),(58,'Bollaram Check post.','Trimulgherry','St.mary road',18.1609,78.0699,NULL),(59,'Near Manohar talkies','Mahankali','Tadbund to Bowenpally',NULL,NULL,NULL),(60,'Chinnathokata','Trimulgherry','Tarnaka to Habsiguda X Roads',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
