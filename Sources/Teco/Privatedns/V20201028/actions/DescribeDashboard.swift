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

extension Privatedns {
    /// DescribeDashboard请求参数结构体
    public struct DescribeDashboardRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeDashboard返回参数结构体
    public struct DescribeDashboardResponse: TCResponse {
        /// 私有域解析总数
        public let zoneTotal: Int64

        /// 私有域关联VPC数量
        public let zoneVpcCount: Int64

        /// 历史请求量总数
        public let requestTotalCount: Int64

        /// 流量包用量
        public let flowUsage: [FlowUsage]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneTotal = "ZoneTotal"
            case zoneVpcCount = "ZoneVpcCount"
            case requestTotalCount = "RequestTotalCount"
            case flowUsage = "FlowUsage"
            case requestId = "RequestId"
        }
    }

    /// 获取私有域解析概览
    @inlinable
    public func describeDashboard(_ input: DescribeDashboardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDashboardResponse> {
        self.client.execute(action: "DescribeDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析概览
    @inlinable
    public func describeDashboard(_ input: DescribeDashboardRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDashboardResponse {
        try await self.client.execute(action: "DescribeDashboard", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取私有域解析概览
    @inlinable
    public func describeDashboard(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDashboardResponse> {
        self.describeDashboard(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取私有域解析概览
    @inlinable
    public func describeDashboard(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDashboardResponse {
        try await self.describeDashboard(.init(), region: region, logger: logger, on: eventLoop)
    }
}
