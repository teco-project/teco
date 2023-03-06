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

extension Cynosdb {
    /// DescribeAuditLogs请求参数结构体
    public struct DescribeAuditLogsRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 开始时间，格式为："2017-07-12 10:29:20"。
        public let startTime: String

        /// 结束时间，格式为："2017-07-12 10:29:20"。
        public let endTime: String

        /// 排序方式。支持值包括："ASC" - 升序，"DESC" - 降序。
        public let order: String?

        /// 排序字段。支持值包括：
        /// "timestamp" - 时间戳；
        /// "affectRows" - 影响行数；
        /// "execTime" - 执行时间。
        public let orderBy: String?

        /// 过滤条件。可按设置的过滤条件过滤日志。
        public let filter: AuditLogFilter?

        /// 分页参数，单次返回的数据条数。默认值为100，最大值为100。
        public let limit: Int64?

        /// 分页偏移量。
        public let offset: Int64?

        public init(instanceId: String, startTime: String, endTime: String, order: String? = nil, orderBy: String? = nil, filter: AuditLogFilter? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.order = order
            self.orderBy = orderBy
            self.filter = filter
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case order = "Order"
            case orderBy = "OrderBy"
            case filter = "Filter"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAuditLogsResponse) -> DescribeAuditLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAuditLogsRequest(instanceId: self.instanceId, startTime: self.startTime, endTime: self.endTime, order: self.order, orderBy: self.orderBy, filter: self.filter, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeAuditLogs返回参数结构体
    public struct DescribeAuditLogsResponse: TCPaginatedResponse {
        /// 符合条件的审计日志条数。
        public let totalCount: Int64

        /// 审计日志详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [AuditLog]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AuditLog] {
            self.items ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询数据库审计日志
    ///
    /// 本接口(DescribeAuditLogs)用于查询数据库审计日志。
    @inlinable
    public func describeAuditLogs(_ input: DescribeAuditLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditLogsResponse> {
        self.client.execute(action: "DescribeAuditLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库审计日志
    ///
    /// 本接口(DescribeAuditLogs)用于查询数据库审计日志。
    @inlinable
    public func describeAuditLogs(_ input: DescribeAuditLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditLogsResponse {
        try await self.client.execute(action: "DescribeAuditLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库审计日志
    ///
    /// 本接口(DescribeAuditLogs)用于查询数据库审计日志。
    @inlinable
    public func describeAuditLogs(instanceId: String, startTime: String, endTime: String, order: String? = nil, orderBy: String? = nil, filter: AuditLogFilter? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAuditLogsResponse> {
        let input = DescribeAuditLogsRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, order: order, orderBy: orderBy, filter: filter, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeAuditLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库审计日志
    ///
    /// 本接口(DescribeAuditLogs)用于查询数据库审计日志。
    @inlinable
    public func describeAuditLogs(instanceId: String, startTime: String, endTime: String, order: String? = nil, orderBy: String? = nil, filter: AuditLogFilter? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAuditLogsResponse {
        let input = DescribeAuditLogsRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, order: order, orderBy: orderBy, filter: filter, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeAuditLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库审计日志
    ///
    /// 本接口(DescribeAuditLogs)用于查询数据库审计日志。
    @inlinable
    public func describeAuditLogsPaginated(_ input: DescribeAuditLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AuditLog])> {
        self.client.paginate(input: input, region: region, command: self.describeAuditLogs, logger: logger, on: eventLoop)
    }

    /// 查询数据库审计日志
    ///
    /// 本接口(DescribeAuditLogs)用于查询数据库审计日志。
    @inlinable @discardableResult
    public func describeAuditLogsPaginated(_ input: DescribeAuditLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAuditLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAuditLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据库审计日志
    ///
    /// 本接口(DescribeAuditLogs)用于查询数据库审计日志。
    @inlinable
    public func describeAuditLogsPaginator(_ input: DescribeAuditLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAuditLogsRequest, DescribeAuditLogsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAuditLogsRequest, DescribeAuditLogsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAuditLogs, logger: logger, on: eventLoop)
    }
}
