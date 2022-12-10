//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cpdp {
    /// 智慧薪酬-通过明细单号查询批明细单
    ///
    /// 通过商家或者微信批次明细单号查询明细单
    @inlinable
    public func queryTransferDetail(_ input: QueryTransferDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryTransferDetailResponse > {
        self.client.execute(action: "QueryTransferDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 智慧薪酬-通过明细单号查询批明细单
    ///
    /// 通过商家或者微信批次明细单号查询明细单
    @inlinable
    public func queryTransferDetail(_ input: QueryTransferDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryTransferDetailResponse {
        try await self.client.execute(action: "QueryTransferDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryTransferDetail请求参数结构体
    public struct QueryTransferDetailRequest: TCRequestModel {
        /// 商户号。
        /// 示例值：129284394
        public let merchantId: String
        
        /// 商家批次单号。
        /// 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        /// 示例值：plfk2020042013
        public let merchantBatchNo: String?
        
        /// 商家明细单号。
        /// 商户系统内部的商家明细单号
        /// 示例值：plfk2020042013
        public let merchantDetailNo: String?
        
        /// 微信批次单号。
        /// 微信商家转账系统返回的唯一标识。
        /// 商家单号（包含批次号和明细单号）和微信单号（包含批次号和明细单号）二者必填其一。
        /// 示例值：1030000071100999991182020050700019480001
        public let batchId: String?
        
        /// 微信明细单号。
        /// 微信区分明细单返回的唯一标识。
        /// 示例值：1030000071100999991182020050700019480001
        public let detailId: String?
        
        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let profile: String?
        
        public init (merchantId: String, merchantBatchNo: String?, merchantDetailNo: String?, batchId: String?, detailId: String?, profile: String?) {
            self.merchantId = merchantId
            self.merchantBatchNo = merchantBatchNo
            self.merchantDetailNo = merchantDetailNo
            self.batchId = batchId
            self.detailId = detailId
            self.profile = profile
        }
        
        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case merchantBatchNo = "MerchantBatchNo"
            case merchantDetailNo = "MerchantDetailNo"
            case batchId = "BatchId"
            case detailId = "DetailId"
            case profile = "Profile"
        }
    }
    
    /// QueryTransferDetail返回参数结构体
    public struct QueryTransferDetailResponse: TCResponseModel {
        /// 商户号。
        /// 示例值：19300009329
        public let merchantId: String
        
        /// 商家批次单号。
        /// 商户系统内部的商家批次单号，此参数只能由数字、字母组成，商户系统内部唯一，UTF8编码，最多32个字符。
        /// 示例值：plfk2020042013
        public let merchantBatchNo: String
        
        /// 微信批次单号。
        /// 微信商家转账系统返回的唯一标识。
        /// 示例值：1030000071100999991182020050700019480001
        public let batchId: String
        
        /// 商家明细单号。
        /// 商户系统内部的商家明细单号
        /// 示例值：plfk2020042013
        public let merchantDetailNo: String
        
        /// 微信明细单号。
        /// 微信区分明细单返回的唯一标识。
        /// 示例值：1030000071100999991182020050700019480001
        public let detailId: String
        
        /// 明细状态。
        /// PROCESSING：转账中，正在处理，结果未明；
        /// SUCCESS：转账成功；
        /// FAIL：转账失败，需要确认失败原因以后，再决定是否重新发起地该笔明细的转账。
        /// 示例值：SUCCESS
        public let detailStatus: String
        
        /// 转账金额。
        /// 单位为分。
        /// 示例值：200
        public let transferAmount: UInt64
        
        /// 失败原因。
        /// 如果转账失败则有失败原因
        /// ACCOUNT_FROZEN：账户冻结
        /// REAL_NAME_CHECK_FAIL：用户未实名
        /// NAME_NOT_CORRECT：用户姓名校验失败
        /// OPENID_INVALID：Openid校验失败
        /// TRANSFER_QUOTA_EXCEED：超过用户单笔收款额度
        /// DAY_RECEIVED_QUOTA_EXCEED：超过用户单日收款额度
        /// MONTH_RECEIVED_QUOTA_EXCEED：超过用户单月收款额度
        /// DAY_RECEIVED_COUNT_EXCEED：超过用户单日收款次数
        /// PRODUCT_AUTH_CHECK_FAIL：产品权限校验失败
        /// OVERDUE_CLOSE：转账关闭
        /// ID_CARD_NOT_CORRECT：用户身份证校验失败
        /// ACCOUNT_NOT_EXIST：用户账户不存在
        /// TRANSFER_RISK：转账存在风险
        /// 示例值：ACCOUNT_FROZEN
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failReason: String?
        
        /// 转账发起时间。
        /// 遵循rfc3339标准格式。格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，YYYY-MM-DD表示年月日，T出现在字符串中，表示time元素的开头，HH:mm:ss.sss表示时分秒毫秒，TIMEZONE表示时区（+08:00表示东八区时间，领先UTC 8小时，即北京时间）。例如：2015-05-20T13:29:35.120+08:00表示北京时间2015年05月20日13点29分35秒。
        /// 示例值：2015-05-20T13:29:35.120+08:00
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let initiateTime: String?
        
        /// 转账更新时间。
        /// 遵循rfc3339标准格式。格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，YYYY-MM-DD表示年月日，T出现在字符串中，表示time元素的开头，HH:mm:ss.sss表示时分秒毫秒，TIMEZONE表示时区（+08:00表示东八区时间，领先UTC 8小时，即北京时间）。例如：2015-05-20T13:29:35.120+08:00表示北京时间2015年05月20日13点29分35秒。
        /// 示例值：2015-05-20T13:29:35.120+08:00
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?
        
        /// 用户名。
        /// 示例值：张三
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?
        
        /// 转账备注。
        /// 单条转账备注（微信用户会收到该备注）。UTF8编码，最多32字符。
        /// 示例值：2020年4月报销
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let transferRemark: String?
        
        /// 商家绑定公众号APPID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let merchantAppId: String?
        
        /// 用户openId。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let openId: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case merchantBatchNo = "MerchantBatchNo"
            case batchId = "BatchId"
            case merchantDetailNo = "MerchantDetailNo"
            case detailId = "DetailId"
            case detailStatus = "DetailStatus"
            case transferAmount = "TransferAmount"
            case failReason = "FailReason"
            case initiateTime = "InitiateTime"
            case updateTime = "UpdateTime"
            case userName = "UserName"
            case transferRemark = "TransferRemark"
            case merchantAppId = "MerchantAppId"
            case openId = "OpenId"
            case requestId = "RequestId"
        }
    }
}
