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

extension Dts {
    /// DescribeRegionConf请求参数结构体
    public struct DescribeRegionConfRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeRegionConf返回参数结构体
    public struct DescribeRegionConfResponse: TCResponse {
        /// 可售卖地域的数量
        public let totalCount: Int64

        /// 可售卖地域详情
        public let items: [SubscribeRegionConf]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询可售卖订阅地域
    ///
    /// 本接口（DescribeRegionConf）用于查询可售卖订阅实例的地域
    @inlinable
    public func describeRegionConf(_ input: DescribeRegionConfRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionConfResponse> {
        self.client.execute(action: "DescribeRegionConf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询可售卖订阅地域
    ///
    /// 本接口（DescribeRegionConf）用于查询可售卖订阅实例的地域
    @inlinable
    public func describeRegionConf(_ input: DescribeRegionConfRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionConfResponse {
        try await self.client.execute(action: "DescribeRegionConf", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询可售卖订阅地域
    ///
    /// 本接口（DescribeRegionConf）用于查询可售卖订阅实例的地域
    @inlinable
    public func describeRegionConf(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegionConfResponse> {
        self.describeRegionConf(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询可售卖订阅地域
    ///
    /// 本接口（DescribeRegionConf）用于查询可售卖订阅实例的地域
    @inlinable
    public func describeRegionConf(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegionConfResponse {
        try await self.describeRegionConf(.init(), region: region, logger: logger, on: eventLoop)
    }
}
