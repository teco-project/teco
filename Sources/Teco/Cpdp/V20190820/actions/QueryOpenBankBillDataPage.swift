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

extension Cpdp {
    /// QueryOpenBankBillDataPage请求参数结构体
    public struct QueryOpenBankBillDataPageRequest: TCRequestModel {
        /// 渠道商户号，外部接入平台方入驻云企付平台后下发。
        /// EBANK_PAYMENT支付方式下，填写渠道商户号；
        /// SAFT_ISV支付方式下，填写渠道子商户号;
        /// HELIPAY渠道下，填写渠道子商户号。
        public let channelMerchantId: String

        /// 账单日期,yyyy-MM-dd。
        public let billDate: String

        /// 渠道名称。详见附录-云企付枚举类说明-ChannelName。
        /// __TENPAY__: 商企付
        /// __WECHAT__: 微信支付
        /// __ALIPAY__: 支付宝
        /// HELIPAY：合利宝
        public let channelName: String

        /// 分页页码。
        public let pageNo: UInt64

        /// 分页大小，最大1000。
        public let pageSize: UInt64

        /// 账单类型，默认交易账单。
        public let billType: String?

        /// 支付方式。详见附录-云企付枚举类说明-PaymentMethod。
        public let paymentMethod: String?

        /// 环境类型。
        /// __release__:生产环境
        /// __sandbox__:沙箱环境
        /// _不填默认为生产环境_
        public let environment: String?

        public init(channelMerchantId: String, billDate: String, channelName: String, pageNo: UInt64, pageSize: UInt64, billType: String? = nil, paymentMethod: String? = nil, environment: String? = nil) {
            self.channelMerchantId = channelMerchantId
            self.billDate = billDate
            self.channelName = channelName
            self.pageNo = pageNo
            self.pageSize = pageSize
            self.billType = billType
            self.paymentMethod = paymentMethod
            self.environment = environment
        }

        enum CodingKeys: String, CodingKey {
            case channelMerchantId = "ChannelMerchantId"
            case billDate = "BillDate"
            case channelName = "ChannelName"
            case pageNo = "PageNo"
            case pageSize = "PageSize"
            case billType = "BillType"
            case paymentMethod = "PaymentMethod"
            case environment = "Environment"
        }
    }

    /// QueryOpenBankBillDataPage返回参数结构体
    public struct QueryOpenBankBillDataPageResponse: TCResponseModel {
        /// 错误码。
        /// __SUCCESS__: 成功
        /// __其他__: 见附录-错误码表
        public let errCode: String

        /// 错误消息。
        public let errMessage: String

        /// 结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryOpenBankBillDataPageResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云企付-分页查询对账单数据
    @inlinable
    public func queryOpenBankBillDataPage(_ input: QueryOpenBankBillDataPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankBillDataPageResponse> {
        self.client.execute(action: "QueryOpenBankBillDataPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云企付-分页查询对账单数据
    @inlinable
    public func queryOpenBankBillDataPage(_ input: QueryOpenBankBillDataPageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankBillDataPageResponse {
        try await self.client.execute(action: "QueryOpenBankBillDataPage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云企付-分页查询对账单数据
    @inlinable
    public func queryOpenBankBillDataPage(channelMerchantId: String, billDate: String, channelName: String, pageNo: UInt64, pageSize: UInt64, billType: String? = nil, paymentMethod: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryOpenBankBillDataPageResponse> {
        self.queryOpenBankBillDataPage(.init(channelMerchantId: channelMerchantId, billDate: billDate, channelName: channelName, pageNo: pageNo, pageSize: pageSize, billType: billType, paymentMethod: paymentMethod, environment: environment), region: region, logger: logger, on: eventLoop)
    }

    /// 云企付-分页查询对账单数据
    @inlinable
    public func queryOpenBankBillDataPage(channelMerchantId: String, billDate: String, channelName: String, pageNo: UInt64, pageSize: UInt64, billType: String? = nil, paymentMethod: String? = nil, environment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryOpenBankBillDataPageResponse {
        try await self.queryOpenBankBillDataPage(.init(channelMerchantId: channelMerchantId, billDate: billDate, channelName: channelName, pageNo: pageNo, pageSize: pageSize, billType: billType, paymentMethod: paymentMethod, environment: environment), region: region, logger: logger, on: eventLoop)
    }
}
