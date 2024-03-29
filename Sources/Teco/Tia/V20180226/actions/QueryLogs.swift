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

extension Tia {
    /// QueryLogs请求参数结构体
    public struct QueryLogsRequest: TCRequest {
        /// 任务的名称
        public let jobName: String

        /// 任务所在集群的名称
        public let cluster: String

        /// 查询日志的开始时间，格式：2019-01-01 00:00:00
        public let startTime: String

        /// 查询日志的结束时间，格式：2019-01-01 00:00:00
        public let endTime: String

        /// 单次要返回的日志条数上限
        public let limit: UInt64

        /// 加载更多日志时使用，透传上次返回的 Context 值，获取后续的日志内容；使用 Context 翻页最多能获取 10000 条日志
        public let context: String?

        public init(jobName: String, cluster: String, startTime: String, endTime: String, limit: UInt64, context: String? = nil) {
            self.jobName = jobName
            self.cluster = cluster
            self.startTime = startTime
            self.endTime = endTime
            self.limit = limit
            self.context = context
        }

        enum CodingKeys: String, CodingKey {
            case jobName = "JobName"
            case cluster = "Cluster"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case limit = "Limit"
            case context = "Context"
        }
    }

    /// QueryLogs返回参数结构体
    public struct QueryLogsResponse: TCResponse {
        /// 日志查询上下文，用于加载更多日志
        public let context: String

        /// 日志内容列表
        public let logs: [Log]

        /// 是否已经返回所有符合条件的日志
        public let listover: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case logs = "Logs"
            case listover = "Listover"
            case requestId = "RequestId"
        }
    }

    /// 查询日志
    ///
    /// 查询 TI-A 训练任务的日志
    @inlinable
    public func queryLogs(_ input: QueryLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryLogsResponse> {
        self.client.execute(action: "QueryLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询日志
    ///
    /// 查询 TI-A 训练任务的日志
    @inlinable
    public func queryLogs(_ input: QueryLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryLogsResponse {
        try await self.client.execute(action: "QueryLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询日志
    ///
    /// 查询 TI-A 训练任务的日志
    @inlinable
    public func queryLogs(jobName: String, cluster: String, startTime: String, endTime: String, limit: UInt64, context: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryLogsResponse> {
        self.queryLogs(.init(jobName: jobName, cluster: cluster, startTime: startTime, endTime: endTime, limit: limit, context: context), region: region, logger: logger, on: eventLoop)
    }

    /// 查询日志
    ///
    /// 查询 TI-A 训练任务的日志
    @inlinable
    public func queryLogs(jobName: String, cluster: String, startTime: String, endTime: String, limit: UInt64, context: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryLogsResponse {
        try await self.queryLogs(.init(jobName: jobName, cluster: cluster, startTime: startTime, endTime: endTime, limit: limit, context: context), region: region, logger: logger, on: eventLoop)
    }
}
