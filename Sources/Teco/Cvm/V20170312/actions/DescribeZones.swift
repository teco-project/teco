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

extension Cvm {
    /// DescribeZones请求参数结构体
    public struct DescribeZonesRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeZones返回参数结构体
    public struct DescribeZonesResponse: TCResponse {
        /// 可用区数量。
        public let totalCount: UInt64

        /// 可用区列表信息。
        public let zoneSet: [ZoneInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case zoneSet = "ZoneSet"
            case requestId = "RequestId"
        }
    }

    /// 查询可用区列表
    ///
    /// 本接口(DescribeZones)用于查询可用区信息。
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZonesResponse> {
        self.client.execute(action: "DescribeZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询可用区列表
    ///
    /// 本接口(DescribeZones)用于查询可用区信息。
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.client.execute(action: "DescribeZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询可用区列表
    ///
    /// 本接口(DescribeZones)用于查询可用区信息。
    @inlinable
    public func describeZones(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZonesResponse> {
        self.describeZones(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询可用区列表
    ///
    /// 本接口(DescribeZones)用于查询可用区信息。
    @inlinable
    public func describeZones(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.describeZones(.init(), region: region, logger: logger, on: eventLoop)
    }
}
