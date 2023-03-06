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
    /// DescribeInstanceSlowQueries请求参数结构体
    public struct DescribeInstanceSlowQueriesRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 事务开始最早时间
        public let startTime: String?

        /// 事务开始最晚时间
        public let endTime: String?

        /// 限制条数
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        /// 用户名
        public let username: String?

        /// 客户端host
        public let host: String?

        /// 数据库名
        public let database: String?

        /// 排序字段，可选值：QueryTime,LockTime,RowsExamined,RowsSent
        public let orderBy: String?

        /// 排序类型，可选值：asc,desc
        public let orderByType: String?

        public init(instanceId: String, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, username: String? = nil, host: String? = nil, database: String? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
            self.username = username
            self.host = host
            self.database = database
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case offset = "Offset"
            case username = "Username"
            case host = "Host"
            case database = "Database"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInstanceSlowQueriesResponse) -> DescribeInstanceSlowQueriesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstanceSlowQueriesRequest(instanceId: self.instanceId, startTime: self.startTime, endTime: self.endTime, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), username: self.username, host: self.host, database: self.database, orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeInstanceSlowQueries返回参数结构体
    public struct DescribeInstanceSlowQueriesResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: Int64

        /// 慢查询记录
        public let slowQueries: [SlowQueriesItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case slowQueries = "SlowQueries"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SlowQueriesItem] {
            self.slowQueries
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例慢查询日志
    ///
    /// 此接口（DescribeInstanceSlowQueries）用于查询实例慢查询日志。
    @inlinable
    public func describeInstanceSlowQueries(_ input: DescribeInstanceSlowQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceSlowQueriesResponse> {
        self.client.execute(action: "DescribeInstanceSlowQueries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询日志
    ///
    /// 此接口（DescribeInstanceSlowQueries）用于查询实例慢查询日志。
    @inlinable
    public func describeInstanceSlowQueries(_ input: DescribeInstanceSlowQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceSlowQueriesResponse {
        try await self.client.execute(action: "DescribeInstanceSlowQueries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例慢查询日志
    ///
    /// 此接口（DescribeInstanceSlowQueries）用于查询实例慢查询日志。
    @inlinable
    public func describeInstanceSlowQueries(instanceId: String, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, username: String? = nil, host: String? = nil, database: String? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceSlowQueriesResponse> {
        let input = DescribeInstanceSlowQueriesRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, limit: limit, offset: offset, username: username, host: host, database: database, orderBy: orderBy, orderByType: orderByType)
        return self.client.execute(action: "DescribeInstanceSlowQueries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询日志
    ///
    /// 此接口（DescribeInstanceSlowQueries）用于查询实例慢查询日志。
    @inlinable
    public func describeInstanceSlowQueries(instanceId: String, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, username: String? = nil, host: String? = nil, database: String? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceSlowQueriesResponse {
        let input = DescribeInstanceSlowQueriesRequest(instanceId: instanceId, startTime: startTime, endTime: endTime, limit: limit, offset: offset, username: username, host: host, database: database, orderBy: orderBy, orderByType: orderByType)
        return try await self.client.execute(action: "DescribeInstanceSlowQueries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例慢查询日志
    ///
    /// 此接口（DescribeInstanceSlowQueries）用于查询实例慢查询日志。
    @inlinable
    public func describeInstanceSlowQueriesPaginated(_ input: DescribeInstanceSlowQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SlowQueriesItem])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceSlowQueries, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询日志
    ///
    /// 此接口（DescribeInstanceSlowQueries）用于查询实例慢查询日志。
    @inlinable @discardableResult
    public func describeInstanceSlowQueriesPaginated(_ input: DescribeInstanceSlowQueriesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceSlowQueriesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceSlowQueries, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例慢查询日志
    ///
    /// 此接口（DescribeInstanceSlowQueries）用于查询实例慢查询日志。
    @inlinable
    public func describeInstanceSlowQueriesPaginator(_ input: DescribeInstanceSlowQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceSlowQueriesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceSlowQueries, logger: logger, on: eventLoop)
    }
}
