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

extension Cpdp {
    /// ConfirmOrder请求参数结构体
    public struct ConfirmOrderRequest: TCRequestModel {
        /// 分配给商户的AppId
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

    /// ConfirmOrder返回参数结构体
    public struct ConfirmOrderResponse: TCResponseModel {
        /// 分配给商户的AppId
        public let merchantAppId: String

        /// 平台流水号。消费订单发起成功后，返回的平台唯一订单号。
        public let orderNo: String

        /// 订单确认状态。0-确认失败
        /// 1-确认成功
        /// 2-可疑状态
        public let status: String

        /// 订单确认状态描述
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

    /// 云鉴-消费订单确认接口
    @inlinable
    public func confirmOrder(_ input: ConfirmOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfirmOrderResponse> {
        self.client.execute(action: "ConfirmOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云鉴-消费订单确认接口
    @inlinable
    public func confirmOrder(_ input: ConfirmOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfirmOrderResponse {
        try await self.client.execute(action: "ConfirmOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云鉴-消费订单确认接口
    @inlinable
    public func confirmOrder(merchantAppId: String, orderNo: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ConfirmOrderResponse> {
        self.confirmOrder(.init(merchantAppId: merchantAppId, orderNo: orderNo), region: region, logger: logger, on: eventLoop)
    }

    /// 云鉴-消费订单确认接口
    @inlinable
    public func confirmOrder(merchantAppId: String, orderNo: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ConfirmOrderResponse {
        try await self.confirmOrder(.init(merchantAppId: merchantAppId, orderNo: orderNo), region: region, logger: logger, on: eventLoop)
    }
}
