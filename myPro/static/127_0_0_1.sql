-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-10-15 13:58:28
-- 服务器版本： 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--
CREATE DATABASE IF NOT EXISTS `game` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `game`;

-- --------------------------------------------------------

--
-- 表的结构 `game_comment`
--

CREATE TABLE `game_comment` (
  `cid` int(11) NOT NULL,
  `nid` int(11) DEFAULT NULL,
  `cname` varchar(12) DEFAULT NULL,
  `content` varchar(128) DEFAULT NULL,
  `ctime` varchar(64) DEFAULT NULL,
  `cplace` varchar(12) DEFAULT NULL,
  `zanC` varchar(12) DEFAULT NULL,
  `caiC` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `game_comment`
--

INSERT INTO `game_comment` (`cid`, `nid`, `cname`, `content`, `ctime`, `cplace`, `zanC`, `caiC`) VALUES
(1, 1, 'ccc', '是一个优秀的作品', '2018-10-12 09:04:23', '上海', '100', '5'),
(2, 1, 'aaa', '是一个优秀的作品2', '2018-10-12 09:15:52', '北京', '50', '5'),
(3, 1, 'bbb', '是一个优秀的作品3', '2018-10-12 09:15:52', '南京', '60', '5'),
(4, 1, '张三', '是一个优秀的作品4', '2018-10-15 10:58:19', '南京', '160', '5'),
(5, 2, 'aaa', '123', '2018-10-15 19:27:50', '江苏', '0', '0'),
(6, 2, 'aaa', '564', '2018-10-15 19:28:24', '江苏', '0', '0'),
(7, 2, 'aaa', '564', '2018-10-15 19:28:25', '江苏', '0', '0'),
(8, 2, 'aaa', '564', '2018-10-15 19:28:48', '江苏', '0', '0'),
(9, 1, '张三', '真的太好了', '2018-10-15 19:49:46', '江苏', '0', '0'),
(10, 3, '张三', '垃圾', '2018-10-15 19:50:39', '江苏', '0', '0'),
(11, 3, '张三', '真的太优秀了', '2018-10-15 19:51:49', '江苏', '0', '0'),
(12, 3, '张三', '哇', '2018-10-15 19:52:53', '江苏', '0', '0'),
(13, 2, '张三', '哇', '2018-10-15 19:53:17', '江苏', '0', '0'),
(14, 5, '张三', '嘻嘻哈哈', '2018-10-15 19:54:31', '江苏', '0', '0');

-- --------------------------------------------------------

--
-- 表的结构 `game_index_standalone`
--

CREATE TABLE `game_index_standalone` (
  `gid` int(11) NOT NULL,
  `gname` varchar(64) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `game_index_standalone`
--

INSERT INTO `game_index_standalone` (`gid`, `gname`, `pic`, `href`) VALUES
(1, '极品飞车', 'img/standalone/1.jpg', 'standalone.html'),
(2, '怪物猎人:世界', 'img/standalone/4.jpg', 'standalone.html'),
(3, '尼尔:机械纪元', 'img/standalone/5.jpg', 'standalone.html'),
(4, '看门狗2', 'img/standalone/6.jpg', 'standalone.html'),
(5, '模拟人生4', 'img/standalone/7.jpg', 'standalone.html'),
(6, '最终幻想15', 'img/standalone/8.jpg', 'standalone.html'),
(7, '绝地求生', 'img/standalone/2.jpg', 'standalone.html'),
(8, '如龙0', 'img/standalone/9.jpg', 'standalone.html');

-- --------------------------------------------------------

--
-- 表的结构 `game_news`
--

CREATE TABLE `game_news` (
  `gid` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `game_news`
--

INSERT INTO `game_news` (`gid`, `title`, `details`, `pic`) VALUES
(1, '网络游戏寒冬？国家新规调控网游运营数量 国内游戏分级可能要来', '教育部联合国家新闻出版总署等八部门印发了《综合防控儿童青少年近视实施方案》。根据方案，国家新闻出版总署将对网络游戏行业实施总量调控，控制新增网络游戏上网运营数量，探索符合国情的适龄提示制度，采取措施限制未成年人使用时间。这意味着今后国内网络游戏的审批可能会比较严格，每年允许正式上线运营的网络游戏可能会有严格的数量标准。值得一提的是，方案中还提到“探索符合国情的适龄提示制度”，这是否意味着国内的游戏分级制度是否将从网络游戏行业诞生呢?', 'img/news/1.jpg'),
(2, '动作RPG《暗影：觉醒》发售 Steam中文版现已上线', '《暗影：觉醒》（Shadows: Awakening）是一款采用即时战斗的动作角色扮演游戏，玩家将操作一只由影界被召唤而来的恶魔“吞噬者”，吸收死亡英雄的灵魂，驱使他们一起冒险与战斗。 游戏中一共有14位可玩角色，每位英雄角色的技能也都各不相同，玩家可以在施放技能的途中在3个英雄之间无缝切换，通过连协不同角色的技能，来最大化输出伤害。而且他们都还有自己独特的个性与记忆，不仅能与玩家对话，互相之间也偶尔会开启吐槽模式。在《暗影：觉醒》中善用影界与人界的切换也是非常重要的操作，不光能够发现隐藏的道路与物品互动来解决谜题的内容，还能够从不同势力的人物那里领取更多任务，剧情也会根据你的形态发生相应的变化.游戏单次通关时间大约在2', 'img/news/6.jpg'),
(3, '《蜘蛛侠》照相模式预告片 可用漫画书风格查看图片', 'Insomniac Games今日发布了即将上市的PS4动作冒险游戏新作《蜘蛛侠》的最新预告片。在这段预告片中，我们看到了本作将通过首日补丁加入的照相模式。玩家不但可以保存小蜘蛛的各种精彩时刻，还能以美式漫画书的风格进行图片添加。美漫爱好者对这种模式应该会比较感兴趣，至少在这方面本作已经有了一点成功的迹象。《蜘蛛侠》将于9月7日发售，PS4平台独占。', 'img/news/7.jpg'),
(4, '《S.O.N》新预告气氛十分诡异 昏暗房间中潜藏的恐怖', '今日，恐怖游戏《S.O.N》新预告发布，玩家在昏暗的房间里行走，沿路霓虹字与血字，配着《一闪一闪小星星》的儿歌，气氛十分诡异，一起来看看吧!《S.O.N》是一款采用虚幻4引擎制作的恐怖游戏，玩家将来到宾夕法尼亚南部的一片真实存在的森林，截止2018年已有64人在这里失踪，但仅有22名孩子的尸体被找到。在本作中玩家将扮演Robert Alderson，前往寻找自己的儿子Jay。《S.O.N》将于12月11日推出，PS4平台独占.', 'img/news/8.jpg'),
(5, '《漫威蜘蛛侠》彩蛋什么意思？外媒：银貂回归战毒液！', '从目前媒体的玩家的评价来看，《漫威蜘蛛侠》的表现非常不错。而这款PS4游戏的最后一幕预示着不止一个反派的崛起，但也暗示了银貂女的回归，但很可能是作为盟友，而不是敌人。在《漫威蜘蛛侠》故事结束后，等到职员名单滚动完的玩家们，会发现这款游戏和漫威电影一样，都有一个片尾彩蛋。这一彩蛋中，是有关诺曼奥斯本和他的儿子哈利的。诺曼进入哈利的秘密房间，其中哈利漂浮在一个生化舱里，里面是未知的凝胶，同时有类似共生体的附着物从他的身体上脱落。诺曼将手放在玻璃仓上，表示已经很接近治愈他了，而哈利用黑暗的触手，而不是他的手做出了回应。首先，这个场景清晰地暗示了毒液的崛起，但这次毒液附身的显然是哈利奥斯本，而不是经典的艾迪布鲁克。同时这还开启了绿魔的故事线索，诺曼奥斯本将重新变成蜘蛛侠的', 'img/news/9.jpg'),
(6, '亚马逊开始调查中国违规员工了：删一条差评300美元！', '据外媒报道，国际电商巨头亚马逊针对内部的腐败问题已经展开了调查，据称，亚马逊的内部员工竟然逊员工将内部数据和机密信息提供给公司平台上的独立卖家，甚至操纵虚假评论。知情人士还透露，这种违规做法在中国尤其盛行，因为那里的卖家数量正在飙升。除此之外，亚马逊中国员工工资相对较低，这也可能是他们铤而走险的原因。知情人士表示，亚马逊员工会通过中间商提供内部销售数据和评论者的电子邮件地址，还会提供删除负面评论和恢复禁用帐号等服务。知情人士表示，亚马逊正在调查许多与员工受贿有关的案件，包括一些美国员工。知情人士称，在负责亚马逊国际市场的副总裁埃里克·布罗萨德（Eric Broussard）获悉中国市场的这些不端行为后，该公司于今年5月启动此项调查。亚马逊之后调', 'img/news/10.jpg'),
(7, '《原子之心》RTX技术效果演示 光影效果质的飞跃', '近日，开发商Mundfish公布了FPS游戏《原子之心》新演示视频，视频展示了RTX技术的优势。RTX效果开启前与开启后，画面差异十分明显，一起来看看视频吧!从《原子之心》演示中可以看到，开启RTX后，光线反射角色的阴影更自然了。在能反射倒影的画面中，有了光线追踪效果加成后，能完整反映游戏物体的倒影。《原子之心》将于2019年发售，登陆PS4、Xbox One和PC。', 'img/news/11.jpg'),
(8, '《绝地求生》Xbox One版IGN 8.9分 “鸡”一样美味', 'IGN日前发布了Xbox One版《绝地求生》的分数，游戏获得了8.9分的不错成绩。IGN编辑DAVID JAGNEAUX认为在经过了9个月的预览版后，《绝地求生》终于完整登陆Xbox One。你和全球上百万玩家已经知道这款游戏是怎么玩的：在《绝地求生》这款100人大逃杀游戏中，玩家可以跳伞到3个独特的岛屿，搜集装备，与“毒圈”进行赛跑，同时要相互厮杀（无法复活），直到一名玩家活到最后。《绝地求生》是一款掀起“大逃杀”狂热的游戏，拥有半-真实的玩法风格，现在Xbox One版已经完整了，表现不错，游戏完美的平衡性确实闪耀始终。', 'img/news/12.jpg'),
(9, '《最终幻想》为何突然不再是索尼“独占”？真相在此！', '上周四Square Enix宣布多款《最终幻想》游戏将登陆Xbox One和Switch平台。要知道，在《最终幻想》的历史上，除了最初的六款游戏，该系列在此之前从未登陆任何除了索尼之外的主机平台。近日EuroGamer的资深编辑Imran Khan就简要分析了《最终幻想》在过去成了索尼“独占”的原因。他表示，《最终幻想》版权的最初所有方Squaresoft与索尼曾达成协议，将这一系列变成PlayStation独占游戏。但是，在Square与Enix合并，形成Square Enix之后不久，该协议就无效了。这一切都始于CG电影《最终幻想：灵魂深处》的巨大失败，在遭受差评和市场冷遇之后，Squaresoft濒临破产，是索尼出手相救，购买了18%的股票，从', 'img/news/12.jpg'),
(10, 'Steam上架无删减成人恋爱游戏惹争议 女权组织强烈不满', '9月14日Steam在部分地区上架了《晨衣小店：爱情游戏(Negligee: Love Stories)》，号称是启用内容筛选器政策后首款过审的成人恋爱游戏，无删减AO评级。之前Steam因为“一刀切”的审查方式将数款成人游戏下架，引发了玩家不满。部分开发者为了对抗，故意对游戏用黑条遮挡，并放出外链引导用户下载“无修正”补丁。不过，美国组织NCSE则对Steam将该游戏上架提出强烈不满，他们表示Steam的未成年用户达到3500万，该游戏中出现的放行为和涉及婚姻虐待内容是对女性权利的践踏，是对 #MeToo语境的冒犯。NCSE致函Steam建议其重新订立内容审查机制，不要罔顾妇女和未成年人的利益。', 'img/news/13.jpg'),
(11, '《古墓丽影：暗影》劳拉死亡动画合集 妹子太惨让人心疼', '《古墓丽影：暗影》已发售，劳拉来到南美洲展开了寻宝冒险，但那里生存环境恶劣，还有各种陷阱让人防不胜防。所以在游戏里劳拉经常会面临死亡威胁，真是凄惨无比。近日，YouTube作者AFGuidesHD放出了新作的劳拉死亡动画合集，一起来看看吧。劳拉死法合集：视频里的死亡场面非常残忍，劳拉不断惨叫死亡让人心疼。由于本作中增加了对环境探索和解谜进行单独难度调整的选项，因此选择了更高难度的玩家，可能会需要靠劳拉的死亡来摸索正确道路和解谜办法，因此对这些镜头会更加熟悉。《古墓丽影：暗影》已正式发售，在Steam上的好评率为84%。', 'img/news/14.jpg'),
(12, 'Switch模拟器yuzu已可以玩《最终幻想15口袋版HD》', '上周五的任天堂直面会结束后，《最终幻想15口袋版HD》已经在eShop正式上线，不过你可能没有想到，Switch模拟器已经可以进入游戏，而且画面基本完美，一起来了解一下吧：Switch模拟器yuzu虽然推出不久，对于Switch的游戏基本上2D画面的模拟效果还可以，3D的游戏基本都属于没法玩的状态。然而对于刚刚推出不久的Switch版《最终幻想15口袋版HD》，效果还是不错的。游戏的界面和阴影效果还有少数BUG，不过帧数方面就实在是太需要耐心了，最高帧数10，最低下降到了3。Switch模拟器yuzu也已经可以模拟《超级马里奥：奥德赛》和《海贼王：无尽世界R豪华版》等3D游戏，虽然仍有大量问题，不过开发进度很快，也许用不了多久就可以在电脑上玩到这些游戏啦。', 'img/news/15.jpg'),
(13, '杨元庆公开表示“联想不是中国公司”？官方：断章取义', '近日有外媒报道称，联想董事长兼CEO杨元庆在接受外媒采访时，竟然公开表示“联想不是一家中国公司”。而联想集团官方和杨元庆本人对此很快做出了回应，表示外媒的这一报道其实是断章取义，导致媒体错误解读。杨元庆本人也在微博发声，称报道引发了小波澜，“联想不仅要做一家成功的中国公司，更要做一家具有包容力的全球化公司”。他强调，“北京是我的家，中国是我们70%的员工的家园，我们立志要做植根中国的全球化企业的楷模。中国的联想，世界的联想”。但是，新浪科技在查询外媒采访原文时发现，杨元庆当时的表述确实是：“We‘re not a Chinese company”。分析人士认为，事因杨元庆的言语表述不当导致误解，并被外媒摘为标题传播。', 'img/news/16.jpg'),
(14, '《刺客信条：奥德赛》XB1版预载开启 容量曝光', '《刺客信条：奥德赛》已经送厂压盘，这意味着游戏本体开发工作已经完结。随着发售日的临近，目前《刺客信条：奥德赛》已经可以在Xbox Live上预载。根据清单，本作Xbox One版的预载容量为45GB。45GB只是本体游戏，不包含首日补丁和更新。如果有首日补丁或是额外的下载内容更新，实际下载所需要的空间要更大一些。外媒表示，去年的《刺客信条：起源》首发时的数字版和实体版也是45GB左右。至于PS4版，目前尚不清楚有多大容量。PC版的话，之前官方发布了配置要求，根据配置要求，PC版游戏需要46GB硬盘空间。育碧曾表示《刺客信条：奥德赛》将是系列以来发售后内容支持最庞大的一作，所以《刺客信条：奥德赛》占用的硬盘空间将远远高于45GB。如果算上季票包含的', 'img/news/17.jpg'),
(15, 'CAPCOM曾联合白金工作开发《大神》续作', '最早由CAPCOM旗下四叶草工作室开发的PS2游戏《大神》获得了大批媒体和玩家的赞誉，这款游戏在市场上却没能获得预期的销量。数年后，很多玩家都在期待《大神》的续作，虽然NDS平台有一款系列作品，不过毕竟不是正统。根据最近的消息，其实在前几年CAPCOM曾经和白金工作室研究过《大神》续作。根据经常透露游戏界秘密的Game History Secrets透露，在2015年，白金工作室和CAPCOM双方代表就已经开始会面。据称，白金工作室创始人三并达也牵头讨论。由于CAPCOM希望复活一些经典IP，双方在这个方面进行合作。CAPCOM对成本和铂金的管理也有自己的保留意见。然而，与工作室合作将会得到粉丝们的好感。白金工作室还拥有虚幻4引擎开发经验，CAPCOM希望使用', 'img/news/18.jpg'),
(16, '大冢明夫回归：《死亡搁浅》日版豪华声优阵容曝光！', '不久前小岛制作方面证实，著名游戏制作人小岛秀夫将在本月底在东京电玩展TGS 2018上展示《死亡搁浅》，但并没有任何演示和预告放出，也不提供试玩。尽管如此，游戏的日语声优演员也将一同亮相。近日小岛秀夫就在推特上确认了游戏中几位主角的日语声优的人选。几位主角的声优分别是津田健次郎，大冢明夫，井上喜久子，水树奈奈，三上哲。其中最值得注意的就是大冢明夫，曾《合金装备》系列中为Solid Snake和Big Boss配音。此外还有井上喜久子，曾为《合金装备3》中的The Boss配音，同时也是《原爆点》和《和平行者》中的Chico，以及《合金装备4》和《合金装备崛起》中的Sunny。类似的是水树奈奈，她曾在《和平行者》《原爆点》《幻痛》中为Paz配音。津田', 'img/news/19.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `game_newsdetails`
--

CREATE TABLE `game_newsdetails` (
  `nid` int(11) NOT NULL,
  `title` varchar(32) DEFAULT NULL,
  `content` varchar(2048) DEFAULT NULL,
  `ctime` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `game_newsdetails`
--

INSERT INTO `game_newsdetails` (`nid`, `title`, `content`, `ctime`) VALUES
(1, '经历过尴尬的吉尼斯之后，《大神》打破了第二个纪录', '               <p>《大神》是一款收获的好评远大于实际销量的游戏，而且即使发售以后过了这么久，依然还在不断获得新的荣誉。</p>\r\n                <p>今天早些时候，在纽约动漫展的卡普空展台上，吉尼斯世界纪录宣布《大神》打破了一项世界纪录，成为了“<b>受到最多好评的以动物为主角的游戏</b>”。</p>\r\n                <img src=\'img/news/newsdetails/1.jpg\' alt=\'\'>\r\n                <p>没毛病，本来以动物为主角的游戏就不占大多数，而在这个领域中进行比较的话，《大神》的确没有什么对手。但这并不意味着这个世界纪录的含金量下降，也没有减少这一消息给人带来的惊喜。</p>\r\n                <p>这已经是《大神》打破的第二个吉尼斯世界纪录了。上一次是在2006年，获得了“<b> 商业成就最低的年度最佳游戏</b>”，这个纪录就有点……</p>\r\n                <p>《大神》是Clover工作室倒闭之前的最后一部作品，充分诠释了什么是“叫好不叫座”，显然它的销量败绩是导致工作室倒闭的重要原因。好在一部分关键成员后来创立了白金工作室，继续贡献自己的游戏创意。而且《大神》的创作成就经住了时间的考验，不断地获得各种游戏评奖。</p>\r\n                <p>《大神》最初登陆PS2主机，后来移植到了Wii，并在Xbox One和PS4上重获新生，还推出了PC高清复刻版。</p>', '2018-10-09 08:32:35'),
(2, '《英雄联盟》新人解说调侃革命先烈 疑当场被开除', '<p>\r\n	在昨天的LOL S8入围赛中，新人解说MacT一时口嗨，公然调侃革命先烈黄继光，被瞬间解雇。\r\n</p>\r\n	<img src=\'https://ol.3dmgame.com/uploads/images/news/20181008/1538973396_146116.jpg\' alt=\'《英雄联盟》新人解说调侃革命先烈 疑当场被开除\'>\r\n<p>\r\n	事情发生在GRX对战SUP的第二局比赛：这场比赛由管泽元、爱萝莉、以及一名新人解说MacT解说。比赛中SUP的上单选了厄加特，GRX的中单则是抢了剑魔，看到这个BP解说管泽元先说到，这个厄加特必须给大给除了剑魔以外的人，不能肯定打不出恐惧效果。之后另外一个不知名的新人LPL官方解说MacT则开始了口嗨模式：剑魔就故意挡在他们面前，这是HJG的打法，堵枪眼式的打法！\r\n</p>\r\n<p >\r\n	此言一出，弹幕开始爆炸！随后第三把比赛中，该解说再也没有出现在解说席上，疑似是被当场开除！\r\n</p>\r\n\r\n	<img src=\'https://ol.3dmgame.com/uploads/images/news/20181008/1538973405_937265.jpg\' alt=\'《英雄联盟》新人解说调侃革命先烈 疑当场被开除\'>\r\n\r\n<p>\r\n	有网友说到：“解说口嗨了，在这么多人面前，参看陈一发儿，解说一路走好！”\r\n</p>\r\n<p>\r\n	还有网友表示：“HJG式打法......听到的时候就觉着这解说要凉凉了！”\r\n</p>\r\n<p>\r\n	还有网友表示：“自杀形解说嘛? 还没火 就要凉了[费解][费解]！太惨了！”\r\n</p>		', '2018-10-09 08:32:35'),
(3, '情侣疑为拍抖音拿3个\'八万\'麻将牌买车 更新：警方辟谣', '\r\n            <p >\r\n	更新：\r\n	</p><p>\r\n		据记者事后调查得知，该事件始发地实为湖北武汉国际会展中心，并非网传中山某4S店，且二人实为母子关系，并非情侣。\r\n	</p>\r\n	<p>\r\n		“被打的儿子应该不到二十岁，冲突中母亲就拿着合同一直在理论价格的问题。”目击者称，当时围观的人数约有四、五十人左右。二人疑似在签署购买合同后返回销售处想要退车，遭到销售人员拒绝后产生冲突。\r\n	</p>\r\n	<p>\r\n		“事情其实很简单，后来有人报警，警察就到场处理了，不知道为什么会被网络传成麻将牌买车的内容。”目击者告诉中国青年网记者。\r\n	</p>\r\n	<p>\r\n		针对此事，6日下午，中山市公安局通报称，10月5日，网络上流传一段视频，并配发文字称在中山某4S店，一对情侣为拍摄抖音，拿3个麻将“八万”购车，结果被销售人员围殴。\r\n	</p>\r\n	<p>\r\n		中山警方高度重视，经调查，该视频的拍摄地并非中山，相关情况还在进一步核实中。\r\n	</p>\r\n	<p>\r\n		6日晚11时19分，武汉市江汉区公安分局官方微博发布警情通报，称10月3日中午1时许，一对母子在武汉国际会展中心某车辆经销商展位办理订金退还手续时，因还款方式未达成一致，与展位工作人员发生争执引起肢体冲突。江汉分局中展派出所出警将双方当事人带回调查。经查，因属民事纠纷引起的违反治安管理行为，情节较轻，在双方自愿的情况下，民警依法组织了调解处理。\r\n	</p>\r\n	<p>\r\n		原文：\r\n	</p>\r\n<p></p>\r\n<p>\r\n	近日网传在中山某4S店，一对情侣为了拍抖音视频，在买车环节谈了半天要了各种优惠，忙碌的销售员一一给他们申请完，等到最后付钱的时候他们拿出来3个八万麻将牌买车，气愤的销售员们将其情侣的男性群殴。这事各位怎么看?\r\n</p>\r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181006/1538795685_925005.jpg\' alt=\'情侣疑为拍抖音拿3个\' 八万\'麻将牌买车=\'\' 更新：警方辟谣\'=\'\' 惨遭店员围殴\'=\'\'>\r\n\r\n<p>\r\n	可能是因为最近流行的段子，有关于麻将买车的内容。一对情侣想拍摄这种段子视频发布到短视频app上，为了吸人大家眼球选择铤而走险。据了解为了视频拍摄出来的效果更好，在买车环节情侣男多次要求销售员提供优惠方案，更加让人确信自己买车的真实性，销售员也不辞辛苦地为其奔波，最后以24万首付成功办理汽车的一切手续。\r\n</p>\r\n<p>\r\n	结果在最后付款的时候，情侣男在兜里拿出来的却不是24万现金，而是3张印着8万字样的麻将牌，一时间所有销售员都难以压制心中的怒火，集体动手围殴了这名男子。\r\n</p>\r\n<p>\r\n	原来网络上前一段流行起了麻将买车的梗，有一段真人拍摄的搞笑视频里就有这么一段，男子去4s店买车，汽车全款40万。同样是最后付款环节视频中男子拿出来4个8万一个九万称其实41万，还要求销售员退1万。机智的销售员拿出来两个象棋，一个是车一个是炮。回应说道今天店里有活动买车送炮。\r\n</p>\r\n<p style=\'text-align:center\'>\r\n	<iframe height=\'480\' width=\'640\' src=\'https://player.youku.com/embed/XMzg1MDcwMzQ4NA==\'\'frameborder=\'0\' allowfullscreen=\'\'>\r\n	</iframe>\r\n</p>        ', '2018-10-09 08:32:35'),
(4, '微软宣布xCloud云游戏项目 将Xbox One完全搬上手机', '\r\n            <p>\r\n	今日微软宣布，将Xbox流媒体游戏服务正式定名为Project \r\nxCloud。借助xCloud，用户不仅可以在PC上串流Xbox游戏，智能手机和平板也可以。这意味着，在手机上玩原汁原味的《光环》《极限竞速》等大作成为可能。\r\n</p>\r\n<p style=\'text-align:center;\'>\r\n	<iframe height=\'480\' width=\'640\' src=\'https://player.youku.com/embed/XMzg1NDQwODI0OA==?client_id=5a73c0df8eb0d91d\' frameborder=\'0\' allowfullscreen=\'\'>\r\n	</iframe>\r\n</p>\r\n<p>\r\n	在微软演示中，我们看到《光环5》《盗贼之海》《战争机器4》等第一方独占游戏将被xCloud支持，当然微软强调，xCloud的目的是将超过3000款Xbox \r\nOne游戏“移动化”(《荒野大镖客2》在内)，而这一工作几乎无需三方开发者参与，完全由微软搞定。\r\n</p>\r\n<p>\r\n	xCloud允许配套Xbox无线手柄，微软也在紧张做触屏摇杆、按键的适配优化。\r\n</p>\r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539044716_773783.jpg\' alt=\'微软宣布xCloud云游戏项目 将Xbox One完全搬上手机\'> \r\n<p>\r\n	提到对比索尼PS Now和谷歌Project \r\nStream的优势，微软强调xCloud会依托自己庞大的Azure云计算资源，目前的水准是10Mbps。Project \r\nXcloud预计在2019年内开放公测。\r\n</p>\r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539044695_275531.jpg\' alt=\'微软宣布xCloud云游戏项目 将Xbox One完全搬上手机\'> \r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539044716_995997.jpg\' alt=\'微软宣布xCloud云游戏项目 将Xbox One完全搬上手机\'> \r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539044717_167256.jpg\' alt=\'微软宣布xCloud云游戏项目 将Xbox One完全搬上手机\'> ', '2018-10-09 08:45:07'),
(5, '喜加一！太空模拟飞行射击游戏《演化（Evolvation）》St', '\r\n            <p>\r\n	《演化（Evolvation）》是由HyperReuts制作并发行的一款太空模拟飞行射击游戏。目前Steam上可免费领取，有兴趣的玩家可以点击下面的网址点“安装游戏”领取。\r\n</p>\r\n<p>\r\n	领取地址：<a href=\'https://store.steampowered.com/app/510840/Evolvation/\' target=\'_blank\'>https://store.steampowered.com/app/510840/Evolvation/</a> \r\n</p>\r\n<p>\r\n	《演化》Steam上不支持中文，2017年2月发售，好评率为57%，玩家评价比较一般。\r\n</p>\r\n<p>\r\n	游戏采用快节奏的多人对战模式，在充满神秘色彩的宇宙中，玩家需要驾驶酷炫的飞船在陨石中穿梭，使用特殊技能躲避敌人的攻击，并将其摧毁。\r\n</p>\r\n<p>\r\n	<strong>游戏特色：</strong> \r\n</p>\r\n<p>\r\n	快节奏的多人游戏\r\n</p>\r\n<p>\r\n	震撼的视觉效果\r\n</p>\r\n<p>\r\n	特殊能力\r\n</p>\r\n<p>\r\n	多种控制方式\r\n</p>\r\n<p>\r\n	定制自己的飞船\r\n</p>\r\n<p>\r\n	6个自由的移动系统\r\n</p>\r\n<p>\r\n	<strong>游戏截图：</strong> \r\n</p>\r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539041859_378149.jpg\' alt=\'喜加一！太空模拟飞行射击游戏《演化（Evolvation）》Steam免费领取\'> \r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539041859_529314.jpg\' alt=\'喜加一！太空模拟飞行射击游戏《演化（Evolvation）》Steam免费领取\'> \r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539041859_149198.jpg\' alt=\'喜加一！太空模拟飞行射击游戏《演化（Evolvation）》Steam免费领取\'> \r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539041859_590172.jpg\' alt=\'喜加一！太空模拟飞行射击游戏《演化（Evolvation）》Steam免费领取\'> \r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539041860_491247.jpg\' alt=\'喜加一！太空模拟飞行射击游戏《演化（Evolvation）》Steam免费领取\'>\r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539042305_473844.jpg\' alt=\'喜加一！太空模拟飞行射击游戏《演化（Evolvation）》Steam免费领取\'> \r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539042313_168823.jpg\' alt=\'喜加一！太空模拟飞行射击游戏《演化（Evolvation）》Steam免费领取\'>', '2018-10-09 08:54:43'),
(6, '《生化危机2：重制版》豪华版附赠男女主角多套服装', '\r\n            <p>\r\n	今天CAPCOM通过官方推特发布了明年发售的《生化危机2》重制版豪华版的内容，对于那些非常喜欢本作并且希望拥有其他玩家没有的特权的用户来说，这个版本非常具有吸引力。\r\n</p>\r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539039493_579707.jpg\' alt=\'《生化危机2：重制版》豪华版附赠男女主角多套服装\'> \r\n\r\n<p>\r\n	因为PS《生化危机2》原版不但采用双主角设定，而且使用了双光碟装，这一次《生化危机2》重制版豪华版也使用了两种封面，准确地说是正反两面。正面为男主角里昂，背面则是女主角克莱尔。\r\n</p>\r\n<p>\r\n	豪华版包含游戏主角的服装和武器DLC以及可替换为原本音乐功能，具体为、里昂服装：“阿克雷警官”、里昂服装：“纯黑”、克莱尔服装：“军装”、克莱尔服装：“纯黑”、克莱尔服装：“爱纱·沃克”、豪华武器：“武士之刃 - 艾伯特型”、替换“原版”配乐。\r\n</p>\r\n<p>\r\n	《生化危机2》重制版将于2019年1月29日发售，登陆PC、PS4和XboxOne，该游戏不但对应中文字幕，还将加入中文配音。\r\n</p>\r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539039521_668164.jpg\' alt=\'《生化危机2：重制版》豪华版附赠男女主角多套服装\'> \r\n	<img src=\'https://img.3dmgame.com/uploads/images/news/20181009/1539039623_831152.jpg\' alt=\'《生化危机2：重制版》豪华版附赠男女主角多套服装\'> \r\n', '2018-10-09 09:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `game_user`
--

CREATE TABLE `game_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `uHead` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `game_user`
--

INSERT INTO `game_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `uHead`) VALUES
(1, '张三', '123123', '123123@123.com', '311313451', 'img/user_head/2.jpg'),
(2, '李四', '123123', '123123@123.com', '311313451', NULL),
(3, 'dingding', '123456', NULL, NULL, NULL),
(4, '请输入用户名(必填)', '123456', NULL, NULL, NULL),
(32, 'ccc', '123', '', '', NULL),
(33, '789', '123', '', '', NULL),
(34, 'aaa', '123123', '123123@123.com', '311313451', NULL),
(35, 'bbb', '123123', '123123@123.com', '311313451', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game_comment`
--
ALTER TABLE `game_comment`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `game_index_standalone`
--
ALTER TABLE `game_index_standalone`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `game_news`
--
ALTER TABLE `game_news`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `game_newsdetails`
--
ALTER TABLE `game_newsdetails`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `game_user`
--
ALTER TABLE `game_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `game_comment`
--
ALTER TABLE `game_comment`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `game_index_standalone`
--
ALTER TABLE `game_index_standalone`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `game_news`
--
ALTER TABLE `game_news`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `game_newsdetails`
--
ALTER TABLE `game_newsdetails`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用表AUTO_INCREMENT `game_user`
--
ALTER TABLE `game_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
