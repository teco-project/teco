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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Wedata {
    /// DescribeRealTimeTaskMetricOverview请求参数结构体
    public struct DescribeRealTimeTaskMetricOverviewRequest: TCRequestModel {
        /// 无
        public let taskId: String

        /// 无
        public let projectId: String

        public init(taskId: String, projectId: String) {
            self.taskId = taskId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeRealTimeTaskMetricOverview返回参数结构体
    public struct DescribeRealTimeTaskMetricOverviewResponse: TCResponseModel {
        /// 总读取记录数
        public let totalRecordNumOfRead: UInt64

        /// 总读取字节数
        public let totalRecordByteNumOfRead: UInt64

        /// 总写入记录数
        public let totalRecordNumOfWrite: UInt64

        /// 总写入字节数 单位字节
        public let totalRecordByteNumOfWrite: UInt64

        /// 总的脏记录数据
        public let totalDirtyRecordNum: UInt64

        /// 总的脏字节数 单位字节
        public let totalDirtyRecordByte: UInt64

        /// 运行时长 单位s
        public let totalDuration: UInt64

        /// 开始运行时间
        public let beginRunTime: String

        /// 目前运行到的时间
        public let endRunTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalRecordNumOfRead = "TotalRecordNumOfRead"
            case totalRecordByteNumOfRead = "TotalRecordByteNumOfRead"
            case totalRecordNumOfWrite = "TotalRecordNumOfWrite"
            case totalRecordByteNumOfWrite = "TotalRecordByteNumOfWrite"
            case totalDirtyRecordNum = "TotalDirtyRecordNum"
            case totalDirtyRecordByte = "TotalDirtyRecordByte"
            case totalDuration = "TotalDuration"
            case beginRunTime = "BeginRunTime"
            case endRunTime = "EndRunTime"
            case requestId = "RequestId"
        }
    }

    /// 实时任务运行指标概览
    @inlinable
    public func describeRealTimeTaskMetricOverview(_ input: DescribeRealTimeTaskMetricOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealTimeTaskMetricOverviewResponse> {
        self.client.execute(action: "DescribeRealTimeTaskMetricOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实时任务运行指标概览
    @inlinable
    public func describeRealTimeTaskMetricOverview(_ input: DescribeRealTimeTaskMetricOverviewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealTimeTaskMetricOverviewResponse {
        try await self.client.execute(action: "DescribeRealTimeTaskMetricOverview", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实时任务运行指标概览
    @inlinable
    public func describeRealTimeTaskMetricOverview(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRealTimeTaskMetricOverviewResponse> {
        self.describeRealTimeTaskMetricOverview(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 实时任务运行指标概览
    @inlinable
    public func describeRealTimeTaskMetricOverview(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRealTimeTaskMetricOverviewResponse {
        try await self.describeRealTimeTaskMetricOverview(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
