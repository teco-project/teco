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
    /// QueryOpenBankDownLoadUrl请求参数结构体
    public struct QueryOpenBankDownLoadUrlRequest: TCRequestModel {
        /// 渠道商户号，外部接入平台方入驻云企付平台后下发。
        /// EBANK_PAYMENT支付方式下，填写渠道商户号；
        /// SAFT_ISV支付方式下，填写渠道子商户号。
        public let channelMerchantId: String

        /// 账单日期,yyyy-MM-dd。
        public let billDate: String

        /// 账单类型，默认交易账单。
        public let billType: String?

        /// 接入环境。沙箱环境填 sandbox。缺省默认调用生产环境。
        public let environment: String?

        /// 渠道名称。不填默认为商企付。
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        public let channelName: String?

        /// 支付方式。不填默认为ebank支付。
        /// __EBANK_PAYMENT__: ebank支付
        /// __OPENBANK_PAYMENT__: openbank支付
        /// __SAFT_ISV__: 人资ISV支付
        public let paymentMethod: String?

        public init(channelMerchantId: String, billDate: String, billType: String? = nil, environment: String? = nil, channelName: String? = nil, paymentMethod: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.billDate = billDate
            self.billType = billType
            self.environment = environment
            self.channelName = channelName
            self.paymentMethod = paymentMethod
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case billDate = "BillDate"
            case billType = "BillType"
            case environment = "Environment"
            case channelName = "ChannelName"
            case paymentMethod = "PaymentMethod"
        }
    }

    /// QueryOpenBankDownLoadUrl返回参数结构体
    public struct QueryOpenBankDownLoadUrlResponse: TCResponseModel {
        /// 业务系统返回码，SUCCESS表示成功，其他表示失败。
        public let errCode: String

        /// 业务系统返回消息。
        public let errMessage: String

        /// 查询对账文件下载响应对象。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryOpenBankDownLoadUrlResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-查询对账单下载地址
    @inlinable
    public func queryOpenBankDownLoadUrl(_ input: QueryOpenBankDownLoadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankDownLoadUrlResponse> {
        self.client.execute(action: "QueryOpenBankDownLoadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-查询对账单下载地址
    @inlinable
    public func queryOpenBankDownLoadUrl(_ input: QueryOpenBankDownLoadUrlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankDownLoadUrlResponse {
        try await self.client.execute(action: "QueryOpenBankDownLoadUrl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-查询对账单下载地址
    @inlinable
    public func queryOpenBankDownLoadUrl(channelMerchantId: String, billDate: String, billType: String? = nil, environment: String? = nil, channelName: String? = nil, paymentMethod: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankDownLoadUrlResponse> {
        self.queryOpenBankDownLoadUrl(.init(channelMerchantId: channelMerchantId, billDate: billDate, billType: billType, environment: environment, channelName: channelName, paymentMethod: paymentMethod), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-查询对账单下载地址
    @inlinable
    public func queryOpenBankDownLoadUrl(channelMerchantId: String, billDate: String, billType: String? = nil, environment: String? = nil, channelName: String? = nil, paymentMethod: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankDownLoadUrlResponse {
        try await self.queryOpenBankDownLoadUrl(.init(channelMerchantId: channelMerchantId, billDate: billDate, billType: billType, environment: environment, channelName: channelName, paymentMethod: paymentMethod), region: region, logger: logger, on: eventLoop)
    }
}
