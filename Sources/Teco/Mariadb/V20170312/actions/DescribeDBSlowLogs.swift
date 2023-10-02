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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Mariadb {
    /// DescribeDBSlowLogs请求参数结构体
    public struct DescribeDBSlowLogsRequest: TCPaginatedRequest {
        /// 实例 ID，形如：tdsql-ow728lmc。
        public let instanceId: String

        /// 从结果的第几条数据开始返回
        public let offset: UInt64

        /// 返回的结果条数
        public let limit: UInt64

        /// 查询的起始时间，形如2016-07-23 14:55:20
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询的结束时间，形如2016-08-22 14:55:20
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date?

        /// 要查询的具体数据库名称
        public let db: String?

        /// 排序指标，取值为query_time_sum或者query_count
        public let orderBy: String?

        /// 排序类型，desc或者asc
        public let orderByType: String?

        /// 是否查询从机的慢查询，0-主机; 1-从机
        public let slave: Int64?

        public init(instanceId: String, offset: UInt64, limit: UInt64, startTime: Date, endTime: Date? = nil, db: String? = nil, orderBy: String? = nil, orderByType: String? = nil, slave: Int64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.db = db
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.slave = slave
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case db = "Db"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case slave = "Slave"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDBSlowLogsResponse) -> DescribeDBSlowLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(instanceId: self.instanceId, offset: self.offset + .init(response.getItems().count), limit: self.limit, startTime: self.startTime, endTime: self.endTime, db: self.db, orderBy: self.orderBy, orderByType: self.orderByType, slave: self.slave)
        }
    }

    /// DescribeDBSlowLogs返回参数结构体
    public struct DescribeDBSlowLogsResponse: TCPaginatedResponse {
        /// 慢查询日志数据
        public let data: [SlowLogData]

        /// 所有语句锁时间总和
        public let lockTimeSum: Float

        /// 所有语句查询总次数
        public let queryCount: Int64

        /// 总记录数
        public let total: Int64

        /// 所有语句查询时间总和
        public let queryTimeSum: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case lockTimeSum = "LockTimeSum"
            case queryCount = "QueryCount"
            case total = "Total"
            case queryTimeSum = "QueryTimeSum"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SlowLogData`` list from the paginated response.
        public func getItems() -> [SlowLogData] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable
    public func describeDBSlowLogs(_ input: DescribeDBSlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSlowLogsResponse> {
        self.client.execute(action: "DescribeDBSlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable
    public func describeDBSlowLogs(_ input: DescribeDBSlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSlowLogsResponse {
        try await self.client.execute(action: "DescribeDBSlowLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable
    public func describeDBSlowLogs(instanceId: String, offset: UInt64, limit: UInt64, startTime: Date, endTime: Date? = nil, db: String? = nil, orderBy: String? = nil, orderByType: String? = nil, slave: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSlowLogsResponse> {
        self.describeDBSlowLogs(.init(instanceId: instanceId, offset: offset, limit: limit, startTime: startTime, endTime: endTime, db: db, orderBy: orderBy, orderByType: orderByType, slave: slave), region: region, logger: logger, on: eventLoop)
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable
    public func describeDBSlowLogs(instanceId: String, offset: UInt64, limit: UInt64, startTime: Date, endTime: Date? = nil, db: String? = nil, orderBy: String? = nil, orderByType: String? = nil, slave: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSlowLogsResponse {
        try await self.describeDBSlowLogs(.init(instanceId: instanceId, offset: offset, limit: limit, startTime: startTime, endTime: endTime, db: db, orderBy: orderBy, orderByType: orderByType, slave: slave), region: region, logger: logger, on: eventLoop)
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable
    public func describeDBSlowLogsPaginated(_ input: DescribeDBSlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [SlowLogData])> {
        self.client.paginate(input: input, region: region, command: self.describeDBSlowLogs, logger: logger, on: eventLoop)
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable @discardableResult
    public func describeDBSlowLogsPaginated(_ input: DescribeDBSlowLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBSlowLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBSlowLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    ///
    /// - Returns: `AsyncSequence`s of ``SlowLogData`` and ``DescribeDBSlowLogsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDBSlowLogsPaginator(_ input: DescribeDBSlowLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDBSlowLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDBSlowLogs, logger: logger, on: eventLoop)
    }
}
