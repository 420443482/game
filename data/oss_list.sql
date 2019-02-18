/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : oss_list

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-09 13:23:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `oss_ad`
-- ----------------------------
DROP TABLE IF EXISTS `oss_ad`;
CREATE TABLE `oss_ad` (
  `ad_id` smallint(2) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(255) NOT NULL DEFAULT '',
  `ad_content` text NOT NULL,
  `ad_start` int(10) unsigned NOT NULL DEFAULT '0',
  `ad_end` int(10) unsigned NOT NULL DEFAULT '0',
  `ad_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_admin`
-- ----------------------------
DROP TABLE IF EXISTS `oss_admin`;
CREATE TABLE `oss_admin` (
  `admin_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(50) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_permissions` text NOT NULL,
  `admin_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_admin
-- ----------------------------
INSERT INTO `oss_admin` VALUES ('1', 'admin', 'BD35F15CAFE4A486606B660FAE40104989D3EDCA', 'all', '1');

-- ----------------------------
-- Table structure for `oss_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `oss_admin_log`;
CREATE TABLE `oss_admin_log` (
  `log_time` int(10) NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL,
  `log_ip` varchar(50) NOT NULL DEFAULT '',
  `log_agent` varchar(255) NOT NULL,
  `admin_id` int(4) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_admin_log
-- ----------------------------
INSERT INTO `oss_admin_log` VALUES ('1331876538', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1331876539', '登陆系统:test', '110.251.24.229', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; 360SE)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331876568', '登陆系统:test', '175.18.135.203', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Trident/4.0)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331877381', '登陆系统:test', '115.238.54.212', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331882402', '登陆系统:test', '112.5.140.125', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331882414', '登陆系统:test', '112.5.140.125', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331882447', '更新充值:17', '112.5.140.125', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331882449', '更新充值:17', '112.5.140.125', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331882573', '登陆系统:test', '119.122.98.4', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331883363', '插入内容:测试平台', '112.5.140.125', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331883740', '登陆系统:test', '119.122.153.135', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; TEN)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331884300', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1331884399', '更新模板:templates/kele/part_service.html', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1331884451', '更新充值:18', '112.5.140.125', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331887019', '登陆系统:test', '112.5.140.125', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331951009', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1331964736', '登陆系统:test', '120.34.31.221', 'Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-CN; rv:1.9.2.28) Gecko/20120306 Firefox/3.6.28', '2');
INSERT INTO `oss_admin_log` VALUES ('1331968785', '登陆系统:test', '119.122.28.69', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; TEN)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331970285', '登陆系统:test', '222.221.252.62', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET CLR 1.1.4322; .NET4.0C; SaaYaa)', '2');
INSERT INTO `oss_admin_log` VALUES ('1331970397', '更新模板:templates/kele/card.html', '222.221.252.62', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET CLR 1.1.4322; .NET4.0C; SaaYaa)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332038690', '登陆系统:admin', '59.59.77.3', 'Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-CN; rv:1.9.2.28) Gecko/20120306 Firefox/3.6.28', '1');
INSERT INTO `oss_admin_log` VALUES ('1332077939', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332118557', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332118676', '退出系统:admin', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332118684', '登陆系统:test', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '2');
INSERT INTO `oss_admin_log` VALUES ('1332118689', '清空缓存', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '2');
INSERT INTO `oss_admin_log` VALUES ('1332125259', '登陆系统:test', '113.116.206.0', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; QQDownload 687; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ;  Embedded Web Browser from: http://bsalsa.com/)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332129362', '登陆系统:test', '113.116.206.0', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET4.0C; .NET4.0E; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; InfoPath.2)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332146295', '登陆系统:test', '119.139.133.47', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; TEN)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332209990', '登陆系统:test', '124.72.35.47', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332210247', '更新充值:18', '124.72.35.47', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332307333', '登陆系统:test', '121.205.82.242', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; EmbeddedWB 14.52 from: http://www.bsalsa.com/ EmbeddedWB 14.52; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; Alexa Toolbar)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332307803', '清空缓存', '121.205.82.242', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; EmbeddedWB 14.52 from: http://www.bsalsa.com/ EmbeddedWB 14.52; .NET CLR 2.0.50727; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022; Alexa Toolbar)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332309071', '登陆系统:test', '112.94.55.238', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; 360SE)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332309522', '登陆系统:test', '221.0.213.42', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.75 Safari/535.7 360EE', '2');
INSERT INTO `oss_admin_log` VALUES ('1332309916', '登陆系统:test', '221.0.213.42', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; 360SE)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332318539', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332381236', '登陆系统:test', '125.46.68.12', 'Mozilla/5.0 (Windows NT 5.2) AppleWebKit/534.30 (KHTML, like Gecko) Chrome/12.0.742.122 Safari/534.30', '2');
INSERT INTO `oss_admin_log` VALUES ('1332409771', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332409814', '更新游戏:仙域', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332409844', '更新游戏:傲剑', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332409850', '更新游戏:傲剑', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332409872', '更新游戏:诛神', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332410563', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332410597', '更新模板:templates/kele/part_service.html', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332410625', '更新模板:templates/kele/part_service.html', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332468718', '登陆系统:test', '114.232.147.163', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332469844', '登陆系统:test', '113.205.193.20', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.2; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; 4399Box.1225; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; 4399Box.1225; 360SE)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332472943', '登陆系统:test', '180.173.105.38', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; Alexa Toolbar)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332473152', '登陆系统:test', '119.139.63.108', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; TEN)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332755112', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332755121', '更新菜单:游戏论坛', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332755124', '清空缓存', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332755983', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332756008', '更新设置', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332756497', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332756511', '更新模板:templates/kele/part_service.html', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332825513', '登陆系统:test', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332825693', '更新充值:27', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332825772', '更新充值:28', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332825820', '更新充值:28', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332825830', '更新充值:28', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332825862', '更新会员:wss', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332825981', '更新游戏:神仙道', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332826177', '插入服务器:新浪', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332827875', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332828368', '更新游戏:神仙道', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332828428', '更新服务器:新浪', '110.80.15.14', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/5.0)', '1');
INSERT INTO `oss_admin_log` VALUES ('1332829971', '更新充值:26', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332830167', '更新充值:支付宝', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332830217', '更新充值:支付宝', '180.121.120.152', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332831046', '登陆系统:test', '180.173.105.38', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; Alexa Toolbar)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332841741', '登陆系统:test', '27.115.50.162', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB7.1; InfoPath.2; KB974489)', '2');
INSERT INTO `oss_admin_log` VALUES ('1332843381', '登陆系统:test', '112.5.140.125', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.75 Safari/535.7 360EE', '2');
INSERT INTO `oss_admin_log` VALUES ('1332850214', '登陆系统:admin', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332850248', '更新模板:templates/kele/part_service.html', '110.80.15.14', 'Mozilla/5.0 (Windows NT 6.0; rv:10.0.2) Gecko/20100101 Firefox/10.0.2', '1');
INSERT INTO `oss_admin_log` VALUES ('1332921737', '登陆系统:test', '112.5.140.125', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.75 Safari/535.7 360EE', '2');
INSERT INTO `oss_admin_log` VALUES ('1332921960', '更新新手卡:傲剑新手大礼包', '112.5.140.125', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.75 Safari/535.7 360EE', '2');
INSERT INTO `oss_admin_log` VALUES ('1531629884', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533650849', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533650953', '删除充值:36', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533650958', '删除充值:35', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533652980', '更新设置', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533653425', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533653502', '更新菜单:首页', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533654119', '更新菜单:首页', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533654155', '删除菜单:游戏论坛', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533654933', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533654975', '清空缓存', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533658231', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659227', '登陆系统:admin', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659638', '插入游戏:守望先鋒', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659700', '插入游戏:創世戰車', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659734', '插入游戏:九陰真經2', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659762', '插入游戏:我的世界', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659795', '插入游戏:DOTA2', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659828', '插入游戏:魔獸世界', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659855', '插入游戏:傳奇霸業', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659886', '插入游戏:夢幻西遊', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659915', '插入游戏:爐石傳說', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659947', '插入游戏:坦克世界', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533659977', '插入游戏:新天龍八部', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660000', '插入游戏:靈山奇緣', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660025', '插入游戏:穿越火線2', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660057', '插入游戏:變形金剛', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660081', '插入游戏:CSGO', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660105', '插入游戏:槍火遊俠', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660145', '插入游戏:地下城與勇士', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660173', '插入游戏:艾爾之光', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660199', '插入游戏:天堂', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660240', '插入游戏:冒險島', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660265', '插入游戏:黑色沙漠', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660288', '插入游戏:流放之路', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660321', '插入游戏:絕地求生：大逃殺', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660346', '插入游戏:神秘世界', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660367', '插入游戏:太極', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660389', '插入游戏:傳奇', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660416', '插入游戏:龍之穀', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660437', '插入游戏:誅仙', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660459', '插入游戏:逆戰', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660483', '插入游戏:風暴英雄', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660573', '更新菜单:首頁', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660603', '更新菜单:遊戲中心', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660631', '更新菜单:遊戲動態', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660672', '更新菜单:用戶中心', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660697', '更新菜单:充值中心', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660725', '更新菜单:新手禮包', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660756', '更新菜单:關於我們', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660786', '更新菜单:聯系我們', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660811', '更新菜单:家長監護', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660840', '更新菜单:糾紛處理', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660916', '更新频道:遊戲動態', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660943', '更新频道:常见问题', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533660958', '更新频道:常見問題', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661021', '更新新手卡:傲劍新手大禮包', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661436', '清空缓存', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661462', '清空缓存', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661588', '更新游戏:仙域', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661657', '更新游戏:傲劍', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661699', '更新游戏:誅神', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661729', '更新游戏:凡人修真', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661783', '更新游戏:盛世三國', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661814', '更新游戏:盛世三國', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661865', '更新游戏:龍將', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533661905', '更新游戏:神仙道', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662199', '插入服务器:風暴1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662329', '插入服务器:電信1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662378', '插入服务器:聯通1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662463', '插入服务器:霜影逐龍', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662501', '插入服务器:槍嘯龍淵', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662554', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662568', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662583', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662591', '插入服务器:聯通', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662603', '插入服务器:武當山', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662627', '插入服务器:峨眉派', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662639', '插入服务器:崆峒派', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662647', '插入服务器:少林寺', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662661', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662668', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662676', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662682', '插入服务器:聯通', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662697', '插入服务器:刺激戰場', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662709', '插入服务器:末日黃昏', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662720', '插入服务器:風暴沙漠', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662733', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662741', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662825', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662894', '插入服务器:冒險島', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662912', '插入服务器:天堂1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662914', '清空缓存', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662938', '插入服务器:天堂2區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662957', '插入服务器:ALICE', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662969', '插入服务器:rose', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662986', '插入服务器:DNF1', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533662996', '插入服务器:DNF2', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663024', '插入服务器:槍火1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663041', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663049', '插入服务器:聯通', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663063', '插入服务器:大黃蜂', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663073', '插入服务器:秦天柱', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663088', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663096', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663103', '插入服务器:聯通', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663115', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663130', '插入服务器:天山派', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663140', '插入服务器:少林寺', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663149', '插入服务器:峨眉派', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663162', '插入服务器:契丹', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663171', '插入服务器:丐幫', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663182', '插入服务器:英國', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663189', '插入服务器:德國', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663197', '插入服务器:蘇聯', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663215', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663222', '插入服务器:聯通', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663239', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663245', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663255', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663263', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663270', '插入服务器:聯通', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663283', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663293', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663301', '插入服务器:聯通', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663311', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663318', '插入服务器:聯通', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663326', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663340', '插入服务器:降龍十八掌', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663349', '插入服务器:九陽神功', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663358', '插入服务器:蛤蟆功', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663372', '插入服务器:所向無敵', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663381', '插入服务器:霹靂先鋒', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663393', '插入服务器:守望1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663402', '插入服务器:守望2區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663415', '插入服务器:諸天神佛', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663444', '更新服务器:大浪滔天', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663459', '更新服务器:測試服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663474', '插入服务器:霸王龍', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663489', '更新服务器:三角龍', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663503', '插入服务器:蜀國', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663518', '更新服务器:魏國', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663525', '插入服务器:吳國', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663542', '插入服务器:我欲成仙', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663562', '插入服务器:築基', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663581', '插入服务器:胎成', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663592', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663600', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663615', '插入服务器:龍傲山莊', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663628', '更新服务器:龍傲山莊', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663642', '更新服务器:風花雪月', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663654', '更新服务器:傲視群雄', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663675', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663684', '插入服务器:電信', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663691', '插入服务器:聯通', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663828', '更新服务器:電信1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663837', '更新服务器:電信2區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663869', '更新服务器:電信1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663877', '更新服务器:電信1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663884', '更新服务器:電信2區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663931', '更新服务器:聯通1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663937', '更新服务器:電信3區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663943', '更新服务器:電信2區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533663949', '更新服务器:電信1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664008', '更新服务器:聯通1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664014', '更新服务器:電信4區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664020', '更新服务器:電信3區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664026', '更新服务器:電信2區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664033', '更新服务器:電信1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664083', '更新服务器:電信2區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664089', '更新服务器:電信1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664102', '更新服务器:聯通1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664113', '更新服务器:電信2區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533664120', '更新服务器:電信1區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533666756', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533667571', '更新内容:测试平台', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533668061', '登陆系统:admin', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533668861', '插入内容:壹定不要錯過DOTA2比賽', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533669245', '更新内容:《風暴英雄》2018賽季時間和鼓勵', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533669433', '更新内容:《風暴英雄》2018賽季時間和鼓勵', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533669710', '更新内容:《诛神》宠物合体之三眼白虎', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533669823', '更新内容:《仙域》注意小細節 你不會吃虧哦', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533669914', '更新内容:壹定不要錯過DOTA2比賽', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533669969', '批量删除内容', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533670809', '插入新手卡:註冊禮包', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533671102', '插入新手卡:中秋禮包', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533671226', '插入新手卡:門派禮包', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533671441', '插入新手卡:60級禮包', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533671707', '更新设置', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533671825', '更新内容:賬號被盜怎麼辦', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533671878', '更新内容:忘記密碼怎麼辦', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672324', '插入频道:關於我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672339', '更新频道:關於我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672375', '更新频道:關於我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672381', '更新频道:關於我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672448', '插入内容:關於我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672448', '插入内容:關於我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672500', '批量删除内容', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672530', '更新内容:關於我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672696', '更新菜单:關於我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672720', '更新菜单:關於我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533672860', '插入频道:聯繫我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673088', '插入内容:聯繫我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673147', '更新菜单:聯系我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673147', '更新菜单:聯系我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673213', '插入频道:家長監護', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673305', '插入内容:家長監護', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673330', '更新菜单:家長監護', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673383', '插入频道:糾紛處理', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673417', '更新菜单:糾紛處理', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673417', '更新菜单:糾紛處理', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673569', '插入内容:糾紛處理', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533673618', '更新菜单:糾紛處理', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533674152', '更新内容:聯繫我們', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533674266', '清空缓存', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533674340', '更新内容:家長監護', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533674383', '更新内容:糾紛處理', '192.168.1.109', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/602.3.12 (KHTML, like Gecko) Version/10.0.2 Safari/602.3.12', '1');
INSERT INTO `oss_admin_log` VALUES ('1533675066', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533675091', '删除充值:7', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533675094', '删除充值:6', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533675097', '删除充值:5', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533675100', '删除充值:4', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533675103', '删除充值:3', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533675124', '更新充值:moovpay', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533675165', '更新充值:union pay', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533692069', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533692669', '更新内容:壹定不要錯過DOTA2比賽', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533692809', '更新内容:壹定不要錯過DOTA2比賽', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533694064', '更新连接:廣庫網絡', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533694385', '删除管理员:test', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533710581', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533710755', '更新设置', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533710832', '插入管理员:administrator', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533710867', '退出系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533710891', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533710898', '删除管理员:administrator', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533710905', '退出系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533711669', '登陆系统:admin', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533711763', '更新设置', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533711793', '批量删除内容', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533712868', '登陆系统:admin', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533712921', '插入服务器:聯通2區', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533713440', '插入内容:《三十六計》手遊 限號精英測試正式開啟', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533713645', '更新内容:《三十六計》手遊 限號精英測試正式開啟', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533713939', '插入内容:《大皇帝》遊族花唄開通公告', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533714212', '更新内容:《大皇帝》遊族花唄開通公告', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533714451', '插入内容:Nexon格鬥新作《Zone4》12月30日公測開啟', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533714582', '插入内容:益智遊戲泡泡龍被改編網遊 韓國Gstar亮相', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715149', '插入新手卡:50級禮包', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715223', '插入新手卡:新手禮包', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715691', '更新内容:關於我們', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715851', '插入游戏:太極崛起', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715872', '插入游戏:大皇帝', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715900', '插入游戏:血盟榮耀', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715928', '插入游戏:滅生', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715958', '插入游戏:奇跡重生', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715964', '更新游戏:奇跡重生', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533715985', '插入游戏:寒刀行', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716004', '插入游戏:戰天', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716026', '插入游戏:封天記', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716048', '插入游戏:藍月傳奇', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716071', '插入游戏:洪荒主宰', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716093', '插入游戏:尋秦記', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716111', '插入游戏:冰火之劍', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716136', '插入游戏:鬥羅大陸', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716158', '插入游戏:大明征途', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716182', '插入游戏:熱血三國2', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716206', '插入游戏:蠻荒之怒', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716238', '插入游戏:天劍狂刀', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716259', '插入游戏:赤月傳說2', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716285', '插入游戏:開天戰神', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716330', '更新内容:聯繫我們', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716371', '插入服务器:雙線1服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716391', '插入服务器:雙線749服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716410', '插入服务器:雙線112服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716436', '插入服务器:雙線112服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716457', '插入服务器:雙線554服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716478', '插入服务器:雙線27服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716494', '插入服务器:雙線1服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716509', '插入服务器:雙線1服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716532', '插入服务器:雙線77服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716570', '插入服务器:雙線77服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716593', '插入服务器:雙線2服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716613', '插入服务器:雙線357服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716629', '插入服务器:雙線83服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716649', '插入服务器:雙線1服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716655', '插入服务器:雙線312服', '192.168.1.100', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716668', '插入服务器:雙線54服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716686', '插入服务器:雙線1服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716704', '插入服务器:雙線1服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716718', '插入服务器:雙線1服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716732', '插入服务器:雙線1服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533716749', '插入服务器:雙線204服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533727576', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533787523', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533787535', '删除菜单:用戶中心', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533788390', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533788764', '登陆系统:admin', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533788832', '更新游戏:開天戰神', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533788910', '更新游戏:赤月傳說2', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533788924', '更新游戏:天劍狂刀', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533788939', '更新游戏:蠻荒之怒', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533789010', '更新服务器:雙線204服', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko', '1');
INSERT INTO `oss_admin_log` VALUES ('1533789390', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533789450', '更新服务器:雙線1服', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533789489', '更新内容:聯繫我們', '192.168.1.106', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533789501', '更新游戏:開天戰神', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533789587', '更新游戏:赤月傳說2', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533789671', '更新游戏:天劍狂刀', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533789715', '更新游戏:開天戰神', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533790155', '更新游戏:蠻荒之怒', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533791501', '登陆系统:admin', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533791547', '更新连接:網易遊戲', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533791597', '更新连接:騰訊遊戲', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533792143', '插入管理员:administrator', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');
INSERT INTO `oss_admin_log` VALUES ('1533792176', '删除管理员:administrator', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '1');

-- ----------------------------
-- Table structure for `oss_card`
-- ----------------------------
DROP TABLE IF EXISTS `oss_card`;
CREATE TABLE `oss_card` (
  `card_id` int(4) NOT NULL AUTO_INCREMENT,
  `card_name` varchar(50) DEFAULT NULL,
  `card_depict` varchar(255) DEFAULT NULL,
  `card_link` varchar(50) DEFAULT NULL,
  `card_state` tinyint(1) DEFAULT NULL,
  `card_game_id` int(4) DEFAULT NULL,
  `card_server_id` int(4) DEFAULT NULL,
  PRIMARY KEY (`card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_card
-- ----------------------------
INSERT INTO `oss_card` VALUES ('1', '傲劍新手大禮包', '傲劍新手大禮包', '', '1', '2', '0');
INSERT INTO `oss_card` VALUES ('2', '註冊禮包', '註冊後可領取新手大禮包', '', '1', '37', '0');
INSERT INTO `oss_card` VALUES ('3', '中秋禮包', '送酷炫ak－47', '', '1', '36', '0');
INSERT INTO `oss_card` VALUES ('4', '門派禮包', '30級可領取', '', '1', '35', '0');
INSERT INTO `oss_card` VALUES ('5', '60級禮包', '送60級坐騎和職業武器', '', '1', '34', '0');
INSERT INTO `oss_card` VALUES ('6', '50級禮包', '', '', '1', '27', '0');
INSERT INTO `oss_card` VALUES ('7', '新手禮包', '', '', '1', '25', '0');

-- ----------------------------
-- Table structure for `oss_card_number`
-- ----------------------------
DROP TABLE IF EXISTS `oss_card_number`;
CREATE TABLE `oss_card_number` (
  `number_id` int(4) NOT NULL AUTO_INCREMENT,
  `card_id` int(4) DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `number_state` smallint(2) DEFAULT NULL,
  `number_add_time` datetime DEFAULT NULL,
  `number_get_time` datetime DEFAULT NULL,
  `number_get_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1394 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_card_number
-- ----------------------------
INSERT INTO `oss_card_number` VALUES ('1', '2', '3263214214216162\r', '0', '2018-08-08 15:56:17', null, null);
INSERT INTO `oss_card_number` VALUES ('2', '2', '3263214214216163\r', '0', '2018-08-08 15:56:17', null, null);
INSERT INTO `oss_card_number` VALUES ('3', '2', '3263214214216165\r', '0', '2018-08-08 15:56:17', null, null);
INSERT INTO `oss_card_number` VALUES ('4', '2', '3263214214216166\r', '0', '2018-08-08 15:56:17', null, null);
INSERT INTO `oss_card_number` VALUES ('5', '2', '3263214214216167\r', '0', '2018-08-08 15:56:17', null, null);
INSERT INTO `oss_card_number` VALUES ('6', '2', '3263214214216169\r', '0', '2018-08-08 15:56:17', null, null);
INSERT INTO `oss_card_number` VALUES ('7', '2', '3263214214216170', '0', '2018-08-08 15:56:17', null, null);
INSERT INTO `oss_card_number` VALUES ('8', '5', 'aw124-124w-125w15-1201\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('9', '5', 'aw124-124w-125w15-1202\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('10', '5', 'aw124-124w-125w15-1203\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('11', '5', 'aw124-124w-125w15-1204\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('12', '5', 'aw124-124w-125w15-1205\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('13', '5', 'aw124-124w-125w15-1206\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('14', '5', 'aw124-124w-125w15-1207\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('15', '5', 'aw124-124w-125w15-1208\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('16', '5', 'aw124-124w-125w15-1209\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('17', '5', 'aw124-124w-125w15-1210\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('18', '5', 'aw124-124w-125w15-1211\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('19', '5', 'aw124-124w-125w15-1212\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('20', '5', 'aw124-124w-125w15-1213\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('21', '5', 'aw124-124w-125w15-1214\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('22', '5', 'aw124-124w-125w15-1215\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('23', '5', 'aw124-124w-125w15-1216\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('24', '5', 'aw124-124w-125w15-1217\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('25', '5', 'aw124-124w-125w15-1218\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('26', '5', 'aw124-124w-125w15-1219\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('27', '5', 'aw124-124w-125w15-1220\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('28', '5', 'aw124-124w-125w15-1221\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('29', '5', 'aw124-124w-125w15-1222\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('30', '5', 'aw124-124w-125w15-1223\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('31', '5', 'aw124-124w-125w15-1224\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('32', '5', 'aw124-124w-125w15-1225\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('33', '5', 'aw124-124w-125w15-1226\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('34', '5', 'aw124-124w-125w15-1227\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('35', '5', 'aw124-124w-125w15-1228\r', '0', '2018-08-08 15:57:41', null, null);
INSERT INTO `oss_card_number` VALUES ('36', '5', 'aw124-124w-125w15-1229\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('37', '5', 'aw124-124w-125w15-1230\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('38', '5', 'aw124-124w-125w15-1231\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('39', '5', 'aw124-124w-125w15-1232\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('40', '5', 'aw124-124w-125w15-1233\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('41', '5', 'aw124-124w-125w15-1234\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('42', '5', 'aw124-124w-125w15-1235\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('43', '5', 'aw124-124w-125w15-1236\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('44', '5', 'aw124-124w-125w15-1237\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('45', '5', 'aw124-124w-125w15-1238\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('46', '5', 'aw124-124w-125w15-1239\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('47', '5', 'aw124-124w-125w15-1240\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('48', '5', 'aw124-124w-125w15-1241\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('49', '5', 'aw124-124w-125w15-1242\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('50', '5', 'aw124-124w-125w15-1243\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('51', '5', 'aw124-124w-125w15-1244\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('52', '5', 'aw124-124w-125w15-1245\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('53', '5', 'aw124-124w-125w15-1246\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('54', '5', 'aw124-124w-125w15-1247\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('55', '5', 'aw124-124w-125w15-1248\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('56', '5', 'aw124-124w-125w15-1249\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('57', '5', 'aw124-124w-125w15-1250\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('58', '5', 'aw124-124w-125w15-1251\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('59', '5', 'aw124-124w-125w15-1252\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('60', '5', 'aw124-124w-125w15-1253\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('61', '5', 'aw124-124w-125w15-1254\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('62', '5', 'aw124-124w-125w15-1255\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('63', '5', 'aw124-124w-125w15-1256\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('64', '5', 'aw124-124w-125w15-1257\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('65', '5', 'aw124-124w-125w15-1258\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('66', '5', 'aw124-124w-125w15-1259\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('67', '5', 'aw124-124w-125w15-1260\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('68', '5', 'aw124-124w-125w15-1261\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('69', '5', 'aw124-124w-125w15-1262\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('70', '5', 'aw124-124w-125w15-1263\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('71', '5', 'aw124-124w-125w15-1264\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('72', '5', 'aw124-124w-125w15-1265\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('73', '5', 'aw124-124w-125w15-1266\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('74', '5', 'aw124-124w-125w15-1267\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('75', '5', 'aw124-124w-125w15-1268\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('76', '5', 'aw124-124w-125w15-1269\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('77', '5', 'aw124-124w-125w15-1270\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('78', '5', 'aw124-124w-125w15-1271\r', '0', '2018-08-08 15:57:42', null, null);
INSERT INTO `oss_card_number` VALUES ('79', '5', 'aw124-124w-125w15-1272\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('80', '5', 'aw124-124w-125w15-1273\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('81', '5', 'aw124-124w-125w15-1274\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('82', '5', 'aw124-124w-125w15-1275\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('83', '5', 'aw124-124w-125w15-1276\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('84', '5', 'aw124-124w-125w15-1277\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('85', '5', 'aw124-124w-125w15-1278\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('86', '5', 'aw124-124w-125w15-1279\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('87', '5', 'aw124-124w-125w15-1280\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('88', '5', 'aw124-124w-125w15-1281\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('89', '5', 'aw124-124w-125w15-1282\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('90', '5', 'aw124-124w-125w15-1283\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('91', '5', 'aw124-124w-125w15-1284\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('92', '5', 'aw124-124w-125w15-1285\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('93', '5', 'aw124-124w-125w15-1286\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('94', '5', 'aw124-124w-125w15-1287\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('95', '5', 'aw124-124w-125w15-1288\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('96', '5', 'aw124-124w-125w15-1289\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('97', '5', 'aw124-124w-125w15-1290\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('98', '5', 'aw124-124w-125w15-1291\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('99', '5', 'aw124-124w-125w15-1292\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('100', '5', 'aw124-124w-125w15-1293\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('101', '5', 'aw124-124w-125w15-1294\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('102', '5', 'aw124-124w-125w15-1295\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('103', '5', 'aw124-124w-125w15-1296\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('104', '5', 'aw124-124w-125w15-1297\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('105', '5', 'aw124-124w-125w15-1298\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('106', '5', 'aw124-124w-125w15-1299\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('107', '5', 'aw124-124w-125w15-1300\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('108', '5', 'aw124-124w-125w15-1301\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('109', '5', 'aw124-124w-125w15-1302\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('110', '5', 'aw124-124w-125w15-1303\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('111', '5', 'aw124-124w-125w15-1304\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('112', '5', 'aw124-124w-125w15-1305\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('113', '5', 'aw124-124w-125w15-1306\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('114', '5', 'aw124-124w-125w15-1307\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('115', '5', 'aw124-124w-125w15-1308\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('116', '5', 'aw124-124w-125w15-1309\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('117', '5', 'aw124-124w-125w15-1310\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('118', '5', 'aw124-124w-125w15-1311\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('119', '5', 'aw124-124w-125w15-1312\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('120', '5', 'aw124-124w-125w15-1313\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('121', '5', 'aw124-124w-125w15-1314\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('122', '5', 'aw124-124w-125w15-1315\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('123', '5', 'aw124-124w-125w15-1316\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('124', '5', 'aw124-124w-125w15-1317\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('125', '5', 'aw124-124w-125w15-1318\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('126', '5', 'aw124-124w-125w15-1319\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('127', '5', 'aw124-124w-125w15-1320\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('128', '5', 'aw124-124w-125w15-1321\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('129', '5', 'aw124-124w-125w15-1322\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('130', '5', 'aw124-124w-125w15-1323\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('131', '5', 'aw124-124w-125w15-1324\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('132', '5', 'aw124-124w-125w15-1325\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('133', '5', 'aw124-124w-125w15-1326\r', '0', '2018-08-08 15:57:43', null, null);
INSERT INTO `oss_card_number` VALUES ('134', '5', 'aw124-124w-125w15-1327\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('135', '5', 'aw124-124w-125w15-1328\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('136', '5', 'aw124-124w-125w15-1329\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('137', '5', 'aw124-124w-125w15-1330\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('138', '5', 'aw124-124w-125w15-1331\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('139', '5', 'aw124-124w-125w15-1332\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('140', '5', 'aw124-124w-125w15-1333\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('141', '5', 'aw124-124w-125w15-1334\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('142', '5', 'aw124-124w-125w15-1335\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('143', '5', 'aw124-124w-125w15-1336\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('144', '5', 'aw124-124w-125w15-1337\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('145', '5', 'aw124-124w-125w15-1338\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('146', '5', 'aw124-124w-125w15-1339\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('147', '5', 'aw124-124w-125w15-1340\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('148', '5', 'aw124-124w-125w15-1341\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('149', '5', 'aw124-124w-125w15-1342\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('150', '5', 'aw124-124w-125w15-1343\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('151', '5', 'aw124-124w-125w15-1344\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('152', '5', 'aw124-124w-125w15-1345\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('153', '5', 'aw124-124w-125w15-1346\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('154', '5', 'aw124-124w-125w15-1347\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('155', '5', 'aw124-124w-125w15-1348\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('156', '5', 'aw124-124w-125w15-1349\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('157', '5', 'aw124-124w-125w15-1350\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('158', '5', 'aw124-124w-125w15-1351\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('159', '5', 'aw124-124w-125w15-1352\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('160', '5', 'aw124-124w-125w15-1353\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('161', '5', 'aw124-124w-125w15-1354\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('162', '5', 'aw124-124w-125w15-1355\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('163', '5', 'aw124-124w-125w15-1356\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('164', '5', 'aw124-124w-125w15-1357\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('165', '5', 'aw124-124w-125w15-1358\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('166', '5', 'aw124-124w-125w15-1359\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('167', '5', 'aw124-124w-125w15-1360\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('168', '5', 'aw124-124w-125w15-1361\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('169', '5', 'aw124-124w-125w15-1362\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('170', '5', 'aw124-124w-125w15-1363\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('171', '5', 'aw124-124w-125w15-1364\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('172', '5', 'aw124-124w-125w15-1365\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('173', '5', 'aw124-124w-125w15-1366\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('174', '5', 'aw124-124w-125w15-1367\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('175', '5', 'aw124-124w-125w15-1368\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('176', '5', 'aw124-124w-125w15-1369\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('177', '5', 'aw124-124w-125w15-1370\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('178', '5', 'aw124-124w-125w15-1371\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('179', '5', 'aw124-124w-125w15-1372\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('180', '5', 'aw124-124w-125w15-1373\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('181', '5', 'aw124-124w-125w15-1374\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('182', '5', 'aw124-124w-125w15-1375\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('183', '5', 'aw124-124w-125w15-1376\r', '0', '2018-08-08 15:57:44', null, null);
INSERT INTO `oss_card_number` VALUES ('184', '5', 'aw124-124w-125w15-1377\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('185', '5', 'aw124-124w-125w15-1378\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('186', '5', 'aw124-124w-125w15-1379\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('187', '5', 'aw124-124w-125w15-1380\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('188', '5', 'aw124-124w-125w15-1381\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('189', '5', 'aw124-124w-125w15-1382\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('190', '5', 'aw124-124w-125w15-1383\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('191', '5', 'aw124-124w-125w15-1384\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('192', '5', 'aw124-124w-125w15-1385\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('193', '5', 'aw124-124w-125w15-1386\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('194', '5', 'aw124-124w-125w15-1387\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('195', '5', 'aw124-124w-125w15-1388\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('196', '5', 'aw124-124w-125w15-1389\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('197', '5', 'aw124-124w-125w15-1390\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('198', '5', 'aw124-124w-125w15-1391\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('199', '5', 'aw124-124w-125w15-1392\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('200', '5', 'aw124-124w-125w15-1393\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('201', '5', 'aw124-124w-125w15-1394\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('202', '5', 'aw124-124w-125w15-1395\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('203', '5', 'aw124-124w-125w15-1396\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('204', '5', 'aw124-124w-125w15-1397\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('205', '5', 'aw124-124w-125w15-1398\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('206', '5', 'aw124-124w-125w15-1399\r', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('207', '5', 'aw124-124w-125w15-1400', '0', '2018-08-08 15:57:45', null, null);
INSERT INTO `oss_card_number` VALUES ('208', '5', 'aw124-124w-125w15-1201\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('209', '5', 'aw124-124w-125w15-1202\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('210', '5', 'aw124-124w-125w15-1203\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('211', '5', 'aw124-124w-125w15-1204\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('212', '5', 'aw124-124w-125w15-1205\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('213', '5', 'aw124-124w-125w15-1206\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('214', '5', 'aw124-124w-125w15-1207\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('215', '5', 'aw124-124w-125w15-1208\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('216', '5', 'aw124-124w-125w15-1209\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('217', '5', 'aw124-124w-125w15-1210\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('218', '5', 'aw124-124w-125w15-1211\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('219', '5', 'aw124-124w-125w15-1212\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('220', '5', 'aw124-124w-125w15-1213\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('221', '5', 'aw124-124w-125w15-1214\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('222', '5', 'aw124-124w-125w15-1215\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('223', '5', 'aw124-124w-125w15-1216\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('224', '5', 'aw124-124w-125w15-1217\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('225', '5', 'aw124-124w-125w15-1218\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('226', '5', 'aw124-124w-125w15-1219\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('227', '5', 'aw124-124w-125w15-1220\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('228', '5', 'aw124-124w-125w15-1221\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('229', '5', 'aw124-124w-125w15-1222\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('230', '5', 'aw124-124w-125w15-1223\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('231', '5', 'aw124-124w-125w15-1224\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('232', '5', 'aw124-124w-125w15-1225\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('233', '5', 'aw124-124w-125w15-1226\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('234', '5', 'aw124-124w-125w15-1227\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('235', '5', 'aw124-124w-125w15-1228\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('236', '5', 'aw124-124w-125w15-1229\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('237', '5', 'aw124-124w-125w15-1230\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('238', '5', 'aw124-124w-125w15-1231\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('239', '5', 'aw124-124w-125w15-1232\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('240', '5', 'aw124-124w-125w15-1233\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('241', '5', 'aw124-124w-125w15-1234\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('242', '5', 'aw124-124w-125w15-1235\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('243', '5', 'aw124-124w-125w15-1236\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('244', '5', 'aw124-124w-125w15-1237\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('245', '5', 'aw124-124w-125w15-1238\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('246', '5', 'aw124-124w-125w15-1239\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('247', '5', 'aw124-124w-125w15-1240\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('248', '5', 'aw124-124w-125w15-1241\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('249', '5', 'aw124-124w-125w15-1242\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('250', '5', 'aw124-124w-125w15-1243\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('251', '5', 'aw124-124w-125w15-1244\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('252', '5', 'aw124-124w-125w15-1245\r', '0', '2018-08-08 15:57:46', null, null);
INSERT INTO `oss_card_number` VALUES ('253', '5', 'aw124-124w-125w15-1246\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('254', '5', 'aw124-124w-125w15-1247\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('255', '5', 'aw124-124w-125w15-1248\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('256', '5', 'aw124-124w-125w15-1249\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('257', '5', 'aw124-124w-125w15-1250\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('258', '5', 'aw124-124w-125w15-1251\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('259', '5', 'aw124-124w-125w15-1252\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('260', '5', 'aw124-124w-125w15-1253\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('261', '5', 'aw124-124w-125w15-1254\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('262', '5', 'aw124-124w-125w15-1255\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('263', '5', 'aw124-124w-125w15-1256\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('264', '5', 'aw124-124w-125w15-1257\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('265', '5', 'aw124-124w-125w15-1258\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('266', '5', 'aw124-124w-125w15-1259\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('267', '5', 'aw124-124w-125w15-1260\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('268', '5', 'aw124-124w-125w15-1261\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('269', '5', 'aw124-124w-125w15-1262\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('270', '5', 'aw124-124w-125w15-1263\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('271', '5', 'aw124-124w-125w15-1264\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('272', '5', 'aw124-124w-125w15-1265\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('273', '5', 'aw124-124w-125w15-1266\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('274', '5', 'aw124-124w-125w15-1267\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('275', '5', 'aw124-124w-125w15-1268\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('276', '5', 'aw124-124w-125w15-1269\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('277', '5', 'aw124-124w-125w15-1270\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('278', '5', 'aw124-124w-125w15-1271\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('279', '5', 'aw124-124w-125w15-1272\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('280', '5', 'aw124-124w-125w15-1273\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('281', '5', 'aw124-124w-125w15-1274\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('282', '5', 'aw124-124w-125w15-1275\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('283', '5', 'aw124-124w-125w15-1276\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('284', '5', 'aw124-124w-125w15-1277\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('285', '5', 'aw124-124w-125w15-1278\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('286', '5', 'aw124-124w-125w15-1279\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('287', '5', 'aw124-124w-125w15-1280\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('288', '5', 'aw124-124w-125w15-1281\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('289', '5', 'aw124-124w-125w15-1282\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('290', '5', 'aw124-124w-125w15-1283\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('291', '5', 'aw124-124w-125w15-1284\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('292', '5', 'aw124-124w-125w15-1285\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('293', '5', 'aw124-124w-125w15-1286\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('294', '5', 'aw124-124w-125w15-1287\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('295', '5', 'aw124-124w-125w15-1288\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('296', '5', 'aw124-124w-125w15-1289\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('297', '5', 'aw124-124w-125w15-1290\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('298', '5', 'aw124-124w-125w15-1291\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('299', '5', 'aw124-124w-125w15-1292\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('300', '5', 'aw124-124w-125w15-1293\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('301', '5', 'aw124-124w-125w15-1294\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('302', '5', 'aw124-124w-125w15-1295\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('303', '5', 'aw124-124w-125w15-1296\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('304', '5', 'aw124-124w-125w15-1297\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('305', '5', 'aw124-124w-125w15-1298\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('306', '5', 'aw124-124w-125w15-1299\r', '0', '2018-08-08 15:57:47', null, null);
INSERT INTO `oss_card_number` VALUES ('307', '5', 'aw124-124w-125w15-1300\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('308', '5', 'aw124-124w-125w15-1301\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('309', '5', 'aw124-124w-125w15-1302\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('310', '5', 'aw124-124w-125w15-1303\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('311', '5', 'aw124-124w-125w15-1304\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('312', '5', 'aw124-124w-125w15-1305\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('313', '5', 'aw124-124w-125w15-1306\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('314', '5', 'aw124-124w-125w15-1307\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('315', '5', 'aw124-124w-125w15-1308\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('316', '5', 'aw124-124w-125w15-1309\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('317', '5', 'aw124-124w-125w15-1310\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('318', '5', 'aw124-124w-125w15-1311\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('319', '5', 'aw124-124w-125w15-1312\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('320', '5', 'aw124-124w-125w15-1313\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('321', '5', 'aw124-124w-125w15-1314\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('322', '5', 'aw124-124w-125w15-1315\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('323', '5', 'aw124-124w-125w15-1316\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('324', '5', 'aw124-124w-125w15-1317\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('325', '5', 'aw124-124w-125w15-1318\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('326', '5', 'aw124-124w-125w15-1319\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('327', '5', 'aw124-124w-125w15-1320\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('328', '5', 'aw124-124w-125w15-1321\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('329', '5', 'aw124-124w-125w15-1322\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('330', '5', 'aw124-124w-125w15-1323\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('331', '5', 'aw124-124w-125w15-1324\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('332', '5', 'aw124-124w-125w15-1325\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('333', '5', 'aw124-124w-125w15-1326\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('334', '5', 'aw124-124w-125w15-1327\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('335', '5', 'aw124-124w-125w15-1328\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('336', '5', 'aw124-124w-125w15-1329\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('337', '5', 'aw124-124w-125w15-1330\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('338', '5', 'aw124-124w-125w15-1331\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('339', '5', 'aw124-124w-125w15-1332\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('340', '5', 'aw124-124w-125w15-1333\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('341', '5', 'aw124-124w-125w15-1334\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('342', '5', 'aw124-124w-125w15-1335\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('343', '5', 'aw124-124w-125w15-1336\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('344', '5', 'aw124-124w-125w15-1337\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('345', '5', 'aw124-124w-125w15-1338\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('346', '5', 'aw124-124w-125w15-1339\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('347', '5', 'aw124-124w-125w15-1340\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('348', '5', 'aw124-124w-125w15-1341\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('349', '5', 'aw124-124w-125w15-1342\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('350', '5', 'aw124-124w-125w15-1343\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('351', '5', 'aw124-124w-125w15-1344\r', '0', '2018-08-08 15:57:48', null, null);
INSERT INTO `oss_card_number` VALUES ('352', '5', 'aw124-124w-125w15-1345\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('353', '5', 'aw124-124w-125w15-1346\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('354', '5', 'aw124-124w-125w15-1347\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('355', '5', 'aw124-124w-125w15-1348\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('356', '5', 'aw124-124w-125w15-1349\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('357', '5', 'aw124-124w-125w15-1350\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('358', '5', 'aw124-124w-125w15-1351\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('359', '5', 'aw124-124w-125w15-1352\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('360', '5', 'aw124-124w-125w15-1353\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('361', '5', 'aw124-124w-125w15-1354\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('362', '5', 'aw124-124w-125w15-1355\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('363', '5', 'aw124-124w-125w15-1356\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('364', '5', 'aw124-124w-125w15-1357\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('365', '5', 'aw124-124w-125w15-1358\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('366', '5', 'aw124-124w-125w15-1359\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('367', '5', 'aw124-124w-125w15-1360\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('368', '5', 'aw124-124w-125w15-1361\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('369', '5', 'aw124-124w-125w15-1362\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('370', '5', 'aw124-124w-125w15-1363\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('371', '5', 'aw124-124w-125w15-1364\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('372', '5', 'aw124-124w-125w15-1365\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('373', '5', 'aw124-124w-125w15-1366\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('374', '5', 'aw124-124w-125w15-1367\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('375', '5', 'aw124-124w-125w15-1368\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('376', '5', 'aw124-124w-125w15-1369\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('377', '5', 'aw124-124w-125w15-1370\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('378', '5', 'aw124-124w-125w15-1371\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('379', '5', 'aw124-124w-125w15-1372\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('380', '5', 'aw124-124w-125w15-1373\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('381', '5', 'aw124-124w-125w15-1374\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('382', '5', 'aw124-124w-125w15-1375\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('383', '5', 'aw124-124w-125w15-1376\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('384', '5', 'aw124-124w-125w15-1377\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('385', '5', 'aw124-124w-125w15-1378\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('386', '5', 'aw124-124w-125w15-1379\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('387', '5', 'aw124-124w-125w15-1380\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('388', '5', 'aw124-124w-125w15-1381\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('389', '5', 'aw124-124w-125w15-1382\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('390', '5', 'aw124-124w-125w15-1383\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('391', '5', 'aw124-124w-125w15-1384\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('392', '5', 'aw124-124w-125w15-1385\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('393', '5', 'aw124-124w-125w15-1386\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('394', '5', 'aw124-124w-125w15-1387\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('395', '5', 'aw124-124w-125w15-1388\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('396', '5', 'aw124-124w-125w15-1389\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('397', '5', 'aw124-124w-125w15-1390\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('398', '5', 'aw124-124w-125w15-1391\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('399', '5', 'aw124-124w-125w15-1392\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('400', '5', 'aw124-124w-125w15-1393\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('401', '5', 'aw124-124w-125w15-1394\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('402', '5', 'aw124-124w-125w15-1395\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('403', '5', 'aw124-124w-125w15-1396\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('404', '5', 'aw124-124w-125w15-1397\r', '0', '2018-08-08 15:57:49', null, null);
INSERT INTO `oss_card_number` VALUES ('405', '5', 'aw124-124w-125w15-1398\r', '0', '2018-08-08 15:57:50', null, null);
INSERT INTO `oss_card_number` VALUES ('406', '5', 'aw124-124w-125w15-1399\r', '0', '2018-08-08 15:57:50', null, null);
INSERT INTO `oss_card_number` VALUES ('407', '5', 'aw124-124w-125w15-1400', '0', '2018-08-08 15:57:50', null, null);
INSERT INTO `oss_card_number` VALUES ('408', '4', 'aw124-124w-125w15-1201\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('409', '4', 'aw124-124w-125w15-1202\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('410', '4', 'aw124-124w-125w15-1203\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('411', '4', 'aw124-124w-125w15-1204\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('412', '4', 'aw124-124w-125w15-1205\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('413', '4', 'aw124-124w-125w15-1206\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('414', '4', 'aw124-124w-125w15-1207\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('415', '4', 'aw124-124w-125w15-1208\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('416', '4', 'aw124-124w-125w15-1209\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('417', '4', 'aw124-124w-125w15-1210\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('418', '4', 'aw124-124w-125w15-1211\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('419', '4', 'aw124-124w-125w15-1212\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('420', '4', 'aw124-124w-125w15-1213\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('421', '4', 'aw124-124w-125w15-1214\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('422', '4', 'aw124-124w-125w15-1215\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('423', '4', 'aw124-124w-125w15-1216\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('424', '4', 'aw124-124w-125w15-1217\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('425', '4', 'aw124-124w-125w15-1218\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('426', '4', 'aw124-124w-125w15-1219\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('427', '4', 'aw124-124w-125w15-1220\r', '0', '2018-08-08 15:57:56', null, null);
INSERT INTO `oss_card_number` VALUES ('428', '4', 'aw124-124w-125w15-1221\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('429', '4', 'aw124-124w-125w15-1222\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('430', '4', 'aw124-124w-125w15-1223\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('431', '4', 'aw124-124w-125w15-1224\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('432', '4', 'aw124-124w-125w15-1225\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('433', '4', 'aw124-124w-125w15-1226\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('434', '4', 'aw124-124w-125w15-1227\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('435', '4', 'aw124-124w-125w15-1228\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('436', '4', 'aw124-124w-125w15-1229\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('437', '4', 'aw124-124w-125w15-1230\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('438', '4', 'aw124-124w-125w15-1231\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('439', '4', 'aw124-124w-125w15-1232\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('440', '4', 'aw124-124w-125w15-1233\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('441', '4', 'aw124-124w-125w15-1234\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('442', '4', 'aw124-124w-125w15-1235\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('443', '4', 'aw124-124w-125w15-1236\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('444', '4', 'aw124-124w-125w15-1237\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('445', '4', 'aw124-124w-125w15-1238\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('446', '4', 'aw124-124w-125w15-1239\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('447', '4', 'aw124-124w-125w15-1240\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('448', '4', 'aw124-124w-125w15-1241\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('449', '4', 'aw124-124w-125w15-1242\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('450', '4', 'aw124-124w-125w15-1243\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('451', '4', 'aw124-124w-125w15-1244\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('452', '4', 'aw124-124w-125w15-1245\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('453', '4', 'aw124-124w-125w15-1246\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('454', '4', 'aw124-124w-125w15-1247\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('455', '4', 'aw124-124w-125w15-1248\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('456', '4', 'aw124-124w-125w15-1249\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('457', '4', 'aw124-124w-125w15-1250\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('458', '4', 'aw124-124w-125w15-1251\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('459', '4', 'aw124-124w-125w15-1252\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('460', '4', 'aw124-124w-125w15-1253\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('461', '4', 'aw124-124w-125w15-1254\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('462', '4', 'aw124-124w-125w15-1255\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('463', '4', 'aw124-124w-125w15-1256\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('464', '4', 'aw124-124w-125w15-1257\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('465', '4', 'aw124-124w-125w15-1258\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('466', '4', 'aw124-124w-125w15-1259\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('467', '4', 'aw124-124w-125w15-1260\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('468', '4', 'aw124-124w-125w15-1261\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('469', '4', 'aw124-124w-125w15-1262\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('470', '4', 'aw124-124w-125w15-1263\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('471', '4', 'aw124-124w-125w15-1264\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('472', '4', 'aw124-124w-125w15-1265\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('473', '4', 'aw124-124w-125w15-1266\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('474', '4', 'aw124-124w-125w15-1267\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('475', '4', 'aw124-124w-125w15-1268\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('476', '4', 'aw124-124w-125w15-1269\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('477', '4', 'aw124-124w-125w15-1270\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('478', '4', 'aw124-124w-125w15-1271\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('479', '4', 'aw124-124w-125w15-1272\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('480', '4', 'aw124-124w-125w15-1273\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('481', '4', 'aw124-124w-125w15-1274\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('482', '4', 'aw124-124w-125w15-1275\r', '0', '2018-08-08 15:57:57', null, null);
INSERT INTO `oss_card_number` VALUES ('483', '4', 'aw124-124w-125w15-1276\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('484', '4', 'aw124-124w-125w15-1277\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('485', '4', 'aw124-124w-125w15-1278\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('486', '4', 'aw124-124w-125w15-1279\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('487', '4', 'aw124-124w-125w15-1280\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('488', '4', 'aw124-124w-125w15-1281\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('489', '4', 'aw124-124w-125w15-1282\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('490', '4', 'aw124-124w-125w15-1283\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('491', '4', 'aw124-124w-125w15-1284\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('492', '4', 'aw124-124w-125w15-1285\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('493', '4', 'aw124-124w-125w15-1286\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('494', '4', 'aw124-124w-125w15-1287\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('495', '4', 'aw124-124w-125w15-1288\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('496', '4', 'aw124-124w-125w15-1289\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('497', '4', 'aw124-124w-125w15-1290\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('498', '4', 'aw124-124w-125w15-1291\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('499', '4', 'aw124-124w-125w15-1292\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('500', '4', 'aw124-124w-125w15-1293\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('501', '4', 'aw124-124w-125w15-1294\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('502', '4', 'aw124-124w-125w15-1295\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('503', '4', 'aw124-124w-125w15-1296\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('504', '4', 'aw124-124w-125w15-1297\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('505', '4', 'aw124-124w-125w15-1298\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('506', '4', 'aw124-124w-125w15-1299\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('507', '4', 'aw124-124w-125w15-1300\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('508', '4', 'aw124-124w-125w15-1301\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('509', '4', 'aw124-124w-125w15-1302\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('510', '4', 'aw124-124w-125w15-1303\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('511', '4', 'aw124-124w-125w15-1304\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('512', '4', 'aw124-124w-125w15-1305\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('513', '4', 'aw124-124w-125w15-1306\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('514', '4', 'aw124-124w-125w15-1307\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('515', '4', 'aw124-124w-125w15-1308\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('516', '4', 'aw124-124w-125w15-1309\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('517', '4', 'aw124-124w-125w15-1310\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('518', '4', 'aw124-124w-125w15-1311\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('519', '4', 'aw124-124w-125w15-1312\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('520', '4', 'aw124-124w-125w15-1313\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('521', '4', 'aw124-124w-125w15-1314\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('522', '4', 'aw124-124w-125w15-1315\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('523', '4', 'aw124-124w-125w15-1316\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('524', '4', 'aw124-124w-125w15-1317\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('525', '4', 'aw124-124w-125w15-1318\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('526', '4', 'aw124-124w-125w15-1319\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('527', '4', 'aw124-124w-125w15-1320\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('528', '4', 'aw124-124w-125w15-1321\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('529', '4', 'aw124-124w-125w15-1322\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('530', '4', 'aw124-124w-125w15-1323\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('531', '4', 'aw124-124w-125w15-1324\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('532', '4', 'aw124-124w-125w15-1325\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('533', '4', 'aw124-124w-125w15-1326\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('534', '4', 'aw124-124w-125w15-1327\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('535', '4', 'aw124-124w-125w15-1328\r', '0', '2018-08-08 15:57:58', null, null);
INSERT INTO `oss_card_number` VALUES ('536', '4', 'aw124-124w-125w15-1329\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('537', '4', 'aw124-124w-125w15-1330\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('538', '4', 'aw124-124w-125w15-1331\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('539', '4', 'aw124-124w-125w15-1332\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('540', '4', 'aw124-124w-125w15-1333\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('541', '4', 'aw124-124w-125w15-1334\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('542', '4', 'aw124-124w-125w15-1335\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('543', '4', 'aw124-124w-125w15-1336\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('544', '4', 'aw124-124w-125w15-1337\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('545', '4', 'aw124-124w-125w15-1338\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('546', '4', 'aw124-124w-125w15-1339\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('547', '4', 'aw124-124w-125w15-1340\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('548', '4', 'aw124-124w-125w15-1341\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('549', '4', 'aw124-124w-125w15-1342\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('550', '4', 'aw124-124w-125w15-1343\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('551', '4', 'aw124-124w-125w15-1344\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('552', '4', 'aw124-124w-125w15-1345\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('553', '4', 'aw124-124w-125w15-1346\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('554', '4', 'aw124-124w-125w15-1347\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('555', '4', 'aw124-124w-125w15-1348\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('556', '4', 'aw124-124w-125w15-1349\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('557', '4', 'aw124-124w-125w15-1350\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('558', '4', 'aw124-124w-125w15-1351\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('559', '4', 'aw124-124w-125w15-1352\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('560', '4', 'aw124-124w-125w15-1353\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('561', '4', 'aw124-124w-125w15-1354\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('562', '4', 'aw124-124w-125w15-1355\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('563', '4', 'aw124-124w-125w15-1356\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('564', '4', 'aw124-124w-125w15-1357\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('565', '4', 'aw124-124w-125w15-1358\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('566', '4', 'aw124-124w-125w15-1359\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('567', '4', 'aw124-124w-125w15-1360\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('568', '4', 'aw124-124w-125w15-1361\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('569', '4', 'aw124-124w-125w15-1362\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('570', '4', 'aw124-124w-125w15-1363\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('571', '4', 'aw124-124w-125w15-1364\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('572', '4', 'aw124-124w-125w15-1365\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('573', '4', 'aw124-124w-125w15-1366\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('574', '4', 'aw124-124w-125w15-1367\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('575', '4', 'aw124-124w-125w15-1368\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('576', '4', 'aw124-124w-125w15-1369\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('577', '4', 'aw124-124w-125w15-1370\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('578', '4', 'aw124-124w-125w15-1371\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('579', '4', 'aw124-124w-125w15-1372\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('580', '4', 'aw124-124w-125w15-1373\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('581', '4', 'aw124-124w-125w15-1374\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('582', '4', 'aw124-124w-125w15-1375\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('583', '4', 'aw124-124w-125w15-1376\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('584', '4', 'aw124-124w-125w15-1377\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('585', '4', 'aw124-124w-125w15-1378\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('586', '4', 'aw124-124w-125w15-1379\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('587', '4', 'aw124-124w-125w15-1380\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('588', '4', 'aw124-124w-125w15-1381\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('589', '4', 'aw124-124w-125w15-1382\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('590', '4', 'aw124-124w-125w15-1383\r', '0', '2018-08-08 15:57:59', null, null);
INSERT INTO `oss_card_number` VALUES ('591', '4', 'aw124-124w-125w15-1384\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('592', '4', 'aw124-124w-125w15-1385\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('593', '4', 'aw124-124w-125w15-1386\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('594', '4', 'aw124-124w-125w15-1387\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('595', '4', 'aw124-124w-125w15-1388\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('596', '4', 'aw124-124w-125w15-1389\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('597', '4', 'aw124-124w-125w15-1390\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('598', '4', 'aw124-124w-125w15-1391\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('599', '4', 'aw124-124w-125w15-1392\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('600', '4', 'aw124-124w-125w15-1393\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('601', '4', 'aw124-124w-125w15-1394\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('602', '4', 'aw124-124w-125w15-1395\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('603', '4', 'aw124-124w-125w15-1396\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('604', '4', 'aw124-124w-125w15-1397\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('605', '4', 'aw124-124w-125w15-1398\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('606', '4', 'aw124-124w-125w15-1399\r', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('607', '4', 'aw124-124w-125w15-1400', '0', '2018-08-08 15:58:00', null, null);
INSERT INTO `oss_card_number` VALUES ('608', '3', 'aw124-124w-125w15-1201\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('609', '3', 'aw124-124w-125w15-1202\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('610', '3', 'aw124-124w-125w15-1203\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('611', '3', 'aw124-124w-125w15-1204\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('612', '3', 'aw124-124w-125w15-1205\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('613', '3', 'aw124-124w-125w15-1206\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('614', '3', 'aw124-124w-125w15-1207\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('615', '3', 'aw124-124w-125w15-1208\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('616', '3', 'aw124-124w-125w15-1209\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('617', '3', 'aw124-124w-125w15-1210\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('618', '3', 'aw124-124w-125w15-1211\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('619', '3', 'aw124-124w-125w15-1212\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('620', '3', 'aw124-124w-125w15-1213\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('621', '3', 'aw124-124w-125w15-1214\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('622', '3', 'aw124-124w-125w15-1215\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('623', '3', 'aw124-124w-125w15-1216\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('624', '3', 'aw124-124w-125w15-1217\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('625', '3', 'aw124-124w-125w15-1218\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('626', '3', 'aw124-124w-125w15-1219\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('627', '3', 'aw124-124w-125w15-1220\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('628', '3', 'aw124-124w-125w15-1221\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('629', '3', 'aw124-124w-125w15-1222\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('630', '3', 'aw124-124w-125w15-1223\r', '0', '2018-08-08 15:58:05', null, null);
INSERT INTO `oss_card_number` VALUES ('631', '3', 'aw124-124w-125w15-1224\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('632', '3', 'aw124-124w-125w15-1225\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('633', '3', 'aw124-124w-125w15-1226\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('634', '3', 'aw124-124w-125w15-1227\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('635', '3', 'aw124-124w-125w15-1228\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('636', '3', 'aw124-124w-125w15-1229\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('637', '3', 'aw124-124w-125w15-1230\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('638', '3', 'aw124-124w-125w15-1231\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('639', '3', 'aw124-124w-125w15-1232\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('640', '3', 'aw124-124w-125w15-1233\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('641', '3', 'aw124-124w-125w15-1234\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('642', '3', 'aw124-124w-125w15-1235\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('643', '3', 'aw124-124w-125w15-1236\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('644', '3', 'aw124-124w-125w15-1237\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('645', '3', 'aw124-124w-125w15-1238\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('646', '3', 'aw124-124w-125w15-1239\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('647', '3', 'aw124-124w-125w15-1240\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('648', '3', 'aw124-124w-125w15-1241\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('649', '3', 'aw124-124w-125w15-1242\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('650', '3', 'aw124-124w-125w15-1243\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('651', '3', 'aw124-124w-125w15-1244\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('652', '3', 'aw124-124w-125w15-1245\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('653', '3', 'aw124-124w-125w15-1246\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('654', '3', 'aw124-124w-125w15-1247\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('655', '3', 'aw124-124w-125w15-1248\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('656', '3', 'aw124-124w-125w15-1249\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('657', '3', 'aw124-124w-125w15-1250\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('658', '3', 'aw124-124w-125w15-1251\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('659', '3', 'aw124-124w-125w15-1252\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('660', '3', 'aw124-124w-125w15-1253\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('661', '3', 'aw124-124w-125w15-1254\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('662', '3', 'aw124-124w-125w15-1255\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('663', '3', 'aw124-124w-125w15-1256\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('664', '3', 'aw124-124w-125w15-1257\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('665', '3', 'aw124-124w-125w15-1258\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('666', '3', 'aw124-124w-125w15-1259\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('667', '3', 'aw124-124w-125w15-1260\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('668', '3', 'aw124-124w-125w15-1261\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('669', '3', 'aw124-124w-125w15-1262\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('670', '3', 'aw124-124w-125w15-1263\r', '0', '2018-08-08 15:58:06', null, null);
INSERT INTO `oss_card_number` VALUES ('671', '3', 'aw124-124w-125w15-1264\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('672', '3', 'aw124-124w-125w15-1265\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('673', '3', 'aw124-124w-125w15-1266\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('674', '3', 'aw124-124w-125w15-1267\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('675', '3', 'aw124-124w-125w15-1268\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('676', '3', 'aw124-124w-125w15-1269\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('677', '3', 'aw124-124w-125w15-1270\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('678', '3', 'aw124-124w-125w15-1271\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('679', '3', 'aw124-124w-125w15-1272\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('680', '3', 'aw124-124w-125w15-1273\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('681', '3', 'aw124-124w-125w15-1274\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('682', '3', 'aw124-124w-125w15-1275\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('683', '3', 'aw124-124w-125w15-1276\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('684', '3', 'aw124-124w-125w15-1277\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('685', '3', 'aw124-124w-125w15-1278\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('686', '3', 'aw124-124w-125w15-1279\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('687', '3', 'aw124-124w-125w15-1280\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('688', '3', 'aw124-124w-125w15-1281\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('689', '3', 'aw124-124w-125w15-1282\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('690', '3', 'aw124-124w-125w15-1283\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('691', '3', 'aw124-124w-125w15-1284\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('692', '3', 'aw124-124w-125w15-1285\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('693', '3', 'aw124-124w-125w15-1286\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('694', '3', 'aw124-124w-125w15-1287\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('695', '3', 'aw124-124w-125w15-1288\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('696', '3', 'aw124-124w-125w15-1289\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('697', '3', 'aw124-124w-125w15-1290\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('698', '3', 'aw124-124w-125w15-1291\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('699', '3', 'aw124-124w-125w15-1292\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('700', '3', 'aw124-124w-125w15-1293\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('701', '3', 'aw124-124w-125w15-1294\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('702', '3', 'aw124-124w-125w15-1295\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('703', '3', 'aw124-124w-125w15-1296\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('704', '3', 'aw124-124w-125w15-1297\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('705', '3', 'aw124-124w-125w15-1298\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('706', '3', 'aw124-124w-125w15-1299\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('707', '3', 'aw124-124w-125w15-1300\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('708', '3', 'aw124-124w-125w15-1301\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('709', '3', 'aw124-124w-125w15-1302\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('710', '3', 'aw124-124w-125w15-1303\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('711', '3', 'aw124-124w-125w15-1304\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('712', '3', 'aw124-124w-125w15-1305\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('713', '3', 'aw124-124w-125w15-1306\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('714', '3', 'aw124-124w-125w15-1307\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('715', '3', 'aw124-124w-125w15-1308\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('716', '3', 'aw124-124w-125w15-1309\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('717', '3', 'aw124-124w-125w15-1310\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('718', '3', 'aw124-124w-125w15-1311\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('719', '3', 'aw124-124w-125w15-1312\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('720', '3', 'aw124-124w-125w15-1313\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('721', '3', 'aw124-124w-125w15-1314\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('722', '3', 'aw124-124w-125w15-1315\r', '0', '2018-08-08 15:58:07', null, null);
INSERT INTO `oss_card_number` VALUES ('723', '3', 'aw124-124w-125w15-1316\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('724', '3', 'aw124-124w-125w15-1317\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('725', '3', 'aw124-124w-125w15-1318\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('726', '3', 'aw124-124w-125w15-1319\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('727', '3', 'aw124-124w-125w15-1320\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('728', '3', 'aw124-124w-125w15-1321\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('729', '3', 'aw124-124w-125w15-1322\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('730', '3', 'aw124-124w-125w15-1323\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('731', '3', 'aw124-124w-125w15-1324\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('732', '3', 'aw124-124w-125w15-1325\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('733', '3', 'aw124-124w-125w15-1326\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('734', '3', 'aw124-124w-125w15-1327\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('735', '3', 'aw124-124w-125w15-1328\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('736', '3', 'aw124-124w-125w15-1329\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('737', '3', 'aw124-124w-125w15-1330\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('738', '3', 'aw124-124w-125w15-1331\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('739', '3', 'aw124-124w-125w15-1332\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('740', '3', 'aw124-124w-125w15-1333\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('741', '3', 'aw124-124w-125w15-1334\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('742', '3', 'aw124-124w-125w15-1335\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('743', '3', 'aw124-124w-125w15-1336\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('744', '3', 'aw124-124w-125w15-1337\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('745', '3', 'aw124-124w-125w15-1338\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('746', '3', 'aw124-124w-125w15-1339\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('747', '3', 'aw124-124w-125w15-1340\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('748', '3', 'aw124-124w-125w15-1341\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('749', '3', 'aw124-124w-125w15-1342\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('750', '3', 'aw124-124w-125w15-1343\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('751', '3', 'aw124-124w-125w15-1344\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('752', '3', 'aw124-124w-125w15-1345\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('753', '3', 'aw124-124w-125w15-1346\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('754', '3', 'aw124-124w-125w15-1347\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('755', '3', 'aw124-124w-125w15-1348\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('756', '3', 'aw124-124w-125w15-1349\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('757', '3', 'aw124-124w-125w15-1350\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('758', '3', 'aw124-124w-125w15-1351\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('759', '3', 'aw124-124w-125w15-1352\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('760', '3', 'aw124-124w-125w15-1353\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('761', '3', 'aw124-124w-125w15-1354\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('762', '3', 'aw124-124w-125w15-1355\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('763', '3', 'aw124-124w-125w15-1356\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('764', '3', 'aw124-124w-125w15-1357\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('765', '3', 'aw124-124w-125w15-1358\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('766', '3', 'aw124-124w-125w15-1359\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('767', '3', 'aw124-124w-125w15-1360\r', '0', '2018-08-08 15:58:08', null, null);
INSERT INTO `oss_card_number` VALUES ('768', '3', 'aw124-124w-125w15-1361\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('769', '3', 'aw124-124w-125w15-1362\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('770', '3', 'aw124-124w-125w15-1363\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('771', '3', 'aw124-124w-125w15-1364\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('772', '3', 'aw124-124w-125w15-1365\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('773', '3', 'aw124-124w-125w15-1366\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('774', '3', 'aw124-124w-125w15-1367\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('775', '3', 'aw124-124w-125w15-1368\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('776', '3', 'aw124-124w-125w15-1369\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('777', '3', 'aw124-124w-125w15-1370\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('778', '3', 'aw124-124w-125w15-1371\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('779', '3', 'aw124-124w-125w15-1372\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('780', '3', 'aw124-124w-125w15-1373\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('781', '3', 'aw124-124w-125w15-1374\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('782', '3', 'aw124-124w-125w15-1375\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('783', '3', 'aw124-124w-125w15-1376\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('784', '3', 'aw124-124w-125w15-1377\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('785', '3', 'aw124-124w-125w15-1378\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('786', '3', 'aw124-124w-125w15-1379\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('787', '3', 'aw124-124w-125w15-1380\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('788', '3', 'aw124-124w-125w15-1381\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('789', '3', 'aw124-124w-125w15-1382\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('790', '3', 'aw124-124w-125w15-1383\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('791', '3', 'aw124-124w-125w15-1384\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('792', '3', 'aw124-124w-125w15-1385\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('793', '3', 'aw124-124w-125w15-1386\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('794', '3', 'aw124-124w-125w15-1387\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('795', '3', 'aw124-124w-125w15-1388\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('796', '3', 'aw124-124w-125w15-1389\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('797', '3', 'aw124-124w-125w15-1390\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('798', '3', 'aw124-124w-125w15-1391\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('799', '3', 'aw124-124w-125w15-1392\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('800', '3', 'aw124-124w-125w15-1393\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('801', '3', 'aw124-124w-125w15-1394\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('802', '3', 'aw124-124w-125w15-1395\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('803', '3', 'aw124-124w-125w15-1396\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('804', '3', 'aw124-124w-125w15-1397\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('805', '3', 'aw124-124w-125w15-1398\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('806', '3', 'aw124-124w-125w15-1399\r', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('807', '3', 'aw124-124w-125w15-1400', '0', '2018-08-08 15:58:09', null, null);
INSERT INTO `oss_card_number` VALUES ('808', '2', 'aw124-124w-125w15-1201\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('809', '2', 'aw124-124w-125w15-1202\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('810', '2', 'aw124-124w-125w15-1203\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('811', '2', 'aw124-124w-125w15-1204\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('812', '2', 'aw124-124w-125w15-1205\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('813', '2', 'aw124-124w-125w15-1206\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('814', '2', 'aw124-124w-125w15-1207\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('815', '2', 'aw124-124w-125w15-1208\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('816', '2', 'aw124-124w-125w15-1209\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('817', '2', 'aw124-124w-125w15-1210\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('818', '2', 'aw124-124w-125w15-1211\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('819', '2', 'aw124-124w-125w15-1212\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('820', '2', 'aw124-124w-125w15-1213\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('821', '2', 'aw124-124w-125w15-1214\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('822', '2', 'aw124-124w-125w15-1215\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('823', '2', 'aw124-124w-125w15-1216\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('824', '2', 'aw124-124w-125w15-1217\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('825', '2', 'aw124-124w-125w15-1218\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('826', '2', 'aw124-124w-125w15-1219\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('827', '2', 'aw124-124w-125w15-1220\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('828', '2', 'aw124-124w-125w15-1221\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('829', '2', 'aw124-124w-125w15-1222\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('830', '2', 'aw124-124w-125w15-1223\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('831', '2', 'aw124-124w-125w15-1224\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('832', '2', 'aw124-124w-125w15-1225\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('833', '2', 'aw124-124w-125w15-1226\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('834', '2', 'aw124-124w-125w15-1227\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('835', '2', 'aw124-124w-125w15-1228\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('836', '2', 'aw124-124w-125w15-1229\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('837', '2', 'aw124-124w-125w15-1230\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('838', '2', 'aw124-124w-125w15-1231\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('839', '2', 'aw124-124w-125w15-1232\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('840', '2', 'aw124-124w-125w15-1233\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('841', '2', 'aw124-124w-125w15-1234\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('842', '2', 'aw124-124w-125w15-1235\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('843', '2', 'aw124-124w-125w15-1236\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('844', '2', 'aw124-124w-125w15-1237\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('845', '2', 'aw124-124w-125w15-1238\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('846', '2', 'aw124-124w-125w15-1239\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('847', '2', 'aw124-124w-125w15-1240\r', '0', '2018-08-08 15:58:17', null, null);
INSERT INTO `oss_card_number` VALUES ('848', '2', 'aw124-124w-125w15-1241\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('849', '2', 'aw124-124w-125w15-1242\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('850', '2', 'aw124-124w-125w15-1243\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('851', '2', 'aw124-124w-125w15-1244\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('852', '2', 'aw124-124w-125w15-1245\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('853', '2', 'aw124-124w-125w15-1246\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('854', '2', 'aw124-124w-125w15-1247\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('855', '2', 'aw124-124w-125w15-1248\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('856', '2', 'aw124-124w-125w15-1249\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('857', '2', 'aw124-124w-125w15-1250\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('858', '2', 'aw124-124w-125w15-1251\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('859', '2', 'aw124-124w-125w15-1252\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('860', '2', 'aw124-124w-125w15-1253\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('861', '2', 'aw124-124w-125w15-1254\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('862', '2', 'aw124-124w-125w15-1255\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('863', '2', 'aw124-124w-125w15-1256\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('864', '2', 'aw124-124w-125w15-1257\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('865', '2', 'aw124-124w-125w15-1258\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('866', '2', 'aw124-124w-125w15-1259\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('867', '2', 'aw124-124w-125w15-1260\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('868', '2', 'aw124-124w-125w15-1261\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('869', '2', 'aw124-124w-125w15-1262\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('870', '2', 'aw124-124w-125w15-1263\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('871', '2', 'aw124-124w-125w15-1264\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('872', '2', 'aw124-124w-125w15-1265\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('873', '2', 'aw124-124w-125w15-1266\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('874', '2', 'aw124-124w-125w15-1267\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('875', '2', 'aw124-124w-125w15-1268\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('876', '2', 'aw124-124w-125w15-1269\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('877', '2', 'aw124-124w-125w15-1270\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('878', '2', 'aw124-124w-125w15-1271\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('879', '2', 'aw124-124w-125w15-1272\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('880', '2', 'aw124-124w-125w15-1273\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('881', '2', 'aw124-124w-125w15-1274\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('882', '2', 'aw124-124w-125w15-1275\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('883', '2', 'aw124-124w-125w15-1276\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('884', '2', 'aw124-124w-125w15-1277\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('885', '2', 'aw124-124w-125w15-1278\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('886', '2', 'aw124-124w-125w15-1279\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('887', '2', 'aw124-124w-125w15-1280\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('888', '2', 'aw124-124w-125w15-1281\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('889', '2', 'aw124-124w-125w15-1282\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('890', '2', 'aw124-124w-125w15-1283\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('891', '2', 'aw124-124w-125w15-1284\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('892', '2', 'aw124-124w-125w15-1285\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('893', '2', 'aw124-124w-125w15-1286\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('894', '2', 'aw124-124w-125w15-1287\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('895', '2', 'aw124-124w-125w15-1288\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('896', '2', 'aw124-124w-125w15-1289\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('897', '2', 'aw124-124w-125w15-1290\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('898', '2', 'aw124-124w-125w15-1291\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('899', '2', 'aw124-124w-125w15-1292\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('900', '2', 'aw124-124w-125w15-1293\r', '0', '2018-08-08 15:58:18', null, null);
INSERT INTO `oss_card_number` VALUES ('901', '2', 'aw124-124w-125w15-1294\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('902', '2', 'aw124-124w-125w15-1295\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('903', '2', 'aw124-124w-125w15-1296\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('904', '2', 'aw124-124w-125w15-1297\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('905', '2', 'aw124-124w-125w15-1298\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('906', '2', 'aw124-124w-125w15-1299\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('907', '2', 'aw124-124w-125w15-1300\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('908', '2', 'aw124-124w-125w15-1301\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('909', '2', 'aw124-124w-125w15-1302\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('910', '2', 'aw124-124w-125w15-1303\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('911', '2', 'aw124-124w-125w15-1304\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('912', '2', 'aw124-124w-125w15-1305\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('913', '2', 'aw124-124w-125w15-1306\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('914', '2', 'aw124-124w-125w15-1307\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('915', '2', 'aw124-124w-125w15-1308\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('916', '2', 'aw124-124w-125w15-1309\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('917', '2', 'aw124-124w-125w15-1310\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('918', '2', 'aw124-124w-125w15-1311\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('919', '2', 'aw124-124w-125w15-1312\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('920', '2', 'aw124-124w-125w15-1313\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('921', '2', 'aw124-124w-125w15-1314\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('922', '2', 'aw124-124w-125w15-1315\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('923', '2', 'aw124-124w-125w15-1316\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('924', '2', 'aw124-124w-125w15-1317\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('925', '2', 'aw124-124w-125w15-1318\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('926', '2', 'aw124-124w-125w15-1319\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('927', '2', 'aw124-124w-125w15-1320\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('928', '2', 'aw124-124w-125w15-1321\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('929', '2', 'aw124-124w-125w15-1322\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('930', '2', 'aw124-124w-125w15-1323\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('931', '2', 'aw124-124w-125w15-1324\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('932', '2', 'aw124-124w-125w15-1325\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('933', '2', 'aw124-124w-125w15-1326\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('934', '2', 'aw124-124w-125w15-1327\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('935', '2', 'aw124-124w-125w15-1328\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('936', '2', 'aw124-124w-125w15-1329\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('937', '2', 'aw124-124w-125w15-1330\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('938', '2', 'aw124-124w-125w15-1331\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('939', '2', 'aw124-124w-125w15-1332\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('940', '2', 'aw124-124w-125w15-1333\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('941', '2', 'aw124-124w-125w15-1334\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('942', '2', 'aw124-124w-125w15-1335\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('943', '2', 'aw124-124w-125w15-1336\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('944', '2', 'aw124-124w-125w15-1337\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('945', '2', 'aw124-124w-125w15-1338\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('946', '2', 'aw124-124w-125w15-1339\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('947', '2', 'aw124-124w-125w15-1340\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('948', '2', 'aw124-124w-125w15-1341\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('949', '2', 'aw124-124w-125w15-1342\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('950', '2', 'aw124-124w-125w15-1343\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('951', '2', 'aw124-124w-125w15-1344\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('952', '2', 'aw124-124w-125w15-1345\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('953', '2', 'aw124-124w-125w15-1346\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('954', '2', 'aw124-124w-125w15-1347\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('955', '2', 'aw124-124w-125w15-1348\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('956', '2', 'aw124-124w-125w15-1349\r', '0', '2018-08-08 15:58:19', null, null);
INSERT INTO `oss_card_number` VALUES ('957', '2', 'aw124-124w-125w15-1350\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('958', '2', 'aw124-124w-125w15-1351\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('959', '2', 'aw124-124w-125w15-1352\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('960', '2', 'aw124-124w-125w15-1353\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('961', '2', 'aw124-124w-125w15-1354\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('962', '2', 'aw124-124w-125w15-1355\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('963', '2', 'aw124-124w-125w15-1356\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('964', '2', 'aw124-124w-125w15-1357\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('965', '2', 'aw124-124w-125w15-1358\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('966', '2', 'aw124-124w-125w15-1359\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('967', '2', 'aw124-124w-125w15-1360\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('968', '2', 'aw124-124w-125w15-1361\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('969', '2', 'aw124-124w-125w15-1362\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('970', '2', 'aw124-124w-125w15-1363\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('971', '2', 'aw124-124w-125w15-1364\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('972', '2', 'aw124-124w-125w15-1365\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('973', '2', 'aw124-124w-125w15-1366\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('974', '2', 'aw124-124w-125w15-1367\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('975', '2', 'aw124-124w-125w15-1368\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('976', '2', 'aw124-124w-125w15-1369\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('977', '2', 'aw124-124w-125w15-1370\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('978', '2', 'aw124-124w-125w15-1371\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('979', '2', 'aw124-124w-125w15-1372\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('980', '2', 'aw124-124w-125w15-1373\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('981', '2', 'aw124-124w-125w15-1374\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('982', '2', 'aw124-124w-125w15-1375\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('983', '2', 'aw124-124w-125w15-1376\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('984', '2', 'aw124-124w-125w15-1377\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('985', '2', 'aw124-124w-125w15-1378\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('986', '2', 'aw124-124w-125w15-1379\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('987', '2', 'aw124-124w-125w15-1380\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('988', '2', 'aw124-124w-125w15-1381\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('989', '2', 'aw124-124w-125w15-1382\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('990', '2', 'aw124-124w-125w15-1383\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('991', '2', 'aw124-124w-125w15-1384\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('992', '2', 'aw124-124w-125w15-1385\r', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('993', '2', 'aw124-124w-125w15-1386', '0', '2018-08-08 15:58:20', null, null);
INSERT INTO `oss_card_number` VALUES ('994', '1', 'aw124-124w-125w15-1201\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('995', '1', 'aw124-124w-125w15-1202\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('996', '1', 'aw124-124w-125w15-1203\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('997', '1', 'aw124-124w-125w15-1204\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('998', '1', 'aw124-124w-125w15-1205\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('999', '1', 'aw124-124w-125w15-1206\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1000', '1', 'aw124-124w-125w15-1207\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1001', '1', 'aw124-124w-125w15-1208\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1002', '1', 'aw124-124w-125w15-1209\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1003', '1', 'aw124-124w-125w15-1210\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1004', '1', 'aw124-124w-125w15-1211\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1005', '1', 'aw124-124w-125w15-1212\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1006', '1', 'aw124-124w-125w15-1213\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1007', '1', 'aw124-124w-125w15-1214\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1008', '1', 'aw124-124w-125w15-1215\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1009', '1', 'aw124-124w-125w15-1216\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1010', '1', 'aw124-124w-125w15-1217\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1011', '1', 'aw124-124w-125w15-1218\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1012', '1', 'aw124-124w-125w15-1219\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1013', '1', 'aw124-124w-125w15-1220\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1014', '1', 'aw124-124w-125w15-1221\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1015', '1', 'aw124-124w-125w15-1222\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1016', '1', 'aw124-124w-125w15-1223\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1017', '1', 'aw124-124w-125w15-1224\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1018', '1', 'aw124-124w-125w15-1225\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1019', '1', 'aw124-124w-125w15-1226\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1020', '1', 'aw124-124w-125w15-1227\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1021', '1', 'aw124-124w-125w15-1228\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1022', '1', 'aw124-124w-125w15-1229\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1023', '1', 'aw124-124w-125w15-1230\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1024', '1', 'aw124-124w-125w15-1231\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1025', '1', 'aw124-124w-125w15-1232\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1026', '1', 'aw124-124w-125w15-1233\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1027', '1', 'aw124-124w-125w15-1234\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1028', '1', 'aw124-124w-125w15-1235\r', '0', '2018-08-08 15:58:25', null, null);
INSERT INTO `oss_card_number` VALUES ('1029', '1', 'aw124-124w-125w15-1236\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1030', '1', 'aw124-124w-125w15-1237\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1031', '1', 'aw124-124w-125w15-1238\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1032', '1', 'aw124-124w-125w15-1239\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1033', '1', 'aw124-124w-125w15-1240\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1034', '1', 'aw124-124w-125w15-1241\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1035', '1', 'aw124-124w-125w15-1242\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1036', '1', 'aw124-124w-125w15-1243\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1037', '1', 'aw124-124w-125w15-1244\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1038', '1', 'aw124-124w-125w15-1245\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1039', '1', 'aw124-124w-125w15-1246\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1040', '1', 'aw124-124w-125w15-1247\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1041', '1', 'aw124-124w-125w15-1248\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1042', '1', 'aw124-124w-125w15-1249\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1043', '1', 'aw124-124w-125w15-1250\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1044', '1', 'aw124-124w-125w15-1251\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1045', '1', 'aw124-124w-125w15-1252\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1046', '1', 'aw124-124w-125w15-1253\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1047', '1', 'aw124-124w-125w15-1254\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1048', '1', 'aw124-124w-125w15-1255\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1049', '1', 'aw124-124w-125w15-1256\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1050', '1', 'aw124-124w-125w15-1257\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1051', '1', 'aw124-124w-125w15-1258\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1052', '1', 'aw124-124w-125w15-1259\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1053', '1', 'aw124-124w-125w15-1260\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1054', '1', 'aw124-124w-125w15-1261\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1055', '1', 'aw124-124w-125w15-1262\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1056', '1', 'aw124-124w-125w15-1263\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1057', '1', 'aw124-124w-125w15-1264\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1058', '1', 'aw124-124w-125w15-1265\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1059', '1', 'aw124-124w-125w15-1266\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1060', '1', 'aw124-124w-125w15-1267\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1061', '1', 'aw124-124w-125w15-1268\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1062', '1', 'aw124-124w-125w15-1269\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1063', '1', 'aw124-124w-125w15-1270\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1064', '1', 'aw124-124w-125w15-1271\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1065', '1', 'aw124-124w-125w15-1272\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1066', '1', 'aw124-124w-125w15-1273\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1067', '1', 'aw124-124w-125w15-1274\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1068', '1', 'aw124-124w-125w15-1275\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1069', '1', 'aw124-124w-125w15-1276\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1070', '1', 'aw124-124w-125w15-1277\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1071', '1', 'aw124-124w-125w15-1278\r', '0', '2018-08-08 15:58:26', null, null);
INSERT INTO `oss_card_number` VALUES ('1072', '1', 'aw124-124w-125w15-1279\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1073', '1', 'aw124-124w-125w15-1280\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1074', '1', 'aw124-124w-125w15-1281\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1075', '1', 'aw124-124w-125w15-1282\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1076', '1', 'aw124-124w-125w15-1283\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1077', '1', 'aw124-124w-125w15-1284\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1078', '1', 'aw124-124w-125w15-1285\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1079', '1', 'aw124-124w-125w15-1286\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1080', '1', 'aw124-124w-125w15-1287\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1081', '1', 'aw124-124w-125w15-1288\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1082', '1', 'aw124-124w-125w15-1289\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1083', '1', 'aw124-124w-125w15-1290\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1084', '1', 'aw124-124w-125w15-1291\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1085', '1', 'aw124-124w-125w15-1292\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1086', '1', 'aw124-124w-125w15-1293\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1087', '1', 'aw124-124w-125w15-1294\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1088', '1', 'aw124-124w-125w15-1295\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1089', '1', 'aw124-124w-125w15-1296\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1090', '1', 'aw124-124w-125w15-1297\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1091', '1', 'aw124-124w-125w15-1298\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1092', '1', 'aw124-124w-125w15-1299\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1093', '1', 'aw124-124w-125w15-1300\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1094', '1', 'aw124-124w-125w15-1301\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1095', '1', 'aw124-124w-125w15-1302\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1096', '1', 'aw124-124w-125w15-1303\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1097', '1', 'aw124-124w-125w15-1304\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1098', '1', 'aw124-124w-125w15-1305\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1099', '1', 'aw124-124w-125w15-1306\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1100', '1', 'aw124-124w-125w15-1307\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1101', '1', 'aw124-124w-125w15-1308\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1102', '1', 'aw124-124w-125w15-1309\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1103', '1', 'aw124-124w-125w15-1310\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1104', '1', 'aw124-124w-125w15-1311\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1105', '1', 'aw124-124w-125w15-1312\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1106', '1', 'aw124-124w-125w15-1313\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1107', '1', 'aw124-124w-125w15-1314\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1108', '1', 'aw124-124w-125w15-1315\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1109', '1', 'aw124-124w-125w15-1316\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1110', '1', 'aw124-124w-125w15-1317\r', '0', '2018-08-08 15:58:27', null, null);
INSERT INTO `oss_card_number` VALUES ('1111', '1', 'aw124-124w-125w15-1318\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1112', '1', 'aw124-124w-125w15-1319\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1113', '1', 'aw124-124w-125w15-1320\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1114', '1', 'aw124-124w-125w15-1321\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1115', '1', 'aw124-124w-125w15-1322\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1116', '1', 'aw124-124w-125w15-1323\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1117', '1', 'aw124-124w-125w15-1324\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1118', '1', 'aw124-124w-125w15-1325\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1119', '1', 'aw124-124w-125w15-1326\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1120', '1', 'aw124-124w-125w15-1327\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1121', '1', 'aw124-124w-125w15-1328\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1122', '1', 'aw124-124w-125w15-1329\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1123', '1', 'aw124-124w-125w15-1330\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1124', '1', 'aw124-124w-125w15-1331\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1125', '1', 'aw124-124w-125w15-1332\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1126', '1', 'aw124-124w-125w15-1333\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1127', '1', 'aw124-124w-125w15-1334\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1128', '1', 'aw124-124w-125w15-1335\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1129', '1', 'aw124-124w-125w15-1336\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1130', '1', 'aw124-124w-125w15-1337\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1131', '1', 'aw124-124w-125w15-1338\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1132', '1', 'aw124-124w-125w15-1339\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1133', '1', 'aw124-124w-125w15-1340\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1134', '1', 'aw124-124w-125w15-1341\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1135', '1', 'aw124-124w-125w15-1342\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1136', '1', 'aw124-124w-125w15-1343\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1137', '1', 'aw124-124w-125w15-1344\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1138', '1', 'aw124-124w-125w15-1345\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1139', '1', 'aw124-124w-125w15-1346\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1140', '1', 'aw124-124w-125w15-1347\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1141', '1', 'aw124-124w-125w15-1348\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1142', '1', 'aw124-124w-125w15-1349\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1143', '1', 'aw124-124w-125w15-1350\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1144', '1', 'aw124-124w-125w15-1351\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1145', '1', 'aw124-124w-125w15-1352\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1146', '1', 'aw124-124w-125w15-1353\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1147', '1', 'aw124-124w-125w15-1354\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1148', '1', 'aw124-124w-125w15-1355\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1149', '1', 'aw124-124w-125w15-1356\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1150', '1', 'aw124-124w-125w15-1357\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1151', '1', 'aw124-124w-125w15-1358\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1152', '1', 'aw124-124w-125w15-1359\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1153', '1', 'aw124-124w-125w15-1360\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1154', '1', 'aw124-124w-125w15-1361\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1155', '1', 'aw124-124w-125w15-1362\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1156', '1', 'aw124-124w-125w15-1363\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1157', '1', 'aw124-124w-125w15-1364\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1158', '1', 'aw124-124w-125w15-1365\r', '0', '2018-08-08 15:58:28', null, null);
INSERT INTO `oss_card_number` VALUES ('1159', '1', 'aw124-124w-125w15-1366\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1160', '1', 'aw124-124w-125w15-1367\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1161', '1', 'aw124-124w-125w15-1368\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1162', '1', 'aw124-124w-125w15-1369\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1163', '1', 'aw124-124w-125w15-1370\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1164', '1', 'aw124-124w-125w15-1371\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1165', '1', 'aw124-124w-125w15-1372\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1166', '1', 'aw124-124w-125w15-1373\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1167', '1', 'aw124-124w-125w15-1374\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1168', '1', 'aw124-124w-125w15-1375\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1169', '1', 'aw124-124w-125w15-1376\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1170', '1', 'aw124-124w-125w15-1377\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1171', '1', 'aw124-124w-125w15-1378\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1172', '1', 'aw124-124w-125w15-1379\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1173', '1', 'aw124-124w-125w15-1380\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1174', '1', 'aw124-124w-125w15-1381\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1175', '1', 'aw124-124w-125w15-1382\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1176', '1', 'aw124-124w-125w15-1383\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1177', '1', 'aw124-124w-125w15-1384\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1178', '1', 'aw124-124w-125w15-1385\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1179', '1', 'aw124-124w-125w15-1386\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1180', '1', 'aw124-124w-125w15-1387\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1181', '1', 'aw124-124w-125w15-1388\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1182', '1', 'aw124-124w-125w15-1389\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1183', '1', 'aw124-124w-125w15-1390\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1184', '1', 'aw124-124w-125w15-1391\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1185', '1', 'aw124-124w-125w15-1392\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1186', '1', 'aw124-124w-125w15-1393\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1187', '1', 'aw124-124w-125w15-1394\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1188', '1', 'aw124-124w-125w15-1395\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1189', '1', 'aw124-124w-125w15-1396\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1190', '1', 'aw124-124w-125w15-1397\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1191', '1', 'aw124-124w-125w15-1398\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1192', '1', 'aw124-124w-125w15-1399\r', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1193', '1', 'aw124-124w-125w15-1400', '0', '2018-08-08 15:58:29', null, null);
INSERT INTO `oss_card_number` VALUES ('1194', '6', 'aw124-124w-125w15-1201\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1195', '6', 'aw124-124w-125w15-1202\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1196', '6', 'aw124-124w-125w15-1203\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1197', '6', 'aw124-124w-125w15-1204\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1198', '6', 'aw124-124w-125w15-1205\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1199', '6', 'aw124-124w-125w15-1206\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1200', '6', 'aw124-124w-125w15-1207\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1201', '6', 'aw124-124w-125w15-1208\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1202', '6', 'aw124-124w-125w15-1209\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1203', '6', 'aw124-124w-125w15-1210\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1204', '6', 'aw124-124w-125w15-1211\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1205', '6', 'aw124-124w-125w15-1212\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1206', '6', 'aw124-124w-125w15-1213\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1207', '6', 'aw124-124w-125w15-1214\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1208', '6', 'aw124-124w-125w15-1215\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1209', '6', 'aw124-124w-125w15-1216\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1210', '6', 'aw124-124w-125w15-1217\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1211', '6', 'aw124-124w-125w15-1218\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1212', '6', 'aw124-124w-125w15-1219\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1213', '6', 'aw124-124w-125w15-1220\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1214', '6', 'aw124-124w-125w15-1221\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1215', '6', 'aw124-124w-125w15-1222\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1216', '6', 'aw124-124w-125w15-1223\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1217', '6', 'aw124-124w-125w15-1224\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1218', '6', 'aw124-124w-125w15-1225\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1219', '6', 'aw124-124w-125w15-1226\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1220', '6', 'aw124-124w-125w15-1227\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1221', '6', 'aw124-124w-125w15-1228\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1222', '6', 'aw124-124w-125w15-1229\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1223', '6', 'aw124-124w-125w15-1230\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1224', '6', 'aw124-124w-125w15-1231\r', '0', '2018-08-08 15:59:31', null, null);
INSERT INTO `oss_card_number` VALUES ('1225', '6', 'aw124-124w-125w15-1232\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1226', '6', 'aw124-124w-125w15-1233\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1227', '6', 'aw124-124w-125w15-1234\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1228', '6', 'aw124-124w-125w15-1235\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1229', '6', 'aw124-124w-125w15-1236\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1230', '6', 'aw124-124w-125w15-1237\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1231', '6', 'aw124-124w-125w15-1238\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1232', '6', 'aw124-124w-125w15-1239\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1233', '6', 'aw124-124w-125w15-1240\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1234', '6', 'aw124-124w-125w15-1241\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1235', '6', 'aw124-124w-125w15-1242\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1236', '6', 'aw124-124w-125w15-1243\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1237', '6', 'aw124-124w-125w15-1244\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1238', '6', 'aw124-124w-125w15-1245\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1239', '6', 'aw124-124w-125w15-1246\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1240', '6', 'aw124-124w-125w15-1247\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1241', '6', 'aw124-124w-125w15-1248\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1242', '6', 'aw124-124w-125w15-1249\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1243', '6', 'aw124-124w-125w15-1250\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1244', '6', 'aw124-124w-125w15-1251\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1245', '6', 'aw124-124w-125w15-1252\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1246', '6', 'aw124-124w-125w15-1253\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1247', '6', 'aw124-124w-125w15-1254\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1248', '6', 'aw124-124w-125w15-1255\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1249', '6', 'aw124-124w-125w15-1256\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1250', '6', 'aw124-124w-125w15-1257\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1251', '6', 'aw124-124w-125w15-1258\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1252', '6', 'aw124-124w-125w15-1259\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1253', '6', 'aw124-124w-125w15-1260\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1254', '6', 'aw124-124w-125w15-1261\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1255', '6', 'aw124-124w-125w15-1262\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1256', '6', 'aw124-124w-125w15-1263\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1257', '6', 'aw124-124w-125w15-1264\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1258', '6', 'aw124-124w-125w15-1265\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1259', '6', 'aw124-124w-125w15-1266\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1260', '6', 'aw124-124w-125w15-1267\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1261', '6', 'aw124-124w-125w15-1268\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1262', '6', 'aw124-124w-125w15-1269\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1263', '6', 'aw124-124w-125w15-1270\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1264', '6', 'aw124-124w-125w15-1271\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1265', '6', 'aw124-124w-125w15-1272\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1266', '6', 'aw124-124w-125w15-1273\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1267', '6', 'aw124-124w-125w15-1274\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1268', '6', 'aw124-124w-125w15-1275\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1269', '6', 'aw124-124w-125w15-1276\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1270', '6', 'aw124-124w-125w15-1277\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1271', '6', 'aw124-124w-125w15-1278\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1272', '6', 'aw124-124w-125w15-1279\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1273', '6', 'aw124-124w-125w15-1280\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1274', '6', 'aw124-124w-125w15-1281\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1275', '6', 'aw124-124w-125w15-1282\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1276', '6', 'aw124-124w-125w15-1283\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1277', '6', 'aw124-124w-125w15-1284\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1278', '6', 'aw124-124w-125w15-1285\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1279', '6', 'aw124-124w-125w15-1286\r', '0', '2018-08-08 15:59:32', null, null);
INSERT INTO `oss_card_number` VALUES ('1280', '6', 'aw124-124w-125w15-1287\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1281', '6', 'aw124-124w-125w15-1288\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1282', '6', 'aw124-124w-125w15-1289\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1283', '6', 'aw124-124w-125w15-1290\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1284', '6', 'aw124-124w-125w15-1291\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1285', '6', 'aw124-124w-125w15-1292\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1286', '6', 'aw124-124w-125w15-1293\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1287', '6', 'aw124-124w-125w15-1294\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1288', '6', 'aw124-124w-125w15-1295\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1289', '6', 'aw124-124w-125w15-1296\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1290', '6', 'aw124-124w-125w15-1297\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1291', '6', 'aw124-124w-125w15-1298\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1292', '6', 'aw124-124w-125w15-1299\r', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1293', '6', 'aw124-124w-125w15-1300', '0', '2018-08-08 15:59:33', null, null);
INSERT INTO `oss_card_number` VALUES ('1294', '7', 'aw124-124w-125w15-1201\r', '0', '2018-08-08 16:00:34', null, null);
INSERT INTO `oss_card_number` VALUES ('1295', '7', 'aw124-124w-125w15-1202\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1296', '7', 'aw124-124w-125w15-1203\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1297', '7', 'aw124-124w-125w15-1204\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1298', '7', 'aw124-124w-125w15-1205\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1299', '7', 'aw124-124w-125w15-1206\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1300', '7', 'aw124-124w-125w15-1207\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1301', '7', 'aw124-124w-125w15-1208\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1302', '7', 'aw124-124w-125w15-1209\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1303', '7', 'aw124-124w-125w15-1210\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1304', '7', 'aw124-124w-125w15-1211\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1305', '7', 'aw124-124w-125w15-1212\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1306', '7', 'aw124-124w-125w15-1213\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1307', '7', 'aw124-124w-125w15-1214\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1308', '7', 'aw124-124w-125w15-1215\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1309', '7', 'aw124-124w-125w15-1216\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1310', '7', 'aw124-124w-125w15-1217\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1311', '7', 'aw124-124w-125w15-1218\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1312', '7', 'aw124-124w-125w15-1219\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1313', '7', 'aw124-124w-125w15-1220\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1314', '7', 'aw124-124w-125w15-1221\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1315', '7', 'aw124-124w-125w15-1222\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1316', '7', 'aw124-124w-125w15-1223\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1317', '7', 'aw124-124w-125w15-1224\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1318', '7', 'aw124-124w-125w15-1225\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1319', '7', 'aw124-124w-125w15-1226\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1320', '7', 'aw124-124w-125w15-1227\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1321', '7', 'aw124-124w-125w15-1228\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1322', '7', 'aw124-124w-125w15-1229\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1323', '7', 'aw124-124w-125w15-1230\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1324', '7', 'aw124-124w-125w15-1231\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1325', '7', 'aw124-124w-125w15-1232\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1326', '7', 'aw124-124w-125w15-1233\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1327', '7', 'aw124-124w-125w15-1234\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1328', '7', 'aw124-124w-125w15-1235\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1329', '7', 'aw124-124w-125w15-1236\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1330', '7', 'aw124-124w-125w15-1237\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1331', '7', 'aw124-124w-125w15-1238\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1332', '7', 'aw124-124w-125w15-1239\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1333', '7', 'aw124-124w-125w15-1240\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1334', '7', 'aw124-124w-125w15-1241\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1335', '7', 'aw124-124w-125w15-1242\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1336', '7', 'aw124-124w-125w15-1243\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1337', '7', 'aw124-124w-125w15-1244\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1338', '7', 'aw124-124w-125w15-1245\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1339', '7', 'aw124-124w-125w15-1246\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1340', '7', 'aw124-124w-125w15-1247\r', '0', '2018-08-08 16:00:35', null, null);
INSERT INTO `oss_card_number` VALUES ('1341', '7', 'aw124-124w-125w15-1248\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1342', '7', 'aw124-124w-125w15-1249\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1343', '7', 'aw124-124w-125w15-1250\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1344', '7', 'aw124-124w-125w15-1251\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1345', '7', 'aw124-124w-125w15-1252\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1346', '7', 'aw124-124w-125w15-1253\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1347', '7', 'aw124-124w-125w15-1254\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1348', '7', 'aw124-124w-125w15-1255\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1349', '7', 'aw124-124w-125w15-1256\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1350', '7', 'aw124-124w-125w15-1257\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1351', '7', 'aw124-124w-125w15-1258\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1352', '7', 'aw124-124w-125w15-1259\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1353', '7', 'aw124-124w-125w15-1260\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1354', '7', 'aw124-124w-125w15-1261\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1355', '7', 'aw124-124w-125w15-1262\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1356', '7', 'aw124-124w-125w15-1263\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1357', '7', 'aw124-124w-125w15-1264\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1358', '7', 'aw124-124w-125w15-1265\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1359', '7', 'aw124-124w-125w15-1266\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1360', '7', 'aw124-124w-125w15-1267\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1361', '7', 'aw124-124w-125w15-1268\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1362', '7', 'aw124-124w-125w15-1269\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1363', '7', 'aw124-124w-125w15-1270\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1364', '7', 'aw124-124w-125w15-1271\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1365', '7', 'aw124-124w-125w15-1272\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1366', '7', 'aw124-124w-125w15-1273\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1367', '7', 'aw124-124w-125w15-1274\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1368', '7', 'aw124-124w-125w15-1275\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1369', '7', 'aw124-124w-125w15-1276\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1370', '7', 'aw124-124w-125w15-1277\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1371', '7', 'aw124-124w-125w15-1278\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1372', '7', 'aw124-124w-125w15-1279\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1373', '7', 'aw124-124w-125w15-1280\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1374', '7', 'aw124-124w-125w15-1281\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1375', '7', 'aw124-124w-125w15-1282\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1376', '7', 'aw124-124w-125w15-1283\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1377', '7', 'aw124-124w-125w15-1284\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1378', '7', 'aw124-124w-125w15-1285\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1379', '7', 'aw124-124w-125w15-1286\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1380', '7', 'aw124-124w-125w15-1287\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1381', '7', 'aw124-124w-125w15-1288\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1382', '7', 'aw124-124w-125w15-1289\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1383', '7', 'aw124-124w-125w15-1290\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1384', '7', 'aw124-124w-125w15-1291\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1385', '7', 'aw124-124w-125w15-1292\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1386', '7', 'aw124-124w-125w15-1293\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1387', '7', 'aw124-124w-125w15-1294\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1388', '7', 'aw124-124w-125w15-1295\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1389', '7', 'aw124-124w-125w15-1296\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1390', '7', 'aw124-124w-125w15-1297\r', '0', '2018-08-08 16:00:36', null, null);
INSERT INTO `oss_card_number` VALUES ('1391', '7', 'aw124-124w-125w15-1298\r', '0', '2018-08-08 16:00:37', null, null);
INSERT INTO `oss_card_number` VALUES ('1392', '7', 'aw124-124w-125w15-1299\r', '0', '2018-08-08 16:00:37', null, null);
INSERT INTO `oss_card_number` VALUES ('1393', '7', 'aw124-124w-125w15-1300', '0', '2018-08-08 16:00:37', null, null);

-- ----------------------------
-- Table structure for `oss_config`
-- ----------------------------
DROP TABLE IF EXISTS `oss_config`;
CREATE TABLE `oss_config` (
  `config_type` varchar(10) NOT NULL DEFAULT '',
  `config_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_config
-- ----------------------------
INSERT INTO `oss_config` VALUES ('config', 'YTozNTp7czo5OiJzaXRlX25hbWUiO3M6MzA6IkxU5LiA56uZ5byP6YGK5oiy5YWF5YC85bmz5Y+wLiI7czo4OiJzaXRlX2ljcCI7czoxMjoi5Y+v5Lul5LiN5aGrIjtzOjEzOiJzaXRlX2tleXdvcmRzIjtzOjEzOiLpgYrmiLIs5YWF5YC8IjtzOjE2OiJzaXRlX2Rlc2NyaXB0aW9uIjtzOjIwOiJMVOmBiuaIsuWFheWAvOW5s+WPsCI7czoxMToic2l0ZV9ub3RpY2UiO3M6MDoiIjtzOjEwOiJzaXRlX3N0YXRlIjtzOjM6InllcyI7czoxNToic2l0ZV9jbG9zZV90ZXh0IjtzOjI3OiLns7vntbHntq3orbfvvIzoq4vnqI3lvozvvIEiO3M6Nzoic2l0ZV9pcCI7czoyMjoiMTAuMTAuMTAuKg0KMTI3LjAuMC4xMCI7czoxMzoic2l0ZV9iYWR3b3JkcyI7czowOiIiO3M6MTM6InNpdGVfbGFuZ3VhZ2UiO3M6NjoidGFpd2FuIjtzOjEzOiJzaXRlX3RlbXBsYXRlIjtzOjQ6ImtlbGUiO3M6MTE6Im9ubGluZV90aW1lIjtpOjYwO3M6MTM6InJld3JpdGVfc3RhdGUiO3M6Mjoibm8iO3M6MTQ6ImZlZWRiYWNrX3N0YXRlIjtzOjI6Im5vIjtzOjEzOiJmZWVkYmFja19zaXplIjtzOjI6Im5vIjtzOjEzOiJjb21tZW50X3N0YXRlIjtzOjI6Im5vIjtzOjEyOiJtZW1iZXJfc3RhdGUiO3M6MzoieWVzIjtzOjIzOiJtZW1iZXJfdmFsaWRhdGlvbl9zdGF0ZSI7czoyOiJubyI7czoxODoiaW5kZXhfY29tbWVudF9zaXplIjtpOjEwO3M6MjY6ImluZGV4X2NvbW1lbnRfY29udGVudF9zaXplIjtpOjE4O3M6MTY6ImNvbnRlbnRfaG90X3NpemUiO2k6MTA7czoyMjoiY29udGVudF9ob3RfdGl0bGVfc2l6ZSI7aToxODtzOjE3OiJjb250ZW50X2Jlc3Rfc2l6ZSI7aToxMDtzOjIzOiJjb250ZW50X2Jlc3RfdGl0bGVfc2l6ZSI7aToxODtzOjEyOiJjb21tZW50X3NpemUiO2k6MTA7czoxMToic2VhcmNoX3NpemUiO2k6MTA7czoxMToic210cF9zZXJ2ZXIiO3M6MDoiIjtzOjk6InNtdHBfcG9ydCI7czowOiIiO3M6OToic210cF91c2VyIjtzOjA6IiI7czoxMzoic210cF9wYXNzd29yZCI7czowOiIiO3M6MTY6ImltYWdlX3RodW1iX29wZW4iO3M6Mjoibm8iO3M6MTc6ImltYWdlX3RodW1iX3dpZHRoIjtpOjEwMDtzOjE4OiJpbWFnZV90aHVtYl9oZWlnaHQiO2k6MTAwO3M6MTU6ImltYWdlX3RleHRfb3BlbiI7czoyOiJubyI7czo5OiJpbWFnZV9wb3MiO2k6MTt9');
INSERT INTO `oss_config` VALUES ('config', 'YTozNTp7czo5OiJzaXRlX25hbWUiO3M6MzA6IkxU5LiA56uZ5byP6YGK5oiy5YWF5YC85bmz5Y+wLiI7czo4OiJzaXRlX2ljcCI7czoxMjoi5Y+v5Lul5LiN5aGrIjtzOjEzOiJzaXRlX2tleXdvcmRzIjtzOjEzOiLpgYrmiLIs5YWF5YC8IjtzOjE2OiJzaXRlX2Rlc2NyaXB0aW9uIjtzOjIwOiJMVOmBiuaIsuWFheWAvOW5s+WPsCI7czoxMToic2l0ZV9ub3RpY2UiO3M6MDoiIjtzOjEwOiJzaXRlX3N0YXRlIjtzOjM6InllcyI7czoxNToic2l0ZV9jbG9zZV90ZXh0IjtzOjI3OiLns7vntbHntq3orbfvvIzoq4vnqI3lvozvvIEiO3M6Nzoic2l0ZV9pcCI7czoyMjoiMTAuMTAuMTAuKg0KMTI3LjAuMC4xMCI7czoxMzoic2l0ZV9iYWR3b3JkcyI7czowOiIiO3M6MTM6InNpdGVfbGFuZ3VhZ2UiO3M6NjoidGFpd2FuIjtzOjEzOiJzaXRlX3RlbXBsYXRlIjtzOjQ6ImtlbGUiO3M6MTE6Im9ubGluZV90aW1lIjtpOjYwO3M6MTM6InJld3JpdGVfc3RhdGUiO3M6Mjoibm8iO3M6MTQ6ImZlZWRiYWNrX3N0YXRlIjtzOjI6Im5vIjtzOjEzOiJmZWVkYmFja19zaXplIjtzOjI6Im5vIjtzOjEzOiJjb21tZW50X3N0YXRlIjtzOjI6Im5vIjtzOjEyOiJtZW1iZXJfc3RhdGUiO3M6MzoieWVzIjtzOjIzOiJtZW1iZXJfdmFsaWRhdGlvbl9zdGF0ZSI7czoyOiJubyI7czoxODoiaW5kZXhfY29tbWVudF9zaXplIjtpOjEwO3M6MjY6ImluZGV4X2NvbW1lbnRfY29udGVudF9zaXplIjtpOjE4O3M6MTY6ImNvbnRlbnRfaG90X3NpemUiO2k6MTA7czoyMjoiY29udGVudF9ob3RfdGl0bGVfc2l6ZSI7aToxODtzOjE3OiJjb250ZW50X2Jlc3Rfc2l6ZSI7aToxMDtzOjIzOiJjb250ZW50X2Jlc3RfdGl0bGVfc2l6ZSI7aToxODtzOjEyOiJjb21tZW50X3NpemUiO2k6MTA7czoxMToic2VhcmNoX3NpemUiO2k6MTA7czoxMToic210cF9zZXJ2ZXIiO3M6MDoiIjtzOjk6InNtdHBfcG9ydCI7czowOiIiO3M6OToic210cF91c2VyIjtzOjA6IiI7czoxMzoic210cF9wYXNzd29yZCI7czowOiIiO3M6MTY6ImltYWdlX3RodW1iX29wZW4iO3M6Mjoibm8iO3M6MTc6ImltYWdlX3RodW1iX3dpZHRoIjtpOjEwMDtzOjE4OiJpbWFnZV90aHVtYl9oZWlnaHQiO2k6MTAwO3M6MTU6ImltYWdlX3RleHRfb3BlbiI7czoyOiJubyI7czo5OiJpbWFnZV9wb3MiO2k6MTt9');

-- ----------------------------
-- Table structure for `oss_content`
-- ----------------------------
DROP TABLE IF EXISTS `oss_content`;
CREATE TABLE `oss_content` (
  `content_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `content_title_en` varchar(255) NOT NULL DEFAULT ' ',
  `content_title` varchar(255) NOT NULL,
  `content_url` varchar(255) NOT NULL DEFAULT '',
  `content_keywords` varchar(255) NOT NULL DEFAULT '',
  `content_text_en` text NOT NULL,
  `content_text` text NOT NULL,
  `content_description` varchar(255) NOT NULL DEFAULT '',
  `content_password` varchar(255) NOT NULL,
  `content_thumb` varchar(255) NOT NULL,
  `content_support` smallint(5) unsigned NOT NULL DEFAULT '0',
  `content_against` smallint(5) unsigned NOT NULL DEFAULT '0',
  `content_click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content_comment_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `content_is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_is_comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_time` int(10) unsigned NOT NULL DEFAULT '0',
  `channel_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `member_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_content
-- ----------------------------
INSERT INTO `oss_content` VALUES ('14', 'About us', '關於我們', '', '', 'The LT station game recharge level is a level that provides a convenient recharge for fans of the game, so that players in the International game can experience extremely fast service. At the same time, it updates the game information and can help you understand the mainstream game well.', 'LT壹站式遊戲充值平臺是壹個為廣大遊戲愛好者提供充值便利的平臺，讓國際上的遊戲玩家都能體驗到極速充值的服務。同時，LT及時更新遊戲資訊，能幫助您很好的了解到主流遊戲。', '', '', '', '0', '0', '37', '0', '0', '0', '1', '1533672448', '3', '0', '0');
INSERT INTO `oss_content` VALUES ('15', 'Contact us', '聯繫我們', '', '', 'Telephone: +8617620373555\r\nMail Box: Xx.52685@qq.com\r\nAddress: RM 2309, 23/F HO KING COMM CTR 2-16 FAYUEN ST MONG KOK KLN\r\nPlaza 9 Sun Garden Singpole', '<p style=\"margin: 0px; line-height: normal; font-family: Arial;\"><span style=\"font-family:\'PingFang SC\';line-height: normal; -webkit-font-kerning: none;\">電話：＋</span><span style=\"font-kerning: none;\">8617620373555</span></p><p></p><p style=\"margin: 0px; line-height: normal; font-family: Arial;\"><span style=\"font-family:\'PingFang SC\';line-height: normal; -webkit-font-kerning: none;\">郵箱：</span><span style=\"font-kerning: none;\"><a href=\"mailto:xx.52685@qq.com\">xx.52685@qq.com</a></span></p><p style=\"margin: 0px; line-height: normal; font-family: Arial;\"><span style=\"font-kerning: none;\"><br /></span></p><p style=\"margin: 0px; line-height: normal; font-family: Arial;\">地址：RM 2309,23/F HO KING COMM CTR 2-16 FAYUEN ST MONGKOK KLN</p><p style=\"margin: 0px; line-height: normal; font-family: Arial;\"><br /></p><p style=\"margin: 0px; line-height: normal; font-family: Arial;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Plaza 9 Sun Garden Singpole</p><p style=\"margin: 0px; line-height: normal; font-family: Arial;\"><br /></p><p style=\"margin: 0px; line-height: normal; font-family: Arial;\"><br /></p>', '', '', '', '0', '0', '15', '0', '0', '0', '1', '1533673088', '4', '0', '0');
INSERT INTO `oss_content` VALUES ('16', 'Guardianship of parents', '家長監護', '', '', 'Players under 14 years of age should be recharged under parental supervision.', '<p style=\"margin: 0px; line-height: normal; font-family: \'PingFang SC\';\"><span style=\"font-kerning: none\">未滿</span><span style=\"line-height: normal; font-family: Arial; -webkit-font-kerning: none;\">14</span><span style=\"font-kerning: none\">週歲玩家請在父母監督下進行充值</span></p>', '', '', '', '0', '0', '17', '0', '0', '0', '1', '1533673305', '5', '0', '0');
INSERT INTO `oss_content` VALUES ('17', 'Dispute handling', '糾紛處理', '', '', 'If there is any doubt in the process of recharge, we can consult our customer service personnel in time. We can make a statement to us by mail in any discontent. At the same time, please attach your recharge screenshots to us when sending us the mail. We ', '<p style=\"margin: 0px; line-height: normal; font-family: \'PingFang SC\';\"><span style=\"font-kerning: none\">如果在充值過程中有任何疑問可及時咨詢我們的客服人員，對於任何不滿之處均可通過郵件向我們陳述，同時請在發送郵件給我們時附帶上您的充值截圖，我們一定會在</span><span style=\"line-height: normal; font-family: Arial; -webkit-font-kerning: none;\">72</span><span style=\"font-kerning: none\">小時內給予您答復。</span></p>', '', '', '', '0', '0', '11', '0', '0', '0', '1', '1533673569', '6', '0', '0');
INSERT INTO `oss_content` VALUES ('18', '\"36\" manual limit elite test officially opened', '《三十六計》手遊 限號精英測試正式開啟', '', '', 'The elite test of the \"36 Plan\" limit number of the annual strategy of the visitors was officially launched on February 6. This test is a free test. The test time is: February 6 11:00 to February 12 23:59. The address of the game is: Http://36m.youzu.com/xz/.\r\nHopefully, \"36\" can bring you a real experience of the three countries strategy game. From the choice of heroes to the choice of soldiers, from the plan to the grand war, what we want to show the Lord is the Three Kingdoms with a soul. It is a burning heroic dream.\r\n\r\n<p>\r\n	<img src=\"http://upload.youzu.com/defalut/2018/0206/124629203.png\" alt=\"\" />\r\n</p>', '<div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\"><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\"><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\">遊族年度策略手遊巨作《三十六計》限號精英測試，於2月6日正式開啟。本次測試為刪檔不付費測試，測試時間為：2月6日11:00~2月12日23:59。遊戲下載地址為：http://36m.youzu.com/xz/。</div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\"><br /></div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\">希望《三十六計》手遊能給大家帶來真實的三國策略遊戲體驗。 從英雄選擇到排兵布陣，從計策搭配到宏觀國戰，我們想給主公呈現的，是有靈魂的三國，是灼熱的英雄夢。</div>遊族年度策略手遊巨作《三十六計》限號精英測試，於2月6日正式開啟。本次測試為刪檔不付費測試，測試時間為：2月6日11:00~2月12日23:59。遊戲下載地址為：http://36m.youzu.com/xz/。</div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\"><br /></div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\">&nbsp;</div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\"><br /></div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\">希望《三十六計》手遊能給大家帶來真實的三國策略遊戲體驗。 從英雄選擇到排兵布陣，從計策搭配到宏觀國戰，我們想給主公呈現的，是有靈魂的三國，是灼熱的英雄夢。</div>遊族年度策略手遊巨作《三十六計》限號精英測試，於2月6日正式開啟。本次測試為刪檔不付費測試，測試時間為：2月6日11:00~2月12日23:59。遊戲下載地址為：http://36m.youzu.com/xz/。</div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\"><br /></div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\">&nbsp;</div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\"><br /></div><div style=\"left: -1000px; top: 0px; width: 1px; height: 1px; overflow: hidden; position: absolute;\">希望《三十六計》手遊能給大家帶來真實的三國策略遊戲體驗。 從英雄選擇到排兵布陣，從計策搭配到宏觀國戰，我們想給主公呈現的，是有靈魂的三國，是灼熱的英雄夢。</div><p></p><p>遊族年度策略手遊巨作《三十六計》限號精英測試，於2月6日正式開啟。本次測試為刪檔不付費測試，測試時間為：2月6日11:00~2月12日23:59。遊戲下載地址為：http://36m.youzu.com/xz/。</p><p>希望《三十六計》手遊能給大家帶來真實的三國策略遊戲體驗。 從英雄選擇到排兵布陣，從計策搭配到宏觀國戰，我們想給主公呈現的，是有靈魂的三國，是灼熱的英雄夢。</p><p><br /></p><p><img alt=\"\" src=\"http://upload.youzu.com/defalut/2018/0206/124629203.png\" /></p>', '', '', '', '0', '0', '3', '0', '0', '0', '1', '1533713440', '1', '0', '0');
INSERT INTO `oss_content` VALUES ('19', '\"The Great Emperor\" tourist flower open announcement', '《大皇帝》遊族花唄開通公告', '', '', 'Dear Lord,\r\n\"Great Emperor\" is now on the line of the family\'s function. From this main public money, it is not enough to use the family\'s family to buy gold!\r\nThis program is limited to visitors.\r\nA: How to use the tourist flower recharge?\r\n1, Dengyu \"Great Emperor\" official network: Http://king.youzu.com/\r\nHit the game recharge, choose the recharge method-Toon Flower, click to confirm opening:\r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"http://upload.youzu.com/king/2017/0522/153715331_1.png\" />\r\n</p>\r\n<p>\r\n2、第壹次使用需要邦定銀行卡和身份證\r\n</p>\r\n<p>\r\n	<img alt=\"\" src=\"http://upload.youzu.com/king/2017/0522/153600972_1.jpg\" />\r\n</p>\r\n<p>\r\nWhen will it be repaid?\r\nPayment will be made after 30 days of using the guest\'s pocket money.\r\nWhere to pay back?\r\nOn the same day, Tianping will deduct money from the debit card. If the money is not enough, the money will be deducted on the second day.\r\nGame 2 Activity Initiation: Click to check the activity\r\nAfter the tourist flower on the line, the main public can enjoy the \"first expense\" and then pay \"activity experience in the game!', '<p>尊敬的主公：</p><p>&nbsp;&nbsp;&nbsp; 《大皇帝》現已上線遊族花唄功能，從此主公錢包缺銀兩，用遊族花唄也能輕松買黃金！</p><p><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ※此項服務僅限遊族官網用戶</p><p>&nbsp;</p><p>壹、如何使用遊族花唄充值呢？</p><p><br />1、登陸遊族《大皇帝》官網：<a href=\"http://king.youzu.com/\">http://king.youzu.com/</a></p><p>&nbsp;&nbsp;&nbsp; 點擊遊戲充值，選擇充值方式－遊族花唄，點擊確認開通：</p><p><img alt=\"\" src=\"http://upload.youzu.com/king/2017/0522/153715331_1.png\" /></p><p>2、第壹次使用需要綁定銀行卡和身份證</p><p><img alt=\"\" src=\"http://upload.youzu.com/king/2017/0522/153600972_1.jpg\" /></p><p></p><p>二、什麽時候還款？</p><p>&nbsp;&nbsp;&nbsp; 使用遊族花唄消費的30天後進行還款。</p><p>&nbsp;</p><p>三、去哪裏還款？</p><p>&nbsp;&nbsp;&nbsp; 還款日當天平臺會從借記卡中自動扣款，若還款當日余額不夠，還款日第二天還會自動扣款。</p><p>&nbsp;</p><p><br />&nbsp;&nbsp;&nbsp; </p><p><br />【遊族花唄】“唄”戰好禮第二彈活動開啟：點擊查看活動詳情</p><p><br /></p><p>&nbsp;&nbsp;&nbsp; 遊族花唄上線後，主公在遊戲內可享受“先消費”，後付款”的活動體驗哦！</p>', '', '', '', '0', '0', '5', '0', '0', '0', '1', '1533713939', '1', '0', '0');
INSERT INTO `oss_content` VALUES ('8', 'How to forget the password', '忘記密碼怎麼辦', '', '', 'If you forget the password, we suggest that you click on the link of the login page, follow the system prompt, and finally collect the confirmation letter to the registered mailbox, and click the connection address to reset the account password.', '<p style=\"margin: 0px; line-height: normal; font-family: \'PingFang SC\';\"><span style=\"font-kerning: none\">如果您忘記密碼，我們建議您點擊登錄頁面的【取回密碼】鏈接，按照系統提示操作，最後到註冊郵箱收取確認信件，點擊連接地址重新設定賬戶密碼。</span></p>', '', '', '', '0', '0', '24', '0', '0', '0', '1', '1331200853', '2', '0', '0');
INSERT INTO `oss_content` VALUES ('9', 'How is the account stolen', '賬號被盜怎麼辦', '', '', 'If your account is stolen, please retrieve your password as soon as possible through Account Statement and re-modify the password to increase security.', '<p style=\"margin: 0px; line-height: normal; font-family: \'PingFang SC\';\"><span style=\"font-kerning: none\">如果您的賬號被盜，請通過【賬號申述】盡快取回您的密碼，並重新修改密碼加大安全度。</span></p>', '', '', '', '0', '0', '24', '0', '0', '0', '1', '1331200869', '2', '0', '0');
INSERT INTO `oss_content` VALUES ('20', 'The new \"Zone 4\" was launched on December 30th.', 'Nexon格鬥新作《Zone4》12月30日公測開啟', '', '', 'The new game \"Zone4: Right Division\"(hereinafter: Zone4), developed by infovine of Korea and launched by NEXON, will be fully launched in Korea on the 30th.\r\nNEXON claimed that \"Zone4\" in the previous test, due to the fidelity of the game and excellent adventure special points, etc., was deeply favored by the players, and stated that more new content will be released in this announcement. In \"Zone4\", players can use the direction of the attack and attack, capture the key, and other organizations to freely change the attack mode of the character, and perform more kinds of actions, even if it is the first time that the player is connected to the game. Players will also be easy to use. Will feel the thrill of his fight.\r\nInfovine said that \"Zone 4\" is a simple, easy-to-operate fight game. Players can feel the pleasure of fighting easily. With the player\'s opinion, they will provide more and more rich game content in the future.\r\nAfter the game is tested in Korea, it will continue to be listed in Thailand, North America and other places.', '<p>由韓國infovine研發、NEXON營運的在線格鬥新遊《Zone4：Fight District》（以下：Zone4)，將於30日在韓國全面展開公開測試。</p><p>　　NEXON方面稱，《Zone4》在之前的封測中，因遊戲的逼真感和出色的冒險特點等，深受玩家好評，並表示在本次公測中將開放更多的新內容。玩家在《Zone4》中，可利用方向鍵與攻擊鍵、捕捉鍵等組合，自由轉換角色的攻擊模式，並施展出更多樣的動作，即使是首次接觸格鬥遊戲的玩家也會輕松上手，會感受到其戰鬥帶來的快感。</p><p></p><p>infovine 表示，《Zone 4》是個簡單、操作方便的格鬥遊戲，玩家輕輕松松就可以感受到戰鬥的快感，藉由玩家的意見回饋，他們未來會提供更多更豐富的遊戲內容。</p><p>　　該遊戲在韓國公測後，將在泰國、北美等地陸續上市。</p>', '', '', '', '0', '0', '1', '0', '0', '0', '1', '1533714451', '1', '0', '0');
INSERT INTO `oss_content` VALUES ('21', 'The puzzle game Bubble Dragon was changed to appear in Gstar, Korea.', '益智遊戲泡泡龍被改編網遊 韓國Gstar亮相', '', '', 'The Korean company Neowiz games announced on October 22 that it will exhibit three works, namely \"Bubble Dragon OL\", \"RaiderZ\" and \"Rockman OL\". On November 18th, the G-star games exhibition will be held in BEXCO, Busan, Korea.\r\nNeowiz games will be released through the G-star game show with the latest information on the above games and trial versions of some of the games.\r\n\"RaiderZ(Temporarily: Z Jones)\" is a MMORPG that has been fought on an extensive map with no number of BOSS monsters. It has previously passed a test and its gameplay has been recognized.\r\n\"Rockman OL\" is a work that reinterprets the original \"Rockman\" in the form of an online game. Currently, Neowiz games and Japan Capcom are jointly developing.\r\nIn addition, \"Bubble Dragon OL\" is a game based on the \"Bubble Dragon\" game of Japan\'s Taito Company. \"Bubble Dragon OL\" will add a strong player to the original foundation. The elements of the game.\r\nOn the other hand, Neowiz games is scheduled to open the \"G-star special website\" in early November to provide more detailed information on the exhibition works.', '<p>韓國Neowiz games公司於10月22日發布消息稱，其將攜《泡泡龍OL》、《RaiderZ(暫譯:Z奇兵)》、《洛克人OL》等3款作品出展11月18日起在韓國釜山BEXCO舉行的G-star遊戲展。</p><p>　　Neowiz games公司將通過G-star遊戲展公開以上遊戲相關最新情報和部分遊戲的體驗版本。</p><p>　　《RaiderZ(暫譯:Z奇兵)》作為強調廣闊地圖上與無數BOSS怪的戰鬥的MMORPG，此前通過壹次的內測，其遊戲性已得到認證。</p><p>　　《洛克人OL》是將原作《洛克人》以網遊的形式重新解釋的作品，目前Neowiz games公司和日本卡普空公司正共同研發之中。</p><p>　　另外，《泡泡龍OL》是以日本Taito公司旗下人氣遊戲《泡泡龍》為基礎開發的遊戲，《泡泡龍OL》在原作的基礎上將添加強化玩家之間對戰的網絡遊戲的要素。</p><p>　　另壹方面，Neowiz games預定在11月初還將公開“G-star特別網頁”，以提供關於出展作品的更詳細的情報。</p>', '', '', '', '0', '0', '4', '0', '0', '0', '1', '1533714582', '1', '0', '0');

-- ----------------------------
-- Table structure for `oss_content_attachment`
-- ----------------------------
DROP TABLE IF EXISTS `oss_content_attachment`;
CREATE TABLE `oss_content_attachment` (
  `attachment_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `attachment_name` varchar(30) NOT NULL,
  `content_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attachment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_content_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_content_category`
-- ----------------------------
DROP TABLE IF EXISTS `oss_content_category`;
CREATE TABLE `oss_content_category` (
  `category_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL DEFAULT '',
  `category_deep` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category_sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `category_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_id` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_content_category
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_content_channel`
-- ----------------------------
DROP TABLE IF EXISTS `oss_content_channel`;
CREATE TABLE `oss_content_channel` (
  `channel_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(50) NOT NULL,
  `channel_description` varchar(255) NOT NULL,
  `channel_banner` varchar(255) NOT NULL DEFAULT '',
  `channel_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `channel_index_truncate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_index_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_index_style` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_list_truncate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_list_size` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_list_style` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `channel_content_style` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `channel_content_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `channel_sort` tinyint(3) NOT NULL DEFAULT '0',
  `channel_read_permissions` tinyint(3) NOT NULL DEFAULT '0',
  `channel_write_permissions` tinyint(3) NOT NULL DEFAULT '0',
  `channel_comment_permissions` tinyint(3) NOT NULL DEFAULT '0',
  `channel_upload_ext` varchar(255) NOT NULL DEFAULT '',
  `channel_cache` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `channel_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`channel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_content_channel
-- ----------------------------
INSERT INTO `oss_content_channel` VALUES ('1', '遊戲動態', '遊戲動態', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'jpg,png,gif,bmp,zip,rar,tar,7z,torrent,mp3,wma,swf,doc,docx,xls,xlsx,ppt,pptx,mdb,mdbx', '1', '1');
INSERT INTO `oss_content_channel` VALUES ('2', '常見問題', '常見問題', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'jpg,png,gif,bmp,zip,rar,tar,7z,torrent,mp3,wma,swf,doc,docx,xls,xlsx,ppt,pptx,mdb,mdbx', '1', '1');
INSERT INTO `oss_content_channel` VALUES ('3', '關於我們', '關於我們', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'jpg,png,gif,bmp,zip,rar,tar,7z,torrent,mp3,wma,swf,doc,docx,xls,xlsx,ppt,pptx,mdb,mdbx', '1', '1');
INSERT INTO `oss_content_channel` VALUES ('4', '聯繫我們', '聯繫我們', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'jpg,png,gif,bmp,zip,rar,tar,7z,torrent,mp3,wma,swf,doc,docx,xls,xlsx,ppt,pptx,mdb,mdbx', '1', '1');
INSERT INTO `oss_content_channel` VALUES ('5', '家長監護', '家長監護', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'jpg,png,gif,bmp,zip,rar,tar,7z,torrent,mp3,wma,swf,doc,docx,xls,xlsx,ppt,pptx,mdb,mdbx', '1', '1');
INSERT INTO `oss_content_channel` VALUES ('6', '糾紛處理', '糾紛處理', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'jpg,png,gif,bmp,zip,rar,tar,7z,torrent,mp3,wma,swf,doc,docx,xls,xlsx,ppt,pptx,mdb,mdbx', '1', '1');

-- ----------------------------
-- Table structure for `oss_content_comment`
-- ----------------------------
DROP TABLE IF EXISTS `oss_content_comment`;
CREATE TABLE `oss_content_comment` (
  `comment_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `comment_content` text NOT NULL,
  `comment_reply` text NOT NULL,
  `comment_time` int(10) unsigned NOT NULL DEFAULT '0',
  `comment_ip` varchar(50) NOT NULL DEFAULT '',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `member_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_content_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_content_link`
-- ----------------------------
DROP TABLE IF EXISTS `oss_content_link`;
CREATE TABLE `oss_content_link` (
  `link_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL,
  `content_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_content_link
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `oss_feedback`;
CREATE TABLE `oss_feedback` (
  `feedback_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `feedback_name` varchar(50) NOT NULL DEFAULT '',
  `feedback_content` text NOT NULL,
  `feedback_reply` text NOT NULL,
  `feedback_time` int(10) unsigned NOT NULL DEFAULT '0',
  `feedback_reply_time` int(10) unsigned NOT NULL DEFAULT '0',
  `feedback_ip` varchar(20) NOT NULL DEFAULT '',
  `feedback_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_game`
-- ----------------------------
DROP TABLE IF EXISTS `oss_game`;
CREATE TABLE `oss_game` (
  `game_id` int(4) NOT NULL AUTO_INCREMENT,
  `game_type` tinyint(2) DEFAULT NULL,
  `game_no` varchar(50) DEFAULT NULL,
  `game_name` varchar(50) DEFAULT NULL,
  `game_logo` varchar(50) DEFAULT NULL,
  `game_logo2` varchar(50) DEFAULT NULL,
  `game_logo3` varchar(50) DEFAULT NULL,
  `game_logo4` varchar(50) DEFAULT NULL,
  `game_logo5` varchar(50) DEFAULT NULL,
  `game_logo6` varchar(50) DEFAULT NULL,
  `game_logo7` varchar(50) DEFAULT NULL,
  `game_logo8` varchar(50) DEFAULT NULL,
  `game_logo9` varchar(50) DEFAULT NULL,
  `game_depict` varchar(255) DEFAULT NULL,
  `game_website` varchar(50) DEFAULT NULL,
  `game_bbs` varchar(50) DEFAULT NULL,
  `game_freshman` varchar(50) DEFAULT NULL,
  `game_is_show` tinyint(1) DEFAULT NULL,
  `game_is_focus` tinyint(1) DEFAULT NULL,
  `game_is_best` tinyint(1) DEFAULT NULL,
  `game_is_hot` tinyint(1) DEFAULT NULL,
  `game_sort` smallint(2) DEFAULT NULL,
  `game_money_per` smallint(2) DEFAULT NULL,
  `game_money_name` varchar(50) DEFAULT NULL,
  `game_pay_role` tinyint(1) DEFAULT NULL,
  `game_login_gateway` varchar(50) DEFAULT NULL,
  `game_pay_gateway` varchar(50) DEFAULT NULL,
  `game_port_config1` varchar(255) DEFAULT NULL,
  `game_port_config2` varchar(255) DEFAULT NULL,
  `game_port_config3` varchar(255) DEFAULT NULL,
  `game_port_config4` varchar(255) DEFAULT NULL,
  `game_port_config5` varchar(255) DEFAULT NULL,
  `game_port_s1` varchar(50) DEFAULT NULL,
  `game_port_s2` varchar(50) DEFAULT NULL,
  `game_port_s3` varchar(50) DEFAULT NULL,
  `game_port_s4` varchar(50) DEFAULT NULL,
  `game_port_s5` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_game
-- ----------------------------
INSERT INTO `oss_game` VALUES ('1', '0', 'XY', '仙域', '20120308180433_xozmnn.jpg', '20120322175014_cqfpxe.jpg', '20120308180433_bgwtjp.png', '', '20120322175014_ggigmp.jpg', null, null, null, null, '仙域', 'http://xy.ctrlz.cn', 'http://test.ctrlz.cn', '', '1', '1', '0', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('2', '0', 'AJ', '傲劍', '20120308180839_aiiylr.jpg', '20120322175044_sbdqbb.jpg', '20120308180839_sqfvht.png', '20120308181044_klpsta.jpg', '20120322175044_wtlzdf.jpg', '20120322175044_dtpvor.jpg', '20120322175044_pcfqbx.jpg', '20120322175044_wtlsba.jpg', '20120322175044_rxcajz.jpg', '《傲劍》是款斥資六千萬天價全程自主研發的ARPG武俠無端網遊，傲劍其華麗暢爽的即時戰鬥畫面、強絕的武學秘籍系統、多線交錯的豐富劇情、結合創新領先的技術引擎以及最佳網絡問題解決方案，傲劍讓您時時感受...', 'http://aj.ctrlz.cn', 'http://test.ctrlz.cn', '', '1', '1', '1', '1', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('3', '0', 'ZS', '誅神', '20120308180923_jkopnr.jpg', '20120322175112_bbqgyd.jpg', '20120308180923_gxlvbs.png', '', '20120322175112_lhjarl.jpg', null, null, null, null, '誅神', 'http://zs.ctrlz.cn', 'http://test.ctrlz.cn', '', '1', '1', '0', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('4', '0', 'FRXZ', '凡人修真', '20120308180959_wasmqu.jpg', '', '20120308180959_zwsfgq.png', '', '', null, null, null, null, '凡人修真', 'http://fr.ctrlz.cn', 'http://test.ctrlz.cn', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('5', '0', 'SSSG', '盛世三國', '20120314122710_hjheqj.jpg', '', '20120314122710_mauwje.png', '', '', null, null, null, null, '', 'http://sg.ctrlz.cn', 'http://test.ctrlz.cn', '', '1', '0', '1', '0', '0', '100', '銀子', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('6', '0', 'LJ', '龍將', '20120314122959_wclnct.jpg', '', '20120314122959_dtrvla.png', '', '', null, null, null, null, '', 'http://lj.ctrlz.cn', 'http://test.ctrlz.cn', '', '1', '0', '1', '0', '0', '10', '金幣', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('7', '0', 'SXD', '神仙道', '20120314214107_tvbbnu.jpg', '', '20120314220208_pzzjug.png', '', '', null, null, null, null, '', 'http://sxd.ctrlz.cn', 'http://test.ctrlz.cn', '', '1', '0', '1', '0', '0', '10', '元寶', '0', '', '', '{the-test-api-key-for-s999}', '{the-test-api-key-for-s999}', '', '', '', 'login_key', 'pay_key', '', '', '');
INSERT INTO `oss_game` VALUES ('8', '0', 'SWXF', '守望先鋒', '20180808003358_vcrmff.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('9', '0', 'CSZC', '創世戰車', '20180808003500_wevhsl.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('10', '0', 'JYZJ2', '九陰真經2', '20180808003534_xbfwmi.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('11', '0', 'WDSJ', '我的世界', '20180808003602_asqhek.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('12', '0', 'DOTA2', 'DOTA2', '20180808003635_atvtnw.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('13', '0', 'MSSJ', '魔獸世界', '20180808003709_nylonp.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('14', '0', 'CQBY', '傳奇霸業', '20180808003735_kjnrxd.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('15', '0', 'MHXY', '夢幻西遊', '20180808003806_ddxoid.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('16', '0', 'LSCS', '爐石傳說', '20180808003835_usoqby.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('17', '0', 'TKSJ', '坦克世界', '20180808003907_fcqwpf.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('18', '0', 'XTLBB', '新天龍八部', '20180808003937_qdxdlw.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('19', '0', 'LSQY', '靈山奇緣', '20180808004000_oqydka.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('20', '0', 'CYHX2', '穿越火線2', '20180808004025_snjnye.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('21', '0', 'BXJG', '變形金剛', '20180808004057_hjnalx.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('22', '0', 'CSGO', 'CSGO', '20180808004121_hjruqe.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('23', '0', 'QHYX', '槍火遊俠', '20180808004145_uizfau.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('24', '0', 'DXCYYS', '地下城與勇士', '20180808004225_qkmmmj.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('25', '0', 'AEZG', '艾爾之光', '20180808004253_igoyav.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('26', '0', 'TT', '天堂', '20180808004320_gxeouz.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('27', '0', 'MXD', '冒險島', '20180808004400_dqanfj.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('28', '0', 'HSSM', '黑色沙漠', '20180808004425_jutfmz.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('29', '0', 'LFZL', '流放之路', '20180808004448_ermiza.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('30', '0', 'JDQSDTS', '絕地求生：大逃殺', '20180808004521_dhmnav.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('31', '0', 'SMSJ', '神秘世界', '20180808004546_fvbsam.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('32', '0', 'TJ', '太極', '20180808004607_syyctx.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('33', '0', 'CQ', '傳奇', '20180808004629_eukgfo.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('34', '0', 'LZG', '龍之穀', '20180808004656_wmbwyh.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('35', '0', 'ZX', '誅仙', '20180808004717_qzlmmg.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('36', '0', 'NZ', '逆戰', '20180808004739_sdpxge.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('37', '0', 'FBYX', '風暴英雄', '20180808004803_fxusdy.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', '元宝', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('38', '0', 'TJJQ', '太極崛起', '20180808161051_owhvho.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('39', '0', 'DHD', '大皇帝', '20180808161112_sbxpvm.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('40', '0', 'XMRY', '血盟榮耀', '20180808161140_yrkhiq.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('41', '0', 'SS', '滅生', '20180808161208_tebtgp.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('42', '0', 'QQCS', '奇跡重生', '20180808161238_fbugad.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('43', '0', 'HDX', '寒刀行', '20180808161305_ivzdcn.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('44', '0', 'ZT', '戰天', '20180808161324_fkdhoj.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('45', '0', 'FTJ', '封天記', '20180808161346_vxjhbs.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('46', '0', 'LYCQ', '藍月傳奇', '20180808161408_adqmth.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('47', '0', 'HHZZ', '洪荒主宰', '20180808161431_csqrik.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('48', '0', 'XQJ', '尋秦記', '20180808161453_oobgqw.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('49', '0', 'BBZJ', '冰火之劍', '20180808161511_trqbuz.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('50', '0', 'DLDL', '鬥羅大陸', '20180808161536_juoivc.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('51', '0', 'DMZT', '大明征途', '20180808161558_ndwaok.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('52', '0', 'RXSG2', '熱血三國2', '20180808161622_jjqjdg.jpg', '', '', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('53', '0', 'HMZL', '蠻荒之怒', '20180808161646_yfftjw.jpg', '', '20180809124915_hagogd.png', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('54', '0', 'TJKD', '天劍狂刀', '20180808161718_ipaqbl.jpg', '', '20180809124111_qqtped.png', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('55', '0', 'CYCS2', '赤月傳說2', '20180808161739_vegpnt.jpg', '', '20180809123947_uuvvto.png', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `oss_game` VALUES ('56', '0', 'KTZS', '開天戰神', '20180808161805_ifsktn.jpg', '', '20180809124155_izmbut.png', '', '', '', '', '', '', '', '', '', '', '1', '0', '1', '0', '0', '10', 'Yuanbao', '0', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `oss_gamelog`
-- ----------------------------
DROP TABLE IF EXISTS `oss_gamelog`;
CREATE TABLE `oss_gamelog` (
  `log_id` int(4) NOT NULL AUTO_INCREMENT,
  `log_user_id` int(4) DEFAULT NULL,
  `log_game_id` int(4) DEFAULT NULL,
  `log_server_id` int(4) DEFAULT NULL,
  `log_server_name` varchar(50) DEFAULT NULL,
  `log_time` int(10) DEFAULT NULL,
  `log_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_gamelog
-- ----------------------------
INSERT INTO `oss_gamelog` VALUES ('1', '1', '2', '1', '傲剑1服', '1533624696', '0.0.0.0');
INSERT INTO `oss_gamelog` VALUES ('2', '2', '2', '1', '傲剑1服', '1331212105', '58.60.84.236');
INSERT INTO `oss_gamelog` VALUES ('3', '4', '2', '1', '傲剑1服', '1331299872', '180.121.115.207');
INSERT INTO `oss_gamelog` VALUES ('4', '6', '2', '1', '傲剑1服', '1331479968', '27.42.7.110');
INSERT INTO `oss_gamelog` VALUES ('5', '7', '2', '1', '傲剑1服', '1331912736', '222.221.252.62');
INSERT INTO `oss_gamelog` VALUES ('6', '1', '2', '2', '傲剑2服', '1332917822', '121.63.88.164');
INSERT INTO `oss_gamelog` VALUES ('7', '1', '6', '4', '龙将1服', '1332825332', '180.121.120.152');
INSERT INTO `oss_gamelog` VALUES ('8', '1', '7', '5', '神仙道1服', '1332825789', '180.121.120.152');
INSERT INTO `oss_gamelog` VALUES ('9', '2', '7', '5', '心动测试服', '1331816909', '113.116.95.34');
INSERT INTO `oss_gamelog` VALUES ('10', '2', '6', '4', '龙将1服', '1331816935', '113.116.95.34');
INSERT INTO `oss_gamelog` VALUES ('11', '3', '7', '5', '心动测试服', '1332226678', '124.72.35.47');
INSERT INTO `oss_gamelog` VALUES ('12', '7', '7', '5', '心动测试服', '1331912883', '222.221.252.62');
INSERT INTO `oss_gamelog` VALUES ('13', '7', '6', '4', '龙将1服', '1331883579', '116.53.250.130');
INSERT INTO `oss_gamelog` VALUES ('14', '7', '2', '2', '傲剑2服', '1331912805', '222.221.252.62');
INSERT INTO `oss_gamelog` VALUES ('15', '18', '2', '1', '傲剑1服', '1331895302', '121.13.45.168');
INSERT INTO `oss_gamelog` VALUES ('16', '18', '2', '2', '傲剑2服', '1331895304', '121.13.45.168');
INSERT INTO `oss_gamelog` VALUES ('17', '21', '2', '1', '傲剑1服', '1331946405', '183.69.69.139');
INSERT INTO `oss_gamelog` VALUES ('18', '21', '7', '5', '心动测试服', '1331946417', '183.69.69.139');
INSERT INTO `oss_gamelog` VALUES ('19', '21', '6', '4', '龙将1服', '1331946462', '183.69.69.139');
INSERT INTO `oss_gamelog` VALUES ('20', '1', '5', '3', '盛世三国1服', '1332158309', '115.223.55.57');
INSERT INTO `oss_gamelog` VALUES ('21', '33', '2', '2', '傲剑2服', '1332202435', '61.142.174.134');
INSERT INTO `oss_gamelog` VALUES ('22', '25', '6', '4', '龙将1服', '1332202953', '61.142.174.134');
INSERT INTO `oss_gamelog` VALUES ('23', '25', '2', '1', '傲剑1服', '1332202969', '61.142.174.134');
INSERT INTO `oss_gamelog` VALUES ('24', '3', '6', '4', '龙将1服', '1332227501', '124.72.35.47');
INSERT INTO `oss_gamelog` VALUES ('25', '1', '7', '6', '新浪', '1332924346', '121.63.80.37');
INSERT INTO `oss_gamelog` VALUES ('26', '40', '6', '4', '龙将1服', '1332862490', '119.146.220.5');
INSERT INTO `oss_gamelog` VALUES ('27', '40', '7', '5', '心动测试服', '1332862505', '119.146.220.5');
INSERT INTO `oss_gamelog` VALUES ('28', '40', '2', '1', '傲剑1服', '1332863788', '119.146.220.5');

-- ----------------------------
-- Table structure for `oss_link`
-- ----------------------------
DROP TABLE IF EXISTS `oss_link`;
CREATE TABLE `oss_link` (
  `link_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(50) NOT NULL,
  `link_logo` varchar(100) NOT NULL DEFAULT '',
  `link_text` varchar(255) NOT NULL,
  `link_url` varchar(255) NOT NULL,
  `link_sort` int(4) unsigned NOT NULL DEFAULT '0',
  `link_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_link
-- ----------------------------
INSERT INTO `oss_link` VALUES ('1', '廣庫網絡', '', '', 'http://www.gk86.com', '1', '1');
INSERT INTO `oss_link` VALUES ('2', '網易遊戲', '', '', 'http://game.163.com/', '1', '1');
INSERT INTO `oss_link` VALUES ('3', '騰訊遊戲', '', '', 'http://game.qq.com', '1', '1');

-- ----------------------------
-- Table structure for `oss_member`
-- ----------------------------
DROP TABLE IF EXISTS `oss_member`;
CREATE TABLE `oss_member` (
  `member_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_username` varchar(50) NOT NULL,
  `member_password` varchar(255) NOT NULL,
  `member_safecode` varchar(255) NOT NULL,
  `member_mail` varchar(255) NOT NULL,
  `member_nickname` varchar(50) NOT NULL DEFAULT '',
  `member_name` varchar(50) NOT NULL DEFAULT '',
  `member_card` varchar(50) NOT NULL,
  `member_sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `member_birthday` int(10) unsigned NOT NULL DEFAULT '0',
  `member_phone` varchar(50) NOT NULL DEFAULT '',
  `member_photo` varchar(50) NOT NULL DEFAULT '',
  `member_from` varchar(255) NOT NULL DEFAULT '',
  `member_other` varchar(255) NOT NULL DEFAULT '',
  `member_join_time` int(10) NOT NULL DEFAULT '0',
  `member_join_ip` varchar(50) NOT NULL,
  `member_last_time` int(10) NOT NULL DEFAULT '0',
  `member_last_ip` varchar(50) NOT NULL,
  `member_validation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `member_validation_key` varchar(32) NOT NULL,
  `member_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spread_user` varchar(50) NOT NULL,
  `spread_keyword` varchar(50) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_member
-- ----------------------------
INSERT INTO `oss_member` VALUES ('50', 'sl100765096', 'AC487F7BE559758D392589405E74AA04A4FF7818', '', '100765096@qq.com', '', '', '', '0', '0', '', '', '', '', '1533706275', '0.0.0.0', '1533706338', '192.168.1.100', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('51', 'ceshi123', 'E252BA01BF6A505C330CBB3EB58645FCA69DFE4A', '', 'ceshi123@qq.com', '', '', '', '0', '0', '', '', '', '', '1533707576', '0.0.0.0', '1533707576', '0.0.0.0', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('52', 'ceshi321', 'DA2E556C320898865BEFEAB99AB4EFD6E08BFE78', '', 'ceshi321@ceshi321.com', '', '', '', '0', '0', '', '', '', '', '1533708090', '0.0.0.0', '1533708090', '0.0.0.0', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('53', '123', '40BD001563085FC35165329EA1FF5C5ECBDBBEEF', '', '123@qq.com', '', '', '', '0', '0', '', '', '', '', '1533708703', '192.168.1.106', '1533708703', '192.168.1.106', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('54', '1234', '7110EDA4D09E062AA5E4A390B0A572AC0D2C0220', '', '1234@qq.com', '', '', '', '0', '0', '', '', '', '', '1533708759', '192.168.1.106', '1533708759', '192.168.1.106', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('55', '12345', '8CB2237D0679CA88DB6464EAC60DA96345513964', '', '12345@qq.com', '', '', '', '0', '0', '', '', '', '', '1533709033', '192.168.1.106', '1533709033', '192.168.1.106', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('56', 'ceshi3211', '3DA541559918A808C2402BBA5012F6C60B27661C', '', 'kadjfl@q.com', '', '', '', '0', '0', '', '', '', '', '1533709276', '0.0.0.0', '1533709276', '0.0.0.0', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('57', 'abc123', '6367C48DD193D56EA7B0BAAD25B19455E529F5EE', '', '123@163.com', '', '', '', '0', '0', '', '', '', '', '1533709393', '192.168.1.106', '1533709393', '192.168.1.106', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('58', '123qw', '7D3BCF4C108798EF8A2403EF6EC7EC4E32A160E7', '', '1234@qq.com', '', '', '', '0', '0', '', '', '', '', '1533709467', '192.168.1.106', '1533709467', '192.168.1.106', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('59', 'sdjfdkasdf', '3DA541559918A808C2402BBA5012F6C60B27661C', '', 'lkjasdlf@alsdf.cn', '', '', '', '0', '0', '', '', '', '', '1533709516', '0.0.0.0', '1533709516', '0.0.0.0', '1', '', '1', '0', '', '');
INSERT INTO `oss_member` VALUES ('60', 'qwer', '1161E6FFD3637B302A5CD74076283A7BD1FC20D3', '', '1367890@163.com', '', '', '', '0', '0', '', '', '', '', '1533709595', '192.168.1.106', '1533709595', '192.168.1.106', '1', '', '1', '0', '', '');

-- ----------------------------
-- Table structure for `oss_member_group`
-- ----------------------------
DROP TABLE IF EXISTS `oss_member_group`;
CREATE TABLE `oss_member_group` (
  `group_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_member_group
-- ----------------------------
INSERT INTO `oss_member_group` VALUES ('1', '推广渠道');

-- ----------------------------
-- Table structure for `oss_menu`
-- ----------------------------
DROP TABLE IF EXISTS `oss_menu`;
CREATE TABLE `oss_menu` (
  `menu_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(50) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_target` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `menu_mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `menu_sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `menu_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `menu_name_en` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_menu
-- ----------------------------
INSERT INTO `oss_menu` VALUES ('1', '首頁', '/', '0', '0', '1', '1', '0', 'Home');
INSERT INTO `oss_menu` VALUES ('2', '遊戲中心', 'game.php', '0', '0', '1', '1', '0', 'Game');
INSERT INTO `oss_menu` VALUES ('3', '遊戲動態', 'news.php', '0', '0', '1', '1', '0', 'News');
INSERT INTO `oss_menu` VALUES ('5', '充值中心', 'pay.php', '0', '0', '1', '1', '0', 'Recharge');
INSERT INTO `oss_menu` VALUES ('6', '新手禮包', 'card.php', '0', '0', '1', '1', '0', 'Gift');
INSERT INTO `oss_menu` VALUES ('8', '關於我們', 'content.php?id=14', '0', '1', '1', '1', '0', 'About');
INSERT INTO `oss_menu` VALUES ('9', '聯系我們', 'content.php?id=15', '0', '1', '1', '1', '0', 'contact');
INSERT INTO `oss_menu` VALUES ('10', '家長監護', 'content.php?id=16', '0', '1', '1', '1', '0', 'Guardianship');
INSERT INTO `oss_menu` VALUES ('11', '糾紛處理', 'content.php?id=17', '0', '1', '1', '1', '0', 'Dispute');

-- ----------------------------
-- Table structure for `oss_online`
-- ----------------------------
DROP TABLE IF EXISTS `oss_online`;
CREATE TABLE `oss_online` (
  `online_time` int(10) unsigned NOT NULL DEFAULT '0',
  `online_ip` varchar(20) NOT NULL,
  `online_url` varchar(255) NOT NULL,
  `online_agent` varchar(255) NOT NULL,
  KEY `onlinetime` (`online_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_online
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_page`
-- ----------------------------
DROP TABLE IF EXISTS `oss_page`;
CREATE TABLE `oss_page` (
  `page_id` int(3) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL DEFAULT '',
  `page_content` text NOT NULL,
  `page_permissions` int(3) NOT NULL DEFAULT '0',
  `page_sort` int(3) unsigned NOT NULL DEFAULT '0',
  `page_state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_page
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_pay`
-- ----------------------------
DROP TABLE IF EXISTS `oss_pay`;
CREATE TABLE `oss_pay` (
  `pay_id` int(4) NOT NULL AUTO_INCREMENT,
  `pay_order_no` varchar(255) DEFAULT NULL,
  `pay_type` smallint(2) DEFAULT NULL,
  `pay_mode_id` varchar(50) DEFAULT NULL,
  `pay_state` tinyint(1) DEFAULT NULL,
  `pay_user` varchar(50) DEFAULT NULL,
  `pay_tel` varchar(50) DEFAULT NULL,
  `pay_game_id` int(4) DEFAULT NULL,
  `pay_server_id` int(4) DEFAULT NULL,
  `pay_game_user` varchar(50) DEFAULT NULL,
  `pay_game_role` varchar(50) DEFAULT NULL,
  `pay_money` int(4) DEFAULT NULL,
  `pay_time` int(10) DEFAULT NULL,
  `pay_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_pay
-- ----------------------------
INSERT INTO `oss_pay` VALUES ('37', '201808081337051321', '0', '1', '0', '50', '', '30', '26', 'sl100765096', '', '100', '1533706625', '192.168.1.100');
INSERT INTO `oss_pay` VALUES ('38', '201808081337271762', '0', '1', '0', '50', '', '36', '9', 'sl100765096', '', '100', '1533706647', '192.168.1.100');

-- ----------------------------
-- Table structure for `oss_paymode`
-- ----------------------------
DROP TABLE IF EXISTS `oss_paymode`;
CREATE TABLE `oss_paymode` (
  `mode_id` int(4) NOT NULL AUTO_INCREMENT,
  `mode_no` varchar(50) DEFAULT NULL,
  `mode_name` varchar(50) DEFAULT NULL,
  `mode_logo` varchar(50) DEFAULT NULL,
  `mode_depict` varchar(255) DEFAULT NULL,
  `mode_state` tinyint(1) DEFAULT NULL,
  `mode_is_default` tinyint(1) DEFAULT NULL,
  `mode_sort` smallint(2) DEFAULT NULL,
  `mode_money_per` smallint(2) DEFAULT NULL,
  `mode_port_config1` varchar(255) DEFAULT NULL,
  `mode_port_config2` varchar(255) DEFAULT NULL,
  `mode_port_config3` varchar(255) DEFAULT NULL,
  `mode_port_config4` varchar(255) DEFAULT NULL,
  `mode_port_config5` varchar(255) DEFAULT NULL,
  `mode_port_config6` varchar(255) DEFAULT NULL,
  `mode_port_config7` varchar(255) DEFAULT NULL,
  `mode_port_s1` varchar(50) DEFAULT NULL,
  `mode_port_s2` varchar(50) DEFAULT NULL,
  `mode_port_s3` varchar(50) DEFAULT NULL,
  `mode_port_s4` varchar(50) DEFAULT NULL,
  `mode_port_s5` varchar(50) DEFAULT NULL,
  `mode_port_s6` varchar(50) DEFAULT NULL,
  `mode_port_s7` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_paymode
-- ----------------------------
INSERT INTO `oss_paymode` VALUES ('1', 'Alipay', 'moovpay', '', 'moovpay', '1', '1', '0', '100', 'test', '123456', 'test@1.cn', 'http://127.0.0.1/return_url.php', 'http://127.0.0.1/notify_url.php', '', '', 'partner', 'key', 'seller_email', 'return_url', 'notify_url', '', '');
INSERT INTO `oss_paymode` VALUES ('2', 'Yeepay1', 'union pay', '', '易宝网银', '1', '0', '0', '100', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for `oss_server`
-- ----------------------------
DROP TABLE IF EXISTS `oss_server`;
CREATE TABLE `oss_server` (
  `server_id` int(4) NOT NULL AUTO_INCREMENT,
  `game_id` int(4) DEFAULT NULL,
  `server_no` varchar(50) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `server_logo` varchar(50) DEFAULT NULL,
  `server_logo2` varchar(50) DEFAULT NULL,
  `server_logo3` varchar(50) DEFAULT NULL,
  `server_depict` varchar(255) DEFAULT NULL,
  `server_line` varchar(50) DEFAULT NULL,
  `server_state` smallint(2) DEFAULT NULL,
  `server_trunon_date` date DEFAULT NULL,
  `server_trunon_hour` smallint(2) DEFAULT NULL,
  `server_login_gateway` varchar(50) DEFAULT NULL,
  `server_pay_gateway` varchar(50) DEFAULT NULL,
  `server_is_show` tinyint(1) DEFAULT NULL,
  `server_is_best` tinyint(1) DEFAULT NULL,
  `server_is_pay` tinyint(1) DEFAULT NULL,
  `server_sort` smallint(2) DEFAULT NULL,
  PRIMARY KEY (`server_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_server
-- ----------------------------
INSERT INTO `oss_server` VALUES ('1', '2', 'S1', '傲視群雄', '20120308181231_lbevvx.jpg', '', '', '斥资六千万天价全程自主研发的ARPG武侠无端网游，傲剑其华丽畅爽的即时战斗画面、强绝的武...', '双线', '3', '2012-03-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('2', '2', 'S2', '風花雪月', '', '', '', '', '双线', '3', '2012-03-08', '14', '', '', '1', '0', '1', '0');
INSERT INTO `oss_server` VALUES ('3', '5', '2區', '魏國', '', '', '', '', '双线', '3', '2012-03-17', '14', '', '', '1', '0', '1', '0');
INSERT INTO `oss_server` VALUES ('4', '6', '2區', '三角龍', '', '', '', '', '双线', '3', '2012-03-14', '14', '', '', '1', '0', '1', '0');
INSERT INTO `oss_server` VALUES ('5', '7', '3區', '測試服', '', '', '', '', '双线', '3', '2012-03-14', '14', 's999.sxd.xd.com', 'api.sxd.xd.com', '1', '0', '1', '0');
INSERT INTO `oss_server` VALUES ('6', '7', '2區', '大浪滔天', '', '', '', '', '双线', '3', '2012-03-27', '14', 's45.sxd.wanwan.sina.com', 'g.sinapay.sina.com.cn/wanwan/g_gameorder.php', '1', '0', '1', '0');
INSERT INTO `oss_server` VALUES ('7', '37', '風暴1區', '風暴1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('8', '36', '電信1區', '電信1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('9', '36', '聯通1區', '聯通1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('10', '35', '霜影逐龍', '霜影逐龍', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('11', '35', '槍嘯龍淵', '槍嘯龍淵', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('12', '34', '1區', '電信1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('13', '34', '2區', '電信2區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('14', '33', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('15', '33', '1區', '聯通', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('16', '32', '1區', '武當山', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('17', '32', '2區', '峨眉派', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('18', '32', '3區', '崆峒派', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('19', '32', '4區', '少林寺', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('20', '31', '1區', '電信1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('21', '31', '2區', '電信2區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('22', '31', '3區', '電信3區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('23', '31', '1區', '聯通1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('24', '30', '1區', '刺激戰場', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('25', '30', '2區', '末日黃昏', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('26', '30', '3區', '風暴沙漠', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('27', '29', '1區', '電信1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('28', '29', '2區', '電信2區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('29', '28', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('30', '27', '1區', '冒險島', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('31', '26', '1區', '天堂1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('32', '26', '2區', '天堂2區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('33', '25', '1區', 'ALICE', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('34', '25', '2區', 'rose', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('35', '24', '1區', 'DNF1', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('36', '24', '2區', 'DNF2', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('37', '23', '1區', '槍火1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('38', '22', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('39', '22', '1區', '聯通', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('40', '21', '1區', '大黃蜂', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('41', '21', '2區', '秦天柱', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('42', '20', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('43', '20', '2區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('44', '20', '1區', '聯通', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('45', '19', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('46', '18', '1區', '天山派', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('47', '18', '2區', '少林寺', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('48', '18', '3區', '峨眉派', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('49', '18', '4區', '契丹', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('50', '18', '5區', '丐幫', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('51', '17', '1區', '英國', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('52', '17', '2區', '德國', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('53', '17', '3區', '蘇聯', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('54', '16', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('55', '16', '1區', '聯通', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('56', '15', '1區', '電信1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('57', '15', '2區', '電信2區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('58', '15', '3區', '電信3區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('59', '15', '4區', '電信4區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('60', '15', '1區', '聯通1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('61', '14', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('62', '13', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('63', '13', '1區', '聯通', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('64', '12', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('65', '12', '1區', '聯通', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('66', '11', '1區', '電信', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('67', '10', '1區', '降龍十八掌', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('68', '10', '2區', '九陽神功', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('69', '10', '3區', '蛤蟆功', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('70', '9', '1區', '所向無敵', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('71', '9', '2區', '霹靂先鋒', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('72', '8', '1區', '守望1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('73', '8', '2區', '守望2區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('74', '7', '1區', '諸天神佛', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('75', '6', '1區', '霸王龍', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('76', '5', '1區', '蜀國', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('77', '5', '3區', '吳國', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('78', '4', '1區', '我欲成仙', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('79', '4', '2區', '築基', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('80', '4', '3區', '胎成', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('81', '3', '1區', '電信1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('82', '3', '2區', '電信2區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('83', '2', 'S3', '龍傲山莊', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('84', '1', '1區', '電信1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('85', '1', '2區', '電信2區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('86', '1', '1區', '聯通1區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('87', '37', '2區', '聯通2區', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('88', '56', '1區', '雙線1服', '20180809123730_pkllwc.png', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('89', '55', '749', '雙線749服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('90', '54', '112', '雙線112服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('91', '53', '1區', '雙線112服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('92', '52', '554', '雙線554服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('93', '51', '27', '雙線27服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('94', '50', '1', '雙線1服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('95', '49', '1', '雙線1服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('96', '49', '77', '雙線77服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('97', '48', '77', '雙線77服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('98', '47', '2', '雙線2服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('99', '46', '357', '雙線357服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('100', '45', '83', '雙線83服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('101', '44', '1', '雙線1服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('102', '55', '312', '雙線312服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('103', '43', '54', '雙線54服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('104', '42', '1', '雙線1服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('105', '41', '1', '雙線1服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('106', '40', '1', '雙線1服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('107', '39', '1', '雙線1服', '', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');
INSERT INTO `oss_server` VALUES ('108', '39', '204', '雙線204服', '20180809123010_othqyg.jpg', '', '', '', '双线', '3', '2018-08-08', '14', '', '', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for `oss_vote`
-- ----------------------------
DROP TABLE IF EXISTS `oss_vote`;
CREATE TABLE `oss_vote` (
  `vote_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `vote_title` varchar(255) NOT NULL,
  `vote_start` int(10) unsigned NOT NULL DEFAULT '0',
  `vote_end` int(10) unsigned NOT NULL DEFAULT '0',
  `vote_mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_state` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_vote_item`
-- ----------------------------
DROP TABLE IF EXISTS `oss_vote_item`;
CREATE TABLE `oss_vote_item` (
  `item_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `item_title` varchar(255) NOT NULL DEFAULT '',
  `item_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vote_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_vote_item
-- ----------------------------

-- ----------------------------
-- Table structure for `oss_vote_log`
-- ----------------------------
DROP TABLE IF EXISTS `oss_vote_log`;
CREATE TABLE `oss_vote_log` (
  `log_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `log_ip` varchar(50) NOT NULL DEFAULT '',
  `log_agent` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `vote_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oss_vote_log
-- ----------------------------
