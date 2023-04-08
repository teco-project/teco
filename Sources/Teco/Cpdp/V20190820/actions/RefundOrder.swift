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
    /// RefundOrder请求参数结构体
    public struct RefundOrderRequest: TCRequestModel {
        /// 进件成功后返给商户方的AppId
        public let merchantAppId: String

        /// 平台流水号。消费订单发起成功后，返回的平台唯一订单号。
        public let orderNo: String

        public init(merchantAppId: String, orderNo: String) {
            self.merchantAppId = merchantAppId
            self.orderNo = orderNo
        }

        enum CodingKeys: String, CodingKey {
            case merchantAppId = "MerchantAppId"
            case orderNo = "OrderNo"
        }
    }

    /// RefundOrder返回参数结构体
    public struct RefundOrderResponse: TCResponseModel {
        /// 进件成功后返给商户方的AppId
        public let merchantAppId: String

        /// 平台流水号。消费订单发起成功后，返回的平台唯一订单号。
        public let orderNo: String

        /// 订单退款状态。0-退款失败
        /// 1-退款成功
        /// 2-可疑状态
        public let status: String

        /// 订单退款状态描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case merchantAppId = "MerchantAppId"
            case orderNo = "OrderNo"
            case status = "Status"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 云鉴-消费订单退款接口
    ///
    /// 云鉴-消费订单退款的接口
    @inlinable
    public func refundOrder(_ input: RefundOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundOrderResponse> {
        self.client.execute(action: "RefundOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-消费订单退款接口
    ///
    /// 云鉴-消费订单退款的接口
    @inlinable
    public func refundOrder(_ input: RefundOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundOrderResponse {
        try await self.client.execute(action: "RefundOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-消费订单退款接口
    ///
    /// 云鉴-消费订单退款的接口
    @inlinable
    public func refundOrder(merchantAppId: String, orderNo: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RefundOrderResponse> {
        self.refundOrder(.init(merchantAppId: merchantAppId, orderNo: orderNo), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-消费订单退款接口
    ///
    /// 云鉴-消费订单退款的接口
    @inlinable
    public func refundOrder(merchantAppId: String, orderNo: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RefundOrderResponse {
        try await self.refundOrder(.init(merchantAppId: merchantAppId, orderNo: orderNo), region: region, logger: logger, on: eventLoop)
    }
}
