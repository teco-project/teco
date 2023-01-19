//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// QueryTransferResult请求参数结构体
    public struct QueryTransferResultRequest: TCRequestModel {
        /// 商户号
        public let merchantId: String

        /// 申请商户号的appid或者商户号绑定的appid
        public let merchantAppId: String

        /// 1、 微信企业付款
        /// 2、 支付宝转账
        /// 3、 平安银企直联代发转账
        public let transferType: Int64

        /// 交易流水流水号（与 OrderId 不能同时为空）
        public let tradeSerialNo: String?

        /// 订单号（与 TradeSerialNo 不能同时为空）
        public let orderId: String?

        /// 接入环境。沙箱环境填sandbox。
        public let profile: String?

        public init(merchantId: String, merchantAppId: String, transferType: Int64, tradeSerialNo: String? = nil, orderId: String? = nil, profile: String? = nil) {
            self.merchantId = merchantId
            self.merchantAppId = merchantAppId
            self.transferType = transferType
            self.tradeSerialNo = tradeSerialNo
            self.orderId = orderId
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case merchantId = "MerchantId"
            case merchantAppId = "MerchantAppId"
            case transferType = "TransferType"
            case tradeSerialNo = "TradeSerialNo"
            case orderId = "OrderId"
            case profile = "Profile"
        }
    }

    /// QueryTransferResult返回参数结构体
    public struct QueryTransferResultResponse: TCResponseModel {
        /// 错误码。响应成功："SUCCESS"，其他为不成功
        public let errCode: String

        /// 响应消息
        public let errMessage: String

        /// 返回结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QueryTransferResultData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 智能代发-单笔代发转账查询接口
    @inlinable
    public func queryTransferResult(_ input: QueryTransferResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryTransferResultResponse> {
        self.client.execute(action: "QueryTransferResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智能代发-单笔代发转账查询接口
    @inlinable
    public func queryTransferResult(_ input: QueryTransferResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryTransferResultResponse {
        try await self.client.execute(action: "QueryTransferResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智能代发-单笔代发转账查询接口
    @inlinable
    public func queryTransferResult(merchantId: String, merchantAppId: String, transferType: Int64, tradeSerialNo: String? = nil, orderId: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryTransferResultResponse> {
        self.queryTransferResult(QueryTransferResultRequest(merchantId: merchantId, merchantAppId: merchantAppId, transferType: transferType, tradeSerialNo: tradeSerialNo, orderId: orderId, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 智能代发-单笔代发转账查询接口
    @inlinable
    public func queryTransferResult(merchantId: String, merchantAppId: String, transferType: Int64, tradeSerialNo: String? = nil, orderId: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryTransferResultResponse {
        try await self.queryTransferResult(QueryTransferResultRequest(merchantId: merchantId, merchantAppId: merchantAppId, transferType: transferType, tradeSerialNo: tradeSerialNo, orderId: orderId, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
