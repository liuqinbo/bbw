-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019 年 08 月 09 日 15:11
-- 服务器版本: 5.5.20
-- PHP 版本: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `bbw`
--
CREATE DATABASE `bbw` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bbw`;

-- --------------------------------------------------------

--
-- 表的结构 `detail`
--

CREATE TABLE IF NOT EXISTS `detail` (
  `e` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `home`
--

CREATE TABLE IF NOT EXISTS `home` (
  `src` varchar(300) NOT NULL,
  `content` varchar(400) NOT NULL,
  `price1` varchar(20) NOT NULL,
  `price2` varchar(20) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `sort` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `home`
--

INSERT INTO `home` (`src`, `content`, `price1`, `price2`, `discount`, `sort`, `type`, `id`) VALUES
(' http://b1.hucdn.com/upload/item/1908/02/40208216320000_800x800.jpg', ' 【买就送煎锅+刀叉】骏德澳洲家庭牛排套餐10片 新鲜进口牛肉', '69.00', ' ¥299', ' 2.4折', 'left-content', '', 0),
(' http://b1.hucdn.com/upload/item/1907/04/32375292230000_800x800.jpg', ' 130片十月结晶一次性防溢乳垫', '19.80', ' ¥48', ' 4.2折', 'left-content', '', 1),
(' http://b1.hucdn.com/upload/item/1907/02/42762158650000_800x800.jpg', ' 【买1箱送1箱】冠达菠萝夹心乳酸菌口袋面包组合', '15.80', ' ¥39', ' 4.1折', 'left-content', '', 2),
(' http://b1.hucdn.com/upload/item/1907/22/61407909040000_800x800.jpg', ' 迪士尼新品小学生书包公主升级款', '69.00', ' ¥198', ' 3.5折', 'left-content', '', 3),
(' http://b1.hucdn.com/upload/item/1901/14/35760048128932_800x800.jpg', ' 儿童秋季运动跑步鞋', '9.90', ' ¥128', ' 0.8折', 'left-content', '', 4),
(' http://b1.hucdn.com/upload/item/1907/31/52217193220000_800x800.jpg', ' 拍1发6到手42片 御泥坊牛油果水润亲肤黑面膜贴7片补水保湿洁净清透', '89.00', ' ¥99', ' 9折', 'left-content', '', 5),
(' http://b1.hucdn.com/upload/item/1702/23/12991437749682_800x800.jpg', ' abckids男童透气网面鞋子', '39.00', ' ¥239', ' 1.7折', 'left-content', '', 6),
(' http://b1.hucdn.com/upload/item/1812/14/78761372188228_800x800.jpg', ' 可爱多婴儿湿巾80抽*10包带盖装', '39.00', ' ¥116', ' 3.4折', 'left-content', '', 7),
(' http://b1.hucdn.com/upload/item/1803/05/16770652612426_800x800.jpg', ' 子初婴儿一次性隔尿垫2包100片', '46.90', ' ¥199', ' 2.4折', 'left-content', '', 8),
(' http://b1.hucdn.com/upload/item/1712/22/27181169217263_800x800.jpg', ' 清风卷纸3层75克/卷纸3提共30卷', '29.90', ' ¥100', ' 3折', 'left-content', '', 9),
(' http://b1.hucdn.com/upload/item/1805/29/61078771803955_800x800.jpg', ' 萃取芦荟精华芦荟面霜祛痘祛痘印', '12.90', ' ¥98', ' 1.4折', 'left-content', '', 10),
(' http://b1.hucdn.com/upload/item/1907/12/10191672380000_800x800.jpg', ' 巴拉巴拉精选秋冬福袋', '49.90', ' ¥359', ' 1.4折', 'left-content', '', 11),
(' http://b1.hucdn.com/upload/item/1906/08/77689183870000_800x800.jpg', ' 子初婴儿手口湿巾80抽 5包 8包', '39.90', ' ¥89', ' 4.5折', 'left-content', '', 12),
(' http://b1.hucdn.com/upload/item/1712/18/89842013974244_800x800.jpg', ' 农谷鲜 稻花香米10斤装', '29.90', ' ¥49.9', ' 6折', 'left-content', '', 13),
(' http://b1.hucdn.com/upload/item/1906/21/86572538250000_800x800.jpg', ' 迪士尼新品小学生书包 护脊减负', '75.00', ' ¥185', ' 4.1折', 'left-content', '', 14),
(' http://b1.hucdn.com/upload/item/1904/03/75138320394810_800x800.jpg', ' 贝亲宽口径自然实感硅胶奶嘴', '43.80', ' ¥72', ' 6.1折', 'left-content', '', 15),
(' http://b1.hucdn.com/upload/item/1906/04/37802781080000_800x800.jpg', ' 巴拉巴拉精选夏装福袋', '19.90', ' ¥299', ' 0.7折', 'left-content', '', 16),
(' http://b1.hucdn.com/upload/item/1904/02/88923467250237_800x800.jpg', ' 童年时光宝宝DHA胶囊90粒*4瓶', '348.00', ' ¥628', ' 5.6折', 'left-content', '', 17),
(' http://b1.hucdn.com/upload/item/1904/18/69053278780000_800x800.jpg', ' 可爱多婴儿手口湿巾80片*10包', '39.00', ' ¥119.8', ' 3.3折', 'left-content', '', 18),
(' http://b1.hucdn.com/upload/item/1901/08/11665020440009_800x800.jpg', ' 碧素堂红参蜗牛护肤5件套礼盒装', '19.90', ' ¥128', ' 1.6折', 'left-content', '', 19),
(' http://b1.hucdn.com/upload/item/1801/15/76245171485528_800x800.jpg', ' 赠方巾 纯棉六层纱婴儿浴巾盖毯', '34.90', ' ¥259', ' 1.4折', 'left-content', '', 20),
(' http://b1.hucdn.com/upload/item/1905/24/84689069710000_800x800.jpg', ' 【5.98/斤】西域美农特级免洗新疆若羌灰枣5斤', '29.90', ' ¥39.9', ' 7.5折', 'left-content', '', 21),
(' http://b1.hucdn.com/upload/item/1905/10/59044233460000_800x800.jpg', ' 女童打底衫宝宝娃娃领纯棉上衣', '29.90', ' ¥99', ' 3.1折', 'left-content', '', 22),
(' http://b1.hucdn.com/upload/item/1906/24/61351694390000_800x800.jpg', ' 回力儿童网鞋网面休闲鞋', '39.90', ' ¥108', ' 3.7折', 'left-content', '', 23),
(' http://b1.hucdn.com/upload/item/1710/17/07995588393473_800x800.jpg', ' 禧诺纯棉毛巾 组合四条装面巾', '19.90', ' ¥99', ' 2.1折', 'left-content', '', 24),
(' http://b1.hucdn.com/upload/item/1907/08/82956997490000_800x800.jpg', ' 夏季热卖儿童宝宝套装夏季童装', '14.90', ' ¥68', ' 2.2折', 'left-content', '', 25),
(' http://b1.hucdn.com/upload/item/1906/03/67993085840000_800x800.jpg', ' 送湿巾10抽子初婴儿手口湿巾80抽', '49.90', ' ¥169', ' 3折', 'left-content', '', 26),
(' http://b1.hucdn.com/upload/item/1904/17/72144401040000_800x800.jpg', ' 青蛙王子婴儿手口湿巾80抽*5包', '21.80', ' ¥90', ' 2.5折', 'left-content', '', 27),
(' http://b1.hucdn.com/upload/item/1902/17/73808724651727_800x800.jpg', ' 戴维贝拉春秋季男女童打底裤', '29.00', ' ¥68', ' 4.3折', 'left-content', '', 28),
(' http://b1.hucdn.com/upload/item/1904/03/62991224635525_800x800.jpg', ' 爱得利婴儿干湿两用棉柔巾', '23.90', ' ¥59', ' 4.1折', 'left-content', '', 29),
(' http://b1.hucdn.com/upload/item/1809/28/24856254651419_800x800.jpg', ' 青蛙王子儿童宝宝面霜润肤霜40g', '29.80', ' ¥108', ' 2.8折', 'left-content', '', 30),
(' http://b1.hucdn.com/upload/item/1906/13/06575354330000_800x800.jpg', ' 爱得利宽口带保护套玻璃奶瓶套装', '43.80', ' ¥119', ' 3.7折', 'left-content', '', 31),
(' http://b1.hucdn.com/upload/item/1904/02/77433518650364_800x800.jpg', ' 杯具熊萌宠儿童Tritan材质吸管杯', '68.00', ' ¥128', ' 5.4折', 'left-content', '', 32),
(' http://b1.hucdn.com/upload/item/1904/02/98717494384883_800x800.jpg', ' 百雀羚水嫩倍现至尚臻美护肤套装', '149.00', ' ¥353', ' 4.3折', 'left-content', '', 33),
(' http://b1.hucdn.com/upload/item/1812/25/23441130285171_800x800.jpg', ' 植护婴幼儿手口湿巾80抽*5包装', '17.90', ' ¥60', ' 3折', 'left-content', '', 34),
(' http://b1.hucdn.com/upload/item/1905/16/85668400580000_800x800.jpg', ' 爱慕玛蒂诺英国儿童夏季凉鞋', '79.00', ' ¥429', ' 1.9折', 'left-content', '', 35),
(' http://b1.hucdn.com/upload/item/1904/02/95928040225171_800x800.jpg', ' 植护四层抽纸*10包/20包/30包装', '12.90', ' ¥60', ' 2.2折', 'left-content', '', 36),
(' http://b1.hucdn.com/upload/item/1906/02/58225961970000_800x800.jpg', ' 儿童轻便保暖羽绒棉裤', '19.90', ' ¥128', ' 1.6折', 'left-content', '', 37),
(' http://b1.hucdn.com/upload/item/1904/18/69494112310000_800x800.jpg', ' 可爱多无刺激婴儿湿巾80抽*5包', '19.90', ' ¥70', ' 2.9折', 'left-content', '', 38),
(' http://b1.hucdn.com/upload/item/1907/17/28987344810000_800x800.jpg', ' 【买7斤送2斤】甘肃板栗南瓜香甜软糯南瓜带箱9斤装', '17.90', ' ¥39.9', ' 4.5折', 'left-content', '', 39),
(' http://b1.hucdn.com/upload/item/1907/10/23815465460000_1000x1000.jpg', ' 植护原木生浆亲肤4层抽纸*40包', '29.90', ' ¥150', ' 2折', 'left-content', '', 40),
(' http://b1.hucdn.com/upload/item/1708/27/03878758507263_800x800.jpg', ' ABC卫生巾超极薄迷你4包共32片', '16.90', ' ¥60', ' 2.9折', 'left-content', '', 41),
(' http://b1.hucdn.com/upload/item/1904/02/97094880885525_800x800.jpg', ' 爱得利宽口液体硅胶奶嘴', '14.80', ' ¥19', ' 7.8折', 'left-content', '', 42),
(' http://b1.hucdn.com/upload/item/1905/13/48067824790000_800x800.jpg', ' 夏季可水洗空调被超柔亲肤夏凉被', '19.90', ' ¥299', ' 0.7折', 'left-content', '', 43),
(' http://b1.hucdn.com/upload/item/1807/12/75329316536943_800x800.jpg', ' 宝宝自我保护意识培养8册', '19.90', ' ¥126.5', ' 1.6折', 'left-content', '', 44),
(' http://b1.hucdn.com/upload/item/1811/14/84157889982954_800x800.jpg', ' 6.9元25件女士发圈头绳皮筋盒装', '6.90', ' ¥59.9', ' 1.2折', 'left-content', '', 45),
(' http://b1.hucdn.com/upload/item/1811/16/40315369445831_800x800.jpg', ' 抖音小猪爬楼梯玩具', '17.90', ' ¥29.9', ' 6折', 'left-content', '', 46),
(' http://b1.hucdn.com/upload/item/1907/23/45015571140000_800x800.jpg', ' JM珍珠蚕丝水光蜂蜜面膜10', '49.90', ' ¥88', ' 5.7折', 'left-content', '', 47),
(' http://b1.hucdn.com/upload/item/1902/28/22530088470160_800x800.jpg', ' 巴布豆超柔亲肤纸尿裤 S68/M60/L52/XL44片', '59.00', ' ¥105', ' 5.7折', 'left-content', '', 48),
(' http://b1.hucdn.com/upload/item/1907/05/93094344510000_800x800.jpg', ' 子初婴儿湿巾纸手口专用80抽8包', '27.90', ' ¥99.9', ' 2.8折', 'left-content', '', 49),
(' http://b1.hucdn.com/upload/item/1712/27/35040972596943_800x800.jpg', ' 文学经典图书', '19.90', ' ¥100.8', ' 2折', 'left-content', '', 50),
(' http://b1.hucdn.com/upload/item/1803/29/95552496494125_800x800.jpg', ' 子初 婴儿洗衣皂消毒尿布皂10块', '22.80', ' ¥138', ' 1.7折', 'left-content', '', 51),
(' http://b1.hucdn.com/upload/item/1901/03/79000306936206_800x800.jpg', ' 儿童大颗粒拼装滑道拼插益智积木', '19.90', ' ¥69', ' 2.9折', 'left-content', '', 52),
(' http://b1.hucdn.com/upload/item/1904/03/76272719899707_800x800.jpg', ' 儿童医生过家家玩具', '11.90', ' ¥40', ' 3折', 'left-content', '', 53),
(' http://b1.hucdn.com/upload/item/1905/20/63631546400000_800x800.jpg', ' 女童套装古风汉服两件套裙装', '19.90', ' ¥199', ' 1折', 'left-content', '', 54),
(' http://b1.hucdn.com/upload/item/1903/06/67483088646341_800x800.jpg', ' 浪莎正品坠感高腰冰丝雪纺阔腿裤', '29.90', ' ¥168', ' 1.8折', 'left-content', '', 55),
(' http://b1.hucdn.com/upload/item/1907/06/42928701590000_800x800.jpg', ' 时尚百搭中跟尖头鞋女高跟鞋', '59.00', ' ¥599', ' 1折', 'left-content', '', 56),
(' http://b1.hucdn.com/upload/item/1709/07/53613778928501_800x800.jpg', ' 资生堂洗颜专科洁面乳洗面奶120g', '28.00', ' ¥99', ' 2.9折', 'left-content', '', 57),
(' http://b1.hucdn.com/upload/item/1904/10/06179029390000_800x800.jpg', ' 买1发5 滋润保湿嫩肤马油护手霜', '25.00', ' ¥109', ' 2.3折', 'left-content', '', 58),
(' http://b1.hucdn.com/upload/item/1805/25/37929418575171_800x800.jpg', ' 植护本色加厚四层抽纸*10包/30包', '12.90', ' ¥60', ' 2.2折', 'left-content', '', 59),
(' http://b1.hucdn.com/upload/item/1806/27/67815966335171_800x800.jpg', ' 植护婴儿护理湿巾80抽*5包/10包', '19.90', ' ¥60', ' 3.4折', 'left-content', '', 60),
(' http://b1.hucdn.com/upload/item/1907/01/45707233230000_800x800.jpg', ' 英雄队长书包小学生男童', '39.00', ' ¥145', ' 2.7折', 'left-content', '', 61),
(' http://b1.hucdn.com/upload/item/1906/27/07429330080000_800x800.jpg', ' 憨豆熊 烤馍片1000g', '9.90', ' ¥39.9', ' 2.5折', 'left-content', '', 62),
(' http://b1.hucdn.com/upload/item/1903/02/09128192162916_800x800.jpg', ' 洁柔古龙香手帕纸', '9.90', ' ¥39', ' 2.6折', 'left-content', '', 63),
(' http://b1.hucdn.com/upload/item/1904/05/52972266535940_800x800.jpg', ' 迪士尼经典小学生书包 护脊减负', '79.00', ' ¥188', ' 4.3折', 'left-content', '', 64),
(' http://b1.hucdn.com/upload/item/1907/14/73149548440000_800x800.jpg', ' 4条装 A类纯棉男童女童平角内裤', '24.90', ' ¥98', ' 2.6折', 'left-content', '', 65),
(' http://b1.hucdn.com/upload/item/1904/17/83377134520000_800x800.jpg', ' OBB负离子卫生巾组合装超值74片', '19.90', ' ¥119', ' 1.7折', 'left-content', '', 66),
(' http://b1.hucdn.com/upload/item/1907/25/43226098790000_800x800.jpg!100x100.jpg', ' 贝壳元素宝宝卡通字母T恤 春装新款童装男童装长袖打底衫tx6429', '36.00', ' ¥105', '', 'right-content1', '童装', 67),
(' http://b1.hucdn.com/upload/item/1907/12/10191672380000_800x800.jpg!100x100.jpg', ' 7月15日开售 巴拉巴拉49.9元超值福袋一件福袋秋冬货品非质量问题不退', '49.90', ' ¥359', '', 'right-content1', '童装', 68),
(' http://b1.hucdn.com/upload/item/1903/22/25157100366740_800x800.jpg!100x100.jpg', ' 男童拼色短袖新款夏装宽松上衣', '39.00', ' ¥169', '', 'right-content1', '童装', 69),
(' http://b1.hucdn.com/upload/item/1702/27/63505892007314_800x800.jpg!100x100.jpg', ' 贝壳元素宝宝长袖T恤秋装男童童装儿童圆领打底衫上衣wt7457', '45.00', ' ¥125', '', 'right-content1', '童装', 70),
(' http://b1.hucdn.com/upload/item/1707/20/32034239906350_800x800.jpg!100x100.jpg', ' 贝壳元素宝宝拼色卫衣秋装男童童装儿童休闲长袖上衣wt6381', '59.00', ' ¥168', '', 'right-content1', '童装', 71),
(' http://b1.hucdn.com/upload/item/1809/10/72469392976350_800x800.jpg!100x100.jpg', ' 贝壳元素宝宝刺绣牛仔裤 冬装新款男童童装儿童加绒加厚长裤kz-9532', '78.00', ' ¥225', '', 'right-content1', '童装', 72),
(' http://b1.hucdn.com/upload/item/1906/21/06250079140000_800x800.jpg!100x100.jpg', ' 木木屋儿童凉鞋女童2019新款时尚男童凉鞋中大童孩软底沙滩鞋子潮', '39.90', ' ¥298', '', 'right-content1', '童鞋', 73),
(' http://b1.hucdn.com/upload/item/1906/26/42334193770000_800x800.jpg!100x100.jpg', ' 木木屋儿童凉鞋女童2019新款时尚男童凉鞋时尚拼款2381/2382/2383', '39.90', ' ¥398', '', 'right-content1', '童鞋', 74),
(' http://b1.hucdn.com/upload/item/1805/18/31205910135476_800x800.jpg!100x100.jpg', ' 巴拉巴拉童鞋儿童凉鞋夏季男女童沙滩鞋时尚防踢平底鞋子', '169.00', ' ¥169', '', 'right-content1', '童鞋', 75),
(' http://b1.hucdn.com/upload/item/1907/07/63436379280000_800x800.jpg!100x100.jpg', ' 木木屋儿童凉鞋2019夏季新款男童凉鞋包头护脚机能凉鞋小童沙滩鞋2393', '39.90', ' ¥398', '', 'right-content1', '童鞋', 76),
(' http://b1.hucdn.com/upload/item/1906/06/23107672717851_800x800.jpg!100x100.jpg', ' 木木屋儿童鞋男童沙滩鞋2019夏季新款女童凉鞋防滑鞋学生魔术贴鞋', '39.90', ' ¥398', '', 'right-content1', '童鞋', 77),
(' http://b1.hucdn.com/upload/item/1906/21/05523739370000_800x800.jpg!100x100.jpg', ' 木木屋2019夏季新款毛毛虫中大童透气包头凉鞋软底鞋小学生童鞋', '39.90', ' ¥398', '', 'right-content1', '童鞋', 78),
(' http://b1.hucdn.com/upload/item/1903/27/69033397155769_800x800.jpg!100x100.jpg', ' 好孩子宝宝摇摇马儿童摇马两用摇摇车', '209.00', ' ¥699', '', 'right-content1', '玩具', 79),
(' http://b1.hucdn.com/upload/item/1712/26/51003998866943_800x800.jpg!100x100.jpg', ' 全套20册【礼盒装】贝贝专供大卡圈圈书可撕可咬 幼儿撕不烂盒装玩具卡0-3岁宝宝早教启蒙玩具识字卡加厚防水学习励志卡', '32.90', ' ¥200', '', 'right-content1', '玩具', 80),
(' http://b1.hucdn.com/upload/item/1903/22/48227656135769_800x800.jpg!100x100.jpg', ' 好孩子儿童拼图益智1-3岁数字积木玩具', '159.00', ' ¥199', '', 'right-content1', '玩具', 81),
(' http://b1.hucdn.com/upload/item/1904/03/75138320394810_800x800.jpg!100x100.jpg', ' 贝亲自然宽口径防胀气新生婴儿硅胶奶嘴S/M/L/LL号', '43.80', ' ¥72', '', 'right-content1', '用品', 82),
(' http://b1.hucdn.com/upload/item/1710/16/54180698504174_800x800.jpg!100x100.jpg', ' 艾维诺婴幼儿无泪洗发沐浴二合一', '49.00', ' ¥150', '', 'right-content1', '用品', 83),
(' http://b1.hucdn.com/upload/item/1806/06/78070011461060_800x800.jpg!100x100.jpg', ' 强生婴儿牛奶沐浴露2L宝宝儿童沐浴露', '49.90', ' ¥69.9', '', 'right-content1', '用品', 84),
(' http://b1.hucdn.com/upload/item/1907/29/83658981300000_800x800.jpg!100x100.jpg', ' 小土豆宝宝ppsu防胀气防摔奶瓶带手柄重力球宽口径硅胶奶嘴奶瓶', '39.00', ' ¥120', '', 'right-content1', '用品', 85),
(' http://b1.hucdn.com/upload/item/1905/13/39629088690000_800x800.jpg!100x100.jpg', ' 世纪宝贝儿童浴盆澡盆可坐躺加厚防滑超大号', '90.00', ' ¥214', '', 'right-content1', '用品', 86),
(' http://b1.hucdn.com/upload/item/1904/17/79512083380000_800x800.jpg!100x100.jpg', ' 小土豆婴儿奶瓶PPSU耐摔宽口径奶瓶', '59.00', ' ¥89', '', 'right-content1', '用品', 87),
('http://b1.hucdn.com/upload/item/1907/04/32375292230000_800x800.jpg!100x100.jpg', ' 销量999', '19.9', ' ', '', 'small_list', '', 88),
('http://b1.hucdn.com/upload/item/1712/22/27181169217263_800x800.jpg!100x100.jpg ', ' 销量999', '29.9', ' ', '', 'small_list', '', 89),
('http://b1.hucdn.com/upload/item/1702/23/12991437749682_800x800.jpg!100x100.jpg', ' 销量800', '39', ' ', '', 'small_list', '', 90),
('http://b1.hucdn.com/upload/item/1805/29/61078771803955_800x800.jpg!100x100.jpg', ' 销量999', '12.9', ' ', '', 'small_list', '', 91),
('http://b1.hucdn.com/upload/category/1607/08/47777251304120_150x150.png!60x60.jpg', '纸尿裤', '', '', '', 'list', '热销分类', 92),
('http://b1.hucdn.com/upload/category/1512/08/65064681196826_120x120.jpg!60x60.jpg', '奶瓶', '', '', '', 'list', '热销分类', 93),
('http://b1.hucdn.com/upload/category/1606/03/52214243214120_150x150.jpg!60x60.jpg', '益智早教', '', '', '', 'list', '热销分类', 94),
('http://b1.hucdn.com/upload/category/1607/08/47799721994120_150x150.jpg!60x60.jpg', '奶粉', '', '', '', 'list', '热销分类', 95),
('http://b1.hucdn.com/upload/category/1610/27/61534086624120_150x150.png!60x60.jpg', '套装', '', '', '', 'list', '热销分类', 96),
('http://b1.hucdn.com/upload/category/1610/27/61539581244120_150x150.png!60x60.jpg', '哈衣爬服', '', '', '', 'list', '热销分类', 97),
('http://b1.hucdn.com/upload/category/1610/27/61544811414120_150x150.jpg!60x60.jpg', '爆款童鞋', '', '', '', 'list', '热销分类', 98),
('http://b1.hucdn.com/upload/category/1609/30/04541470574120_150x150.png!60x60.jpg', '鞋包配饰', '', '', '', 'list', '热销分类', 99),
('http://b1.hucdn.com/upload/category/1610/13/55301456264120_150x150.png!60x60.jpg', '春装上新', '', '', '', 'list', '热销分类', 100),
('http://b1.hucdn.com/upload/category/1601/14/35669652256826_120x120.jpg!60x60.jpg', '床品', '', '', '', 'list', '热销分类', 101),
('http://b1.hucdn.com/upload/category/1512/06/85158569796826_120x120.jpg!60x60.jpg', '护肤套装', '', '', '', 'list', '热销分类', 102),
('http://b1.hucdn.com/upload/category/1610/14/36469660224120_150x150.png!60x60.jpg', '套装', '', '', '', 'list', '儿童服饰', 103),
('http://b1.hucdn.com/upload/category/1609/08/07504068084120_150x150.png!60x60.jpg', '外套', '', '', '', 'list', '儿童服饰', 104),
('http://b1.hucdn.com/upload/category/1609/08/07437350114120_150x150.png!60x60.jpg', '针织衫', '', '', '', 'list', '儿童服饰', 105),
('http://b1.hucdn.com/upload/category/1608/19/85409717694120_150x150.png!60x60.jpg', '卫衣', '', '', '', 'list', '儿童服饰', 106),
('http://b1.hucdn.com/upload/category/1608/19/95755584924120_150x150.png!60x60.jpg', 'T恤', '', '', '', 'list', '儿童服饰', 107),
('http://b1.hucdn.com/upload/category/1609/08/07518800384120_150x150.png!60x60.jpg', '连衣裙', '', '', '', 'list', '儿童服饰', 108),
('http://b1.hucdn.com/upload/category/1608/19/86623417614120_150x150.png!60x60.jpg', '衬衫', '', '', '', 'list', '儿童服饰', 109),
('http://b1.hucdn.com/upload/category/1610/14/37049072874120_150x150.png!60x60.jpg', '羽绒服', '', '', '', 'list', '儿童服饰', 110),
('http://b1.hucdn.com/upload/category/1608/19/86726867394120_150x150.png!60x60.jpg', '内衣套装', '', '', '', 'list', '儿童服饰', 111),
('http://b1.hucdn.com/upload/category/1608/19/86675848494120_150x150.png!60x60.jpg', '休闲裤', '', '', '', 'list', '儿童服饰', 112),
('http://b1.hucdn.com/upload/category/1610/14/37389767044120_150x150.png!60x60.jpg', '牛仔裤', '', '', '', 'list', '儿童服饰', 113),
('http://b1.hucdn.com/upload/category/1608/19/86710928454120_150x150.png!60x60.jpg', '打底裤', '', '', '', 'list', '儿童服饰', 114),
('http://b1.hucdn.com/upload/category/1608/19/86756481754120_150x150.png!60x60.jpg', '内裤', '', '', '', 'list', '儿童服饰', 115),
('http://b1.hucdn.com/upload/category/1608/19/86765364694120_150x150.png!60x60.jpg', '袜子', '', '', '', 'list', '儿童服饰', 116),
('http://b1.hucdn.com/upload/category/1608/19/86785754754120_150x150.png!60x60.jpg', '配饰', '', '', '', 'list', '儿童服饰', 117),
('http://b1.hucdn.com/upload/category/1610/14/37567516814120_150x150.png!60x60.jpg', '爆款热销', '', '', '', 'list', '儿童服饰', 118),
('http://b1.hucdn.com/upload/category/1608/19/87101618004120_150x150.png!60x60.jpg', '哈衣爬服', '', '', '', 'list', '婴儿装', 119),
('http://b1.hucdn.com/upload/category/1608/19/85458816784120_150x150.png!60x60.jpg', '套装', '', '', '', 'list', '婴儿装', 120),
('http://b1.hucdn.com/upload/category/1608/19/87111016594120_150x150.png!60x60.jpg', 'T恤上衣', '', '', '', 'list', '婴儿装', 121),
('http://b1.hucdn.com/upload/category/1608/19/87116567624120_150x150.png!60x60.jpg', '婴儿外套', '', '', '', 'list', '婴儿装', 122),
('http://b1.hucdn.com/upload/category/1608/19/87121396834120_150x150.png!60x60.jpg', '婴儿礼盒', '', '', '', 'list', '婴儿装', 123),
('http://b1.hucdn.com/upload/category/1608/19/87127292764120_150x150.png!60x60.jpg', '婴儿内衣', '', '', '', 'list', '婴儿装', 124),
('http://b1.hucdn.com/upload/category/1608/19/87133428274120_150x150.png!60x60.jpg', '婴儿棉衣', '', '', '', 'list', '婴儿装', 125),
('http://b1.hucdn.com/upload/category/1608/19/87162414164120_150x150.png!60x60.jpg', '婴儿裤子', '', '', '', 'list', '婴儿装', 126);

-- --------------------------------------------------------

--
-- 表的结构 `iar`
--

CREATE TABLE IF NOT EXISTS `iar` (
  `phone` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iar`
