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

extension Cws {
    /// DescribeMonitors请求参数结构体
    public struct DescribeMonitorsRequest: TCRequestModel {
        /// 监控任务ID列表
        public let monitorIds: [UInt64]?

        /// 过滤条件
        public let filters: [Filter]?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 返回数量，默认为10，最大值为100
        public let limit: UInt64?

        public init(monitorIds: [UInt64]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.monitorIds = monitorIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case monitorIds = "MonitorIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeMonitors返回参数结构体
    public struct DescribeMonitorsResponse: TCResponseModel {
        /// 监控任务列表。
        public let monitors: [MonitorsDetail]

        /// 监控任务数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case monitors = "Monitors"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 查看监控任务
    ///
    /// 本接口 (DescribeMonitors) 用于查询一个或多个监控任务的详细信息。
    @inlinable
    public func describeMonitors(_ input: DescribeMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMonitorsResponse> {
        self.client.execute(action: "DescribeMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看监控任务
    ///
    /// 本接口 (DescribeMonitors) 用于查询一个或多个监控任务的详细信息。
    @inlinable
    public func describeMonitors(_ input: DescribeMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMonitorsResponse {
        try await self.client.execute(action: "DescribeMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看监控任务
    ///
    /// 本接口 (DescribeMonitors) 用于查询一个或多个监控任务的详细信息。
    @inlinable
    public func describeMonitors(monitorIds: [UInt64]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMonitorsResponse> {
        self.describeMonitors(DescribeMonitorsRequest(monitorIds: monitorIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查看监控任务
    ///
    /// 本接口 (DescribeMonitors) 用于查询一个或多个监控任务的详细信息。
    @inlinable
    public func describeMonitors(monitorIds: [UInt64]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMonitorsResponse {
        try await self.describeMonitors(DescribeMonitorsRequest(monitorIds: monitorIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
