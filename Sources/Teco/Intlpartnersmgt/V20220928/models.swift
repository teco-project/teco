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

import TecoCore

extension Intlpartnersmgt {
    /// 获取国家码接口的一个元素类型
    public struct CountryCodeItem: TCOutputModel {
        /// 国家英文名
        public let enName: String

        /// 国家中文名
        public let name: String

        /// ISO2标准国家/地区代码
        public let ios2: String

        /// ISO3标准国家/地区代码
        public let ios3: String

        /// 电话代码
        public let code: String

        enum CodingKeys: String, CodingKey {
            case enName = "EnName"
            case name = "Name"
            case ios2 = "IOS2"
            case ios3 = "IOS3"
            case code = "Code"
        }
    }

    /// 查询子客授信历史记录返回信息
    public struct QueryCreditAllocationHistoryData: TCOutputModel {
        /// 分配时间
        public let allocatedTime: String

        /// 操作员
        public let `operator`: String

        /// 分配的信用值
        public let credit: Float

        /// 分配的总金额
        public let allocatedCredit: Float

        enum CodingKeys: String, CodingKey {
            case allocatedTime = "AllocatedTime"
            case `operator` = "Operator"
            case credit = "Credit"
            case allocatedCredit = "AllocatedCredit"
        }
    }

    /// 查询客户信用额度出参复杂类型
    public struct QueryCustomersCreditData: TCOutputModel {
        /// 名字
        public let name: String

        /// 类型
        public let type: String

        /// 电话
        public let mobile: String

        /// 邮箱
        public let email: String

        /// 欠费标记
        public let arrears: String

        /// 绑定时间
        public let associationTime: String

        /// 最近到期时间
        public let recentExpiry: String

        /// 子客uin
        public let clientUin: UInt64

        /// 子客授信额度
        public let credit: Float

        /// 子客剩余额度
        public let remainingCredit: Float

        /// 0：未实名 1: 个人实名 2：企业实名
        public let identifyType: UInt64

        /// 客户备注
        public let remark: String

        /// 强制状态
        public let force: Int64

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case type = "Type"
            case mobile = "Mobile"
            case email = "Email"
            case arrears = "Arrears"
            case associationTime = "AssociationTime"
            case recentExpiry = "RecentExpiry"
            case clientUin = "ClientUin"
            case credit = "Credit"
            case remainingCredit = "RemainingCredit"
            case identifyType = "IdentifyType"
            case remark = "Remark"
            case force = "Force"
        }
    }

    /// 直接子客信用信息
    public struct QueryDirectCustomersCreditData: TCOutputModel {
        /// 用户Uin
        public let uin: UInt64

        /// 总信用值
        public let totalCredit: Float

        /// 剩余信用值
        public let remainingCredit: Float

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case totalCredit = "TotalCredit"
            case remainingCredit = "RemainingCredit"
        }
    }

    /// 子客代金券额度
    public struct QueryVoucherAmountByUinItem: TCOutputModel {
        /// 子客uin
        public let clientUin: Int64

        /// 代金券额度
        public let totalAmount: Float

        /// 代金券余额
        public let remainAmount: Float

        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
            case totalAmount = "TotalAmount"
            case remainAmount = "RemainAmount"
        }
    }

    /// 单个客户代金券数据
    public struct QueryVoucherListByUinItem: TCOutputModel {
        /// 子客uin
        public let clientUin: Int64

        /// 券总数量
        public let totalCount: Int64

        /// 券详情
        public let data: [QueryVoucherListByUinVoucherItem]

        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
            case totalCount = "TotalCount"
            case data = "Data"
        }
    }

    /// 子客代金券数据
    public struct QueryVoucherListByUinVoucherItem: TCOutputModel {
        /// 券号
        public let voucherId: String

        /// 状态
        public let voucherStatus: String

        /// 面额
        public let totalAmount: Float

        /// 余额
        public let remainAmount: Float

        enum CodingKeys: String, CodingKey {
            case voucherId = "VoucherId"
            case voucherStatus = "VoucherStatus"
            case totalAmount = "TotalAmount"
            case remainAmount = "RemainAmount"
        }
    }
}
