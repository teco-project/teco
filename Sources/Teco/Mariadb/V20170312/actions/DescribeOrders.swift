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

extension Mariadb {
    /// DescribeOrders请求参数结构体
    public struct DescribeOrdersRequest: TCRequestModel {
        /// 待查询的长订单号列表，创建实例、续费实例、扩容实例接口返回。
        public let dealNames: [String]

        public init(dealNames: [String]) {
            self.dealNames = dealNames
        }

        enum CodingKeys: String, CodingKey {
            case dealNames = "DealNames"
        }
    }

    /// DescribeOrders返回参数结构体
    public struct DescribeOrdersResponse: TCResponseModel {
        /// 返回的订单数量。
        public let totalCount: UInt64

        /// 订单信息列表。
        public let deals: [Deal]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case deals = "Deals"
            case requestId = "RequestId"
        }
    }

    /// 查询订单信息
    ///
    /// 本接口（DescribeOrders）用于查询云数据库订单信息。传入订单ID来查询订单关联的云数据库实例，和对应的任务流程ID。
    @inlinable
    public func describeOrders(_ input: DescribeOrdersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrdersResponse> {
        self.client.execute(action: "DescribeOrders", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询订单信息
    ///
    /// 本接口（DescribeOrders）用于查询云数据库订单信息。传入订单ID来查询订单关联的云数据库实例，和对应的任务流程ID。
    @inlinable
    public func describeOrders(_ input: DescribeOrdersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrdersResponse {
        try await self.client.execute(action: "DescribeOrders", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询订单信息
    ///
    /// 本接口（DescribeOrders）用于查询云数据库订单信息。传入订单ID来查询订单关联的云数据库实例，和对应的任务流程ID。
    @inlinable
    public func describeOrders(dealNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrdersResponse> {
        self.describeOrders(.init(dealNames: dealNames), region: region, logger: logger, on: eventLoop)
    }

    /// 查询订单信息
    ///
    /// 本接口（DescribeOrders）用于查询云数据库订单信息。传入订单ID来查询订单关联的云数据库实例，和对应的任务流程ID。
    @inlinable
    public func describeOrders(dealNames: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrdersResponse {
        try await self.describeOrders(.init(dealNames: dealNames), region: region, logger: logger, on: eventLoop)
    }
}
