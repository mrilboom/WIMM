-- 此处存放建表语句


-- 支付宝建表语句
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for bill_alipay
-- ----------------------------
DROP TABLE IF EXISTS `bill_alipay`;
CREATE TABLE `bill_alipay`  (
  `busi_create_time` datetime NOT NULL COMMENT '交易创建时间',
  `busi_pay_time` datetime NULL DEFAULT NULL COMMENT '交易付款时间',
  `business_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易号',
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家订单号',
  `oppon_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易对手方',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户',
  `business_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易类型',
  `update_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '记录更新时间',
  `business_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '金额（元）',
  `business_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易状态',
  `business_from` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易来源',
  `io_flag` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收/支',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`business_id`) USING BTREE,
  INDEX `INDEX_ALIPAY`(`oppon_name`, `business_id`, `order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付宝账单数据表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