--

INSERT INTO `iar` (`phone`, `password`) VALUES
('5ab40abe413535a7b5', '2805b4515ac12058e7');

-- --------------------------------------------------------

--
-- 表的结构 `list`
--

CREATE TABLE IF NOT EXISTS `list` (
  `type` varchar(20) NOT NULL,
  `src` varchar(300) NOT NULL,
  `price1` int(20) NOT NULL,
  `price2` varchar(20) NOT NULL,
  `discount` varchar(20) NOT NULL,
  `content` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `list`
--

INSERT INTO `list` (`type`, `src`, `price1`, `price2`, `discount`, `content`) VALUES
('童装', 'http://b1.hucdn.com/upload/item/1903/15/16061475207106_800x800.jpg!250x250.jpg', 69, '¥279', '2.5折', '361度儿童休闲鞋男童中大童网面'),
('童装', 'http://b1.hucdn.com/upload/item/1904/06/84371252463897_800x800.jpg!250x250.jpg', 30, '¥98', '3.1折', '贝诗情 4条装 男童平角纯棉内裤'),
('童装', 'http://b1.hucdn.com/upload/item/1702/23/12991437749682_800x800.jpg!250x250.jpg', 39, '¥239', '1.7折', 'abckids童鞋春季男童运动鞋儿童单网..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/23/54169404930000_800x800.jpg!250x250.jpg', 30, '¥99', '3.1折', '精典泰迪纯棉3条装儿童内裤'),
('童装', 'http://b1.hucdn.com/upload/item/1903/29/71687192573897_800x800.jpg!250x250.jpg', 30, '¥98', '3.1折', '贝诗情 4条装 A类纯棉女童平角内裤'),
('童装', 'http://b1.hucdn.com/upload/item/1901/14/35760048128932_800x800.jpg!250x250.jpg', 10, '¥128', '0.8折', '熊泰乐轩儿童小熊鞋运动鞋2019春秋新..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/12/10191672380000_800x800.jpg!250x250.jpg', 50, '¥359', '1.4折', '7月15日开售 巴拉巴拉49.9元超值福袋..'),
('童装', 'http://b1.hucdn.com/upload/item/1903/20/50826763661857_800x800.jpg!250x250.jpg', 9, '¥69.9', '1.3折', '女童牛仔裤2019夏款中大童乞丐裤九分..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/18/76546915330000_800x800.jpg!250x250.jpg', 30, '¥59.9', '5折', '北极绒儿童绵绸睡衣套装宝宝空调家居..'),
('童装', 'http://b1.hucdn.com/upload/item/1908/06/54193216610000_800x800.jpg!250x250.jpg', 89, '¥199', '4.5折', '6号开卖 戴维贝拉春秋2件装福袋 男女..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/22/68568691810000_800x800.jpg!250x250.jpg', 6, '¥59', '1折', '韩国网红ins头绳手链两用头饰韩版可..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/05/98494317830000_800x800.jpg!250x250.jpg', 60, '¥208', '2.9折', 'mrbaby2019夏季新款可爱清新小花女童..'),
('童装', 'http://b1.hucdn.com/upload/item/1809/05/34846304958932_800x800.jpg!250x250.jpg', 10, '¥129', '0.8折', '女童鞋子2019秋季新款运动鞋男童网鞋..'),
('童装', 'http://b1.hucdn.com/upload/item/1908/05/70755920930000_800x800.jpg!250x250.jpg', 45, '¥185', '2.5折', '贝壳元素宝宝牛仔衬衫 秋装新款男童..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/29/92405677640000_800x800.jpg!250x250.jpg', 20, '¥39', '5.2折', '2019秋季新款男女童时尚纯棉内衣套装..'),
('童装', 'http://b1.hucdn.com/upload/item/1805/17/21555893882731_800x800.jpg!250x250.jpg', 32, '¥119', '2.7折', '哈咪奇 2019新款女宝宝连衣裙夏装女..'),
('童装', 'http://b1.hucdn.com/upload/item/1805/30/91796410315183_800x800.jpg!250x250.jpg', 50, '¥118.9', '4.2折', '依米迪男童短袖套装2019夏季两件套韩..'),
('童装', 'http://b1.hucdn.com/upload/item/1908/06/68653833640000_800x800.jpg!250x250.jpg', 60, '¥168', '3.6折', '巴布豆家族儿童童鞋男童19年秋季新款..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/27/95285605560000_800x800.jpg!250x250.jpg', 80, '¥267', '3折', '杰里贝比女童春装新款洋气岁婴儿衣服..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/26/65471394190000_800x800.jpg!250x250.jpg', 10, '¥59', '1.7折', '哈咪奇女宝宝短袖夏装婴儿T恤女童上..'),
('童装', 'http://b1.hucdn.com/upload/item/1806/08/52044208929486_800x800.jpg!250x250.jpg', 20, '¥128', '1.6折', '儿童防蚊裤女童夏装2019新款洋气春秋..'),
('童装', 'http://b1.hucdn.com/upload/item/1803/29/03870503639486_800x800.jpg!250x250.jpg', 20, '¥128', '1.6折', '2019春夏季新款南极人薄款男女童儿童..'),
('童装', 'http://b1.hucdn.com/upload/item/1903/01/18013902903914_800x800.jpg!250x250.jpg', 30, '¥399', '0.8折', '两套4件装婴儿套装男女宝宝纯棉薄款..'),
('童装', 'http://b1.hucdn.com/upload/item/1905/10/66929322280000_800x800.jpg!250x250.jpg', 39, '¥239', '1.7折', 'abckids童鞋 夏季透气休闲男女童单网..'),
('童装', 'http://b1.hucdn.com/upload/item/1804/15/78547218183248_800x800.jpg!250x250.jpg', 20, '¥199', '1折', '前100名下单立减10元女童夏装2019新..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/11/56136259915183_800x800.jpg!250x250.jpg', 40, '¥109.9', '3.7折', '男童短袖套装夏装2019新款韩版洋气童..'),
('童装', 'http://b1.hucdn.com/upload/item/1804/26/10128428089151_800x800.jpg!250x250.jpg', 59, '¥239', '2.5折', '大黄蜂童鞋夏季新款女童露趾凉鞋 小..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/26/65278270810000_800x800.jpg!250x250.jpg', 59, '¥249', '2.4折', '大黄蜂女童皮凉鞋夏季2018新款儿童公..'),
('童装', 'http://b1.hucdn.com/upload/item/1812/25/28618928479682_800x800.jpg!250x250.jpg', 49, '¥199', '2.5折', 'abckids童鞋 秋季款男女童鞋13岁休闲..'),
('童装', 'http://b1.hucdn.com/upload/item/1801/09/90953738959682_800x800.jpg!250x250.jpg', 49, '¥229', '2.2折', 'abckids童鞋 2018春秋季新款中小童儿..'),
('童装', 'http://b1.hucdn.com/upload/item/1901/18/76987629309682_800x800.jpg!250x250.jpg', 59, '¥209', '2.9折', 'abckids童鞋2019春季儿童运动鞋男女..'),
('童装', 'http://b1.hucdn.com/upload/item/1804/20/83642283739507_800x800.jpg!250x250.jpg', 20, '¥69', '2.9折', '夏季薄款男童女童天丝牛仔长裤宝宝宽..'),
('童装', 'http://b1.hucdn.com/upload/item/1905/31/74544680920000_800x800.jpg!250x250.jpg', 15, '¥69', '2.2折', '儿童防蚊裤夏2019 新品男女童棉麻哈..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/05/69966029520490_800x800.jpg!250x250.jpg', 17, '¥98', '1.8折', '4条装 女童内裤纯棉中小大童平角宝宝..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/07/74916283390000_800x800.jpg!250x250.jpg', 40, '¥159', '2.6折', '道琪安儿童夜光椰子鞋网鞋2019夏男童..'),
('童装', 'http://b1.hucdn.com/upload/item/1903/08/74636659435183_800x800.jpg!250x250.jpg', 50, '¥108.9', '4.6折', '男童裤子2019春季新款春装4-6岁儿童..'),
('童装', 'http://b1.hucdn.com/upload/item/1903/26/73096807941857_800x800.jpg!250x250.jpg', 16, '¥59.9', '2.7折', '儿童女童蕾丝套装夏季童装中小童两件..'),
('童装', 'http://b1.hucdn.com/upload/item/1901/09/99292247959682_800x800.jpg!250x250.jpg', 79, '¥259', '3.1折', 'abckids童鞋 2019春季新款儿童皮鞋女..'),
('童装', 'http://b1.hucdn.com/upload/item/1803/25/53305364784591_800x800.jpg!250x250.jpg', 22, '¥128', '1.8折', '童有所衣 秋季纯棉婴儿衣服高腰内衣..'),
('童装', 'http://b1.hucdn.com/upload/item/1807/11/17003270282653_800x800.jpg!250x250.jpg', 30, '¥199', '1.6折', '2019秋冬新品儿童羽绒棉立领马甲加厚..'),
('童装', 'http://b1.hucdn.com/upload/item/1901/12/59381363819682_800x800.jpg!250x250.jpg', 79, '¥259', '3.1折', 'abckids童鞋 2019春季新款儿童网面运..'),
('童装', 'http://b1.hucdn.com/upload/item/1802/06/21733788990490_800x800.jpg!250x250.jpg', 19, '¥98', '2折', '3条装 儿童内裤平角裤男童内裤纯棉小..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/17/55270718630000_800x800.jpg!250x250.jpg', 69, '¥289', '2.4折', '大黄蜂男女童鞋2019新款儿童休闲运动..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/15/12224175010000_800x800.jpg!250x250.jpg', 60, '¥168', '3.6折', '巴布豆house童鞋儿童机能凉鞋2019新..'),
('童装', 'http://b1.hucdn.com/upload/item/1905/03/88955618315183_800x800.jpg!250x250.jpg', 50, '¥108.9', '4.6折', '依米迪男童夏装2019新款套装中大童夏..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/24/94831552150000_800x800.jpg!250x250.jpg', 33, '¥288', '1.2折', '亲亲泥巴小黄鸭童鞋男童凉鞋2019夏季..'),
('童装', 'http://b1.hucdn.com/upload/item/1901/23/29915470169682_800x800.jpg!250x250.jpg', 69, '¥199', '3.5折', 'abckids童鞋2019春季新品男女童休闲..'),
('童装', 'http://b1.hucdn.com/upload/item/1802/27/99373267066350_800x800.jpg!250x250.jpg', 40, '¥159', '2.6折', '贝壳家族宝宝绣花运动长裤 春装新款..'),
('童装', 'http://b1.hucdn.com/upload/item/1804/23/73437550919151_800x800.jpg!250x250.jpg', 59, '¥249', '2.4折', '大黄蜂男童凉鞋2019新款夏季中大童儿..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/05/34252366843212_800x800.jpg!250x250.jpg', 60, '¥319', '1.9折', '巴布豆家族童鞋2019新款春款儿童运动..'),
('童装', 'http://b1.hucdn.com/upload/item/1810/16/73573331809806_800x800.jpg!250x250.jpg', 81, '¥338', '2.4折', '纯一良品男童保暖布绣棉服2018新款中..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/05/08520189540000_800x800.jpg!250x250.jpg', 24, '¥98', '2.5折', '4条装 贝诗情儿童内裤女童纯棉1-3-5-..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/10/42656482470000_800x800.jpg!250x250.jpg', 59, '¥199', '3折', 'abckids童鞋春季新款男女童休闲透气..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/18/74096365460000_800x800.jpg!250x250.jpg', 50, '¥108', '4.7折', '回力童鞋男童2019春季新款单网鞋女童..'),
('童装', 'http://b1.hucdn.com/upload/item/1908/01/27551382070000_800x800.jpg!250x250.jpg', 49, '¥199', '2.5折', '贝壳元素宝宝迷彩外套 秋装新款男童..'),
('童装', 'http://b1.hucdn.com/upload/item/1908/06/45665214800000_800x800.jpg!250x250.jpg', 17, '¥58', '3折', 'DancingBear儿童加绒马甲新款双层保..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/27/05394978140000_800x800.jpg!250x250.jpg', 30, '¥108', '2.8折', '贝壳元素 春装卡通男童童装 秋款宝宝..'),
('童装', 'http://b1.hucdn.com/upload/item/1806/13/59334235529682_800x800.jpg!250x250.jpg', 39, '¥169', '2.4折', 'abckids童鞋春季毛毛虫童鞋宝宝鞋男..'),
('童装', 'http://b1.hucdn.com/upload/item/1903/20/63011898783634_800x800.jpg!250x250.jpg', 44, '¥117', '3.8折', '齐齐熊 0-1-3岁男女宝宝短袖套装婴儿..'),
('童装', 'http://b1.hucdn.com/upload/item/1704/25/86447624610635_800x800.jpg!250x250.jpg', 99, '¥429', '2.4折', '爱慕玛蒂诺机能鞋男童凉鞋夏季包头宝..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/19/14769434720000_800x800.jpg!250x250.jpg', 27, '¥48', '5.6折', '巴布豆儿童夏季凉拖鞋宝宝洞洞小童男..'),
('童装', 'http://b1.hucdn.com/upload/item/1905/17/73411277320000_800x800.jpg!250x250.jpg', 59, '¥259', '2.3折', '大黄蜂男女童鞋 儿童毛毛虫鞋2019春..'),
('童装', 'http://b1.hucdn.com/upload/item/1902/16/91698428700490_800x800.jpg!250x250.jpg', 27, '¥98', '2.8折', '4条装 男童内裤平角纯棉儿童四角裤青..'),
('童装', 'http://b1.hucdn.com/upload/item/1711/10/03841533190490_800x800.jpg!250x250.jpg', 25, '¥98', '2.6折', '桂诗兰宝宝儿童内裤女童纯棉三角平角..'),
('童装', 'http://b1.hucdn.com/upload/item/1904/29/03842879770000_800x800.jpg!250x250.jpg', 15, '¥89.9', '1.7折', '儿童汪汪大队短袖t恤纯棉2019夏季新..'),
('童装', 'http://b1.hucdn.com/upload/item/1905/16/85533744550000_800x800.jpg!250x250.jpg', 69, '¥378', '1.9折', '爱慕玛蒂诺儿童机能鞋男童鞋春秋款宝..'),
('童装', 'http://b1.hucdn.com/upload/item/1905/16/84986417470000_800x800.jpg!250x250.jpg', 69, '¥358', '2折', '爱慕玛蒂诺儿童机能鞋女童鞋1-6岁透..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/25/44474017302791_800x800.jpg!250x250.jpg', 49, '¥298', '1.7折', '童鞋儿童时尚涂鸦帆布鞋2019夏季新款..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/25/46186488840000_800x800.jpg!250x250.jpg', 30, '¥189', '1.6折', '男童网鞋2019新款夏款儿童运动鞋透气..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/25/53992778730000_800x800.jpg!250x250.jpg', 70, '¥299', '2.4折', '杰里贝比女童套装秋季新款小童婴儿衣..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/19/31021211690000_800x800.jpg!250x250.jpg', 70, '¥168', '4.2折', '巴布豆house童鞋儿童凉鞋2019夏新款..'),
('童装', 'http://b1.hucdn.com/upload/item/1905/10/89749195050000_800x800.jpg!250x250.jpg', 79, '¥189', '4.2折', '童装男童春装套装2019新款中大童小童..'),
('童装', 'http://b1.hucdn.com/upload/item/1708/12/19152862911011_800x800.jpg!250x250.jpg', 22, '¥58', '3.8折', '巴布豆夏季儿童防滑拖鞋男童童鞋女童..'),
('童装', 'http://b1.hucdn.com/upload/item/1906/23/60095465710000_800x800.jpg!250x250.jpg', 36, '¥159', '2.3折', '道琪安2019新款软底公主儿童鞋女童软..'),
('童装', 'http://b1.hucdn.com/upload/item/1803/04/59796552785959_800x800.jpg!250x250.jpg', 30, '¥189', '1.6折', '婴儿必备 超值七件套 豆丁虎新生儿纯..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/22/64552841990000_800x800.jpg!250x250.jpg', 25, '¥79', '3.2折', '贝壳家族 春秋装男童童装儿童长袖圆..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/23/72582187550000_800x800.jpg!250x250.jpg', 85, '¥218', '3.9折', '齐齐熊 男女童秋装卫衣套装2019新款..'),
('童装', 'http://b1.hucdn.com/upload/item/1905/15/04691283020000_800x800.jpg!250x250.jpg', 89, '¥418', '2.2折', 'AM童鞋儿童机能鞋女童运动鞋 春秋款..'),
('童装', 'http://b1.hucdn.com/upload/item/1907/19/19849069560000_800x800.jpg!250x250.jpg', 16, '¥128', '1.3折', '两件装 儿童短袖T恤2019夏季爆款卡通..'),
('童装', 'http://b1.hucdn.com/upload/item/1810/27/22432246675478_800x800.jpg!250x250.jpg', 68, '¥498', '1.4折', 'binpaw女学生大童皮油棉衣 2018冬装..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/09/95772031984554_800x800.jpg!250x250.jpg', 30, '¥49.9', '6折', '青蛙王子宝宝家庭实惠装1100ml'),
('母婴', 'http://b1.hucdn.com/upload/item/1906/21/86572538250000_800x800.jpg!250x250.jpg', 75, '¥185', '4.1折', '迪士尼书包小学生男女1-3-4-6年级米..'),
('母婴', 'http://b1.hucdn.com/upload/item/1906/12/16308373360000_800x800.jpg!250x250.jpg', 59, '¥138', '4.3折', '红色小象幼儿洗发沐浴露赠柔嫩沐浴露'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/29/06637889170000_800x800.jpg!250x250.jpg', 25, '¥118', '2.2折', '十月结晶婴儿湿巾纸5包80抽带盖新生..'),
('母婴', 'http://b1.hucdn.com/upload/item/1806/20/78844245383981_800x800.jpg!250x250.jpg', 14, '¥115.2', '1.3折', '6册 幼儿全脑开发神奇贴纸书动手动脑..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/02/92948256415714_800x800.jpg!250x250.jpg', 20, '¥59', '3.4折', '十月天使 宝宝洗衣皂婴儿洗衣皂尿布..'),
('母婴', 'http://b1.hucdn.com/upload/item/1812/14/78761372188228_800x800.jpg!250x250.jpg', 39, '¥116', '3.4折', '带盖10包 可爱多婴儿湿巾80抽*10包..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/02/76430067401419_800x800.jpg!250x250.jpg', 17, '¥68', '2.5折', '青蛙王子婴儿洗发沐浴露310ml*1/2二..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/03/61395264780587_800x800.jpg!250x250.jpg', 59, '¥138', '4.3折', 'Potato小土豆婴儿奶瓶PPSU耐摔宽口径..'),
('母婴', 'http://b1.hucdn.com/upload/item/1908/06/56661074940000_800x800.jpg!250x250.jpg', 40, '¥89', '4.5折', '每抽低至0.08元  子初 婴儿洋甘菊手..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/18/67980128360000_800x800.jpg!250x250.jpg', 39, '¥175', '2.3折', '带盖10包 可爱多通用婴儿湿巾80片带..'),
('母婴', 'http://b1.hucdn.com/upload/item/1803/05/16770652612426_800x800.jpg!250x250.jpg', 47, '¥199', '2.4折', '子初 婴儿一次性隔尿垫50片*2包 宝..'),
('母婴', 'http://b1.hucdn.com/upload/item/1805/23/64075082769331_800x800.jpg!250x250.jpg', 189, '¥298', '6.4折', '好奇银装超柔贴身纸尿裤箱装大号XL10..'),
('母婴', 'http://b1.hucdn.com/upload/item/1908/07/59579331620000_800x800.jpg!250x250.jpg', 50, '¥169', '3折', '〖送湿巾1包〗子初 宝宝湿巾纸手pp湿..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/03/75138320394810_800x800.jpg!250x250.jpg', 44, '¥72', '6.1折', '贝亲自然宽口径防胀气新生婴儿硅胶奶..'),
('母婴', 'http://b1.hucdn.com/upload/item/1902/28/22530088470160_800x800.jpg!250x250.jpg', 59, '¥105', '5.7折', '巴布豆超柔亲肤纸尿裤 S68/M60/L52/X..'),
('母婴', 'http://b1.hucdn.com/upload/item/1801/12/35950730196301_800x800.jpg!250x250.jpg', 139, '¥200', '7折', '好奇银装干爽舒适纸尿裤小号S148+16..'),
('母婴', 'http://b1.hucdn.com/upload/item/1812/14/78761372188228_800x800.jpg!250x250.jpg', 20, '¥59.8', '3.4折', '可爱多手口婴儿湿巾珍珠纹80抽10包平..'),
('母婴', 'http://b1.hucdn.com/upload/item/1509/10/74034453584810_800x800.jpg!250x250.jpg', 158, '¥248', '6.4折', '贝亲宽口径玻璃奶瓶防胀气奶嘴新生婴..'),
('母婴', 'http://b1.hucdn.com/upload/item/1806/13/94976253589331_800x800.jpg!250x250.jpg', 99, '¥219', '4.6折', '巴布豆超薄透气学步裤拉拉裤M24/L22/..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/18/69494112310000_800x800.jpg!250x250.jpg', 20, '¥70', '2.9折', '带盖80抽5包 可爱多无刺激婴儿湿巾80..'),
('母婴', 'http://b1.hucdn.com/upload/item/1805/23/63833036489331_800x800.jpg!250x250.jpg', 195, '¥250', '7.8折', '好奇银装干爽舒适纸尿裤M160片箱装'),
('母婴', 'http://b1.hucdn.com/upload/item/1709/19/88838142576019_800x800.jpg!250x250.jpg', 14, '¥55.2', '2.5折', '【有声伴读】全套4册宝宝成长睡前启..'),
('母婴', 'http://b1.hucdn.com/upload/item/1806/11/20699923417048_800x800.jpg!250x250.jpg', 50, '¥128', '3.9折', '唯昵贝贝奶瓶PPSU耐摔带吸管新生儿宝..'),
('母婴', 'http://b1.hucdn.com/upload/item/1806/14/48755131750587_800x800.jpg!250x250.jpg', 52, '¥138', '3.8折', '奶瓶 小土豆奶瓶 小土豆宽口径奶瓶 ..'),
('母婴', 'http://b1.hucdn.com/upload/item/1907/10/49818553990000_800x800.jpg!250x250.jpg', 17, '¥99', '1.8折', '6大包带盖 优贝爱婴儿湿巾80抽*6包..'),
('母婴', 'http://b1.hucdn.com/upload/item/1907/29/83107127330000_800x800.jpg!250x250.jpg', 29, '¥160', '1.9折', '小土豆宝宝ppsu防胀气防摔奶瓶带手柄..'),
('母婴', 'http://b1.hucdn.com/upload/item/1706/21/30837094448158_800x800.jpg!250x250.jpg', 40, '¥119', '3.4折', '米度丽 哺乳文胸孕妇内衣胸罩怀孕期..'),
('母婴', 'http://b1.hucdn.com/upload/item/1803/05/49485662569364_800x800.jpg!250x250.jpg', 328, '¥499', '6.6折', '惠氏 启赋较大婴儿配方奶粉 2段 900g..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/02/87908787287048_800x800.jpg!250x250.jpg', 18, '¥59', '3.1折', '5条装  唯昵贝贝婴儿口水巾纯棉纱布..'),
('母婴', 'http://b1.hucdn.com/upload/item/1908/06/56661074940000_800x800.jpg!250x250.jpg', 44, '¥89', '5折', '5包 8包 每抽低至0.08元  子初婴儿洋..'),
('母婴', 'http://b1.hucdn.com/upload/item/1810/02/46361642034690_800x800.jpg!250x250.jpg', 10, '¥80', '1.3折', '摇铃玩具新生婴儿3-6-12个月男女孩音..'),
('母婴', 'http://b1.hucdn.com/upload/item/1706/27/27854237093167_800x800.jpg!250x250.jpg', 11, '¥59', '1.8折', '休杰 婴幼儿童木制玩具积木动物绕珠..'),
('母婴', 'http://b1.hucdn.com/upload/item/1809/13/39149006629345_800x800.jpg!250x250.jpg', 98, '¥170', '5.8折', '拉拉裤 XL38  12-22KG  1包装'),
('母婴', 'http://b1.hucdn.com/upload/item/1708/02/78041144965528_800x800.SS2!250x250.jpg', 19, '¥59', '3.3折', '婴儿浴巾纯棉纱布被子 儿童洗澡毛巾..'),
('母婴', 'http://b1.hucdn.com/upload/item/1906/21/96782704590000_800x800.jpg!250x250.jpg', 30, '¥150', '2折', '〖直降每块仅需0.99〗植护婴儿不伤手..'),
('母婴', 'http://b1.hucdn.com/upload/item/1509/01/75363484354810_800x800.jpg!250x250.jpg', 68, '¥122', '5.6折', '贝亲ppsu宽口径塑料奶瓶自带自然实感..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/02/77598315235171_800x800.jpg!250x250.jpg', 15, '¥65', '2.4折', '植护婴儿洗衣皂尿布皂180g*5块/8块/1..'),
('母婴', 'http://b1.hucdn.com/upload/item/1712/15/23019450837048_800x800.jpg!250x250.jpg', 58, '¥138', '4.3折', '唯昵贝贝宝宝全软硅胶奶瓶仿母乳奶瓶..'),
('母婴', 'http://b1.hucdn.com/upload/item/1904/10/60105100294810_800x800.jpg!250x250.jpg', 68, '¥99', '6.9折', '赠吸管手把 贝亲PPSU宽口径婴儿奶瓶..');

-- --------------------------------------------------------

--
-- 表的结构 `shopping`
--

CREATE TABLE IF NOT EXISTS `shopping` (
  `src` varchar(400) NOT NULL,
  `content` varchar(400) NOT NULL,
  `price` int(20) NOT NULL,
  `num` int(20) NOT NULL,
  `subtotal` int(20) NOT NULL,
  `id` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `shopping`
--

INSERT INTO `shopping` (`src`, `content`, `price`, `num`, `subtotal`, `id`, `active`) VALUES
(' http://b1.hucdn.com/upload/item/1908/02/40208216320000_800x800.jpg', '  【买就送煎锅+刀叉】骏德澳洲家庭牛排套餐10片 新鲜进口牛肉', 69, 1, 69, 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
