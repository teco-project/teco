//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

// Test PR teco-project/teco-code-generator#23.

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Partners {
    /// 已审核代客信息
    public struct AgentAuditedClient: TCOutputModel {
        /// 代理商账号ID
        public let uin: String

        /// 代客账号ID
        public let clientUin: String

        /// 代客审核通过时间戳
        public let agentTime: String

        /// 代客类型，可能值为a/b/c
        public let clientFlag: String

        /// 代客备注
        public let clientRemark: String

        /// 代客名称（首选实名认证名称）
        public let clientName: String

        /// 认证类型, 0：个人，1：企业；其他：未认证或无效值
        public let authType: String

        /// 代客APPID
        public let appId: String

        /// 上月消费金额
        public let lastMonthAmt: Int64

        /// 本月消费金额
        public let thisMonthAmt: Int64

        /// 是否欠费,0：不欠费；1：欠费
        public let hasOverdueBill: UInt64

        /// 客户类型：可以为new(自拓)/assign(指派)/old(官网)/direct(直销)/direct_newopp(直销(新商机))/空
        public let clientType: String

        /// 项目类型：可以为self(自拓项目)/platform(合作项目)/repeat(复算项目  )/空
        public let projectType: String

        /// 业务员ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let salesUin: String?

        /// 业务员姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let salesName: String?

        /// 代客邮箱
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mail: String?

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case clientUin = "ClientUin"
            case agentTime = "AgentTime"
            case clientFlag = "ClientFlag"
            case clientRemark = "ClientRemark"
            case clientName = "ClientName"
            case authType = "AuthType"
            case appId = "AppId"
            case lastMonthAmt = "LastMonthAmt"
            case thisMonthAmt = "ThisMonthAmt"
            case hasOverdueBill = "HasOverdueBill"
            case clientType = "ClientType"
            case projectType = "ProjectType"
            case salesUin = "SalesUin"
            case salesName = "SalesName"
            case mail = "Mail"
        }
    }

    /// 业务信息定义
    public struct AgentBillElem: TCOutputModel {
        /// 代理商账号ID
        public let uin: String

        /// 订单号，仅对预付费账单有意义
        public let orderId: String

        /// 代客账号ID
        public let clientUin: String

        /// 代客备注名称
        public let clientRemark: String

        /// 支付时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var payTime: Date

        /// 云产品名称
        public let goodsType: String

        /// 预付费/后付费
        public let payMode: String

        /// 支付月份
        public let settleMonth: String

        /// 支付金额，单位分
        public let amt: Int64

        /// agentpay：代付；selfpay：自付
        public let payerMode: String

        /// 客户类型：可以为new(自拓)/assign(指定)/old(官网)/direct(直销)/direct_newopp(直销(新商机))/空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientType: String?

        /// 项目类型：可以为self(自拓项目)/platform(合作项目)/repeat(复算项目  )/空
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectType: String?

        /// 活动ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityId: String?

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case orderId = "OrderId"
            case clientUin = "ClientUin"
            case clientRemark = "ClientRemark"
            case payTime = "PayTime"
            case goodsType = "GoodsType"
            case payMode = "PayMode"
            case settleMonth = "SettleMonth"
            case amt = "Amt"
            case payerMode = "PayerMode"
            case clientType = "ClientType"
            case projectType = "ProjectType"
            case activityId = "ActivityId"
        }
    }

    /// 描述待审核代客信息
    public struct AgentClientElem: TCOutputModel {
        /// 代理商账号ID
        public let uin: String

        /// 代客账号ID
        public let clientUin: String

        /// 代客申请时间戳
        public let applyTime: UInt64

        /// 代客类型，可能值为a/b/c
        public let clientFlag: String

        /// 代客邮箱，打码显示
        public let mail: String

        /// 代客手机，打码显示
        public let phone: String

        /// 0表示不欠费，1表示欠费
        public let hasOverdueBill: UInt64

        /// 1:待代理商审核;2:待腾讯云审核4:待腾讯云渠道审批
        public let status: UInt64

        /// 业务员ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let salesUin: String?

        /// 业务员姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let salesName: String?

        /// 客户名称，此字段和控制台返回一致。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientName: String?

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case clientUin = "ClientUin"
            case applyTime = "ApplyTime"
            case clientFlag = "ClientFlag"
            case mail = "Mail"
            case phone = "Phone"
            case hasOverdueBill = "HasOverdueBill"
            case status = "Status"
            case salesUin = "SalesUin"
            case salesName = "SalesName"
            case clientName = "ClientName"
        }
    }

    /// 描述代理商代付的订单信息
    public struct AgentDealElem: TCOutputModel {
        /// 订单自增 ID【请勿依赖该字段作为唯一标识】
        public let dealId: String

        /// 订单号【订单唯一键】
        public let dealName: String

        /// 商品类型 ID
        public let goodsCategoryId: String

        /// 订单所有者
        public let ownerUin: String

        /// 订单所有者对应 appId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: String?

        /// 商品数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let goodsNum: String?

        /// 价格详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let goodsPrice: DealGoodsPriceElem?

        /// 下单人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creater: String?

        /// 下单时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatTime: String?

        /// 支付结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payEndTime: String?

        /// 扣费流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let billId: String?

        /// 支付人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payer: String?

        /// 订单状态，中文描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealStatus: String?

        /// 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 产品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let goodsName: String?

        /// 客户备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientRemark: String?

        /// 订单操作类型，purchase（新购），renew（续费），modify（配置变更）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let actionType: String?

        /// 代金券抵扣金额，单位分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voucherDecline: String?

        /// 大订单号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bigDealId: String?

        /// 客户类型（new：自拓；old：官网；assign：指派；direct：直销；direct_newopp：直销(新商机)）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientType: String?

        /// 项目类型（self：自拓；repeat：直销；platform：官网合作）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectType: String?

        /// 业务员账号ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let salesUin: String?

        /// 支付方式，0：自付；1：代付
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payerMode: String?

        /// 活动ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityId: String?

        /// 订单过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let overdueTime: String?

        /// 产品详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productInfo: [ProductInfoElem]?

        /// 付款方式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let paymentMethod: String?

        /// 订单更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case dealName = "DealName"
            case goodsCategoryId = "GoodsCategoryId"
            case ownerUin = "OwnerUin"
            case appId = "AppId"
            case goodsNum = "GoodsNum"
            case goodsPrice = "GoodsPrice"
            case creater = "Creater"
            case creatTime = "CreatTime"
            case payEndTime = "PayEndTime"
            case billId = "BillId"
            case payer = "Payer"
            case dealStatus = "DealStatus"
            case status = "Status"
            case goodsName = "GoodsName"
            case clientRemark = "ClientRemark"
            case actionType = "ActionType"
            case voucherDecline = "VoucherDecline"
            case bigDealId = "BigDealId"
            case clientType = "ClientType"
            case projectType = "ProjectType"
            case salesUin = "SalesUin"
            case payerMode = "PayerMode"
            case activityId = "ActivityId"
            case overdueTime = "OverdueTime"
            case productInfo = "ProductInfo"
            case paymentMethod = "PaymentMethod"
            case updateTime = "UpdateTime"
        }
    }

    /// 描述代理商代付的订单信息
    public struct AgentDealNewElem: TCOutputModel {
        /// 订单自增 ID【请勿依赖该字段作为唯一标识】
        public let dealId: String

        /// 订单号【订单唯一键】
        public let dealName: String

        /// 商品类型 ID
        public let goodsCategoryId: String

        /// 订单所有者
        public let ownerUin: String

        /// 订单所有者对应 appId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appId: String?

        /// 商品数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let goodsNum: String?

        /// 价格详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let goodsPrice: DealGoodsPriceNewElem?

        /// 下单人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creater: String?

        /// 下单时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let creatTime: String?

        /// 支付结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payEndTime: String?

        /// 扣费流水号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let billId: String?

        /// 支付人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payer: String?

        /// 订单状态，中文描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealStatus: String?

        /// 订单的状态(1：未支付;2：已支付;3：发货中;4：已发货;5：发货失败;6：已退款;7：已关单;8：订单过期;9：订单已失效;10：产品已失效;11：代付拒绝;12：支付中)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 产品名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let goodsName: String?

        /// 客户备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientRemark: String?

        /// 订单操作类型，"purchase":"新购","upgrade":"升配","upConvertExpire":"升配","downgrade":"降配","downConvertExpire":"降配","renew":"续费","refund":"退货","modifyNetworkMode":"调整带宽模式","modifyNetworkSize":"调整带宽大小","preMoveOut":"资源迁出","preMoveIn":"资源迁入","preToPost":"包年包月转按量","modify":"变配","postMoveOut":"资源迁出","postMoveIn":"资源迁入","recoverRefundForward":"调账补偿","recoverPayReserve":"调账补偿","recoverPayForward":"调账扣费","recoverRefundReserve":"调账扣费"
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let actionType: String?

        /// 代金券抵扣金额，单位分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let voucherDecline: String?

        /// 大订单号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bigDealId: String?

        /// 客户类型（new：自拓；old：官网；assign：指派；direct：直销；direct_newopp：直销(新商机)）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientType: String?

        /// 项目类型（self：自拓；repeat：直销；platform：官网合作）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectType: String?

        /// 业务员账号ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let salesUin: String?

        /// 支付方式，0：自付；1：代付
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payerMode: String?

        /// 活动ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activityId: String?

        /// 订单过期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let overdueTime: String?

        /// 产品详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productInfo: [ProductInfoElem]?

        /// 付款方式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let paymentMethod: String?

        /// 订单更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case dealName = "DealName"
            case goodsCategoryId = "GoodsCategoryId"
            case ownerUin = "OwnerUin"
            case appId = "AppId"
            case goodsNum = "GoodsNum"
            case goodsPrice = "GoodsPrice"
            case creater = "Creater"
            case creatTime = "CreatTime"
            case payEndTime = "PayEndTime"
            case billId = "BillId"
            case payer = "Payer"
            case dealStatus = "DealStatus"
            case status = "Status"
            case goodsName = "GoodsName"
            case clientRemark = "ClientRemark"
            case actionType = "ActionType"
            case voucherDecline = "VoucherDecline"
            case bigDealId = "BigDealId"
            case clientType = "ClientType"
            case projectType = "ProjectType"
            case salesUin = "SalesUin"
            case payerMode = "PayerMode"
            case activityId = "ActivityId"
            case overdueTime = "OverdueTime"
            case productInfo = "ProductInfo"
            case paymentMethod = "PaymentMethod"
            case updateTime = "UpdateTime"
        }
    }

    /// 代理商业务员信息
    public struct AgentSalesmanElem: TCOutputModel {
        /// 代理商账号ID
        public let uin: String

        /// 业务员ID
        public let salesUin: String

        /// 业务员姓名
        public let salesName: String

        /// 业务员创建时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var createTime: Date

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case salesUin = "SalesUin"
            case salesName = "SalesName"
            case createTime = "CreateTime"
        }
    }

    /// 订单价格详情
    public struct DealGoodsPriceElem: TCOutputModel {
        /// 实付金额（单位：分）
        public let realTotalCost: UInt64

        /// 订单实际金额（不含折扣，单位：分）
        public let originalTotalCost: Int64

        enum CodingKeys: String, CodingKey {
            case realTotalCost = "RealTotalCost"
            case originalTotalCost = "OriginalTotalCost"
        }
    }

    /// 订单价格详情
    public struct DealGoodsPriceNewElem: TCOutputModel {
        /// 实付金额（单位：分）
        public let realTotalCost: Int64

        /// 原始金额（不含折扣，单位：分）
        public let originalTotalCost: Int64

        enum CodingKeys: String, CodingKey {
            case realTotalCost = "RealTotalCost"
            case originalTotalCost = "OriginalTotalCost"
        }
    }

    /// 产品详情
    public struct ProductInfoElem: TCOutputModel {
        /// 产品属性
        public let name: String

        /// 产品属性值
        public let value: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    /// 返佣信息定义
    public struct RebateInfoElem: TCOutputModel {
        /// 代理商账号ID
        public let uin: String

        /// 返佣月份，如2018-02
        public let rebateMonth: String

        /// 返佣金额，单位分
        public let amt: UInt64

        /// 月度业绩，单位分
        public let monthSales: UInt64

        /// 季度业绩，单位分
        public let quarterSales: UInt64

        /// NORMAL(正常)/HAS_OVERDUE_BILL(欠费)/NO_CONTRACT(缺合同)
        public let exceptionFlag: String

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case rebateMonth = "RebateMonth"
            case amt = "Amt"
            case monthSales = "MonthSales"
            case quarterSales = "QuarterSales"
            case exceptionFlag = "ExceptionFlag"
        }
    }

    /// 返佣信息定义
    public struct RebateInfoElemNew: TCOutputModel {
        /// 代理商账号ID
        public let uin: String

        /// 返佣月份，如2018-02
        public let rebateMonth: String

        /// 返佣金额，单位分
        public let amt: Int64

        /// 月度业绩，单位分
        public let monthSales: Int64

        /// 季度业绩，单位分
        public let quarterSales: Int64

        /// NORMAL(正常)/HAS_OVERDUE_BILL(欠费)/NO_CONTRACT(缺合同)
        public let exceptionFlag: String

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case rebateMonth = "RebateMonth"
            case amt = "Amt"
            case monthSales = "MonthSales"
            case quarterSales = "QuarterSales"
            case exceptionFlag = "ExceptionFlag"
        }
    }

    /// 解绑客户信息
    public struct UnbindClientElem: TCOutputModel {
        /// 解绑账号ID
        public let uin: String

        /// 名称
        public let name: String

        /// 状态：0:审核中；1：已解绑；2：已撤销 3：关联撤销 4: 已驳回
        public let status: UInt64

        /// 申请时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var applyTime: Date?

        /// 解绑/撤销时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var actionTime: Date?

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case name = "Name"
            case status = "Status"
            case applyTime = "ApplyTime"
            case actionTime = "ActionTime"
        }
    }
}
