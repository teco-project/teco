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

extension Ape {
    /// CreateOrderAndPay请求参数结构体
    public struct CreateOrderAndPayRequest: TCRequest {
        /// 图片ID
        public let imageId: UInt64

        /// 授权人ID
        public let authUserId: String

        /// 售卖组合id
        public let marshalId: UInt64

        public init(imageId: UInt64, authUserId: String, marshalId: UInt64) {
            self.imageId = imageId
            self.authUserId = authUserId
            self.marshalId = marshalId
        }

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case authUserId = "AuthUserId"
            case marshalId = "MarshalId"
        }
    }

    /// CreateOrderAndPay返回参数结构体
    public struct CreateOrderAndPayResponse: TCResponse {
        /// 订单ID
        public let orderId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case requestId = "RequestId"
        }
    }

    /// 创建订单并支付
    ///
    /// 购买一张图片并且支付
    @inlinable
    public func createOrderAndPay(_ input: CreateOrderAndPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrderAndPayResponse> {
        self.client.execute(action: "CreateOrderAndPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建订单并支付
    ///
    /// 购买一张图片并且支付
    @inlinable
    public func createOrderAndPay(_ input: CreateOrderAndPayRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrderAndPayResponse {
        try await self.client.execute(action: "CreateOrderAndPay", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建订单并支付
    ///
    /// 购买一张图片并且支付
    @inlinable
    public func createOrderAndPay(imageId: UInt64, authUserId: String, marshalId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateOrderAndPayResponse> {
        self.createOrderAndPay(.init(imageId: imageId, authUserId: authUserId, marshalId: marshalId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建订单并支付
    ///
    /// 购买一张图片并且支付
    @inlinable
    public func createOrderAndPay(imageId: UInt64, authUserId: String, marshalId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrderAndPayResponse {
        try await self.createOrderAndPay(.init(imageId: imageId, authUserId: authUserId, marshalId: marshalId), region: region, logger: logger, on: eventLoop)
    }
}
