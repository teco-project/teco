//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Mariadb {
    /// DescribeDBSlowLogs请求参数结构体
    public struct DescribeDBSlowLogsRequest: TCRequestModel {
        /// 实例 ID，形如：tdsql-ow728lmc。
        public let instanceId: String

        /// 从结果的第几条数据开始返回
        public let offset: UInt64

        /// 返回的结果条数
        public let limit: UInt64

        /// 查询的起始时间，形如2016-07-23 14:55:20
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var startTime: Date

        /// 查询的结束时间，形如2016-08-22 14:55:20
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
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
            self.startTime = startTime
            self.endTime = endTime
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
    }

    /// DescribeDBSlowLogs返回参数结构体
    public struct DescribeDBSlowLogsResponse: TCResponseModel {
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
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable
    public func describeDBSlowLogs(_ input: DescribeDBSlowLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBSlowLogsResponse > {
        self.client.execute(action: "DescribeDBSlowLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable
    public func describeDBSlowLogs(_ input: DescribeDBSlowLogsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSlowLogsResponse {
        try await self.client.execute(action: "DescribeDBSlowLogs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable
    public func describeDBSlowLogs(instanceId: String, offset: UInt64, limit: UInt64, startTime: Date, endTime: Date? = nil, db: String? = nil, orderBy: String? = nil, orderByType: String? = nil, slave: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDBSlowLogsResponse > {
        self.describeDBSlowLogs(DescribeDBSlowLogsRequest(instanceId: instanceId, offset: offset, limit: limit, startTime: startTime, endTime: endTime, db: db, orderBy: orderBy, orderByType: orderByType, slave: slave), logger: logger, on: eventLoop)
    }

    /// 查询慢查询日志列表
    ///
    /// 本接口(DescribeDBSlowLogs)用于查询慢查询日志列表。
    @inlinable
    public func describeDBSlowLogs(instanceId: String, offset: UInt64, limit: UInt64, startTime: Date, endTime: Date? = nil, db: String? = nil, orderBy: String? = nil, orderByType: String? = nil, slave: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSlowLogsResponse {
        try await self.describeDBSlowLogs(DescribeDBSlowLogsRequest(instanceId: instanceId, offset: offset, limit: limit, startTime: startTime, endTime: endTime, db: db, orderBy: orderBy, orderByType: orderByType, slave: slave), logger: logger, on: eventLoop)
    }
}
