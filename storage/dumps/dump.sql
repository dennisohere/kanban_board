
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `order` int DEFAULT NULL,
  `column_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_column_id_foreign` (`column_id`),
  CONSTRAINT `cards_column_id_foreign` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,'nemo commodi voluptate laudantium sint','Quidem laboriosam praesentium alias quos. Debitis autem et non dicta aut qui sit. Veniam quia suscipit laboriosam sed quam et quo. Eveniet optio est velit.',2,1,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(2,'voluptas quos','Voluptatum officia et quis non dolorem facere ea. Est a nesciunt esse eius quis. Fugiat doloremque explicabo sunt libero esse.',6,1,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(3,'maxime aperiam fugiat repudiandae aliquam','Iusto aut fuga alias quia eaque sed. Veniam voluptates et fugiat nemo ut. Totam et necessitatibus voluptas neque.',1,1,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(4,'repellat aut ut eius fuga','Et ducimus minus neque vel. Hic sunt earum consectetur ut. Inventore qui dolores eligendi aperiam blanditiis nihil. Aliquam deserunt velit voluptates. Fugiat sit molestiae dicta ut autem fuga sit.',9,1,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(5,'placeat asperiores quo et nemo','Vero ut voluptas necessitatibus autem perferendis accusantium et. Vitae at quae sunt tenetur. Minus vel minus perferendis culpa repudiandae odio.',3,1,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(6,'consectetur ut eius consequuntur sapiente','Perferendis est qui adipisci iste magni. Dolores dolorem nihil quis modi. Qui cumque vel ad tempora ipsum rerum.',4,1,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(7,'corporis cum est vitae omnis','Aut unde id tempore cumque. Omnis earum non qui molestias omnis sed fuga. Ipsam ipsum iste sint saepe est facilis voluptates.',3,3,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(8,'sed magnam delectus iusto','At a voluptatem odio facere tenetur alias aut. Qui nemo veniam ipsa eius dolorem eum assumenda accusantium.',5,1,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(9,'doloremque quisquam','Quam et omnis dolor recusandae quidem dicta rem. Corrupti exercitationem animi neque molestiae ut molestias rerum et. Suscipit sint laboriosam reiciendis. Sed eius labore facere quos ipsa.',7,1,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(10,'asperiores officiis est ipsa asperiores','Sunt rem voluptas voluptate aut ut. Quia aut aut rem recusandae numquam.',8,1,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(14,'nihil reiciendis minima cumque','Cum eos velit cumque consequuntur. Alias culpa ipsa excepturi officiis. Eaque fugiat beatae ea vel ut eos.',8,3,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(15,'quibusdam consequatur atque quaerat','Commodi non minus totam aut rerum. Quam aut hic perferendis ex.',9,3,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(17,'ut sit debitis molestiae odio','Distinctio deserunt est sunt delectus distinctio eveniet ea. Eum necessitatibus adipisci qui qui. Consequuntur vitae voluptatem quia quia veniam voluptatibus. Impedit odio maxime qui deserunt repellendus.',4,3,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(18,'quia perspiciatis explicabo','Dolorem molestiae explicabo cum animi mollitia magni. Ut et recusandae quae quod nisi voluptates vel voluptate. Enim a cupiditate rerum porro eaque.',5,3,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(19,'qui sed saepe autem','Officia velit aut necessitatibus at. Earum ea iste commodi sunt autem sunt. Est odit est incidunt culpa qui assumenda. Facere sit atque dolor nam similique ut ex. Nemo vel magni dolorem est.',6,3,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(20,'accusamus ut eum','Quia et quis sed consequuntur illum non. Vero sunt quasi ducimus consequatur provident provident ut. Quo dignissimos aspernatur excepturi repellat dolorum fugiat nesciunt. Magnam ducimus necessitatibus optio.',10,3,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(21,'voluptates odit non','Cupiditate cupiditate numquam dolor doloremque sapiente fuga. Quis voluptas sit tempora rerum dolorem animi aut. Doloribus delectus molestiae et. Sit et eveniet eligendi occaecati.',11,3,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(22,'repellat tempora voluptates omnis','Harum illo a eum dolorem id minus. Consequatur expedita consequuntur tempora. Aliquam reiciendis quia laboriosam odit omnis voluptatibus dignissimos. Sit ipsum autem nihil quia.',7,3,'2023-01-09 03:58:44','2023-01-10 06:04:44',NULL),(23,'et aut laudantium','Dolorem adipisci veritatis placeat tenetur ut iusto placeat dicta. Quia voluptas est sed aut quibusdam exercitationem fugiat omnis. Sint reiciendis nesciunt tempora qui similique expedita porro. Fugit eaque corrupti recusandae cupiditate et impedit. Dolores voluptatum porro molestiae impedit ut quia quo est.',2,3,'2023-01-09 03:58:44','2023-01-09 22:34:26',NULL),(24,'nostrum accusamus','Minima neque accusantium nam cum. Impedit et in et et tempora aliquid modi veritatis. Voluptas ullam optio incidunt harum.',1,3,'2023-01-09 03:58:44','2023-01-09 22:34:26',NULL),(25,'et rerum - edited!!','Repellat asperiores ipsum quae officiis quas repellendus. Officiis doloremque minima quo commodi. Perferendis vel animi fuga qui. Dolores eaque dolores maxime velit nemo. Ea ex vitae cum qui architecto reprehenderit repellendus.',4,4,'2023-01-09 03:58:44','2023-01-10 06:08:55',NULL),(26,'consequatur est repudiandae','Minima debitis atque quasi unde. Ut molestias est recusandae ut dicta. Tempora quibusdam earum voluptatibus placeat nobis natus. Commodi eum sunt quia qui cumque labore quis.',6,4,'2023-01-09 03:58:44','2023-01-10 00:26:24',NULL),(27,'et delectus','Minima ut quo provident nam necessitatibus alias aut. Et et rerum neque adipisci optio ut optio.',7,4,'2023-01-09 03:58:44','2023-01-10 00:26:24',NULL),(29,'sapiente totam - not bad','Adipisci nostrum sed earum architecto. Tenetur ipsam labore beatae est enim ratione. Reprehenderit vero odit veritatis facilis. Quia doloribus qui blanditiis ut voluptatem consequuntur. Et non consequuntur eos sit tempore.',1,4,'2023-01-09 03:58:44','2023-01-10 00:19:57',NULL),(30,'quia consequatur tenetur ex','Ullam libero a porro incidunt. Voluptatibus voluptatem ipsum iusto.',9,4,'2023-01-09 03:58:44','2023-01-10 00:26:24',NULL),(31,'vitae qui et excepturi','Placeat quod numquam neque qui est. Optio eos dolore qui voluptas. Iure et non est provident aut enim necessitatibus aspernatur. Quos sunt et veniam iusto. Sunt quia sunt rerum facere nostrum qui possimus eligendi.',10,4,'2023-01-09 03:58:44','2023-01-10 00:26:24',NULL),(33,'enim aut odio -- nice','Laborum consequatur adipisci ea dolore. Magnam facere nam et molestiae sunt culpa.',3,4,'2023-01-09 03:58:44','2023-01-10 06:08:55',NULL),(34,'vel facilis','Quis fugit qui hic non beatae. Incidunt delectus ea aut quo omnis consequatur. Et ut ratione doloribus ut vel. Numquam enim sunt quam debitis beatae id at.',5,4,'2023-01-09 03:58:44','2023-01-10 00:26:24',NULL),(35,'quas magni deserunt','Aperiam odio officiis laborum quibusdam sint consequatur. Quo accusamus magnam sed magni totam.',8,4,'2023-01-09 03:58:44','2023-01-10 00:26:24',NULL),(36,'optio delectus quaerat sed','Recusandae beatae eum omnis asperiores. Qui quibusdam quidem excepturi recusandae.',6,5,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(37,'ratione tempore','Iusto dolore et corrupti dolores fugiat. Laudantium ea quaerat laudantium ut temporibus voluptas.',1,5,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(38,'non et quam ea','Sunt animi officia quo fugit voluptatum tenetur. Quas est laborum sit enim.',1,5,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(39,'dolores est','Ut placeat deleniti aut assumenda. Quas veniam dolor et labore. Nostrum quidem ipsam delectus.',4,5,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(40,'vitae deleniti culpa','Consequatur commodi incidunt quia eligendi vero consequatur esse et. Quas quia iste cumque modi temporibus a. Qui vitae sint in sit omnis molestiae. Ab dignissimos ipsum labore sunt. Molestias et quod necessitatibus animi.',0,5,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(41,'qui sequi suscipit','Perferendis blanditiis ut nulla. Nobis ex cupiditate sit doloremque fugiat laudantium.',3,5,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(42,'dolor quo minima ut','Doloribus accusantium molestias molestias molestiae aperiam qui. Unde asperiores earum vero sit iste et. Qui est culpa eaque aut. Ex vel repellat quaerat quam asperiores quam pariatur fugit. Dolorem adipisci minus id aut et deleniti qui.',9,5,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(43,'in ipsum quod modi','Consequuntur odit enim et sint ducimus. Tempora architecto tempore totam amet esse.',2,5,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(44,'fugit accusantium recusandae','Asperiores voluptate dignissimos et aliquam. Quidem voluptatem voluptatum eos odio. Ratione ipsam rerum sit enim amet ut. Sunt ut non omnis est. Error aut delectus quo et.',7,6,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(45,'quibusdam inventore facilis qui cupiditate','Facilis similique doloribus ad numquam et sit. Et cum pariatur nihil rerum nobis.',2,6,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(46,'ut suscipit sit voluptatem placeat','Eum rerum deleniti laborum voluptas qui reiciendis magni. Dolor tenetur voluptatum eos voluptatem accusantium. In dolor vitae sapiente voluptatem sapiente ullam a. Iste ut autem rerum eius.',4,6,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(47,'nesciunt aut aperiam','Molestias ipsam maxime est delectus architecto dolores. Occaecati fugiat qui officiis modi numquam. In atque qui velit tenetur aut. Sit voluptas saepe earum quia maiores exercitationem. Reiciendis placeat dolores iusto minus et totam.',6,6,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(48,'autem et consequuntur beatae iure','Qui voluptatem aliquam error et. Odio omnis minus sit nisi nobis rem. Iure facilis vitae totam non assumenda non occaecati.',8,6,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(49,'voluptatem magni','Mollitia facilis repellat eos. Modi nihil qui ad quisquam. Harum id nobis rerum nostrum voluptas.',3,7,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(50,'consequatur consequatur','Cum est adipisci ut et quo nesciunt. Autem et et voluptatem est labore voluptate esse.',3,7,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(51,'similique accusantium impedit','Aperiam dolorum quidem et harum. Odit earum sequi at alias officia eaque ea. Sint autem dolores rerum dolor. Laborum odit dolorem qui nobis deserunt.',4,7,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(52,'quis id accusantium nam','Aut repellat ea rerum voluptas. Voluptas fugit iure et neque quis at vero. At amet porro modi similique voluptatem nisi.',4,7,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(53,'dolorum autem in maxime aut','Et atque veniam sit repudiandae ad. Porro at possimus molestias quia accusamus in tempora.',6,7,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(54,'dolor ab sit voluptatem','Voluptatem non quidem quae quas voluptatum sequi fugit. Dolorem ea provident aut. Cumque magnam modi tempora hic sunt aspernatur architecto ipsam. Assumenda ut hic et est rerum. Quibusdam optio architecto eos repellat.',3,8,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(55,'ullam laboriosam alias ab','Sit et quia nemo itaque omnis sit enim. Nam voluptas officiis aliquam iure. Cumque quaerat corporis non laborum et sed laborum. Est voluptatem animi et commodi. Asperiores corrupti nisi quia odit aliquid.',9,8,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(56,'molestiae voluptatem assumenda totam non','Possimus enim ut fuga minus odit deserunt quia. Delectus quod quibusdam perspiciatis et laudantium. Quis quia veritatis ea aliquam qui ea ducimus. Eligendi reprehenderit iure dolorum nobis. Sit enim quia similique voluptatem dolorem.',8,8,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(57,'repudiandae doloremque ratione','Ullam facere ipsa nihil nostrum. Ipsum et praesentium labore officia quaerat. Sint sit quaerat velit vitae soluta aut accusamus.',1,8,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(58,'nulla et facilis','Magni dolor voluptate incidunt omnis. Atque aut eius suscipit quia suscipit. Minima tempora sunt ullam minus sunt exercitationem nihil. Cumque voluptatem minima ex. Eveniet est sint sint.',8,8,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(59,'et cumque','Et quasi voluptatum error eligendi nihil. Voluptatem repellendus est velit et reprehenderit. Tenetur culpa recusandae non occaecati qui amet unde. Dolores atque nihil molestiae quo.',5,8,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(60,'impedit aliquam accusantium est','Quisquam quo sit earum corrupti accusantium pariatur. Quasi exercitationem reiciendis et illo eaque adipisci officia. Expedita consequatur rerum quis accusamus hic omnis totam ut. Cumque officiis optio voluptates sed beatae veritatis quos. Sapiente ut sed perferendis.',8,8,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(61,'eos inventore et','Aperiam exercitationem dolor provident eos ut. Aut omnis voluptatem voluptas veritatis consequatur ad. Dolores est error est eos deleniti aliquid. Quidem mollitia vero dolorem nulla dignissimos aliquam. Ab rem vero explicabo ad velit.',8,8,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(62,'est quia aliquid dignissimos voluptatum','Autem quaerat et ratione et earum animi. Perferendis officia doloremque unde expedita id atque vitae. Voluptates iusto amet quod velit perspiciatis. Dignissimos sit voluptas corporis architecto temporibus consequatur. Voluptatibus nemo tenetur et dolor qui numquam ipsa.',4,9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(63,'vel qui nostrum numquam culpa','Officia praesentium ea sint quidem voluptatibus esse aut. Odit qui repellat adipisci sunt rem voluptates. Omnis voluptatibus voluptate amet unde ad et sequi.',7,9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(64,'molestiae quo','Nam qui libero consequuntur atque reprehenderit est sit. Amet inventore quaerat numquam excepturi sunt quod beatae. Rerum consequatur est quos beatae dolorem doloribus perferendis. Quis harum facere officia soluta et ut.',0,9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(65,'aliquid unde dolorum nam','Nesciunt qui id voluptatem repellendus accusantium et vero. Veritatis voluptas odio inventore. Eos quaerat exercitationem deserunt incidunt tenetur fugit velit.',6,9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(66,'inventore reprehenderit ut quia labore','Voluptas voluptas alias sed architecto accusantium. Quia quos voluptatem est eius laudantium. Id id architecto error dignissimos eum dolor. Aperiam officia sed nihil culpa non consequatur necessitatibus.',6,9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(67,'nisi veniam dignissimos molestiae quisquam','Corporis odit et labore velit. Dignissimos voluptatem id exercitationem voluptas. Et est cumque quam et vero blanditiis. Voluptatem reprehenderit enim facilis beatae pariatur veniam et.',6,9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(68,'nihil dicta magni','Et qui et officiis. Provident nulla qui placeat laborum. Aliquam facilis velit non delectus.',2,9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(69,'ipsam dolores','Aut assumenda sed et vero non voluptatem quia. Qui ratione qui maiores dolores. Fugit cumque sunt quaerat.',2,9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(70,'omnis et in veniam','Qui quisquam numquam sed iusto nesciunt. Similique occaecati enim inventore dolore unde. Vero debitis aut officia. Recusandae magni veritatis incidunt impedit et. Consectetur tempore quia pariatur et delectus.',9,9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(80,'nihil deserunt','Nostrum quibusdam dolorem nam dolor facilis consequuntur maxime. Autem rerum similique nesciunt explicabo eum fugiat eius.',5,11,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(81,'illo iste consequuntur','Et temporibus animi maxime qui optio. Ut doloribus facere velit maiores nam dolorum.',7,11,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(82,'soluta sit sequi quo','Eum ratione iste officiis nisi voluptatem tempore velit. Sunt eaque rerum velit officiis numquam odit. Accusantium maiores alias dolor magnam voluptatum enim.',5,11,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(83,'doloremque repellat','Eos dolores excepturi quam enim facere. Incidunt ut cum et nulla omnis. Et minus non magnam dolorum. Eligendi modi eaque beatae tempora repellendus voluptatem veniam. Atque esse quis consequuntur non maxime rerum iste.',9,11,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(98,'excepturi rerum totam quidem error','Id eos sed qui voluptatem et. Vitae et est quae et dicta aut. Dolor ex quia et vel alias. Vitae eos optio aspernatur ex harum molestiae vel.',1,15,'2023-01-09 03:58:44','2023-01-10 01:01:23',NULL),(99,'fugiat sapiente quis et','Vel molestiae voluptatem esse illo enim quaerat. Sequi saepe ut voluptatibus sit. Veniam veniam vel in accusantium similique.',5,14,'2023-01-09 03:58:44','2023-01-10 00:58:47',NULL),(100,'veritatis itaque ipsum et','Voluptatem alias aut aut quis. Sed cum aut ullam dolore itaque dolorem alias tempora. Officia fugit at quam laudantium nam. Id exercitationem iusto aut ut blanditiis.',3,14,'2023-01-09 03:58:44','2023-01-10 00:58:47',NULL),(101,'soluta iste aut autem quibusdam','Incidunt perspiciatis ut molestias ut. Omnis eius aut qui inventore. Ab exercitationem suscipit eum dolores repellat. Quo et praesentium sed vitae hic ipsum doloremque autem.',4,14,'2023-01-09 03:58:44','2023-01-10 00:58:47',NULL),(102,'sit fugiat odio expedita omnis','Ut hic laudantium totam laudantium. Temporibus corporis dolor dolore et molestiae. Voluptatem quos illum quos sed aspernatur omnis eaque. Nobis eos asperiores at voluptatem molestias. Quam tempore ut magnam quo.',1,14,'2023-01-09 03:58:44','2023-01-10 00:49:33',NULL),(103,'autem ex qui harum','Quia natus distinctio enim. Debitis inventore est dicta tempore est recusandae.',2,14,'2023-01-09 03:58:44','2023-01-10 00:49:45',NULL),(104,'rerum temporibus consectetur','Maiores dolorem veritatis non ab et reiciendis. Eos consequatur amet dolorem. Voluptate reprehenderit praesentium nihil incidunt quia. In quia exercitationem aspernatur quia. Placeat rerum velit commodi voluptate et minima porro pariatur.',1,16,'2023-01-09 03:58:44','2023-01-10 00:54:32',NULL),(105,'et deleniti','Veniam quam repudiandae minima corrupti ipsam. Necessitatibus dolorem dicta repellendus veniam velit adipisci ut odio.',2,15,'2023-01-09 03:58:44','2023-01-10 01:09:42',NULL),(106,'sit quia harum ex','Quis voluptas quam excepturi totam aut. Odio enim autem corrupti soluta.',3,15,'2023-01-09 03:58:44','2023-01-10 01:09:42',NULL),(107,'My new card','So far so good. Great progress is being made.',2,4,'2023-01-10 00:24:17','2023-01-10 06:08:55',NULL),(108,'Hello World','Everything seems to be in order',7,7,'2023-01-10 00:29:29','2023-01-10 00:29:29',NULL),(109,'Bar','Foo Bar card description',2,16,'2023-01-10 00:54:17','2023-01-10 01:12:11',NULL);
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `columns` WRITE;
/*!40000 ALTER TABLE `columns` DISABLE KEYS */;
INSERT INTO `columns` VALUES (1,'et illo voluptatem',11,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(2,'atque fugiat',11,'2023-01-09 03:58:44','2023-01-09 23:05:57','2023-01-09 23:05:57'),(3,'consequuntur odit',10,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(4,'ea et',2,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(5,'odit commodi',5,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(6,'maxime omnis modi tempora',11,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(7,'enim aspernatur',9,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(8,'tempore aperiam molestiae nesciunt accusantium',13,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(9,'omnis eveniet doloremque dolorem eos',8,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(10,'et consectetur sapiente',15,'2023-01-09 03:58:44','2023-01-10 06:07:35','2023-01-10 06:07:35'),(11,'molestiae sint',1,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(12,'dolorum ut illum dolorem',5,'2023-01-09 03:58:44','2023-01-10 00:58:20','2023-01-10 00:58:20'),(13,'adipisci veniam ad',2,'2023-01-09 03:58:44','2023-01-10 00:49:55','2023-01-10 00:49:55'),(14,'voluptas perspiciatis sunt magni',12,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(15,'fugiat enim eum',10,'2023-01-09 03:58:44','2023-01-09 03:58:44',NULL),(16,'Foo Column',16,'2023-01-10 00:48:38','2023-01-10 00:48:38',NULL),(17,'Another Col',17,'2023-01-10 00:58:32','2023-01-10 00:58:32',NULL);
/*!40000 ALTER TABLE `columns` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_01_09_041909_create_columns_table',1),(6,'2023_01_09_041932_create_cards_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

