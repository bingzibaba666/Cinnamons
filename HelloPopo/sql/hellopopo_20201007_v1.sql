/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : hellopopo

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-10-07 02:33:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `comid` varchar(255) DEFAULT NULL,
  `preview` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '卡布奇诺（热/冷）', '蒸煮牛奶与浓缩咖啡相融合，用丰厚绵密的奶泡覆顶，再撒上肉桂粉或可可粉。温馨提示：在奶泡消融前，请尽快享用。', '/menu/beverages/espresso/cappuccino', '/images/products/cappuccino.jpg', '/menu/beverages/espresso/cappuccino/', '', '22', 'beverages');
INSERT INTO `commodity` VALUES ('2', '焦糖玛奇朵（热/冷）', '玛奇朵在意大利语中的意思是“印记”。从蒸煮牛奶和添加风味糖浆开始，再倒入醇厚的浓缩咖啡，留下属于玛奇朵的独有印记。', '/menu/beverages/espresso/caramel-macchiato', '/images/products/caramel-macchiato.jpg', '/menu/beverages/espresso/caramel-macchiato/', 'true', '37', 'beverages');
INSERT INTO `commodity` VALUES ('3', '茶瓦纳™ 冰摇柚柚蜂蜜红茶', '混合了韩国柚子的清香、以色列柚汁的甘甜、西班牙粉柚汁的果香融于醇香红茶，颗颗饱满果粒和清甜柚子皮，点缀上蜂蜜层层深入的口感，让TA对这杯沁人心脾念念不忘 。', '/menu/beverages/teavana/honey-ruby-grapefruit-tea', '/images/products/iced-shaken-honey-ruby-grapefruit-black-tea.jpg', '/menu/beverages/teavana/honey-ruby-grapefruit-tea/', '', '34', 'beverages');
INSERT INTO `commodity` VALUES ('4', '星巴克®早餐综合咖啡豆', '这款醇度清淡的综合咖啡活泼而清爽，唤醒你的味蕾，带给你明快的第一印象，让你焕然一新，开始新的一天。', '/menu/coffee/whole-bean/medium-roast/starbucks-breakfast-blend', '/images/breakfast-blend-coffee-beans.png', '/menu/coffee/whole-bean/medium-roast/starbucks-breakfast-blend/', 'true', '25', 'beverages');
INSERT INTO `commodity` VALUES ('5', '星巴克®佛罗娜咖啡豆', '这是一款来自拉丁美洲咖啡和亚洲／太平洋地区咖啡的综合咖啡，醇度厚重，并带有意式烘焙咖啡的香甜味。', '/menu/coffee/whole-bean/dark-roast/starbucks-caffe-verona', '/images/caffe-verona-coffee-beans.png', '/menu/coffee/whole-bean/dark-roast/starbucks-caffe-verona/', '', '37', 'beverages');
INSERT INTO `commodity` VALUES ('6', '星巴克®哥伦比亚咖啡豆', '以平和著称，醇度中等、口感顺滑平衡，喝下满口丰润，带有清爽和坚果般风味。', '/menu/coffee/whole-bean/medium-roast/starbucks-colombia', '/images/products/colombia.jpg', '/menu/coffee/whole-bean/medium-roast/starbucks-colombia/', '', '36', 'beverages');
INSERT INTO `commodity` VALUES ('7', '星巴克®浓缩烘焙咖啡豆', '这款综合咖啡是我们所有浓缩咖啡饮料的核心，其特点是浓郁的香味以及柔和的酸度，且与浓厚的焦糖香甜味平衡搭配。', '/menu/coffee/whole-bean/dark-roast/starbucks-espresso-roast', '/images/espresso-roast-coffee-beans.png', '/menu/coffee/whole-bean/dark-roast/starbucks-espresso-roast/', '', '29', 'beverages');
INSERT INTO `commodity` VALUES ('8', '星巴克®埃塞俄比亚咖啡豆', '这款精心呈现的综合咖啡口感温和顺滑，带有花香和香料般风味，表达了我们对咖啡诞生地由衷的赞美。', '/menu/coffee/whole-bean/medium-roast/starbucks-ethiopia', '/images/ethiopia-coffee-beans.png', '/menu/coffee/whole-bean/medium-roast/starbucks-ethiopia/', '', '37', 'beverages');
INSERT INTO `commodity` VALUES ('9', '星巴克®意式烘焙咖啡豆', '这是一款醇度浓郁的多区域综合咖啡，经过比浓缩烘焙咖啡更深度的烘焙，醇度适中，带有烘焙后的甜感。', '/menu/coffee/whole-bean/dark-roast/starbucks-fairtrade-certified-italian-roast', '/images/italian-roast-coffee-beans.png', '/menu/coffee/whole-bean/dark-roast/starbucks-fairtrade-certified-italian-roast/', '', '23', 'beverages');
INSERT INTO `commodity` VALUES ('10', '星巴克®危地马拉安提瓜咖啡豆', '这是一款典雅、丰富并具有深度的咖啡，其精致的酸度与微妙的可可粉质感以及柔和的香料风味完美地平衡在了一起。', '/menu/coffee/whole-bean/medium-roast/starbucks-guatemala-antigua', '/images/guatemala-antigua-coffee-beans.png', '/menu/coffee/whole-bean/medium-roast/starbucks-guatemala-antigua/', '', '25', 'beverages');
INSERT INTO `commodity` VALUES ('11', '星巴克®首选咖啡豆', '一款非常平衡的咖啡，带有坚果和可可般的香味，由优质的拉丁美洲咖啡豆混合而成，我们一开始就为咖啡爱好者提供这款具有代表性的综合咖啡。', '/menu/coffee/whole-bean/medium-roast/starbucks-house-blend', '/images/house-blend-coffee-beans.png', '/menu/coffee/whole-bean/medium-roast/starbucks-house-blend/', 'true', '20', 'beverages');
INSERT INTO `commodity` VALUES ('12', '星巴克®肯亚咖啡豆', '肯亚咖啡拥有多层次复杂的风味，包含果汁般的酸度、明显丰富的葡萄柚味和葡萄酒的醇香般风味，醇度中等。', '/menu/coffee/whole-bean/medium-roast/starbucks-kenya', '/images/kenya-coffee-beans.png', '/menu/coffee/whole-bean/medium-roast/starbucks-kenya/', 'true', '37', 'beverages');
INSERT INTO `commodity` VALUES ('13', '星巴克®低因祥龙综合咖啡豆', '具有浓郁的草药味、香料味和泥土芳香；这款浓郁而平和的亚洲/太平洋地区综合咖啡展现出厚重的醇度以及令人惊奇的酸度之间的良好平衡。', '/menu/coffee/whole-bean/dark-roast/starbucks-komodo-dragon-blend', '/images/komodo-dragon-blend-coffee-beans.png', '/menu/coffee/whole-bean/dark-roast/starbucks-komodo-dragon-blend/', '', '39', 'beverages');
INSERT INTO `commodity` VALUES ('14', '星巴克®派克市场烘焙咖啡豆', '中等醇度并伴随着可可和烤果仁般的微妙风味，呈现出一杯令人愉悦而口感平衡的咖啡。', '/menu/coffee/whole-bean/medium-roast/starbucks-pike-place-roast', '/images/pike-place-roast-coffee-beans.png', '/menu/coffee/whole-bean/medium-roast/starbucks-pike-place-roast/', '', '26', 'beverages');
INSERT INTO `commodity` VALUES ('15', '星巴克®凤舞祥云综合咖啡豆', '这款亚洲/太平洋综合咖啡是自2009年来星巴克首款融入产自中国地区咖啡豆的综合咖啡。', '/menu/coffee/whole-bean/medium-roast/starbucks-south-of-the-clouds-blend', '/images/products/south-of-the-clouds.jpg', '/menu/coffee/whole-bean/medium-roast/starbucks-south-of-the-clouds-blend/', '', '21', 'beverages');
INSERT INTO `commodity` VALUES ('16', '星巴克®苏门答腊咖啡豆', '带有强烈的泥土芳香，风味异常集中；醇度厚重而浓郁，苏门答腊咖啡是我们非常畅销的其中一款单品咖啡。', '/menu/coffee/whole-bean/dark-roast/starbucks-sumatra', '/images/sumatra-coffee-beans.png', '/menu/coffee/whole-bean/dark-roast/starbucks-sumatra/', 'true', '36', 'beverages');
INSERT INTO `commodity` VALUES ('17', '美式咖啡（热/冷）', '简单即是美味，萃取经典浓缩咖啡，以水调和，香气浓郁蔓溢。', '/menu/beverages/espresso/caffe-americano', '/images/products/caffe-americano.jpg', '/menu/beverages/espresso/caffe-americano/', 'true', '38', 'beverages');
INSERT INTO `commodity` VALUES ('18', '拿铁（热/冷）', '本色的经典咖啡。新鲜萃取的浓缩咖啡中缓缓倒入蒸煮牛奶，覆上轻柔奶泡，简单的香与纯。', '/menu/beverages/espresso/caffe-latte', '/images/products/caffe-latte.jpg', '/menu/beverages/espresso/caffe-latte/', 'true', '21', 'beverages');
INSERT INTO `commodity` VALUES ('19', '摩卡（热/冷)', '摩卡最初是指一种带有巧克力风味的咖啡豆，现在，这份巧克力咖啡仍然带给你纯正的温暖。在浓缩咖啡中加入摩卡酱，与蒸煮牛奶一起交织出丝滑与醇厚。', '/menu/beverages/espresso/caffe-mocha', '/images/products/caffe-mocha.jpg', '/menu/beverages/espresso/caffe-mocha/', '', '26', 'beverages');
INSERT INTO `commodity` VALUES ('20', '浓缩咖啡', '萃取星巴克浓缩烘焙咖啡豆精华，每一口都馥郁满溢，伴随浓郁的焦糖香及多层次的口感，带你开启星巴克咖啡之旅。', '/menu/beverages/espresso/espresso', '/images/products/espresso.jpg', '/menu/beverages/espresso/espresso/', '', '24', 'beverages');
INSERT INTO `commodity` VALUES ('21', '馥芮白™', '选用星巴克精萃浓缩咖啡制成，融合绵密奶泡，风味更浓郁和甘甜。', '/menu/beverages/espresso/flat-white', '/images/products/flat-white.jpg', '/menu/beverages/espresso/flat-white/', 'true', '21', 'beverages');
INSERT INTO `commodity` VALUES ('22', '榛果风味拿铁（热/冷）', '榛果风味与醇厚的浓缩咖啡相得益彰，融合在蒸煮牛奶中，带给你特别温暖的醇香。', '/menu/beverages/espresso/hazelnut-flavored-latte', '/images/products/hazelnut-flavored-latte.jpg', '/menu/beverages/espresso/hazelnut-flavored-latte/', '', '34', 'beverages');
INSERT INTO `commodity` VALUES ('23', '香草风味拿铁（热/冷）', '清雅香甜的香草风味糖浆让浓缩咖啡变得浪漫起来，开启拿铁的香草浪漫之旅。', '/menu/beverages/espresso/vanilla-flavored-latte', '/images/products/vanilla-flavored-latte.jpg', '/menu/beverages/espresso/vanilla-flavored-latte/', '', '40', 'beverages');
INSERT INTO `commodity` VALUES ('24', '红茶拿铁（热/冷）', '优质红茶在蒸奶中慢慢的呈现出温和的口感，以柔和的奶泡锁住茶香，加以经典风味酱。这是红茶与牛奶的对话，优雅品享红茶文化。本饮品不含咖啡。', '/menu/beverages/teavana/black-tea-latte', '/images/products/black-tea-latte.jpg', '/menu/beverages/teavana/black-tea-latte/', '', '22', 'beverages');
INSERT INTO `commodity` VALUES ('25', '焦糖浓缩咖啡星冰乐', '香醇浓缩咖啡融于浓郁的焦糖咖啡星冰乐，最后在顶部的搅打稀奶油上淋上焦糖风味酱。让你停不了口的美味。', '/menu/beverages/frappuccino-blended-beverage/caramel-espresso-frappuccino', '/images/products/caramel-espresso-frappuccino.jpg', '/menu/beverages/frappuccino-blended-beverage/caramel-espresso-frappuccino/', '', '22', 'beverages');
INSERT INTO `commodity` VALUES ('26', '抹茶拿铁（热/冷）', '优质抹茶、蒸奶以及细腻奶泡加以经典风味酱融合于一杯饮品，柔顺香甜，清雅脱俗。本饮品不含咖啡。', '/menu/beverages/teavana/green-tea-latte', '/images/products/green-tea-latte.jpg', '/menu/beverages/teavana/green-tea-latte/', '', '36', 'beverages');
INSERT INTO `commodity` VALUES ('27', '冰摇红莓黑加仑茶', '红莓黑加仑果汁融合醇香冰红茶，两款风格各异的莓子与冰红茶摇出各自的果香，却又浑然一体，迷恋在莓与茶的酸甜中。', '/menu/beverages/teavana/iced-shaken-blackcurrant-raspberry-juiced-tea', '/images/products/blackcurrant-raspberry.jpg', '/menu/beverages/teavana/iced-shaken-blackcurrant-raspberry-juiced-tea/', '', '21', 'beverages');
INSERT INTO `commodity` VALUES ('28', '茶瓦纳™冰摇桃桃乌龙茶', '内含原榨桃汁加上吃得到的大颗白桃果肉， 吃上一口，尝上一块，留住唇间的鲜醇甘厚。更有茶香留恋回味，给TA淘气的味蕾茶选。', '/menu/beverages/teavana/iced-shaken-peach-green-tea', '/images/products/iced-shaken-peach-green-tea.jpg', '/menu/beverages/teavana/iced-shaken-peach-green-tea/', '', '35', 'beverages');
INSERT INTO `commodity` VALUES ('29', '芒果西番莲果茶星冰乐', '将花草茶的清爽，芒果西番莲果汁的酸甜与冰块融合。无需分清这一口是花香或果香，都是祛暑清凉的好饮品。', '/menu/beverages/frappuccino-blended-beverage/mango-passion-fruit-frappuccino', '/images/products/mango-passion-tea.jpg', '/menu/beverages/frappuccino-blended-beverage/mango-passion-fruit-frappuccino/', '', '34', 'beverages');
INSERT INTO `commodity` VALUES ('30', '摩卡星冰乐', '摩卡酱与星冰乐烘焙咖啡、在牛奶加冰块中绽放快乐，伴着雪白的稀奶油，让你每个瞬间都充满活力。', '/menu/beverages/frappuccino-blended-beverage/mocha-frappuccino', '/images/products/mocha-frappuccino.jpg', '/menu/beverages/frappuccino-blended-beverage/mocha-frappuccino/', '', '30', 'beverages');
INSERT INTO `commodity` VALUES ('31', '摩卡可可碎片星冰乐', '摩卡酱和咖啡在冰块的碰撞下魅力四射，可可碎片带来不同的口感，顶部覆以稀奶油与摩卡酱，让浓郁变得更加有趣。(可可碎片为代可可脂巧克力)', '/menu/beverages/frappuccino-blended-beverage/mocha-java-chip-frappuccino', '/images/products/mocha-java-chip-frappuccino.jpg', '/menu/beverages/frappuccino-blended-beverage/mocha-java-chip-frappuccino/', '', '35', 'beverages');
INSERT INTO `commodity` VALUES ('32', '经典巧克力饮品（热/冷）', '抵挡不住巧克力风味酱在蒸奶中飘散的浓郁可可香。只需在稀奶油上轻洒些许可可粉，就这样俘获你的心。', '/menu/beverages/signature-chocolate-beverage/signature-chocolate-beverage', '/images/products/signature-chocolate-beverage.jpg', '/menu/beverages/signature-chocolate-beverage/signature-chocolate-beverage/', '', '21', 'beverages');
INSERT INTO `commodity` VALUES ('33', '香草风味星冰乐', '香草风味糖浆与牛奶和冰块搅打出的奶香清甜，口感清爽怡人。', '/menu/beverages/frappuccino-blended-beverage/vanilla-frappuccino', '/images/products/vanilla-flavored-cream-frappuccino-blended-beverage.jpg', '/menu/beverages/frappuccino-blended-beverage/vanilla-frappuccino/', '', '21', 'beverages');
INSERT INTO `commodity` VALUES ('34', '抹茶星冰乐', '抹茶的清新，加一份牛奶的丝滑，与冰块和稀奶油搅拌出特有的清爽。', '/menu/beverages/frappuccino-blended-beverage/green-tea-cream-frappuccino', '/images/products/green-tea-frappuccino.jpg', '/menu/beverages/frappuccino-blended-beverage/green-tea-cream-frappuccino/', '', '40', 'beverages');
INSERT INTO `commodity` VALUES ('35', '层层牛肉法棍 ', '烘烤后面包外脆里嫩，浓郁的芝士口感搭配牛肉以及蔬菜的甘甜味，鲜香满溢内夹优质牛肉、甜椒和洋葱外加上选的芝士和黄油，馅料丰富咖啡搭配推荐：星巴克®意式烘焙咖啡豆', '/menu/food/sandwich/beef-baguette', '/images/products/beef-baguette.jpg', '/menu/food/sandwich/beef-baguette/', '', '38', 'beverages');
INSERT INTO `commodity` VALUES ('36', '蓝莓曲奇风轻乳酪蛋糕', '星巴克研发团队创新研发出的蓝莓曲奇风轻乳酪蛋糕，拼配三种不同品牌产地的奶油干酪使用独特的搅拌、烘烤工艺，打造出轻盈的芝士风味，和细腻丝滑口感，区别于纽约芝士蛋糕的醇厚。底部饼干底选择奥利奥风味曲奇制成，与众不同却不失经典的搭配，成为整只蛋糕的点睛之笔。配上大果粒蓝莓和树莓的清爽，这款轻盈爽滑的轻乳酪蛋糕更适合搭配有水果风味的饮品。咖啡搭配推荐：星巴克®苏门答腊咖啡豆 / 星巴克®浓缩烘焙咖啡豆', '/menu/food/cake-dessert/blueberry-cheesecake', '/images/products/blueberry-and-cookie-style-cheesecake.jpg', '/menu/food/cake-dessert/blueberry-cheesecake/', 'true', '28', 'beverages');
INSERT INTO `commodity` VALUES ('37', '蓝莓麦芬', '享受进口大蓝莓果粒带来的曼妙滋味星巴克独有美式配方制作顶层口感酥脆，内部松软咖啡搭配建议：星巴克®早餐综合咖啡豆 / 星巴克®首选咖啡豆', '/menu/food/bakery/blueberry-muffin', '/images/products/blueberry-muffin.jpg', '/menu/food/bakery/blueberry-muffin/', '', '24', 'beverages');
INSERT INTO `commodity` VALUES ('38', '香浓巧克力麦芬', '享受高品质欧洲巧克力的细腻质感星巴克独有美式配方制作巧克力风味浓郁醇正咖啡搭配建议：星巴克®危地马拉安提瓜咖啡豆', '/menu/food/bakery/chocolate-muffin', '/images/products/chocolate-muffin.jpg', '/menu/food/bakery/chocolate-muffin/', '', '38', 'beverages');
INSERT INTO `commodity` VALUES ('39', '法式香酥可颂', '16层制作工艺，松软十足金黄色的外表，酥脆可口蜂巢状的内部层次，法国进口高品质黄油，香味浓郁，口感酥脆咖啡搭配建议：星巴克®早餐综合咖啡豆', '/menu/food/bakery/french-butter-croissant', '/images/products/french-butter-croissant.jpg', '/menu/food/bakery/french-butter-croissant/', '', '23', 'beverages');
INSERT INTO `commodity` VALUES ('40', '火腿芝士可颂', '优质进口黄油制作面团， 精心烤制的酥香可颂，内夹高品质芝士和火腿肉片，咸香适口，回味无穷。咖啡搭配推荐：星巴克®首选咖啡豆 / 星巴克®派克市场烘焙咖啡豆', '/menu/food/sandwich/ham-and-cheese-croissant', '/images/products/ham-and-cheese-croissant.jpg', '/menu/food/sandwich/ham-and-cheese-croissant/', '', '25', 'beverages');
INSERT INTO `commodity` VALUES ('41', '蜂蜜提子司康', '提子干经朗姆酒精心炮制，具有独特口感进口高品质黄油制作松软酥脆、香甜适口咖啡搭配建议：星巴克®哥伦比亚咖啡豆', '/menu/food/bakery/honey-raisin-scone', '/images/products/honey-raisin-scone.jpg', '/menu/food/bakery/honey-raisin-scone/', '', '29', 'beverages');
INSERT INTO `commodity` VALUES ('42', '星巴克咖啡提拉米苏蛋糕', '精选意大利进口马斯卡波尼芝士和玛莎拉白葡萄酒，与星巴克咖啡相融合，将芝士、酒和咖啡的独特风味融合于一身，相得益彰。更有意大利进口手指饼干浸泡其中，带给你视觉和味觉的双重享受。甜与苦就像天使与魔鬼，和谐而又冲突地结合起来。咖啡搭配推荐：星巴克®危地马拉安提瓜咖啡豆 / 星巴克®佛罗娜咖啡豆', '/menu/food/cake-dessert/italian-tiramisu', '/images/products/starbucks-coffee-tiramisu.jpg', '/menu/food/cake-dessert/italian-tiramisu/', 'true', '27', 'beverages');
INSERT INTO `commodity` VALUES ('43', '法式马卡龙', '五种独特口味：焦糖玛奇朵、栗香拿铁、覆盆子、抹茶拿铁、香草正宗法式传统工艺制作外酥内软、口味清甜咖啡搭配推荐：星巴克®肯亚咖啡豆 / 星巴克®埃塞俄比亚咖啡豆', '/menu/food/cake-dessert/macaron', '/images/products/macaron.jpg', '/menu/food/cake-dessert/macaron/', 'true', '38', 'food');
INSERT INTO `commodity` VALUES ('44', '纽约风浓郁重芝士蛋糕', '  地道的纽约芝士蛋糕配方与烘焙技术，带来最纯正的浓郁风味  清新独特的酸味奶油裱花，每一片都是独一无二的精致  香醇浓郁的重磅芝士，甄选新西兰进口芝士  重点感受：绵密口感与融入口中的醇厚芝士芳香  酥脆饼干底，带来丰富口感层次咖啡搭配推荐：星巴克®苏门答腊咖啡豆 / 星巴克®凤舞祥云综合咖啡豆', '/menu/food/cake-dessert/new-york-cheesecake', '/images/products/new-york-style-creamy-cheesecake.jpg', '/menu/food/cake-dessert/new-york-cheesecake/', '', '33', 'food');
INSERT INTO `commodity` VALUES ('45', '全麦核桃麦芬', '口感松软、有弹性多种坚果富有嚼劲星巴克独有配方制作咖啡搭配建议：星巴克®早餐综合咖啡豆 / 星巴克®首选咖啡豆', '/menu/food/bakery/whole-wheat-walnut-muffin', '/images/products/whole-wheat-walnut-muffin.jpg', '/menu/food/bakery/whole-wheat-walnut-muffin/', '', '38', 'food');
INSERT INTO `commodity` VALUES ('46', '星巴克VIA®摩卡风味免煮咖啡固体饮料', '我们的星巴克VIA®摩卡免煮咖啡为您带来无法抗拒的美妙享受：它将香醇的可可风味，牛奶风味和浓郁的星巴克®咖啡绝妙地加以搭配。作为对星巴克®手工调制摩卡所获得的成功的礼赞，摩卡免煮咖啡让您能够随时随地享受摩卡的浓郁风味和富有深度。', '/menu/coffee/starbucks-via/via-dairy/starbucks-via-caffe-mocha', '/images/products/via-caffe-mocha.jpg', '/menu/coffee/starbucks-via/via-dairy/starbucks-via-caffe-mocha/', '', '37', 'food');
INSERT INTO `commodity` VALUES ('47', '星巴克VIA®焦糖拿铁风味免煮咖啡固体饮料', '香醇美味，即刻随享。我们的星巴克VIA® 焦糖拿铁风味咖啡饮料（固体饮料）由香醇的星巴克® 咖啡，奶粉以及香甜的焦糖风味调配而成。我们对经典的焦糖手工调制饮料的热爱激发我们创造了这款美味的咖啡饮料。无论是每一个早晨，当您正要开启崭新的一天，还是每一个午后，当您需要享受美味的下午茶，您都可以享用一杯星巴克® 焦糖拿铁风味咖啡饮料。', '/menu/coffee/starbucks-via/via-dairy/starbucks-via-caramel-latte', '/images/products/via-caramel-latte.jpg', '/menu/coffee/starbucks-via/via-dairy/starbucks-via-caramel-latte/', '', '23', 'food');
INSERT INTO `commodity` VALUES ('48', '星巴克VIA®哥伦比亚免煮咖啡', '以平和著称，醇度中等、口感顺滑平衡，喝下满口丰润，带有清爽和坚果般风味。', '/menu/coffee/starbucks-via/via-black/starbucks-via-colombia', '/images/products/via-colombia.jpg', '/menu/coffee/starbucks-via/via-black/starbucks-via-colombia/', '', '33', 'food');
INSERT INTO `commodity` VALUES ('49', '星巴克VIA®意式烘焙免煮咖啡', '这是一款醇度浓郁的多区域综合咖啡，经过比浓缩烘焙咖啡更深度的烘焙，醇度适中，带有烘焙后的甜感。', '/menu/coffee/starbucks-via/via-black/starbucks-via-italian-roast', '/images/products/via-italian-roast.jpg', '/menu/coffee/starbucks-via/via-black/starbucks-via-italian-roast/', '', '30', 'food');
INSERT INTO `commodity` VALUES ('50', '星巴克VIA®香草拿铁风味免煮咖啡固体饮料', '我们广受欢迎的星巴克手工调制香草拿铁促使我们为咖啡爱好者创造出这款能够随时随地享受美味的咖啡。星巴克VIA®香草拿铁免煮咖啡带有醇厚的牛奶风味和饱满甜美的香草风味，同时又不失星巴克咖啡的浓郁。让您能随时随地尽情享受美味拿铁。', '/menu/coffee/starbucks-via/via-dairy/starbucks-via-vanilla-latte', '/images/products/via-vanilla-latte.jpg', '/menu/coffee/starbucks-via/via-dairy/starbucks-via-vanilla-latte/', '', '22', 'food');
INSERT INTO `commodity` VALUES ('51', '美式松饼', '两片轻盈酥松的美式松饼搭配加拿大进口槭树糖浆（枫糖浆），层层甜蜜令人陶醉，带给你超值经典的美式早餐新体验。咖啡搭配推荐：冷萃咖啡 / 美式咖啡', '/menu/food/bakery/american-style-pancakes', '/images/products/american-style-pancakes.jpg', '/menu/food/bakery/american-style-pancakes/', '', '28', 'food');
INSERT INTO `commodity` VALUES ('52', '牛油果鸡肉焙果', '牛油果鸡肉焙果内含熏煮过的香嫩鸡胸肉，搭配美洲进口牛油果酱和车达芝士，口味清新健康焙果一定要趁热吃，热腾腾的焙果外部松脆，内部坚韧，嚼劲十足咖啡搭配推荐：冷萃咖啡', '/menu/food/sandwich/avocado-and-chicken-bagel', '/images/products/avocado-and-chicken-bagel.jpg', '/menu/food/sandwich/avocado-and-chicken-bagel/', '', '22', 'food');
INSERT INTO `commodity` VALUES ('53', '培根蛋可颂堡', '烟熏培根和荷包蛋作为馅料，加上优质车达芝士放入经典可颂堡中，在全世界的星巴克都是当之无愧的明星早餐产品。咖啡搭配推荐：星巴克®佛罗娜咖啡豆', '/menu/food/sandwich/bacon-and-egg-croissant-bun', '/images/products/bacon-and-egg-croissant-bun.jpg', '/menu/food/sandwich/bacon-and-egg-croissant-bun/', '', '21', 'food');
INSERT INTO `commodity` VALUES ('54', '蜜汁培根蛋卷', '蜜汁处理过的培根，搭配嫩滑炒鸡蛋和美味车达芝士，创新的用菠菜风味卷饼包裹一口下去，馥郁香气和丰富口感立刻充满口腔，令人回味无穷。咖啡搭配推荐：星巴克®佛罗娜咖啡豆 / 星巴克®危地马拉安提瓜咖啡豆', '/menu/food/sandwich/bacon-and-egg-wrap', '/images/products/bacon-and-egg-wrap.jpg', '/menu/food/sandwich/bacon-and-egg-wrap/', '', '40', 'food');
INSERT INTO `commodity` VALUES ('55', '鸡肉芝香帕尼尼', '松软可口的帕尼尼，精选优质香浓芝士，融合喷香鸡肉，让你口口满足。咖啡搭配推荐：星巴克®首选咖啡豆 / 星巴克®派克市场烘焙咖啡豆', '/menu/food/sandwich/chicken-panini', '/images/products/chicken-panini.jpg', '/menu/food/sandwich/chicken-panini/', '', '25', 'food');
INSERT INTO `commodity` VALUES ('56', '旋风玉桂酥', '提子、核桃和玉桂风味平衡搭配口感酥香美味黄油香气、独特的玉桂粉咖啡搭配推荐：星巴克®哥伦比亚咖啡豆', '/menu/food/bakery/cinnamon-swirl', '/images/products/cinnamon-swirl.jpg', '/menu/food/bakery/cinnamon-swirl/', '', '21', 'food');
INSERT INTO `commodity` VALUES ('57', '浓醇三重黑巧克力蛋糕', '  三种源自法国和比利时的纯正黑巧融合而成，不同产地的巧克力带来更加纯正浓郁的可可风味。  蛋糕层与慕斯完美融合不仅提升了蛋糕整体的巧克力风味，还帮助降低了蛋糕的整体甜度  嵌入蛋糕胚中的顺滑生巧，惊喜味蕾  体验入口即化的浓郁可可风味咖啡搭配推荐：星巴克®危地马拉安提瓜咖啡豆 / 星巴克®埃塞俄比亚咖啡豆', '/menu/food/cake-dessert/dark-chocolate-cake', '/images/products/triple-dark-chocolate-cake.jpg', '/menu/food/cake-dessert/dark-chocolate-cake/', 'true', '29', 'food');
INSERT INTO `commodity` VALUES ('58', '法式闪电泡芙', '六种口味，丰富诱人：开心果、香草、柠檬、焦糖、覆盆子、巧克力产品小巧精致表面装饰手工裱撒，独具匠心咖啡搭配推荐：冷萃咖啡 / 冰咖啡', '/menu/food/cake-dessert/eclair', '/images/products/eclair.jpg', '/menu/food/cake-dessert/eclair/', '', '38', 'food');
INSERT INTO `commodity` VALUES ('59', '谷物组合希腊式风味酸奶（混合莓果）', '上佳原料：甄选优质奶源生牛乳+欧洲进口菌种发酵独特工艺：采用希腊式物理脱乳清工艺，质地醇厚，奶香浓郁健康美味两不误：· 低脂的风味酸奶更健康· 含有真实果肉的蓝莓果酱，点亮口感· 丰富谷物组合（燕麦、巴旦木、蔓越莓和南瓜籽）更营养', '/menu/food/yoghurt/greek-flavored-yoghurt-mixed-berry', '/images/products/greek-flavored-yoghurt-mixed-berry.jpg', '/menu/food/yoghurt/greek-flavored-yoghurt-mixed-berry/', '', '40', 'food');
INSERT INTO `commodity` VALUES ('60', '谷物组合希腊式风味酸奶（黄桃）', '上佳原料：甄选优质奶源生牛乳+欧洲进口菌种发酵独特工艺：采用希腊式物理脱乳清工艺，质地醇厚，奶香浓郁健康美味两不误：· 低脂的风味酸奶更健康· 含有真实果肉的黄桃果酱，甜蜜清爽· 丰富谷物组合（燕麦、巴旦木、蔓越莓和南瓜籽）更营养', '/menu/food/yoghurt/greek-flavored-yoghurt-yellow-peach', '/images/products/greek-flavored-yoghurt-yellow-peach.jpg', '/menu/food/yoghurt/greek-flavored-yoghurt-yellow-peach/', '', '27', 'food');
INSERT INTO `commodity` VALUES ('61', '双重芝士火腿吐司', '双重芝士：埃德姆芝士+切达芝士加热后芝士行程拉丝效果，口感丰富，香味无穷经典法式午餐的上佳选择咖啡搭配推荐：星巴克®凤舞祥云综合咖啡豆', '/menu/food/sandwich/ham-and-double-cheese-croque-monsieur', '/images/products/ham-and-double-cheese-croque-monsieur.jpg', '/menu/food/sandwich/ham-and-double-cheese-croque-monsieur/', '', '32', 'food');
INSERT INTO `commodity` VALUES ('62', '高达芝士火腿星明治', '长时间的发酵，口感更丰富口感轻柔咸香采用美味的高达芝士咖啡搭配推荐：星巴克®首选咖啡豆 / 星巴克®派克市场烘焙咖啡豆', '/menu/food/sandwich/ham-and-gouda-sandwich', '/images/products/ham-and-gouda-sandwich.jpg', '/menu/food/sandwich/ham-and-gouda-sandwich/', '', '26', 'food');
INSERT INTO `commodity` VALUES ('63', '层层榛子果仁酥', '传统27层法式可颂工艺层次分明，口感酥脆松软甄选法国进口黄油和进口榛子原料口感浓郁、酥脆咖啡搭配推荐：星巴克®早餐综合咖啡豆 / 星巴克®哥伦比亚咖啡豆', '/menu/food/bakery/hazelnut-croissant', '/images/products/hazelnut-croissant.jpg', '/menu/food/bakery/hazelnut-croissant/', '', '24', 'food');
INSERT INTO `commodity` VALUES ('64', '香浓巧克力可颂', '借鉴传统27层制作工艺采用高品质进口巧克力条作为内馅香味浓郁，酥脆有韧性咖啡搭配推荐：星巴克®危地马拉安提瓜咖啡豆', '/menu/food/bakery/premium-chocolate-croissant', '/images/products/premium-chocolate-croissant.jpg', '/menu/food/bakery/premium-chocolate-croissant/', '', '27', 'food');
INSERT INTO `commodity` VALUES ('65', '金枪鱼帕尼尼', '松软可口的帕尼尼，包裹鲜香金枪鱼，搭配香浓芝士，微微加热，芝士融化，回味无穷。咖啡搭配推荐：星巴克®意式烘焙咖啡豆', '/menu/food/sandwich/tuna-panini', '/images/products/tuna-panini.jpg', '/menu/food/sandwich/tuna-panini/', '', '34', 'food');
INSERT INTO `commodity` VALUES ('66', '12oz 纯黑/古铜亮面品牌桌面杯', '  双层不锈钢材质  别致舒适手柄，一体成型式弯曲舒适感  白色亮面工艺，银色金属拉丝效果', '/menu/merchandise/reserve-store-merchandise/12oz-black-bronze-brand-handle-mug', '/images/products/12oz-black-bronze-brand-handle-mug.jpg', '/menu/merchandise/reserve-store-merchandise/12oz-black-bronze-brand-handle-mug/', '', '28', 'food');
INSERT INTO `commodity` VALUES ('67', '银色/白色亮面品牌桌面杯', '  双层不锈钢材质  别致舒适手柄，一体成型式弯曲舒适感  白色亮面工艺，银色金属拉丝效果', '/menu/merchandise/core-merchandise-2017/12oz-silver-white-brand-handle-mug', '/images/products/12oz-silver-white-brand-handle-mug.jpg', '/menu/merchandise/core-merchandise-2017/12oz-silver-white-brand-handle-mug/', '', '39', 'food');
INSERT INTO `commodity` VALUES ('68', '12oz 彰显本色黑色/深灰不锈钢桌面杯', '双层不锈钢美人鱼压纹杯盖。黑色款为金属斜拉丝效果，深灰色款为工业风设计，可看见不锈钢材质本身的印记，风格硬朗。', '/menu/merchandise/core-merchandise-2017/12oz-true-essence-stainless-steel-bottle', '/images/products/12oz-true-essence-stainless-steel-bottle.jpg', '/menu/merchandise/core-merchandise-2017/12oz-true-essence-stainless-steel-bottle/', '', '28', 'food');
INSERT INTO `commodity` VALUES ('69', '12oz 纯白磨砂玻璃杯', '白色干净的玻璃杯身，搭配底部磨砂处理，具有手工感。', '/menu/merchandise/core-merchandise-2017/12oz-white-frosted-glass-cup', '/images/products/12oz-white-frosted-glass-cup.jpg', '/menu/merchandise/core-merchandise-2017/12oz-white-frosted-glass-cup/', '', '38', 'food');
INSERT INTO `commodity` VALUES ('70', '16oz 原木黑色拎绳不锈钢保温杯', '仿木纹水转印工艺。磨砂质感搭配黑色Logo和拎手，中性有格调，给人以回归自然的宁静。', '/menu/merchandise/core-merchandise-2017/16oz-black-wooden-stainless-steel-bottle-with-strap', '/images/products/16oz-black-wooden-stainless-steel-bottle-with-strap.jpg', '/menu/merchandise/core-merchandise-2017/16oz-black-wooden-stainless-steel-bottle-with-strap/', 'true', '22', 'food');
INSERT INTO `commodity` VALUES ('71', '16oz 彰显本色黑色/深灰不锈钢随行杯', '分段式表面处理，底部为不锈钢抛光效果，上半部分为工业风设计，未经打磨，讲究真实，彰显本色。', '/menu/merchandise/core-merchandise-2017/16oz-true-essence-black-dark-gray-stainless-steel-travel-bottle', '/images/products/16oz-true-essence-stainless-steel-travel-bottle.jpg', '/menu/merchandise/core-merchandise-2017/16oz-true-essence-black-dark-gray-stainless-steel-travel-bottle/', 'true', '28', 'food');
INSERT INTO `commodity` VALUES ('72', '9oz 臻选玻璃杯', '  简约杯身搭配Reserve Wordmark  带把手，易拿取  可放冷水或热水', '/menu/merchandise/reserve-store-merchandise/9oz-reserve-glass-cup', '/images/products/9oz-reserve-glass-cup.jpg', '/menu/merchandise/reserve-store-merchandise/9oz-reserve-glass-cup/', '', '22', 'food');
INSERT INTO `commodity` VALUES ('73', '12oz 烫金品牌黑色马克杯', '黑色杯面运用泼点釉搭配镭射Wordmark，隐约的亮色使得整体黑色不再沉闷。这款马克杯另有其他杯型（3oz/16oz）和颜色（白色）可供选择。', '/menu/merchandise/core-merchandise-2017/12oz-black-gilded-brand-mug', '/images/products/12oz-black-gilded-brand-mug.jpg', '/menu/merchandise/core-merchandise-2017/12oz-black-gilded-brand-mug/', 'true', '33', 'food');
INSERT INTO `commodity` VALUES ('74', '12oz 烫金品牌白色马克杯', '白色外杯磨砂釉搭配内杯亮面釉，即便饮茶和咖啡也不会溜茶渍。这款马克杯另有其他杯型（3oz/16oz）和颜色（黑色）可供选择。', '/menu/merchandise/core-merchandise-2017/12oz-white-gilded-brand-mug', '/images/products/12oz-white-gilded-brand-mug.jpg', '/menu/merchandise/core-merchandise-2017/12oz-white-gilded-brand-mug/', '', '29', 'food');
INSERT INTO `commodity` VALUES ('75', '16oz 烫金品牌黑色马克杯', '黑色杯面运用泼点釉搭配镭射Wordmark，隐约的亮色使得整体黑色不再沉闷。这款马克杯另有其他杯型（3oz/12oz）和颜色（白色）可供选择。', '/menu/merchandise/core-merchandise-2017/16oz-black-gilded-brand-mug', '/images/products/16oz-black-gilded-brand-mug.jpg', '/menu/merchandise/core-merchandise-2017/16oz-black-gilded-brand-mug/', '', '24', 'food');
INSERT INTO `commodity` VALUES ('76', '16oz 香槟金品牌不锈钢桌面杯', '古铜色典雅不失品质，双层不锈钢防烫。', '/menu/merchandise/reserve-store-merchandise/16oz-champagne-gold-brand-stainless-steel-cup', '/images/products/16oz-champagne-gold-brand-stainless-steel-cup.jpg', '/menu/merchandise/reserve-store-merchandise/16oz-champagne-gold-brand-stainless-steel-cup/', 'true', '21', 'food');
INSERT INTO `commodity` VALUES ('77', '16oz 烫金品牌白色马克杯', '白色外杯磨砂釉搭配内杯亮面釉，即便饮茶和咖啡也不会溜茶渍。这款马克杯另有其他杯型（3oz/12oz）和颜色（黑色）可供选择。', '/menu/merchandise/core-merchandise-2017/16oz-white-gilded-brand-mug', '/images/products/16oz-white-gilded-brand-mug.jpg', '/menu/merchandise/core-merchandise-2017/16oz-white-gilded-brand-mug/', '', '36', 'food');
INSERT INTO `commodity` VALUES ('78', '3oz 烫金品牌黑色试尝杯', '黑色杯面运用泼点釉搭配镭射Wordmark，隐约的亮色使得整体黑色不再沉闷。这款马克杯另有其他杯型（12oz/16oz）和颜色（白色）可供选择。', '/menu/merchandise/core-merchandise-2017/3oz-black-gilded-brand-mug', '/images/products/3oz-black-gilded-brand-mug.jpg', '/menu/merchandise/core-merchandise-2017/3oz-black-gilded-brand-mug/', '', '34', 'food');
INSERT INTO `commodity` VALUES ('79', '3oz 烫金品牌白色试尝杯', '白色外杯磨砂釉搭配内杯亮面釉，即便饮茶和咖啡也不会溜茶渍。这款马克杯另有其他杯型（12oz/16oz）和颜色（黑色）可供选择。', '/menu/merchandise/core-merchandise-2017/3oz-white-gilded-brand-mug', '/images/products/3oz-white-gilded-brand-mug.jpg', '/menu/merchandise/core-merchandise-2017/3oz-white-gilded-brand-mug/', '', '39', 'food');
INSERT INTO `commodity` VALUES ('80', '500ml 黑色Logo水瓶', '水平中间可旋开，方便清洗，方便放入冰块。杯盖增加吊绳功能，方便户外携带。', '/menu/merchandise/core-merchandise-2017/500ml-black-logo-water-bottle', '/images/products/500ml-black-logo-water-bottle.jpg', '/menu/merchandise/core-merchandise-2017/500ml-black-logo-water-bottle/', '', '25', 'food');
INSERT INTO `commodity` VALUES ('81', '500ml 金色Logo水瓶', '古铜色金色瓶身，时尚大方。新增拎手，方便外出携带。', '/menu/merchandise/reserve-store-merchandise/500ml-gold-logo-water-bottle', '/images/products/500ml-gold-logo-water-bottle.jpg', '/menu/merchandise/reserve-store-merchandise/500ml-gold-logo-water-bottle/', '', '24', 'coffee');
INSERT INTO `commodity` VALUES ('82', '500ml 白色Logo水瓶', '水平中间可旋开，方便清洗，方便放入冰块。杯盖增加吊绳功能，方便户外携带。', '/menu/merchandise/core-merchandise-2017/500ml-white-logo-water-bottle', '/images/products/500ml-white-logo-water-bottle.jpg', '/menu/merchandise/core-merchandise-2017/500ml-white-logo-water-bottle/', '', '33', 'coffee');
INSERT INTO `commodity` VALUES ('83', '腰果', '营养健康的果仁，入口酥脆，特有的坚果香味充斥着你的味蕾，让你随时都能补充能量。咖啡搭配建议： 拿铁/美式咖啡。', '/menu/food/package/cashews', '/images/products/cashews.jpg', '/menu/food/package/cashews/', '', '21', 'coffee');
INSERT INTO `commodity` VALUES ('84', '英伦风味黄油饼干', '富含黄油，有着浓郁绵密的奶香味，口感厚实浓郁酥脆。起源于苏格兰中世纪的英格兰甜点，当时稀有昂贵。至今成为苏格兰的经典点心，美味袭卷欧美大陆。用美式咖啡的清爽口感搭配上浓郁的奶香黄油饼干，不仅平衡了黄油饼干在嘴中绵密浓郁的口感，而且令你回味香甜不腻。简洁的包装礼盒，不管是送人还是拿来用作朋友家人分享，都是不错的选择，适用于较甜的食品。咖啡搭配建议： 美式咖啡/浓缩咖啡。', '/menu/food/package/english-butter-shortbread', '/images/products/shortbread.png', '/menu/food/package/english-butter-shortbread/', '', '26', 'coffee');
INSERT INTO `commodity` VALUES ('85', '混合果仁果脯', '内含杏仁、夏威夷果、腰果、蔓越莓果干、蓝莓果干，品种繁多，回味香浓。 适用于口感较平衡的食品。咖啡搭配建议： 拿铁/美式咖啡。', '/menu/food/package/fruit-and-nuts', '/images/products/fruitnnuts.jpg', '/menu/food/package/fruit-and-nuts/', '', '39', 'coffee');
INSERT INTO `commodity` VALUES ('86', '棒棒糖', '原装法国进口的水果风味棒棒糖，櫻桃味、可乐豆味、橙子味、柠檬味、草莓味，种类繁多，颜色鲜艳，同时满足了视觉有味蕾的双重感受。', '/menu/food/package/lollipops-cherry-cerise-cola-orange-lemon-citron-strawberry-frais', '/images/products/lollipops.jpg', '/menu/food/package/lollipops-cherry-cerise-cola-orange-lemon-citron-strawberry-frais/', '', '31', 'coffee');
INSERT INTO `commodity` VALUES ('87', '咖啡味蛋卷', '秉承了香港优良的传统蛋卷工艺，口感酥脆馥郁，首次融入了星巴克的咖啡，融汇中西风味，有别于传统的口感和心意。简洁大气的包装礼盒，无论是送礼还是家人朋友分享，都是彰显品味高端送礼之选。适用于口感较平衡的食品。咖啡搭配建议： 拿铁/美式咖啡。', '/menu/food/package/starbucks-coffee-wafer-rolls', '/images/products/waferrolls.jpg', '/menu/food/package/starbucks-coffee-wafer-rolls/', '', '30', 'coffee');
INSERT INTO `commodity` VALUES ('88', '薄荷味口香糖（无糖）', '原装进口无糖薄荷风味口香糖，冰霜强劲的薄荷风味，再加上便携简约的包装，让你随时随地都能清新你的口腔。', '/menu/food/package/sugar-free-chewing-gum-peppermint', '/images/products/starbucks-chewing-gum.jpg', '/menu/food/package/sugar-free-chewing-gum-peppermint/', '', '28', 'coffee');
INSERT INTO `commodity` VALUES ('89', '薄荷味硬糖（无糖）', '原装美国进口无糖薄荷风味硬糖，小巧精致的包装，冰霜强劲的清新风味，让你随时都能提神醒脑。', '/menu/food/package/sugar-free-classic-mints-peppermint', '/images/products/Starbucks-mints.jpg', '/menu/food/package/sugar-free-classic-mints-peppermint/', '', '37', 'coffee');
INSERT INTO `commodity` VALUES ('90', '星巴克ORIGAMI™便携式滴滤咖啡（研磨咖啡粉）星巴克®佛罗娜烘焙咖啡系列', '这款咖啡有过3个名称。最初在1975年，我们为一家西雅图的餐厅创造了这款咖啡豆，当时命名为杰克综合咖啡豆。由于广受欢迎，我们开始在门店中为顾客手工混合这款咖啡豆，并且根据混合的比例，以80/20综合咖啡来命名它。我们的顾客对这款咖啡的热爱和推崇经久不衰，最终，我们将它纳入星巴克正式的产品系列中，取名佛罗娜，以纪念这座城市激发我们的诸多灵感。无论哪个名字，都传递了这款咖啡的浪漫故事。', '/menu/coffee/starbucks-origami/dark-roast/starbucks-origami-caffe-verona', '/images/products/origami-verona.jpg', '/menu/coffee/starbucks-origami/dark-roast/starbucks-origami-caffe-verona/', '', '36', 'coffee');
INSERT INTO `commodity` VALUES ('91', '星巴克ORIGAMI™便携式滴滤咖啡（研磨咖啡粉）星巴克®派克市场烘焙咖啡系列', '从1971年星巴克在西雅图的派克市场开了第一家门店开始到现在门店遍布全世界，我们的顾客希望能在星巴克喝到新鲜煮制的咖啡，可以在一天中的任何时刻享用。所以2008年我们的咖啡大师用心混合并烘焙出这款综合咖啡，风味均匀和谐，口感平和，保留了其中所有咖啡的特色，同时也没有任何一种风味过于突兀，这款咖啡混合了拉丁美洲咖啡，带有轻微的可可风味和烤坚果风味，适合您每天享受。', '/menu/coffee/starbucks-origami/medium-roast/starbucks-origami-pike-place-roast', '/images/products/origami-pike-place.jpg', '/menu/coffee/starbucks-origami/medium-roast/starbucks-origami-pike-place-roast/', '', '38', 'coffee');
INSERT INTO `commodity` VALUES ('92', '慢烤火腿芝士恰巴特', '5小时以上慢烤的意式熏煮火腿肉, 搭配香嫩鸡蛋饼以及轻柔咸香的高达芝士，放入外酥里软的恰巴特面包中，搭配一杯钟爱的咖啡，全新一天，从这款美味早餐开始吧！咖啡搭配推荐：星巴克®苏门答腊咖啡豆', '/menu/food/sandwich/slow-roasted-ham-cheese-ciabatta', '/images/products/slow-roasted-ham-cheese-ciabatta.jpg', '/menu/food/sandwich/slow-roasted-ham-cheese-ciabatta/', '', '23', 'coffee');
INSERT INTO `commodity` VALUES ('93', '火鸡培根英式麦芬', '优质全麦面粉制作的英式麦芬，健康看得见。内夹香酥诱人的火鸡培根肉和质地细腻，口味柔和的白车达芝士，还有轻盈的纯蛋白饼。提供优质蛋白质的健康早餐选择。咖啡搭配推荐：星巴克®苏门答腊咖啡豆', '/menu/food/sandwich/turkey-bacon-english-muffin', '/images/products/turkey-bacon-english-muffin.jpg', '/menu/food/sandwich/turkey-bacon-english-muffin/', '', '35', 'coffee');
INSERT INTO `commodity` VALUES ('94', '牛肉芝士可颂', '酥香可颂，搭配美味牛肉及芝士，口感上丰富的层次感，满足你挑剔的味蕾。咖啡搭配推荐：馥芮白仅江浙沪门店', '/menu/food/sandwich/beef-cheese-croissant', '/images/products/beef-cheese-croissant.jpg', '/menu/food/sandwich/beef-cheese-croissant/', '', '21', 'coffee');
INSERT INTO `commodity` VALUES ('95', '凯撒鸡肉卷', '凯撒鸡肉卷口味经典，风味浓厚。秘制烟熏鸡肉和培根打造双蛋白，同时搭配新鲜蔬菜馅料丰富十足。咖啡搭配推荐：冷萃冰咖啡仅江浙沪门店', '/menu/food/sandwich/caesar-chicken-wrap', '/images/products/caesar-chicken-wrap.jpg', '/menu/food/sandwich/caesar-chicken-wrap/', '', '20', 'coffee');
INSERT INTO `commodity` VALUES ('96', '经典瑞士卷', '瑞士卷是经典必备的长青产品，采用进口高品质奶油制作，蛋糕胚外表金黄、细腻松软湿润、奶香味浓郁。咖啡搭配推荐：摩卡仅江浙沪门店', '/menu/food/cake-dessert/classic-swiss-roll-cake', '/images/products/classic-swiss-roll-cake.jpg', '/menu/food/cake-dessert/classic-swiss-roll-cake/', '', '27', 'coffee');
INSERT INTO `commodity` VALUES ('97', '炒蛋菌菇虾仁卷', '优选嫩滑炒蛋以及秘制培根，搭配混合菌菇并点缀南美虾仁，丰富健康，一只早餐卷满足一天的营养需求。咖啡搭配推荐：拿铁仅江浙沪门店', '/menu/food/sandwich/eggs-mushroom-shrimp-wrap', '/images/products/eggs-mushroom-shrimp-wrap.jpg', '/menu/food/sandwich/eggs-mushroom-shrimp-wrap/', '', '40', 'coffee');
INSERT INTO `commodity` VALUES ('98', '法式焦糖酥', '浓郁奶香的可颂面团，表层淋上香甜的焦糖沙司，一口咬下，外酥内柔，焦糖夹杂浓浓的奶香味在唇齿间蔓延，带给你美妙口感。咖啡搭配推荐：馥芮白仅江浙沪门店', '/menu/food/bakery/french-caramel-bread', '/images/products/french-caramel-bread.jpg', '/menu/food/bakery/french-caramel-bread/', '', '21', 'coffee');
INSERT INTO `commodity` VALUES ('99', '水果沙拉', '多种混合水果色彩缤纷营养均衡，既可以作为午后的能量补充，也可以搭配正餐食用。咖啡搭配建议： 冷萃冰咖啡仅江浙沪门店', '/menu/food/package/fruit-salad', '/images/products/fruit-salad.jpg', '/menu/food/package/fruit-salad/', '', '36', 'coffee');
INSERT INTO `commodity` VALUES ('100', '燕麦焦糖布丁面包', '当酥脆的面包干搭配绵密的布丁、甜美的焦糖、还有一点点韧性的燕麦，蔓越莓干，提子干让人爱不释口。咖啡搭配推荐：焦糖玛奇朵仅江浙沪门店', '/menu/food/bakery/oat-caramel-pudding-bread', '/images/products/oat-caramel-pudding-bread.jpg', '/menu/food/bakery/oat-caramel-pudding-bread/', '', '27', 'coffee');
INSERT INTO `commodity` VALUES ('101', '帕斯雀牛肉三明治', '升级后的经典，除了美味加量，面包体还铺满了香脆奇亚籽，搭配帕斯雀牛肉，脆爽蔬菜和香浓马苏里拉芝士，口口都是意式风情和大写的满足。咖啡搭配推荐：美式咖啡仅江浙沪门店', '/menu/food/sandwich/pastrami-sandwich', '/images/products/pastrami-sandwich.jpg', '/menu/food/sandwich/pastrami-sandwich/', '', '40', 'coffee');
INSERT INTO `commodity` VALUES ('102', '提子干松饼', '口感松软，醇厚的奶香味，再加入香甜的提子干，使产品甜而不腻。咖啡搭配推荐：冷萃冰咖啡仅江浙沪门店', '/menu/food/bakery/raisin-scone', '/images/products/raisin-scone.jpg', '/menu/food/bakery/raisin-scone/', '', '35', 'coffee');
INSERT INTO `commodity` VALUES ('103', '核桃提子软法面包', '软法面包体，内含核桃、提子，添加不融芝士，奶香风味浓郁。咖啡搭配推荐：美式咖啡仅江浙沪门店', '/menu/food/bakery/raisins-walnut-bread', '/images/products/raisins-walnut-bread.jpg', '/menu/food/bakery/raisins-walnut-bread/', '', '20', 'coffee');
INSERT INTO `commodity` VALUES ('104', '红豆燕麦松饼', '口感松软，醇厚的奶香味，再加入红豆沙和红豆，更增加了香甜的味道，同时加入燕麦片，更增加产品的价值。咖啡搭配推荐：馥芮白仅江浙沪门店', '/menu/food/bakery/red-bean-oats-scone', '/images/products/red-bean-oats-scone.jpg', '/menu/food/bakery/red-bean-oats-scone/', '', '29', 'coffee');
INSERT INTO `commodity` VALUES ('105', '烤法式火腿鸡蛋三明治', '鲜嫩的火腿与鲜香的芝士，经过烘烤后，蛋香四溢的蛋皮，蛋皮中更配以胡萝卜和高丽菜，营造出更为丰富饱满的口感。咖啡搭配推荐：焦糖玛奇朵仅江浙沪门店', '/menu/food/sandwich/roasted-french-ham-egg-sandwich', '/images/products/roasted-french-ham-egg-sandwich.jpg', '/menu/food/sandwich/roasted-french-ham-egg-sandwich/', '', '22', 'coffee');
INSERT INTO `commodity` VALUES ('106', '橘柚探戈', '西班牙粉柚汁融入蜂蜜 泰国进口白柚果粒 茶瓦纳™橘香茉意花草茶', '/menu/beverages/modern-mixology/orange-tango', '/images/products/orange-tango.jpg', '/menu/beverages/modern-mixology/orange-tango/', '', '28', 'coffee');
INSERT INTO `commodity` VALUES ('107', '梨光小夜曲', '梨汁混合白兰地风味大块梨肉 温润甘甜茶瓦纳™南非进口路芭茶', '/menu/beverages/modern-mixology/sparkling-pink-pom-cold-brew', '/images/products/sparkling-pink-pom-cold-brew.jpg', '/menu/beverages/modern-mixology/sparkling-pink-pom-cold-brew/', '', '33', 'coffee');
INSERT INTO `commodity` VALUES ('108', '气炫冰山美式', '灵感源自金汤力沁爽柠香揉合意式浓缩低糖&amp;低卡含少量酒精成分孕妇与儿童不建议饮用', '/menu/beverages/modern-mixology/sparkling-espresso-tonic', '/images/products/sparkling-espresso-tonic.jpg', '/menu/beverages/modern-mixology/sparkling-espresso-tonic/', '', '37', 'coffee');
INSERT INTO `commodity` VALUES ('109', '橙柚派对', '西柚+橙+柠檬三重果肉富含维生素C茶瓦纳™橘香茉意花草茶', '/menu/beverages/modern-mixology/triple-citrus', '/images/products/triple-citrus.jpg', '/menu/beverages/modern-mixology/triple-citrus/', '', '26', 'coffee');
INSERT INTO `commodity` VALUES ('110', '醋意桃桃', '大块黄桃+爽弹果冻桃汁混搭桃醋风味茶瓦纳™禅韵乌龙茶', '/menu/beverages/modern-mixology/peach-shrub-fizz', '/images/products/peach-shrub-fizz.jpg', '/menu/beverages/modern-mixology/peach-shrub-fizz/', '', '22', 'coffee');
INSERT INTO `commodity` VALUES ('111', '酸柠浮冷萃', '灵感源自鸡尾酒威士忌酸枫糖威士忌风味冷萃咖啡意大利进口路萨朵樱桃', '/menu/beverages/modern-mixology/cold-brew-lemon-sour', '/images/products/cold-brew-lemon-sour.jpg', '/menu/beverages/modern-mixology/cold-brew-lemon-sour/', '', '27', 'coffee');
INSERT INTO `commodity` VALUES ('112', '阿馥奇朵™', '', '/menu/beverages/coffee-plus-ice-cream/affogato', '/images/products/affogato.jpg', '/menu/beverages/coffee-plus-ice-cream/affogato/', '', '20', 'coffee');
INSERT INTO `commodity` VALUES ('113', '冷萃浮乐朵™', '', '/menu/beverages/coffee-plus-ice-cream/cold-brew-float', '/images/products/cold-brew-float.jpg', '/menu/beverages/coffee-plus-ice-cream/cold-brew-float/', '', '34', 'coffee');
INSERT INTO `commodity` VALUES ('114', '麦芽雪冷萃™', '', '/menu/beverages/coffee-plus-ice-cream/cold-brew-malt', '/images/products/cold-brew-malt.jpg', '/menu/beverages/coffee-plus-ice-cream/cold-brew-malt/', '', '34', 'coffee');
INSERT INTO `commodity` VALUES ('115', '冷萃冰咖啡', '', '/menu/beverages/cold-brew/cold-brew', '/images/products/cold-brew.jpg', '/menu/beverages/cold-brew/cold-brew/', '', '28', 'coffee');
INSERT INTO `commodity` VALUES ('116', '绵云冷萃', '', '/menu/beverages/cold-brew/cold-foam-cold-brew', '/images/products/cold-foam-cold-brew.jpg', '/menu/beverages/cold-brew/cold-foam-cold-brew/', '', '39', 'coffee');
INSERT INTO `commodity` VALUES ('117', '星巴克臻选™ 哥伦比亚圣洛克蒙克斯咖啡豆', '', '/menu/coffee/starbucks-reserve/colombia-monks-of-san-roque', '/assets/images/featured/2019autumn/colombia-monks-of-san-roque.png', '/menu/coffee/starbucks-reserve/colombia-monks-of-san-roque/', '', '25', 'coffee');
INSERT INTO `commodity` VALUES ('118', '冰摇芒果花草茶', '', '/menu/beverages/teavana/iced-shaken-mango-herbal-juiced-tea', '/images/products/iced-shaken-mango-herbal-juiced-tea.jpg', '/menu/beverages/teavana/iced-shaken-mango-herbal-juiced-tea/', '', '23', 'coffee');
INSERT INTO `commodity` VALUES ('119', '气致™冷萃浮乐朵™', '', '/menu/beverages/coffee-plus-ice-cream/nitro-cold-brew-float', '/images/products/instore-nitro-cold-brew-float.jpg', '/menu/beverages/coffee-plus-ice-cream/nitro-cold-brew-float/', '', '21', 'coffee');
INSERT INTO `commodity` VALUES ('120', '气致™冷萃咖啡', '', '/menu/beverages/nitro-cold-brew/nitro-cold-brew', '/images/products/nitro-cold-brew.jpg', '/menu/beverages/nitro-cold-brew/nitro-cold-brew/', '', '39', 'coffee');
INSERT INTO `commodity` VALUES ('121', '星巴克臻选™ 中国云南晴开农场咖啡豆', '', '/menu/coffee/starbucks-reserve/reserve-china-qingkai-farm', '/assets/images/featured/2019autumn2/china-qingkai-farm.png', '/menu/coffee/starbucks-reserve/reserve-china-qingkai-farm/', '', '24', 'coffee');
INSERT INTO `commodity` VALUES ('122', '星巴克臻选™ 中国云南普洱保山综合咖啡豆', '', '/menu/coffee/starbucks-reserve/reserve-china-yunnan-puer-baoshan', '/assets/images/featured/2019autumn2/china-yunnan-puer-baoshan.png', '/menu/coffee/starbucks-reserve/reserve-china-yunnan-puer-baoshan/', '', '31', 'coffee');
INSERT INTO `commodity` VALUES ('123', '星巴克臻选™ 埃塞俄比亚比塔庄园咖啡豆', '', '/menu/coffee/starbucks-reserve/reserve-ethiopia-bitta-farm', '/assets/images/featured/2019autumn/ethiopia-bitta-farm.png', '/menu/coffee/starbucks-reserve/reserve-ethiopia-bitta-farm/', '', '40', 'coffee');
INSERT INTO `commodity` VALUES ('124', '星巴克臻选™ 苏门答腊瓦哈纳庄园咖啡豆', '', '/menu/coffee/starbucks-reserve/sumatra-wahana-estate', '/assets/images/featured/2019autumn/sumatra-wahana-estate.png', '/menu/coffee/starbucks-reserve/sumatra-wahana-estate/', '', '34', 'coffee');
INSERT INTO `commodity` VALUES ('125', '轻甜奶油冷萃', '', '/menu/beverages/cold-brew/vanilla-flavor-sweet-cream-cold-brew', '/images/products/vanilla-flavor-sweet-cream-cold-brew.jpg', '/menu/beverages/cold-brew/vanilla-flavor-sweet-cream-cold-brew/', '', '26', 'coffee');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_icelandic_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_icelandic_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_icelandic_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'HelloPopo_wxmini', '0001_initial', '2020-10-06 17:14:22.675268');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopcarid` text COLLATE utf8_icelandic_ci,
  `comid` text COLLATE utf8_icelandic_ci,
  `num` text COLLATE utf8_icelandic_ci,
  `total` decimal(20,0) DEFAULT NULL,
  `payway` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `mealway` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `status_code` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_icelandic_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '[1, 2]', '[81, 43]', '[4, 3]', '210', '0', '0', '0', '2020-10-07 02:09:55', '1');
INSERT INTO `orders` VALUES ('2', '[3, 4]', '[1, 48]', '[3, 4]', '198', '0', '1', '1', '2020-10-07 02:10:46', '1');

-- ----------------------------
-- Table structure for purchasehistory
-- ----------------------------
DROP TABLE IF EXISTS `purchasehistory`;
CREATE TABLE `purchasehistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `total` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `balance_now` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_icelandic_ci;

