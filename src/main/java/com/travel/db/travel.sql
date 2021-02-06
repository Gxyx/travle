/*
 Navicat MySQL Data Transfer

 Source Server         : sanqi
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : travel

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 06/02/2021 16:16:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for app_info
-- ----------------------------
DROP TABLE IF EXISTS `app_info`;
CREATE TABLE `app_info`  (
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of app_info
-- ----------------------------
INSERT INTO `app_info` VALUES ('version', '1.0.0');

-- ----------------------------
-- Table structure for call_back
-- ----------------------------
DROP TABLE IF EXISTS `call_back`;
CREATE TABLE `call_back`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `user_name` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `text` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `date` varchar(100) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of call_back
-- ----------------------------
INSERT INTO `call_back` VALUES (1, '18646163197', 'lin', '软件不错', '2017-04-27 12:51:48');
INSERT INTO `call_back` VALUES (2, '18888888888', '哈哈哈', '功能挺完善的', '4/27/2017, 2:44:38 PM');

-- ----------------------------
-- Table structure for raiders
-- ----------------------------
DROP TABLE IF EXISTS `raiders`;
CREATE TABLE `raiders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `details_description` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `background` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `text1` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `img1` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `text2` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `img2` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `text3` varchar(500) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `img3` varchar(200) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of raiders
-- ----------------------------
INSERT INTO `raiders` VALUES (1, '东京速览', '初行东京必读旅行手册', '拥有3500万人口和长达千年的皇城历史，东京有着令人惊叹的人文风光。这里也是“最昂贵的城市”的榜首，拥有一流的餐馆和酒店业。当你真正来到东京的时候，这个大都市就会让你明白什么叫做真正的“拥挤”。', 'img5.png', '在大阪领略文化古迹\n\n大阪古称浪速，又叫难波，东接历史悠久的京都和奈良，西连神户，作为日本的历史文化名城，这里同时拥有大阪城，四天王寺，天满宫，住吉大社等历史悠久的名胜古迹，是探寻日本历史文化的必游之地。', 'img50.png', '大阪市内最著名的景点，其中央矗立的天守阁则是大阪的标志，这座宏伟的建筑物象征着大阪昔日的辉煌与荣耀，最高的第八层楼上可以瞭望大阪市景，整个城市的美景尽收眼底。', 'img51.png', '坐落在大阪湾口的天保山大摩天轮是世界上最大、最高、也是技术最先进的摩天轮之一。在摩天轮上可以从高空中尽情地俯瞰大海、远山及整个大阪市，夜晚彩灯点缀下的大摩天轮充满了浪漫情调，所以这里已成为著名的情人约会场所。', 'img52.png');
INSERT INTO `raiders` VALUES (2, '北海道速览', '北海道必去之地', '说到北海道，脑中就仿佛出现了那风雪中的小火车，热气腾腾的温泉，《情书》中美丽小城的画面，这个在日本人心目中也是旅行圣地的北部岛屿，她的浪漫情怀、自然风光和饕餮美食都是吸引着你到来的理由。', 'img6.png', '札幌，北海道首府，与日本其他的大都市相比，这里充满了闲适的氛围。这里有公园般的北海道大学，可以去白色恋人公园看巧克力饼干制作。而冬季在大通公园内举办的白色灯饰节和冰雪祭更是如同童话世界。', 'img53.png', '情书》拍摄地小樽，是个步行就可走遍的浪漫小城，城市依山傍海，保留着很多欧式建筑和历史遗迹，而这里的琉璃制品，八音盒和寿司也非常出名。', 'img54.png', '夏日的北海道属于富良野和美瑛，富田农场的大片薰衣草让你仿佛来到了普罗旺斯，而美瑛如波浪起伏的丘陵和彩色拼布花田则更让人震撼，坐小火车或骑车徜徉在田野中吧，小木屋，摩天轮，咖啡馆，那些属于日式田园的美好时光。\n\n夏日的北海道属于富良野和美瑛，富田农场的大片薰衣草让你仿佛来到了普罗旺斯，而美瑛如波浪起伏的丘陵和彩色拼布花田则更让人震撼，坐小火车或骑车徜徉在田野中吧，小木屋，摩天轮，咖啡馆，那些属于日式田园的美好时光。\n\n夏日的北海道属于富良野和美瑛，富田农场的大片薰衣草让你仿佛来到了普罗旺斯，而美瑛如波浪起伏的丘陵和彩色拼布花田则更让人震撼，坐小火车或骑车徜徉在田野中吧，小木屋，摩天轮，咖啡馆，那些属于日式田园的美好时光。', 'img55.png');
INSERT INTO `raiders` VALUES (3, '大阪速览', '初行大阪必读的旅行手册', '大阪不仅是一个历史悠久的百川之城，还是日本的美食厨房，在大阪旅行，穿梭在现代与传统交融的景致之间，漫游在各种各样的美食之中，满满的幸福感扑面而来。更重要的是，每一条行走过的街道，每一个迎面而来的微笑，都勾勒出大阪生活之美，这样有人情味的城市让人感到无比的温暖和留恋。', 'img7.png', '大阪古称浪速，又叫难波，东接历史悠久的京都和奈良，西连神户，作为日本的历史文化名城，这里同时拥有大阪城，四天王寺，天满宫，住吉大社等历史悠久的名胜古迹，是探寻日本历史文化的必游之地。', 'img56.png', '住大吉寺是全国住吉神社的总社，也大阪最大的神社，距今已有1800多年的历史了。好像神社的起源是当地渔民祈求出海平安，因此在各殿的布局是成舰队的形状，而且每个屋顶上都有一组交叉的像船桨一样的设计。临走前遇到了一群正在为某祭日彩排的巫女们，看到我在给她们拍照，有些略显羞涩。', 'img57.png', '来到大阪，绝不要错过的两个人气景点是——好莱坞主题公园的日本环球影城和世界最大的室内水族馆海游馆。和你的恋人或朋友，一同乘坐具有梦幻色彩的过山车，再携手走过美丽的水族馆，留下最灿烂的回忆吧！', 'img58.png');
INSERT INTO `raiders` VALUES (4, '追樱前线', '关东关西赏樱地推荐', '春季已至，追樱正当时！每年3-4月正是日本关东关西地区樱花开放的时节，那梦幻如云雾又短暂似烟火的美景总是吸引大批追樱人前往。关东关西哪里是赏樱最佳地？蝉君来告诉你！', 'img8.png', '东京市内比较著名的赏樱地有上野公园、千岛之渊、新宿御苑、目黑川、六义园等地。而你也可以选择去周边的箱根或富士山，泡着温泉看樱花和富士山。', 'img59.png', '中目黑，一条贯穿东京市的河流，两边都种植着樱花树，樱花盛开的季节里，这里将会有无比令人赞叹的景致。沿街道的路边都开成了店面，许多设计师品牌或者饮食小店都在这里聚集，也是日剧《最完美的离婚》的拍摄地。', 'img60.png', '樱花和富士山是日本的两大标志，早樱盛开的时候，两者合而为一的景色格外迷人。天气好的时候，你可以在东京看到富士山，而东京周边的河口湖、箱根等地可以更清晰的观赏富士山美景。', 'img61.png');

-- ----------------------------
-- Table structure for travel_notes
-- ----------------------------
DROP TABLE IF EXISTS `travel_notes`;
CREATE TABLE `travel_notes`  (
  `title` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `background` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `text1` varchar(2550) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `img1` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `text2` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of travel_notes
-- ----------------------------
INSERT INTO `travel_notes` VALUES ('单车自驾：魔幻张家界', '2016年4月5日/4天', 'img1.png', '张家界的三千奇峰，景色绝佳，但这里的气候湿润，雨量特别充沛，尤其是春末夏初频繁的降雨天气，让很多游客担心游玩会收到影响。当然，要是赶上连续的降雨或者阴天，张家界的美景的确会减色不少，但就算是天气晴朗，蓝天白云，也绝不是张家界最美的景色。因为，雨后，尤其是大雨过后，如果天气放晴，有云海或云雾出现，静静缠绕在俊俏挺拔的奇峰之间，漫过天际，张家的美景才会让你恍如进入了仙境一般，如痴如醉。因此，如果在你的出行计划中，如果张家界的天气预报有雨，那你应该感到高兴，虽然这并不能保证你一定会看到云海或云雾，但起码可能性会增加不少。当然像我这样上午看到云海，下午蓝天白云的极品天气，肯定是可遇而不可求的，只有我才能有这样超强的人品。', 'img12.png', '当然，我的这次行程完全是在去年已经游玩过张家界的基础上，结合这次的天气做的很随性的游玩，所以并不适合初次来张家界的朋友。要是第一次来张家界游玩，还是选择常规路线比较好，按照金鞭溪、水绕四门、百龙天梯、袁家界、杨家界、天子山顺序游玩，有时间可以再加个老屋场（神兵天降、空中田园）或袁家寨子，因为常规的景点往往是最精华的景点，如果还没有看过，就先不要羡慕我去的这些美景，张家界远远不是你想象的一两天就可以玩完。据说有个摄影师，在这里已经住了十年了，还再不断探索没发现的景点呢。', 1);
INSERT INTO `travel_notes` VALUES ('斯里兰卡：跨越山和大海', '2016年12月24日/10天', 'img2.png', '斯里兰卡 这个印度洋上的小岛国,\n有太多的赞誉 却也引来了更多的非议, \n有人说 上帝除了雪 给了斯里兰卡一切, \n也有人说 虽什么都有 却也都平平无奇, \n有人说 这是一个世界上最多微笑的地方, \n也有人说 当地专宰旅游客 都是套路.\n\n兰卡不是一个乍眼就能吸引人的地方 ,\n它的美 从不在于夺人眼球的一两个景点, \n没有那么多波澜壮阔的美景 ,\n也没有华灯璀璨霓虹闪烁的繁华, \n就像著名的锡兰红茶 要静下心来慢慢品 ,\n才能体会其中的独特和美好.', 'img22.png', '大象孤儿院出来便直奔Kandy ,\n作为兰卡历史最悠久的旅游城市之一, \n是文化之都 佛教朝圣地, \n更是一个清静的小城.\n\n黄昏时分漫步在康提湖旁, \n看落日余晖 看百鸟归巢, \n纵使不是佛教信徒, \n也能让越趋浮躁的心 慢慢静下来.\n\n仅一条马路之隔 便是市中心, \n各式的餐馆 小店 甚至有一个百货商场, \n碰上圣诞派对 人声鼎沸热闹非凡.', 2);
INSERT INTO `travel_notes` VALUES ('新西兰：快乐咔擦声', '2016年11月30日/5天', 'img3.png', '峡湾国家公园（Fiordland National Park）位于新西兰南岛西南端，濒临塔斯曼海。1904年被列为保护区，1952年辟为公园，1986年被列入世界文化遗产名录，1990年峡湾国家公园被认定为联合国世界遗产保护地区。峡湾国家公园面积12120㎞2，是新西兰最大的公园，也是世界上最大的国家公园之一。', 'img32.png', '被人们称为“魔戒小镇”，《指环王》三部曲在这里的外景取景最多。你还可以看到恩斯洛山西北坡。格林诺奇还被称为是最具有“中土世界”气质的地方，来此能体会到100%纯净的新西兰。还可以体验各种户外活动，如快艇、骑马、独木舟等。骑马穿梭于原始深林，仿佛行走在电影里的画面。', 3);
INSERT INTO `travel_notes` VALUES ('土耳其：风走了八千里', '2016年8月8日/15天', 'img4.png', '沙与沙不同，海与海远隔。人与人之间的距离也总是这般的奇妙，一起经历的，感受会不同；一同回忆的，故事也不同。 \n八月的土耳其，骄阳如火，时局叵测。从恐袭到政变，从外交部发文要求中国公民暂勿前往土耳其到土国当局宣布全国进入三个月紧急状态清理门户，我们那颗说走就走的心还未启程就已经开始了颠沛流离历经万难的折磨。感叹我平生未曾有过多么伟岸的心愿，而今唯一所望却是世界和平，土耳其安好。', 'img42.png', '之前看到许多攻略上说很难找到游船码头不知道哪家是正规的，我们却误打误撞乘坐了本地人往返欧亚的轮渡。其实很简单，从老城沿着铁轨走出来到海边，经过鸽子广场，然后过马路左拐大概走七八分钟的样子会看到一个码头，门口有自动售票机，这里便是本地人往来欧亚的轮渡码头了，8个里拉可以坐个来回，单程20分钟，海上风景超级赞。', 4);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('18646163197', '123456', 'lin', 1, '男');
INSERT INTO `user` VALUES ('', '123456', 'ly', 2, '女');
INSERT INTO `user` VALUES ('18646163198', '123456', '啊啊啊', 3, '男');
INSERT INTO `user` VALUES ('18646163199', '123456', '啊啊啊', 4, '男');
INSERT INTO `user` VALUES ('18888888888', '123456', '哈哈哈', 5, '男');

SET FOREIGN_KEY_CHECKS = 1;