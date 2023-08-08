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

extension Sqlserver {
    /// DescribeInstanceByOrders请求参数结构体
    public struct DescribeInstanceByOrdersRequest: TCRequestModel {
        /// 订单号集合
        public let dealNames: [String]

        public init(dealNames: [String]) {
            self.dealNames = dealNames
        }

        enum CodingKeys: String, CodingKey {
            case dealNames = "DealNames"
        }
    }

    /// DescribeInstanceByOrders返回参数结构体
    public struct DescribeInstanceByOrdersResponse: TCResponseModel {
        /// 资源ID集合
        public let dealInstance: [DealInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealInstance = "DealInstance"
            case requestId = "RequestId"
        }
    }

    /// 根据订单号查询对应的实例ID
    ///
    /// 本接口（DescribeInstanceByOrders）用于根据订单号查询资源ID
    @inlinable
    public func describeInstanceByOrders(_ input: DescribeInstanceByOrdersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceByOrdersResponse> {
        self.client.execute(action: "DescribeInstanceByOrders", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据订单号查询对应的实例ID
    ///
    /// 本接口（DescribeInstanceByOrders）用于根据订单号查询资源ID
    @inlinable
    public func describeInstanceByOrders(_ input: DescribeInstanceByOrdersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceByOrdersResponse {
        try await self.client.execute(action: "DescribeInstanceByOrders", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据订单号查询对应的实例ID
    ///
    /// 本接口（DescribeInstanceByOrders）用于根据订单号查询资源ID
    @inlinable
    public func describeInstanceByOrders(dealNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceByOrdersResponse> {
        self.describeInstanceByOrders(.init(dealNames: dealNames), region: region, logger: logger, on: eventLoop)
    }

    /// 根据订单号查询对应的实例ID
    ///
    /// 本接口（DescribeInstanceByOrders）用于根据订单号查询资源ID
    @inlinable
    public func describeInstanceByOrders(dealNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceByOrdersResponse {
        try await self.describeInstanceByOrders(.init(dealNames: dealNames), region: region, logger: logger, on: eventLoop)
    }
}