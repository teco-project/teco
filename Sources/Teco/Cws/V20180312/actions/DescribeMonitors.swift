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

import TecoPaginationHelpers

extension Cws {
    /// DescribeMonitors请求参数结构体
    public struct DescribeMonitorsRequest: TCPaginatedRequest {
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

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeMonitorsResponse) -> DescribeMonitorsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMonitorsRequest(monitorIds: self.monitorIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeMonitors返回参数结构体
    public struct DescribeMonitorsResponse: TCPaginatedResponse {
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

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MonitorsDetail] {
            self.monitors
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
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
        let input = DescribeMonitorsRequest(monitorIds: monitorIds, filters: filters, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看监控任务
    ///
    /// 本接口 (DescribeMonitors) 用于查询一个或多个监控任务的详细信息。
    @inlinable
    public func describeMonitors(monitorIds: [UInt64]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMonitorsResponse {
        let input = DescribeMonitorsRequest(monitorIds: monitorIds, filters: filters, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看监控任务
    ///
    /// 本接口 (DescribeMonitors) 用于查询一个或多个监控任务的详细信息。
    @inlinable
    public func describeMonitorsPaginated(_ input: DescribeMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [MonitorsDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeMonitors, logger: logger, on: eventLoop)
    }

    /// 查看监控任务
    ///
    /// 本接口 (DescribeMonitors) 用于查询一个或多个监控任务的详细信息。
    @inlinable @discardableResult
    public func describeMonitorsPaginated(_ input: DescribeMonitorsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMonitorsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMonitors, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看监控任务
    ///
    /// 本接口 (DescribeMonitors) 用于查询一个或多个监控任务的详细信息。
    @inlinable
    public func describeMonitorsPaginator(_ input: DescribeMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeMonitorsRequest, DescribeMonitorsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeMonitorsRequest, DescribeMonitorsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMonitors, logger: logger, on: eventLoop)
    }
}
