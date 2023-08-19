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

extension Iottid {
    /// DescribeAvailableLibCount请求参数结构体
    public struct DescribeAvailableLibCountRequest: TCRequest {
        /// 订单编号
        public let orderId: String

        public init(orderId: String) {
            self.orderId = orderId
        }

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
        }
    }

    /// DescribeAvailableLibCount返回参数结构体
    public struct DescribeAvailableLibCountResponse: TCResponse {
        /// 可空发的白盒密钥数量
        public let quantity: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case quantity = "Quantity"
            case requestId = "RequestId"
        }
    }

    /// 查询可空发的白盒密钥数量
    ///
    /// 查询指定订单的可空发的白盒密钥数量
    @inlinable
    public func describeAvailableLibCount(_ input: DescribeAvailableLibCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableLibCountResponse> {
        self.client.execute(action: "DescribeAvailableLibCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询可空发的白盒密钥数量
    ///
    /// 查询指定订单的可空发的白盒密钥数量
    @inlinable
    public func describeAvailableLibCount(_ input: DescribeAvailableLibCountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableLibCountResponse {
        try await self.client.execute(action: "DescribeAvailableLibCount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询可空发的白盒密钥数量
    ///
    /// 查询指定订单的可空发的白盒密钥数量
    @inlinable
    public func describeAvailableLibCount(orderId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableLibCountResponse> {
        self.describeAvailableLibCount(.init(orderId: orderId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询可空发的白盒密钥数量
    ///
    /// 查询指定订单的可空发的白盒密钥数量
    @inlinable
    public func describeAvailableLibCount(orderId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableLibCountResponse {
        try await self.describeAvailableLibCount(.init(orderId: orderId), region: region, logger: logger, on: eventLoop)
    }
}
