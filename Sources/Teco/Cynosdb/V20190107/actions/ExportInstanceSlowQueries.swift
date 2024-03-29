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

extension Cynosdb {
    /// ExportInstanceSlowQueries请求参数结构体
    public struct ExportInstanceSlowQueriesRequest: TCRequest {
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

        /// 文件类型，可选值：csv, original
        public let fileType: String?

        /// 排序字段，可选值： QueryTime,LockTime,RowsExamined,RowsSent
        public let orderBy: String?

        /// 排序类型，可选值：asc,desc
        public let orderByType: String?

        public init(instanceId: String, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, username: String? = nil, host: String? = nil, database: String? = nil, fileType: String? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.instanceId = instanceId
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.offset = offset
            self.username = username
            self.host = host
            self.database = database
            self.fileType = fileType
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
            case fileType = "FileType"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }
    }

    /// ExportInstanceSlowQueries返回参数结构体
    public struct ExportInstanceSlowQueriesResponse: TCResponse {
        /// 慢查询导出内容
        public let fileContent: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fileContent = "FileContent"
            case requestId = "RequestId"
        }
    }

    /// 导出实例慢日志
    ///
    /// 此接口（ExportInstanceSlowQueries）用于导出实例慢日志。
    @inlinable
    public func exportInstanceSlowQueries(_ input: ExportInstanceSlowQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportInstanceSlowQueriesResponse> {
        self.client.execute(action: "ExportInstanceSlowQueries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出实例慢日志
    ///
    /// 此接口（ExportInstanceSlowQueries）用于导出实例慢日志。
    @inlinable
    public func exportInstanceSlowQueries(_ input: ExportInstanceSlowQueriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportInstanceSlowQueriesResponse {
        try await self.client.execute(action: "ExportInstanceSlowQueries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出实例慢日志
    ///
    /// 此接口（ExportInstanceSlowQueries）用于导出实例慢日志。
    @inlinable
    public func exportInstanceSlowQueries(instanceId: String, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, username: String? = nil, host: String? = nil, database: String? = nil, fileType: String? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportInstanceSlowQueriesResponse> {
        self.exportInstanceSlowQueries(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, limit: limit, offset: offset, username: username, host: host, database: database, fileType: fileType, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 导出实例慢日志
    ///
    /// 此接口（ExportInstanceSlowQueries）用于导出实例慢日志。
    @inlinable
    public func exportInstanceSlowQueries(instanceId: String, startTime: String? = nil, endTime: String? = nil, limit: Int64? = nil, offset: Int64? = nil, username: String? = nil, host: String? = nil, database: String? = nil, fileType: String? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportInstanceSlowQueriesResponse {
        try await self.exportInstanceSlowQueries(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, limit: limit, offset: offset, username: username, host: host, database: database, fileType: fileType, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }
}
