-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: ffxivguides
-- ------------------------------------------------------
-- Server version	8.0.32

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

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES (19,'Paladin','Tank','class_job_019.svg'),(20,'Monk','DPS','class_job_020.svg'),(21,'Warrior','Tank','class_job_021.svg'),(22,'Dragoon','DPS','class_job_022.svg'),(23,'Bard','DPS','class_job_023.svg'),(24,'White Mage','Healer','class_job_024.svg'),(25,'Black Mage','DPS','class_job_025.svg'),(27,'Summoner','DPS','class_job_027.svg'),(28,'Scholar','Healer','class_job_028.svg'),(30,'Ninja','DPS','class_job_030.svg'),(31,'Machinist','DPS','class_job_031.svg'),(32,'Dark Knight','Tank','class_job_032.svg'),(33,'Astrologian','Healer','class_job_033.svg'),(34,'Samurai','DPS','class_job_034.svg'),(35,'Red Mage','DPS','class_job_035.svg'),(37,'Gunbreaker','Tank','class_job_037.svg'),(38,'Dancer','DPS','class_job_038.svg'),(39,'Reaper','DPS','class_job_039.svg'),(40,'Sage','Healer','class_job_040.svg');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

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

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guides`
--

DROP TABLE IF EXISTS `guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guides` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `class_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guides`
--

LOCK TABLES `guides` WRITE;
/*!40000 ALTER TABLE `guides` DISABLE KEYS */;
INSERT INTO `guides` VALUES (1,'2024-06-13 09:58:35','2024-06-13 09:58:35','Test clas','<p>Welcome to the Basics Guide for Bard! Whether you’re a fresh level 90, a returning player, or just need a refresher, this guide will get you started and help you feel comfortable.</p><p>This is a basic introduction to level 90 Bard. It will not go into many nuances, optimizations, or topics outside of playing the job in battle.</p><p>If you’re looking for such information, you may find it in one of the dedicated guides below:</p><ul><li><a href=\"https://www.thebalanceffxiv.com/jobs/ranged/bard/leveling-guide/\" rel=\"noopener noreferrer\" target=\"_blank\">Leveling Guide</a></li><li><a href=\"https://www.thebalanceffxiv.com/jobs/ranged/bard/skills-overview/\" rel=\"noopener noreferrer\" target=\"_blank\">Skills Overview</a></li><li><a href=\"https://www.thebalanceffxiv.com/jobs/ranged/bard/best-in-slot\" rel=\"noopener noreferrer\" target=\"_blank\">Gearing</a></li><li><a href=\"https://www.thebalanceffxiv.com/jobs/ranged/bard/faq/\" rel=\"noopener noreferrer\" target=\"_blank\">Frequently Asked Questions</a></li><li><a href=\"https://www.thebalanceffxiv.com/jobs/ranged/bard/openers/\" rel=\"noopener noreferrer\" target=\"_blank\">Opener</a></li><li><a href=\"https://www.thebalanceffxiv.com/jobs/ranged/bard/advanced-guide/\" rel=\"noopener noreferrer\" target=\"_blank\">Advanced Guide</a></li><li><a href=\"https://docs.google.com/document/d/1rtm0uv_y9dEyBCDaQjp5ntXOL8DiJhBYxdNuAjQPuHU/\" rel=\"noopener noreferrer\" target=\"_blank\">Fight-Specific Tips (google doc)</a></li></ul><p>(Note: These pages will be added or updated over time.)</p><h1>Playstyle</h1><p>As a Bard, you won’t have a set rotation. Instead, Bard skill usage is based on what’s available and/or what your timers are at a given moment.</p><p>The core of this is a set of three songs you’ll cycle through. Each song has an effect that has an 80% chance to occur every three seconds.</p><blockquote>Note: Something with a random chance to occur is commonly called a “proc”, and will be mentioned throughout this guide.</blockquote><p>Between songs, procs, and its pair of damage over time (DoT) debuffs, Bard can feel like it has a lot to keep an eye on. But with practice, you’ll get the hang of it.</p><h1>Core Concepts</h1><p><img src=\"https://xivapi.com/i/002000/002618_hr1.png\" alt=\"Burst Shot\"></p><p><img src=\"https://xivapi.com/i/002000/002616_hr1.png\" alt=\"Refulgent Arrow\"></p><h2>Always Be Casting!!</h2><p>As with any job in FFXIV, the biggest part of being a good Bard is to keep your global cooldown (GCD) rolling.</p><p>As a physical job, Bard’s <strong>GCD</strong> skills - skills that share a 2.5 second base cooldown - are called Weaponskills. Everything else is an Ability with its own independent cooldown. Such skills are often called <strong>oGCDs</strong>.</p><p>Normally, you have enough time between GCD skills to use two oGCD skills. If you aren’t already, get used to the pattern of (GCD - up to two oGCDs - GCD - up to two oGCDs - GCD - etc.).</p><p>Also, note that you can press a GCD skill a little in advance, and it will fire as soon as possible. Use this fact to make sure your global cooldown never stops spinning.</p><h2>Positioning</h2><p>As a Ranged DPS, you have full freedom of movement. You can make use of this to give the party space for mechanics, keep yourself out of harm’s way, and so on.</p><p><strong>However</strong> - Try to stay at a medium to close distance by default. Party heals (and buffs!) have a range, and you want those to reach you. If you die because you were too far away and missed a heal, that’s your fault, not the healers\'.</p><h1>Rotation - Single Target</h1><p>Bard is a priority-based kit. Both your GCD (global cooldown) skills and oGCD (off-global cooldown) skills each have their own priorities to follow.</p><p>“Priority-based” means that you don’t have a skill rotation. Instead, you use your best GCD available, followed by your (up to) two best oGCDs available, repeating for every GCD.</p><p>It looks like a lot, but you don’t need to absorb all of this at once; it’s okay to work things in little by little.</p><h2>GCD Priority</h2><p><img src=\"https://xivapi.com/i/002000/002614_hr1.png\" alt=\"Stormbite\"></p><p><img src=\"https://xivapi.com/i/002000/002613_hr1.png\" alt=\"Caustic Bite\"></p><p><img src=\"https://xivapi.com/i/002000/002608_hr1.png\" alt=\"Iron Jaws\"></p><p>&nbsp;</p><p><img src=\"https://xivapi.com/i/002000/002616_hr1.png\" alt=\"Refulgent Arrow\"></p><p><img src=\"https://xivapi.com/i/002000/002619_hr1.png\" alt=\"Apex Arrow\"></p><p><img src=\"https://xivapi.com/i/002000/002621_hr1.png\" alt=\"Blast Arrow\"></p><p>&nbsp;</p><h3>1. Maintain your DoTs.</h3><p>Keeping your DoTs up is your top priority. If they aren’t applied yet, use <strong>Stormbite</strong>, then <strong>Caustic Bite</strong>. Do not use Refulgent in between if it procs, as getting the second DoT up is slightly better.</p><p>If your DoTs are up, but they’re about to fall off (3s or less remaining), use <strong>Iron Jaws</strong> to re-apply them.</p><h3>2. Use proc GCDs.</h3><p>If your Soul Gauge is full, go ahead and <strong>Apex Arrow</strong>. Otherwise use <strong>Refulgent Arrow</strong> or <strong>Blast Arrow</strong> if available.</p><h3>3. Burst Shot.</h3><p>If none of the above are true, fire off <strong>Burst Shots</strong> until you have something better to do with your GCDs.</p><p>&nbsp;</p><h2>oGCD Priority</h2><p><img src=\"https://xivapi.com/i/002000/002607_hr1.png\" alt=\"The Wanderer&amp;rsquo;s Minuet\"></p><p><img src=\"https://xivapi.com/i/002000/002602_hr1.png\" alt=\"Mage&amp;rsquo;s Ballad\"></p><p><img src=\"https://xivapi.com/i/002000/002603_hr1.png\" alt=\"Army&amp;rsquo;s Paeon\"></p><p>&nbsp;</p><p><img src=\"https://xivapi.com/i/000000/000352_hr1.png\" alt=\"Raging Strikes\"></p><p><img src=\"https://xivapi.com/i/002000/002601_hr1.png\" alt=\"Battle Voice\"></p><p><img src=\"https://xivapi.com/i/002000/002622_hr1.png\" alt=\"Radiant Finale\"></p><p>&nbsp;</p><p><img src=\"https://xivapi.com/i/002000/002611_hr1.png\" alt=\"Pitch Perfect\"></p><p><img src=\"https://xivapi.com/i/000000/000361_hr1.png\" alt=\"Bloodletter\"></p><p>&nbsp;</p><p><img src=\"https://xivapi.com/i/002000/002606_hr1.png\" alt=\"Empyreal Arrow\"></p><p><img src=\"https://xivapi.com/i/000000/000353_hr1.png\" alt=\"Barrage\"></p><p><img src=\"https://xivapi.com/i/002000/002610_hr1.png\" alt=\"Sidewinder\"></p><p>&nbsp;</p><h3>1. Always have a song running.</h3><p>If you don’t have a song up, get one up! See <a href=\"https://www.thebalanceffxiv.com/jobs/ranged/bard/basic-guide/#song-order\" rel=\"noopener noreferrer\" target=\"_blank\">Song Order</a> for details.</p><h3>2. Use your buffs.</h3><p>Every two minutes, you’ll have <strong>Raging Strikes</strong>, <strong>Battle Voice</strong> and <strong>Radiant Finale</strong>. You want to be using these in tandem, with Raging Strikes one or two GCDs before the other two.</p><p>This stack of buffs is a huge part of what you bring to the party as a Bard. They’re key to your own damage output, and make for a very large boost to party burst damage.</p><h3>3. Use your song’s proc skill if needed.</h3><p>In <strong>The Wanderer’s Minuet</strong>, this will be a three-stack <strong>Pitch Perfect</strong>. In <strong>Mage’s Ballad</strong>, use <strong>Bloodletter</strong> often enough to make sure you don’t fill up and start wasting procs.</p><h3>4. Keep on top of Empyreal Arrow.</h3><p>Consistently using <strong>Empyreal Arrow</strong> on time is very valuable. Unless there’s a risk of wasting the automatic proc it gives, use it as soon as you can.</p><h3>5. Other oGCDs</h3><p>Use <strong>Barrage</strong> and <strong>Sidewinder</strong> during the two-minute buff stack. For Sidewinder, that means using it on time in the in between minutes as well.</p><p>Be careful not to use Barrage if you have a Refulgent Arrow already. Barrage gives you that proc automatically, and you don’t want to waste that freebie.</p><p>As a charged action <strong>Bloodletter</strong> is generally lower priority, so long as you aren’t at risk of capping the charges.</p><p>&nbsp;</p><h2>Song Cycle</h2><p>Bard has three main songs that form the backbone of your kit: <strong>The Wanderer’s Minuet (WM)</strong>, <strong>Mage’s Ballad (MB)</strong>, and <strong>Army’s Paeon (AP)</strong>.</p><p>Each song gives a small (but always-on) buff to the party, and has an 80% chance to trigger an effect every three seconds. The timing aligns with the song timer - procs can occur at 42 seconds on the timer, 39 seconds and so on.</p><p>So, you should always have one of your three songs running while in combat. Because the last proc chance happens at three seconds left, feel free to move on to the next song as soon as the timer reads three or less.</p><h3>Song Order</h3><p><strong>43s34s43s</strong><img src=\"https://xivapi.com/i/002000/002607_hr1.png\" alt=\"The Wanderer&amp;rsquo;s Minuet\"></p><p><img src=\"https://xivapi.com/i/002000/002602_hr1.png\" alt=\"Mage&amp;rsquo;s Ballad\"></p><p><img src=\"https://xivapi.com/i/002000/002603_hr1.png\" alt=\"Army&amp;rsquo;s Paeon\"></p><p>&nbsp;</p><p><strong>The Wanderer’s Minuet</strong> is our strongest song by far, which is why we use it first.</p><p><strong>Mage’s Ballad</strong> is slightly weaker than a four-stack <strong>Army’s Paeon</strong>. But it has no ‘warm up’ period, and a better party buff to for 60-second skills. So, we use MB second even if we spend less time in it.</p><p>All told, you want to use your songs in a two minute cycle. Roughly 43 seconds of WM, 34 seconds of MB, then 43 seconds of AP.</p><p>In terms of song timer, that means leaving each song at 2-3s left, 11-12s left, and 2-3s left respectively. For AP, in practice you’ll simply leave once WM is off cooldown.</p><h3>The Wanderer’s Minuet</h3><p><img src=\"https://xivapi.com/i/002000/002607_hr1.png\" alt=\"The Wanderer&amp;rsquo;s Minuet\"></p><p><img src=\"https://xivapi.com/i/002000/002611_hr1.png\" alt=\"Pitch Perfect\"></p><p>&nbsp;</p><p>In WM, procs give you up to three stacks that you spend on <strong>Pitch Perfect</strong>. Try to use PP at three stacks, but two stacks is okay if you’re worried about <strong>Empyreal Arrow</strong> + a proc overflowing you.</p><p>You have three seconds between proc chances, so you should never need to delay your GCD to get Pitch Perfect off. It’s fine to simply use it in the next available oGCD slot.</p><h3>Mage’s Ballad</h3><p><img src=\"https://xivapi.com/i/002000/002602_hr1.png\" alt=\"Mage&amp;rsquo;s Ballad\"></p><p><img src=\"https://xivapi.com/i/000000/000361_hr1.png\" alt=\"Bloodletter\"></p><p>&nbsp;</p><p>While in MB, each proc restores half of a charge of <strong>Bloodletter</strong>. BL’s normal 15-second cooldown keeps running too, plus you have <strong>Empyreal Arrow</strong> procs. So the charges can fill up faster than you’d think - but if you keep using BL when able you’ll be fine.</p><h3>Army’s Paeon</h3><p><img src=\"https://xivapi.com/i/002000/002603_hr1.png\" alt=\"Army&amp;rsquo;s Paeon\"></p><p>AP makes your GCD and auto-attacks up to 16% faster as you get procs. This can feel unimpressive, but it does add up.</p><p>Make sure to stay on top of the GCD as its pace accelerates. It’s easy to lose damage by being out of rhythm. Also, try not to double weave at full stacks, as that’s likely to cut into your next GCD.</p><p>&nbsp;</p><h2>Opener</h2><p>This should be your go-to for starting a single target fight:</p><p><img src=\"https://www.thebalanceffxiv.com/img/jobs/brd/brd_opener_p.png\" alt=\"Bard Level 90 6.00 Opener\"></p><p>Use <strong>Bloodletters</strong> and three stack <strong>Pitch Perfects</strong> as able (they aren’t displayed here).</p><p>If <strong>Refulgent Arrow</strong> is available when you would <strong>Barrage</strong>, use <strong>Sidewinder</strong> instead, then Barrage after spending the RA proc.</p><p>It’s worth dumping any Pitch Perfect stacks you have (even just one) before buffs run out. That’s what the PP after <strong>Iron Jaws</strong> is for.</p><p>In text form:</p><ul><li>Stormbite</li><li class=\"ql-indent-1\">The Wanderer’s Minuet</li><li class=\"ql-indent-1\">Raging Strikes</li><li>Caustic Bite</li><li class=\"ql-indent-1\">Empyreal Arrow</li><li class=\"ql-indent-1\">Bloodletter</li><li>Burst Shot / Refulgent Arrow</li><li class=\"ql-indent-1\">Radiant Finale</li><li class=\"ql-indent-1\">Battle Voice</li><li>Burst Shot / Refulgent Arrow</li><li class=\"ql-indent-1\">Barrage / Sidewinder</li><li>Burst Shot / Refulgent Arrow</li><li class=\"ql-indent-1\">Barrage / Sidewinder</li><li>Burst Shot / Refulgent Arrow</li><li class=\"ql-indent-1\">(open)</li><li>Burst Shot / Refulgent Arrow</li><li class=\"ql-indent-1\">(open)</li><li>Burst Shot / Refulgent Arrow</li><li class=\"ql-indent-1\">Empyreal Arrow</li><li>Iron Jaws</li><li class=\"ql-indent-1\">Pitch Perfect</li></ul><h2>Two-minute burst</h2><p>After the opener, you’ll have a large burst window at the start of Wanderer’s Minuet every two minutes. There’s a lot of related bits to cover, so check out the <a href=\"https://www.thebalanceffxiv.com/jobs/ranged/bard/advanced-guide/\" rel=\"noopener noreferrer\" target=\"_blank\">Advanced Guide</a> for details on how best to handle this window.</p><h1>Rotation - AoE / Dungeons</h1><h2>Core GCDs</h2><p><img src=\"https://xivapi.com/i/002000/002620_hr1.png\" alt=\"Ladonsbite\"></p><p><img src=\"https://xivapi.com/i/002000/002617_hr1.png\" alt=\"Shadowbite\"></p><p>&nbsp;</p><p>Bard’s AoE core is much like its single target. <strong>Ladonsbite</strong> and <strong>Shadowbite</strong> play the role of <strong>Burst Shot</strong> and <strong>Refulgent Arrow</strong>, respectively.</p><p>While enemies are gathering, go ahead and drop some Stormbites on them for free damage. Once you can start hitting everything with Ladonsbite / Shadowbite, swap to using those.</p><h2>Songs and Cooldowns</h2><p>Keep your songs running during dungeon packs as normal. It’s fine to have songs rolling between packs too; you’ll still get procs and gauge outside of combat.</p><p>Don’t be afraid to use your two minute buffs on packs either. But unlike with <strong>Refulgent Arrow</strong>, <strong>Barrage</strong> will not proc <strong>Shadowbite</strong> for you. You have to wait for Shadowbite to trigger first.</p><p><img src=\"https://xivapi.com/i/002000/002619_hr1.png\" alt=\"Apex Arrow\"></p><p><img src=\"https://xivapi.com/i/002000/002621_hr1.png\" alt=\"Blast Arrow\"></p><p>&nbsp;</p><p>For <strong>Apex Arrow</strong> and <strong>Blast Arrow</strong>, there’s normally not much of a difference between using Apex at 80 vs. 100 gauge. You can mostly just use it whenever you want.</p><p>But if there’s a mob with a lot more HP than the others, try to use Apex at 80 gauge and target your Blast Arrow at that enemy. The “first enemy” that takes 600p from Blast Arrow is whichever one you’re targeting. You can use this to help even out mob HP.</p><h2>Targeting</h2><p>Bard has a lot of single target damage that can go out during AoE. You have <strong>Empyreal Arrow</strong>, <strong>Sidewinder</strong>, at times <strong>Pitch Perfect</strong>, and <strong>Blast Arrow’s</strong> 600p hit. You want to try to get those on the higher HP enemies.</p><p>Meanwhile, <strong>Shadowbite</strong> and <strong>Rain of Death</strong> want you to be targeting something in the center of the pack. You might need to target a farther enemy to line up Apex Arrow too. In short, be ready to change targets often.</p><h1>Notable Utility</h1><h2>Damage Buffs</h2><p><img src=\"https://xivapi.com/i/000000/000352_hr1.png\" alt=\"Raging Strikes\"></p><p><img src=\"https://xivapi.com/i/002000/002601_hr1.png\" alt=\"Battle Voice\"></p><p><img src=\"https://xivapi.com/i/002000/002622_hr1.png\" alt=\"Radiant Finale\"></p><p>&nbsp;</p><p><strong>Battle Voice</strong> - One of two party-wide damage buffs. You should try to be using this on cooldown. Most jobs have damage spikes on 120-second timers, so you want to land your buff on those.</p><p><strong>Radiant Finale</strong> - Though its cooldown is 110 seconds, in most cases you’ll use RF every 120 seconds alongside Battle Voice. It’s only worth 2% damage in the opener, but after that it will be 6%.</p><p><strong>Raging Strikes</strong> - A simple but meaty damage increase. You want this to be running alongside your party-wide buffs.</p><h2>Defense / Support</h2><p><img src=\"https://xivapi.com/i/002000/002612_hr1.png\" alt=\"Troubadour\"></p><p><strong>Troubadour</strong> - Simply enough, try to use this when the party is going to take a lot of damage. In harder content, your healers should be able to tell you when they want it. If they haven’t, make the best guesses you can.</p><p><img src=\"https://xivapi.com/i/002000/002615_hr1.png\" alt=\"Nature&amp;rsquo;s Minne\"></p><p><strong>Nature’s Minne</strong> - This increases all healing received by party members in range. It’s similar in purpose to Troubadour, but affecting heals changes some of the use cases and timing.</p><p><img src=\"https://xivapi.com/i/002000/002609_hr1.png\" alt=\"The Warden&amp;rsquo;s Paean\"></p><p><strong>The Warden’s Paean</strong> - Cleanses any debuff with a little white bar over the icon. These don’t appear often at endgame, but keep an eye out anyway. In most cases, Warden’s can even prevent a debuff in advance.</p><p><img src=\"https://xivapi.com/i/000000/000821_hr1.png\" alt=\"Second Wind\"></p><p><strong>Second Wind</strong> - A simple self-heal. It’s useful for solo play, and also if you need more healing than the rest of your party for any reason.</p><p><img src=\"https://xivapi.com/i/000000/000822_hr1.png\" alt=\"Arm&amp;rsquo;s Length\"></p><p><strong>Arm’s Length</strong> - Canceling a knockback can be useful sometimes, so have this ready on your hotbar. Note that there are a few knockback mechanics that ignore it.</p><p><img src=\"https://xivapi.com/i/000000/000848_hr1.png\" alt=\"Head Graze\"></p><p><strong>Head Graze</strong> - Cancels enemy casts that have a shaking red bar. Most things you’re expected to cancel will have long cast times. Don’t worry about hitting quick casts like spell attacks from sprites.</p><p><img src=\"https://xivapi.com/i/000000/000366_hr1.png\" alt=\"Repelling Shot\"></p><p><strong>Repelling Shot</strong> - This is never <em>necessary</em>, but sometimes it can make a dodge a little more comfortable.</p><p><img src=\"https://xivapi.com/i/000000/000844_hr1.png\" alt=\"Peloton\"></p><p><strong>Peloton</strong> - Only usable out of combat, but speeds the party up a bit from one pull to the next. Good for getting commendations sometimes.</p><p><img src=\"https://xivapi.com/i/000000/000843_hr1.png\" alt=\"Leg Graze\"></p><p><img src=\"https://xivapi.com/i/000000/000842_hr1.png\" alt=\"Foot Graze\"></p><p>&nbsp;</p><p><strong>Leg Graze</strong>, <strong>Foot Graze</strong> - It has been several years since these have been useful in endgame group content. They’re handy sometimes in solo-friendly content if you need to kite or run away. That’s about it though.</p><h1>Credits</h1><p>Sana Cetonis [Mateus] - Primary author</p><p>Verzell Varion [Adamantoise] - Theorycrafter</p><p>Yumiya Nagatsuki [Behemoth] - Theorycrafter</p><p>Elya Kura [Ragnarok] - Theorycrafter</p><p>Stephia Deleva [Goblin] - Contributor</p>',1,23),(2,'2024-06-13 10:17:22','2024-06-13 10:17:22','test img','<p><img src=\"/images/666ac7119ddfc.png\">             <img src=\"/images/666ac7236671c.png\"></p>',1,37),(3,'2024-06-13 10:18:05','2024-06-13 10:18:05','test colors','<p>scholar</p>',1,28);
/*!40000 ALTER TABLE `guides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_05_23_201137_create_guides_table',1),(5,'2024_06_13_091140_add_icons_to_classes',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('FBbyTjfZzADTbzqrWve7Mi9ob0QJl67dRoFFDZk2',1,'172.19.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYW9CRHZ1Vm5nMEVSZ0x4VDhtR3A0eFRlajRQSTVFYm5ITDlkbHFzZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9sb2NhbGhvc3QiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=',1718274510);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@example.com',NULL,'$2y$12$2LwYoYV03cKTcGcT8tXHIO5eJPIwYebXQNVl4CsvM5M44EQi/Nvwi',NULL,'2024-06-13 09:57:16','2024-06-13 09:57:16');
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

-- Dump completed on 2024-06-13 10:32:14
