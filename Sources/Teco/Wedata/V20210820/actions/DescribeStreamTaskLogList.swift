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

extension Wedata {
    /// DescribeStreamTaskLogList请求参数结构体
    public struct DescribeStreamTaskLogListRequest: TCRequest {
        /// 项目ID
        public let projectId: String

        /// 任务ID
        public let taskId: String

        /// 作业ID
        public let jobId: String

        /// 结束时间
        public let endTime: UInt64

        /// 开始时间
        public let startTime: UInt64

        /// container名字
        public let container: String?

        /// 条数
        public let limit: UInt64?

        /// 排序类型 desc asc
        public let orderType: String?

        /// 作业运行的实例ID
        public let runningOrderId: UInt64?

        public init(projectId: String, taskId: String, jobId: String, endTime: UInt64, startTime: UInt64, container: String? = nil, limit: UInt64? = nil, orderType: String? = nil, runningOrderId: UInt64? = nil) {
            self.projectId = projectId
            self.taskId = taskId
            self.jobId = jobId
            self.endTime = endTime
            self.startTime = startTime
            self.container = container
            self.limit = limit
            self.orderType = orderType
            self.runningOrderId = runningOrderId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case jobId = "JobId"
            case endTime = "EndTime"
            case startTime = "StartTime"
            case container = "Container"
            case limit = "Limit"
            case orderType = "OrderType"
            case runningOrderId = "RunningOrderId"
        }
    }

    /// DescribeStreamTaskLogList返回参数结构体
    public struct DescribeStreamTaskLogListResponse: TCResponse {
        /// 是否是全量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let listOver: Bool?

        /// 日志集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logContentList: [LogContentInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listOver = "ListOver"
            case logContentList = "LogContentList"
            case requestId = "RequestId"
        }
    }

    /// 查询实时任务日志列表
    @inlinable
    public func describeStreamTaskLogList(_ input: DescribeStreamTaskLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamTaskLogListResponse> {
        self.client.execute(action: "DescribeStreamTaskLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实时任务日志列表
    @inlinable
    public func describeStreamTaskLogList(_ input: DescribeStreamTaskLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamTaskLogListResponse {
        try await self.client.execute(action: "DescribeStreamTaskLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实时任务日志列表
    @inlinable
    public func describeStreamTaskLogList(projectId: String, taskId: String, jobId: String, endTime: UInt64, startTime: UInt64, container: String? = nil, limit: UInt64? = nil, orderType: String? = nil, runningOrderId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStreamTaskLogListResponse> {
        self.describeStreamTaskLogList(.init(projectId: projectId, taskId: taskId, jobId: jobId, endTime: endTime, startTime: startTime, container: container, limit: limit, orderType: orderType, runningOrderId: runningOrderId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实时任务日志列表
    @inlinable
    public func describeStreamTaskLogList(projectId: String, taskId: String, jobId: String, endTime: UInt64, startTime: UInt64, container: String? = nil, limit: UInt64? = nil, orderType: String? = nil, runningOrderId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStreamTaskLogListResponse {
        try await self.describeStreamTaskLogList(.init(projectId: projectId, taskId: taskId, jobId: jobId, endTime: endTime, startTime: startTime, container: container, limit: limit, orderType: orderType, runningOrderId: runningOrderId), region: region, logger: logger, on: eventLoop)
    }
}