-- ----------------------------
-- Records of purchasehistory
-- ----------------------------
INSERT INTO `purchasehistory` VALUES ('1', '1', '210', '-210', '1', '2020-10-07 02:09:55');
INSERT INTO `purchasehistory` VALUES ('2', '2', '198', '-408', '1', '2020-10-07 02:10:46');

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comid` int(11) DEFAULT NULL,
  `com_title` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `price` decimal(20,0) DEFAULT NULL,
  `total` decimal(20,0) DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `temp` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `cream` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `status_code` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_icelandic_ci;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO `shopcar` VALUES ('1', '81', '500ml 金色Logo水瓶', '4', '24', '96', 'big', 'hot', 'cream', 'alive', '0', '2020-10-07 02:09:30', '1');
INSERT INTO `shopcar` VALUES ('2', '43', '法式马卡龙', '3', '38', '114', 'big', 'hot', 'cream', 'alive', '0', '2020-10-07 02:09:35', '1');
INSERT INTO `shopcar` VALUES ('3', '1', '卡布奇诺（热/冷）', '3', '22', '66', 'big', 'hot', 'uncream', 'alive', '0', '2020-10-07 02:10:29', '1');
INSERT INTO `shopcar` VALUES ('4', '48', '星巴克VIA®哥伦比亚免煮咖啡', '4', '33', '132', 'big', 'hot', 'uncream', 'alive', '0', '2020-10-07 02:10:36', '1');
INSERT INTO `shopcar` VALUES ('5', '44', '纽约风浓郁重芝士蛋糕', '2', '33', '66', 'big', 'hot', 'cream', 'alive', '1', '2020-10-07 02:15:57', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `balance` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `wallet` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  `giftcard` varchar(255) COLLATE utf8_icelandic_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_icelandic_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '许伟铭', '18120837826', '123456', '', '/user/user1.jpg', '-408', '0', '0', '0');
