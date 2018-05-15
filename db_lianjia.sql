/*
Navicat MySQL Data Transfer

Source Server         : 云主机
Source Server Version : 50722
Source Host           : 118.24.84.184:3306
Source Database       : db_lianjia

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-05-14 17:20:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_lianjia
-- ----------------------------
DROP TABLE IF EXISTS `tb_lianjia`;
CREATE TABLE `tb_lianjia` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `house_info_url` varchar(50) DEFAULT NULL COMMENT '房屋详细信息链接',
  `house_info_title` varchar(50) DEFAULT NULL COMMENT '房屋信息title',
  `house_info_name` varchar(30) DEFAULT NULL COMMENT '小区名称',
  `house_info_zone` varchar(30) DEFAULT NULL COMMENT '小区厅室',
  `house_info_meters` varchar(30) DEFAULT NULL COMMENT '小区房屋大小',
  `house_info_face` varchar(30) DEFAULT NULL COMMENT '小区房屋朝向',
  `house_info_where` varchar(30) DEFAULT NULL COMMENT '哪个地方租',
  `house_info_floor` varchar(30) DEFAULT NULL COMMENT '楼层',
  `house_built_type` varchar(30) DEFAULT NULL COMMENT '建筑类型',
  `house_look_time` varchar(15) DEFAULT NULL COMMENT '看房时间',
  `house_info_price` varchar(30) DEFAULT NULL COMMENT '租金',
  `house_info_time` varchar(30) DEFAULT NULL COMMENT '更新时间',
  `house_info_fitting` varchar(30) DEFAULT '' COMMENT '房屋装修',
  `house_renting_style` varchar(30) DEFAULT NULL COMMENT '出租方式',
  `house_info_metro` varchar(30) DEFAULT NULL COMMENT '地铁',
  `house_info_village` varchar(30) DEFAULT NULL COMMENT '住宅小区',
  `house_info_position` varchar(30) DEFAULT NULL COMMENT '位置',
  `house_release_time` varchar(30) DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_lianjia
-- ----------------------------
INSERT INTO `tb_lianjia` VALUES ('1', 'https://cd.lianjia.com/zufang/CD0004126021.html', '美城悦荣府4居室 01卧', '美城悦荣府', '4室1厅', '12平米', '南', '华阳租房', '低楼层(共34层)', '2017年建板塔结合', '随时看房', '1390元/月', '2018.05.08 更新', '自如友家4.0拿铁', '(季付)', '暂无数据', '美城悦荣府-26套出租中', '天府新区 华阳', '2018-04-26发布');
INSERT INTO `tb_lianjia` VALUES ('2', 'https://cd.lianjia.com/zufang/106101223930.html', '地源吾舍 3室1厅 1200元', '地源吾舍', '3室1厅', '86平米', '东南', '华阳租房', '高楼层(共18层)', '2002年建塔楼', null, '1200元/月', '2018.05.12 更新', null, null, '暂无数据', '地源吾舍-4套出租中', '天府新区 华阳', '2018-05-11发布');
INSERT INTO `tb_lianjia` VALUES ('3', 'https://cd.lianjia.com/zufang/CD0004127317.html', '美城悦荣府4居室 05卧', '美城悦荣府', '4室1厅', '17平米', '西', '华阳租房', '中楼层(共34层)', '2017年建板塔结合', '随时看房', '1090元/月', '2018.05.10 更新', '自如友家4.0木棉', '(季付)', '暂无数据', '美城悦荣府-26套出租中', '天府新区 华阳', '2018-05-06发布');
INSERT INTO `tb_lianjia` VALUES ('4', 'https://cd.lianjia.com/zufang/CD0004126271.html', '慕和南道4居室 01卧', '慕和南道', '4室1厅', '14平米', '西', '华阳租房', '高楼层(共18层)', '2010年建板塔结合', '随时看房', '1330元/月', '2018.04.28 更新', '自如友家4.0拿铁', '(季付)', '暂无数据', '慕和南道-29套出租中', '天府新区 华阳', '2018-04-23发布');
INSERT INTO `tb_lianjia` VALUES ('5', 'https://cd.lianjia.com/zufang/106100789460.html', '阳光华苑套三双卫出租  一楼带花园', '阳光华苑', '3室2厅', '135平米', '南 北', '华阳租房', '中楼层(共5层)', '2008年建板楼', '随时看房', '1600元/月', '2018.05.06 更新', null, null, '暂无数据', '阳光华苑-6套出租中', '天府新区 华阳', '2017-11-10发布');
INSERT INTO `tb_lianjia` VALUES ('6', 'https://cd.lianjia.com/zufang/CD0003906045.html', '保利锦江里4居室 01卧', '保利锦江里', '4室1厅', '12平米', '南', '华阳租房', '低楼层(共33层)', '2017年建塔楼', '随时看房', '1460元/月', '2018.03.25 更新', '自如友家4.0拿铁', '(季付)', '距地铁1号线天府五街1110米', '保利锦江里-25套出租中', '天府新区 华阳', '2018-03-12发布');
INSERT INTO `tb_lianjia` VALUES ('7', 'https://cd.lianjia.com/zufang/106101164148.html', '戛纳湾畔 套三单卫   清水出租', '戛纳湾畔', '3室1厅', '112平米', '南', '华阳租房', '中楼层(共14层)', '2006年建板楼', null, '1500元/月', '2018.05.07 更新', null, null, '暂无数据', '戛纳湾畔-14套出租中', '天府新区 华阳', '2018-04-17发布');
INSERT INTO `tb_lianjia` VALUES ('8', 'https://cd.lianjia.com/zufang/106101184494.html', '华阳戛纳湾金棕榈清水房套二双卫', '戛纳湾金棕榈', '3室1厅', '95平米', '西南', '华阳租房', '中楼层(共32层)', '2016年建板塔结合', null, '1200元/月', '2018.05.13 更新', null, null, '暂无数据', '戛纳湾金棕榈-21套出租中', '天府新区 华阳', '2018-04-25发布');
INSERT INTO `tb_lianjia` VALUES ('9', 'https://cd.lianjia.com/zufang/CD0003996513.html', '金茂光明城市3居室 03卧', '金茂光明城市', '3室1厅', '15平米', '东', '华阳租房', '高楼层(共27层)', '2016年建板塔结合', '随时看房', '1160元/月', '2018.05.08 更新', '自如友家4.0木棉独立阳台', '(季付)', '暂无数据', '金茂光明城市-37套出租中', '天府新区 华阳', '2018-03-15发布');
INSERT INTO `tb_lianjia` VALUES ('10', 'https://cd.lianjia.com/zufang/106101159819.html', '华阳华苑 简单装修套三 拎包入住', '华阳花苑', '3室2厅', '135平米', '南', '华阳租房', '中楼层(共18层)', '2008年建塔楼', null, '1600元/月', '2018.05.08 更新', null, null, '暂无数据', '华阳花苑-1套出租中', '天府新区 华阳', '2018-04-16发布');
INSERT INTO `tb_lianjia` VALUES ('11', 'https://cd.lianjia.com/zufang/106100988337.html', '华阳蓝岸丽景      随时可入住', '蓝岸丽景', '3室1厅', '135平米', '东', '华阳租房', '高楼层(共18层)', '2009年建板楼', null, '1800元/月', '2018.05.10 更新', null, null, '暂无数据', '蓝岸丽景-13套出租中', '天府新区 华阳', '2018-02-06发布');
INSERT INTO `tb_lianjia` VALUES ('12', 'https://cd.lianjia.com/zufang/106101176916.html', '软件园南侧 戛纳湾滨江 装修套一', '戛纳湾滨江', '3室2厅', '113平米', '西南', '华阳租房', '高楼层(共32层)', '2010年建板楼', null, '1800元/月', '2018.05.13 更新', null, null, '暂无数据', '戛纳湾滨江-38套出租中', '天府新区 华阳', '2018-04-22发布');
INSERT INTO `tb_lianjia` VALUES ('13', 'https://cd.lianjia.com/zufang/CD0003759399.html', '保利锦江里3居室 03卧', '保利锦江里', '3室1厅', '14平米', '北', '华阳租房', '中楼层(共33层)', '2017年建塔楼', '随时看房', '1130元/月', '2018.05.10 更新', '自如友家4.0拿铁独立阳台', '(季付)', '距地铁1号线天府五街1110米', '保利锦江里-25套出租中', '天府新区 华阳', '2018-03-18发布');
INSERT INTO `tb_lianjia` VALUES ('14', 'https://cd.lianjia.com/zufang/106100903170.html', '华阳 福泽花苑 装修套三双卫出租', '福泽花苑', '3室2厅', '120平米', '东', '华阳租房', '高楼层(共6层)', null, null, '1800元/月', '2018.05.05 更新', '简单装修', null, '暂无数据', '福泽花苑-1套出租中', '天府新区 华阳', '2017-12-28发布');
INSERT INTO `tb_lianjia` VALUES ('15', 'https://cd.lianjia.com/zufang/106101118005.html', '蜀郡又一城三室二厅单卫整租可办公做仓库', '蜀郡又一城', '3室1厅', '96平米', '西', '华阳租房', '高楼层(共31层)', '2014年建塔楼', null, '1800元/月', '2018.05.14 更新', null, null, '暂无数据', '蜀郡又一城-38套出租中', '天府新区 华阳', '2018-03-31发布');
INSERT INTO `tb_lianjia` VALUES ('16', 'https://cd.lianjia.com/zufang/106101137407.html', '蜀郡又一城清水房整租三室两厅单卫', '蜀郡又一城', '3室1厅', '109平米', '南', '华阳租房', '低楼层(共32层)', '2014年建塔楼', null, '1800元/月', '2018.05.14 更新', null, null, '暂无数据', '蜀郡又一城-38套出租中', '天府新区 华阳', '2018-04-07发布');
INSERT INTO `tb_lianjia` VALUES ('17', 'https://cd.lianjia.com/zufang/106101081406.html', '天府新区府河菁华套三出租家具家电齐全', '华阳教师苑', '3室1厅', '108平米', '西南', '华阳租房', '高楼层(共6层)', '板楼', null, '1600元/月', '2018.05.14 更新', null, null, '暂无数据', '华阳教师苑-2套出租中', '天府新区 华阳', '2018-03-18发布');
INSERT INTO `tb_lianjia` VALUES ('18', 'https://cd.lianjia.com/zufang/106101064925.html', '华阳戛纳湾金棕榈清水房套四双卫', '戛纳湾金棕榈', '4室2厅', '178平米', '南', '华阳租房', '低楼层(共32层)', '2016年建板塔结合', null, '1900元/月', '2018.05.03 更新', null, null, '暂无数据', '戛纳湾金棕榈-21套出租中', '天府新区 华阳', '2018-03-12发布');
INSERT INTO `tb_lianjia` VALUES ('19', 'https://cd.lianjia.com/zufang/CD0003921354.html', '保利锦江里4居室 05卧', '保利锦江里', '4室1厅', '9平米', '南', '华阳租房', '低楼层(共33层)', '板塔结合', '随时看房', '1090元/月', '2018.04.10 更新', '自如友家4.0布丁独立阳台', '(季付)', '距地铁1号线天府五街1118米', '保利锦江里-25套出租中', '天府新区 华阳', '2018-04-01发布');
INSERT INTO `tb_lianjia` VALUES ('20', 'https://cd.lianjia.com/zufang/106101212721.html', '华阳协和下街地源吾舍居家装套二带书房家电家具齐全', '地源吾舍', '3室1厅', '118平米', '东南', '华阳租房', '高楼层(共18层)', '2002年建塔楼', null, '1700元/月', '2018.05.10 更新', null, null, '暂无数据', '地源吾舍-4套出租中', '天府新区 华阳', '2018-05-07发布');
INSERT INTO `tb_lianjia` VALUES ('21', 'https://cd.lianjia.com/zufang/106100863248.html', '华阳戛纳湾金棕榈清水房套三双卫', '戛纳湾金棕榈', '3室2厅', '105平米', '西南', '华阳租房', '高楼层(共32层)', '2016年建板塔结合', '随时看房', '1600元/月', '2018.05.10 更新', null, null, '暂无数据', '戛纳湾金棕榈-21套出租中', '天府新区 华阳', '2017-12-11发布');
INSERT INTO `tb_lianjia` VALUES ('22', 'https://cd.lianjia.com/zufang/CD0004128546.html', '慕和南道3居室 03卧', '慕和南道', '3室1厅', '16平米', '南', '华阳租房', '中楼层(共15层)', '2010年建板塔结合', '随时看房', '1060元/月', '2018.05.08 更新', '自如友家4.0木棉', '(季付)', '暂无数据', '慕和南道-29套出租中', '天府新区 华阳', '2018-05-07发布');
INSERT INTO `tb_lianjia` VALUES ('23', 'https://cd.lianjia.com/zufang/106101209996.html', '天府新区华阳向阳名居套三出租家具家电齐全', '向阳名居', '3室2厅', '141平米', '南', '华阳租房', '高楼层(共6层)', '2002年建板楼', '随时看房', '1800元/月', '2018.05.13 更新', null, null, '暂无数据', '向阳名居-1套出租中', '天府新区 华阳', '2018-05-06发布');
INSERT INTO `tb_lianjia` VALUES ('24', 'https://cd.lianjia.com/zufang/CD0003966801.html', '保利锦江里4居室 01卧', '保利锦江里', '4室1厅', '12平米', '南', '华阳租房', '高楼层(共33层)', '板塔结合', '随时看房', '1460元/月', '2018.05.07 更新', '自如友家4.0拿铁', '(季付)', '距地铁1号线天府五街1090米', '保利锦江里-25套出租中', '天府新区 华阳', '2018-04-11发布');
INSERT INTO `tb_lianjia` VALUES ('25', 'https://cd.lianjia.com/zufang/CD0003906173.html', '保利锦江里4居室 01卧', '保利锦江里', '4室1厅', '13平米', '南', '华阳租房', '高楼层(共33层)', '板塔结合', '随时看房', '1530元/月', '2018.04.07 更新', '自如友家4.0拿铁', '(季付)', '距地铁1号线天府五街1090米', '保利锦江里-25套出租中', '天府新区 华阳', '2018-03-15发布');
INSERT INTO `tb_lianjia` VALUES ('26', 'https://cd.lianjia.com/zufang/106101184604.html', '天府新区 华阳简单装修套三 环境舒适', '瑞雪港湾', '3室1厅', '133平米', '南', '华阳租房', '中楼层(共6层)', '板楼', '随时看房', '1600元/月', '2018.05.10 更新', null, null, '暂无数据', '瑞雪港湾-1套出租中', '天府新区 华阳', '2018-04-25发布');
INSERT INTO `tb_lianjia` VALUES ('27', 'https://cd.lianjia.com/zufang/106100721367.html', '光明城市三楼不包租，只商用可做仓库，1.2年一签', '金茂光明城市', '3室2厅', '89平米', '西', '华阳租房', '低楼层(共33层)', '2016年建板塔结合', '随时看房', '1500元/月', '2018.05.14 更新', null, null, '暂无数据', '金茂光明城市-37套出租中', '天府新区 华阳', '2017-10-13发布');
INSERT INTO `tb_lianjia` VALUES ('28', 'https://cd.lianjia.com/zufang/106100612406.html', '华阳戛纳湾 蓝岸丽景 套三双卫带阳台空房 可办公', '蓝岸丽景', '3室2厅', '125平米', '东', '华阳租房', '低楼层(共18层)', '2009年建板楼', '随时看房', '1800元/月', '2018.05.10 更新', '简单装修', null, '暂无数据', '蓝岸丽景-13套出租中', '天府新区 华阳', '2017-08-30发布');
INSERT INTO `tb_lianjia` VALUES ('29', 'https://cd.lianjia.com/zufang/CD0004126502.html', '美城悦荣府4居室 05卧', '美城悦荣府', '4室1厅', '15平米', '南', '华阳租房', '高楼层(共34层)', '2017年建板塔结合', '随时看房', '1060元/月', '2018.05.08 更新', '自如友家4.0木棉独立阳台', '(季付)', '暂无数据', '美城悦荣府-26套出租中', '天府新区 华阳', '2018-04-27发布');
