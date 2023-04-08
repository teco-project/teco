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
    /// QuerySinglePaymentResult请求参数结构体
    public struct QuerySinglePaymentResultRequest: TCRequestModel {
        /// 转账类型
        public let transferType: Int64

        /// 交易流水流水号，唯一
        public let tradeSerialNo: String?

        /// 订单号，与TradeSerialNo不能同时为空
        public let orderId: String?

        public init(transferType: Int64, tradeSerialNo: String? = nil, orderId: String? = nil) {
            self.transferType = transferType
            self.tradeSerialNo = tradeSerialNo
            self.orderId = orderId
        }

        enum CodingKeys: String, CodingKey {
            case transferType = "TransferType"
            case tradeSerialNo = "TradeSerialNo"
            case orderId = "OrderId"
        }
    }

    /// QuerySinglePaymentResult返回参数结构体
    public struct QuerySinglePaymentResultResponse: TCResponseModel {
        /// 错误码。响应成功："SUCCESS"，其他为不成功
        public let errCode: String

        /// 响应消息。
        public let errMessage: String

        /// 返回响应
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: QuerySinglePaymentResultData?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errCode = "ErrCode"
            case errMessage = "ErrMessage"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 灵云-单笔转账结果查询
    @inlinable
    public func querySinglePaymentResult(_ input: QuerySinglePaymentResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QuerySinglePaymentResultResponse> {
        self.client.execute(action: "QuerySinglePaymentResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 灵云-单笔转账结果查询
    @inlinable
    public func querySinglePaymentResult(_ input: QuerySinglePaymentResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QuerySinglePaymentResultResponse {
        try await self.client.execute(action: "QuerySinglePaymentResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 灵云-单笔转账结果查询
    @inlinable
    public func querySinglePaymentResult(transferType: Int64, tradeSerialNo: String? = nil, orderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QuerySinglePaymentResultResponse> {
        self.querySinglePaymentResult(.init(transferType: transferType, tradeSerialNo: tradeSerialNo, orderId: orderId), region: region, logger: logger, on: eventLoop)
    }

    /// 灵云-单笔转账结果查询
    @inlinable
    public func querySinglePaymentResult(transferType: Int64, tradeSerialNo: String? = nil, orderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QuerySinglePaymentResultResponse {
        try await self.querySinglePaymentResult(.init(transferType: transferType, tradeSerialNo: tradeSerialNo, orderId: orderId), region: region, logger: logger, on: eventLoop)
    }
}
