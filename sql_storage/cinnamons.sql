/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : cinnamons

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-12-31 00:02:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cntoolheaders
-- ----------------------------
DROP TABLE IF EXISTS `cntoolheaders`;
CREATE TABLE `cntoolheaders` (
  `id` int(11) NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cntoolheaders
-- ----------------------------
INSERT INTO `cntoolheaders` VALUES ('0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1', '2020-12-19 14:06:44', '0');
INSERT INTO `cntoolheaders` VALUES ('1', 'Mozilla/5.0 (X11; CrOS i686 2268.111.0) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.57 Safari/536.11', '2020-12-19 14:06:44', '1');
INSERT INTO `cntoolheaders` VALUES ('2', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.6 (KHTML, like Gecko) Chrome/20.0.1092.0 Safari/536.6', '2020-12-19 14:06:44', '2');
INSERT INTO `cntoolheaders` VALUES ('3', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.6 (KHTML, like Gecko) Chrome/20.0.1090.0 Safari/536.6', '2020-12-19 14:06:44', '3');
INSERT INTO `cntoolheaders` VALUES ('4', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/19.77.34.5 Safari/537.1', '2020-12-19 14:06:44', '4');
INSERT INTO `cntoolheaders` VALUES ('5', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.9 Safari/536.5', '2020-12-19 14:06:44', '5');
INSERT INTO `cntoolheaders` VALUES ('6', 'Mozilla/5.0 (Windows NT 6.0) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.36 Safari/536.5', '2020-12-19 14:06:44', '6');
INSERT INTO `cntoolheaders` VALUES ('7', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', '2020-12-19 14:06:44', '7');
INSERT INTO `cntoolheaders` VALUES ('8', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', '2020-12-19 14:06:44', '8');
INSERT INTO `cntoolheaders` VALUES ('9', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3', '2020-12-19 14:06:44', '9');
INSERT INTO `cntoolheaders` VALUES ('10', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3', '2020-12-19 14:06:44', '10');
INSERT INTO `cntoolheaders` VALUES ('11', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3', '2020-12-19 14:06:44', '11');
INSERT INTO `cntoolheaders` VALUES ('12', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3', '2020-12-19 14:06:44', '12');
INSERT INTO `cntoolheaders` VALUES ('13', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3', '2020-12-19 14:06:44', '13');
INSERT INTO `cntoolheaders` VALUES ('14', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3', '2020-12-19 14:06:44', '14');
INSERT INTO `cntoolheaders` VALUES ('15', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.0 Safari/536.3', '2020-12-19 14:06:44', '15');
INSERT INTO `cntoolheaders` VALUES ('16', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24', '2020-12-19 14:06:44', '16');
INSERT INTO `cntoolheaders` VALUES ('17', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/535.24 (KHTML, like Gecko) Chrome/19.0.1055.1 Safari/535.24', '2020-12-19 14:06:44', '17');
INSERT INTO `cntoolheaders` VALUES ('18', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36 OPR/26.0.1656.60', '2020-12-19 14:06:44', '18');
INSERT INTO `cntoolheaders` VALUES ('19', 'Opera/8.0 (Windows NT 5.1; U; en)', '2020-12-19 14:06:44', '19');
INSERT INTO `cntoolheaders` VALUES ('20', 'Mozilla/5.0 (Windows NT 5.1; U; en; rv:1.8.1) Gecko/20061208 Firefox/2.0.0 Opera 9.50', '2020-12-19 14:06:44', '20');
INSERT INTO `cntoolheaders` VALUES ('21', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 9.50', '2020-12-19 14:06:44', '21');
INSERT INTO `cntoolheaders` VALUES ('22', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0', '2020-12-19 14:06:44', '22');
INSERT INTO `cntoolheaders` VALUES ('23', 'Mozilla/5.0 (X11; U; Linux x86_64; zh-CN; rv:1.9.2.10) Gecko/20100922 Ubuntu/10.10 (maverick) Firefox/3.6.10', '2020-12-19 14:06:44', '23');
INSERT INTO `cntoolheaders` VALUES ('24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2', '2020-12-19 14:06:44', '24');
INSERT INTO `cntoolheaders` VALUES ('25', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', '2020-12-19 14:06:44', '25');
INSERT INTO `cntoolheaders` VALUES ('26', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.64 Safari/537.11', '2020-12-19 14:06:44', '26');
INSERT INTO `cntoolheaders` VALUES ('27', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.16 (KHTML, like Gecko) Chrome/10.0.648.133 Safari/534.16', '2020-12-19 14:06:44', '27');
INSERT INTO `cntoolheaders` VALUES ('28', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/30.0.1599.101 Safari/537.36', '2020-12-19 14:06:44', '28');
INSERT INTO `cntoolheaders` VALUES ('29', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2020-12-19 14:06:44', '29');
INSERT INTO `cntoolheaders` VALUES ('30', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.11 (KHTML, like Gecko) Chrome/20.0.1132.11 TaoBrowser/2.0 Safari/536.11', '2020-12-19 14:06:44', '30');
INSERT INTO `cntoolheaders` VALUES ('31', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.71 Safari/537.1 LBBROWSER', '2020-12-19 14:06:44', '31');
INSERT INTO `cntoolheaders` VALUES ('32', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; LBBROWSER)', '2020-12-19 14:06:44', '32');
INSERT INTO `cntoolheaders` VALUES ('33', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; QQDownload 732; .NET4.0C; .NET4.0E; LBBROWSER)', '2020-12-19 14:06:44', '33');
INSERT INTO `cntoolheaders` VALUES ('34', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; QQBrowser/7.0.3698.400)', '2020-12-19 14:06:44', '34');
INSERT INTO `cntoolheaders` VALUES ('35', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; QQDownload 732; .NET4.0C; .NET4.0E)', '2020-12-19 14:06:44', '35');
INSERT INTO `cntoolheaders` VALUES ('36', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.84 Safari/535.11 SE 2.X MetaSr 1.0', '2020-12-19 14:06:44', '36');
INSERT INTO `cntoolheaders` VALUES ('37', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0; SV1; QQDownload 732; .NET4.0C; .NET4.0E; SE 2.X MetaSr 1.0)', '2020-12-19 14:06:44', '37');
INSERT INTO `cntoolheaders` VALUES ('38', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/4.4.3.4000 Chrome/30.0.1599.101 Safari/537.36', '2020-12-19 14:06:44', '38');
INSERT INTO `cntoolheaders` VALUES ('39', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.122 UBrowser/4.0.3214.0 Safari/537.36', '2020-12-19 14:06:44', '39');

-- ----------------------------
-- Table structure for cntoolip
-- ----------------------------
DROP TABLE IF EXISTS `cntoolip`;
CREATE TABLE `cntoolip` (
  `id` int(11) NOT NULL,
  `ipaddr` varchar(255) DEFAULT NULL,
  `ipport` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cntoolip
-- ----------------------------
INSERT INTO `cntoolip` VALUES ('0', '114.239.151.201', '9999', '114.239.151.201:9999', '2020-12-19 22:53:40', '0');
INSERT INTO `cntoolip` VALUES ('1', '61.135.155.82', '443', '61.135.155.82:443', '2020-12-19 22:53:40', '1');
INSERT INTO `cntoolip` VALUES ('2', '120.83.104.211', '9999', '120.83.104.211:9999', '2020-12-19 22:53:40', '2');
INSERT INTO `cntoolip` VALUES ('3', '115.211.189.117', '9999', '115.211.189.117:9999', '2020-12-19 22:53:40', '3');
INSERT INTO `cntoolip` VALUES ('4', '36.249.118.32', '9999', '36.249.118.32:9999', '2020-12-19 22:53:40', '4');
INSERT INTO `cntoolip` VALUES ('5', '58.22.177.171', '9999', '58.22.177.171:9999', '2020-12-19 22:53:40', '5');
INSERT INTO `cntoolip` VALUES ('6', '220.249.149.244', '9999', '220.249.149.244:9999', '2020-12-19 22:53:40', '6');
INSERT INTO `cntoolip` VALUES ('7', '110.249.176.26', '8060', '110.249.176.26:8060', '2020-12-19 22:53:40', '7');
INSERT INTO `cntoolip` VALUES ('8', '58.22.177.182', '9999', '58.22.177.182:9999', '2020-12-19 22:53:40', '8');
INSERT INTO `cntoolip` VALUES ('9', '60.191.11.251', '3128', '60.191.11.251:3128', '2020-12-19 22:53:40', '9');
INSERT INTO `cntoolip` VALUES ('10', '58.220.95.90', '9401', '58.220.95.90:9401', '2020-12-19 22:53:40', '10');
INSERT INTO `cntoolip` VALUES ('11', '36.250.156.51', '9999', '36.250.156.51:9999', '2020-12-19 22:53:40', '11');
INSERT INTO `cntoolip` VALUES ('12', '171.35.172.84', '9999', '171.35.172.84:9999', '2020-12-19 22:53:40', '12');
INSERT INTO `cntoolip` VALUES ('13', '171.35.172.61', '9999', '171.35.172.61:9999', '2020-12-19 22:53:40', '13');
INSERT INTO `cntoolip` VALUES ('14', '113.195.152.95', '9999', '113.195.152.95:9999', '2020-12-19 22:53:40', '14');
INSERT INTO `cntoolip` VALUES ('15', '27.43.191.193', '9999', '27.43.191.193:9999', '2020-12-19 22:53:40', '15');
INSERT INTO `cntoolip` VALUES ('16', '118.24.128.46', '1080', '118.24.128.46:1080', '2020-12-19 22:53:40', '16');
INSERT INTO `cntoolip` VALUES ('17', '27.43.184.192', '9999', '27.43.184.192:9999', '2020-12-19 22:53:40', '17');
INSERT INTO `cntoolip` VALUES ('18', '163.204.92.162', '9999', '163.204.92.162:9999', '2020-12-19 22:53:40', '18');
INSERT INTO `cntoolip` VALUES ('19', '36.250.156.246', '9999', '36.250.156.246:9999', '2020-12-19 22:53:40', '19');
INSERT INTO `cntoolip` VALUES ('20', '113.121.241.196', '29767', '113.121.241.196:29767', '2020-12-19 22:53:40', '20');
INSERT INTO `cntoolip` VALUES ('21', '118.24.88.66', '1080', '118.24.88.66:1080', '2020-12-19 22:53:40', '21');
INSERT INTO `cntoolip` VALUES ('22', '36.248.132.183', '9999', '36.248.132.183:9999', '2020-12-19 22:53:40', '22');
INSERT INTO `cntoolip` VALUES ('23', '36.248.132.209', '9999', '36.248.132.209:9999', '2020-12-19 22:53:40', '23');
INSERT INTO `cntoolip` VALUES ('24', '163.204.92.91', '9999', '163.204.92.91:9999', '2020-12-19 22:53:40', '24');
INSERT INTO `cntoolip` VALUES ('25', '183.220.145.3', '80', '183.220.145.3:80', '2020-12-19 22:53:40', '25');
INSERT INTO `cntoolip` VALUES ('26', '58.220.95.79', '10000', '58.220.95.79:10000', '2020-12-19 22:53:40', '26');
INSERT INTO `cntoolip` VALUES ('27', '121.230.62.36', '9999', '121.230.62.36:9999', '2020-12-19 22:53:40', '27');
INSERT INTO `cntoolip` VALUES ('28', '218.7.171.91', '3128', '218.7.171.91:3128', '2020-12-19 22:53:40', '28');
INSERT INTO `cntoolip` VALUES ('29', '118.24.170.46', '1080', '118.24.170.46:1080', '2020-12-19 22:53:40', '29');
INSERT INTO `cntoolip` VALUES ('30', '182.140.244.163', '8118', '182.140.244.163:8118', '2020-12-19 22:53:40', '30');
INSERT INTO `cntoolip` VALUES ('31', '221.5.80.66', '3128', '221.5.80.66:3128', '2020-12-19 22:53:40', '31');
INSERT INTO `cntoolip` VALUES ('32', '221.122.91.34', '80', '221.122.91.34:80', '2020-12-19 22:53:40', '32');
INSERT INTO `cntoolip` VALUES ('33', '122.5.98.1', '9999', '122.5.98.1:9999', '2020-12-19 22:53:40', '33');
INSERT INTO `cntoolip` VALUES ('34', '58.22.177.174', '9999', '58.22.177.174:9999', '2020-12-19 22:53:40', '34');
INSERT INTO `cntoolip` VALUES ('35', '36.249.118.24', '9999', '36.249.118.24:9999', '2020-12-19 22:53:40', '35');
INSERT INTO `cntoolip` VALUES ('36', '112.47.3.53', '3128', '112.47.3.53:3128', '2020-12-19 22:53:40', '36');
INSERT INTO `cntoolip` VALUES ('37', '171.35.215.236', '9999', '171.35.215.236:9999', '2020-12-19 22:53:40', '37');
INSERT INTO `cntoolip` VALUES ('38', '106.111.202.52', '9999', '106.111.202.52:9999', '2020-12-19 22:53:40', '38');
INSERT INTO `cntoolip` VALUES ('39', '39.76.205.153', '9999', '39.76.205.153:9999', '2020-12-19 22:53:40', '39');
