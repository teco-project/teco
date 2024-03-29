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

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// QueryOpenBankBankBranchList请求参数结构体
    public struct QueryOpenBankBankBranchListRequest: TCRequest {
        /// 渠道商户ID。
        public let channelMerchantId: String

        /// 渠道名称。
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        public let channelName: String

        /// 支付方式。
        /// __EBANK_PAYMENT__:ebank付款
        /// __OPENBANK_PAYMENT__: openbank付款
        public let paymentMethod: String

        /// 支行名称。
        public let bankBranchName: String

        /// 银行简称。
        public let bankAbbreviation: String

        /// 页码。Index和Count必须大于等于1。Count建议不超过100。
        public let pageNumber: Paging

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, channelName: String, paymentMethod: String, bankBranchName: String, bankAbbreviation: String, pageNumber: Paging, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.channelName = channelName
            self.paymentMethod = paymentMethod
            self.bankBranchName = bankBranchName
            self.bankAbbreviation = bankAbbreviation
            self.pageNumber = pageNumber
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case channelName = "ChannelName"
            case paymentMethod = "PaymentMethod"
            case bankBranchName = "BankBranchName"
            case bankAbbreviation = "BankAbbreviation"
            case pageNumber = "PageNumber"
            case environment = "Environment"
        }
    }

    /// QueryOpenBankBankBranchList返回参数结构体
    public struct QueryOpenBankBankBranchListResponse: TCResponse {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryOpenBankBankBranchListResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-查询联行号
    @inlinable
    public func queryOpenBankBankBranchList(_ input: QueryOpenBankBankBranchListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankBankBranchListResponse> {
        self.client.execute(action: "QueryOpenBankBankBranchList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-查询联行号
    @inlinable
    public func queryOpenBankBankBranchList(_ input: QueryOpenBankBankBranchListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankBankBranchListResponse {
        try await self.client.execute(action: "QueryOpenBankBankBranchList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-查询联行号
    @inlinable
    public func queryOpenBankBankBranchList(channelMerchantId: String, channelName: String, paymentMethod: String, bankBranchName: String, bankAbbreviation: String, pageNumber: Paging, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankBankBranchListResponse> {
        self.queryOpenBankBankBranchList(.init(channelMerchantId: channelMerchantId, channelName: channelName, paymentMethod: paymentMethod, bankBranchName: bankBranchName, bankAbbreviation: bankAbbreviation, pageNumber: pageNumber, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-查询联行号
    @inlinable
    public func queryOpenBankBankBranchList(channelMerchantId: String, channelName: String, paymentMethod: String, bankBranchName: String, bankAbbreviation: String, pageNumber: Paging, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankBankBranchListResponse {
        try await self.queryOpenBankBankBranchList(.init(channelMerchantId: channelMerchantId, channelName: channelName, paymentMethod: paymentMethod, bankBranchName: bankBranchName, bankAbbreviation: bankAbbreviation, pageNumber: pageNumber, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
