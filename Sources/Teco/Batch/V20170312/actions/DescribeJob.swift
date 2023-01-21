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

extension Batch {
    /// DescribeJob请求参数结构体
    public struct DescribeJobRequest: TCRequestModel {
        /// 作业标识
        public let jobId: String

        public init(jobId: String) {
            self.jobId = jobId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }

    /// DescribeJob返回参数结构体
    public struct DescribeJobResponse: TCResponseModel {
        /// 作业ID
        public let jobId: String

        /// 作业名称
        public let jobName: String

        /// 可用区信息
        public let zone: String

        /// 作业优先级
        public let priority: Int64

        /// 作业状态
        public let jobState: String

        /// 创建时间
        public let createTime: String

        /// 结束时间
        public let endTime: String

        /// 任务视图信息
        public let taskSet: [TaskView]

        /// 任务间依赖信息
        public let dependenceSet: [Dependence]

        /// 任务统计指标
        public let taskMetrics: TaskMetrics

        /// 任务实例统计指标
        public let taskInstanceMetrics: TaskInstanceMetrics

        /// 作业失败原因
        public let stateReason: String

        /// 作业绑定的标签列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        /// 下一步动作
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nextAction: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobName = "JobName"
            case zone = "Zone"
            case priority = "Priority"
            case jobState = "JobState"
            case createTime = "CreateTime"
            case endTime = "EndTime"
            case taskSet = "TaskSet"
            case dependenceSet = "DependenceSet"
            case taskMetrics = "TaskMetrics"
            case taskInstanceMetrics = "TaskInstanceMetrics"
            case stateReason = "StateReason"
            case tags = "Tags"
            case nextAction = "NextAction"
            case requestId = "RequestId"
        }
    }

    /// 查看作业详情
    ///
    /// 用于查看一个作业的详细信息，包括内部任务（Task）和依赖（Dependence）信息。
    @inlinable
    public func describeJob(_ input: DescribeJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobResponse> {
        self.client.execute(action: "DescribeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看作业详情
    ///
    /// 用于查看一个作业的详细信息，包括内部任务（Task）和依赖（Dependence）信息。
    @inlinable
    public func describeJob(_ input: DescribeJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobResponse {
        try await self.client.execute(action: "DescribeJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看作业详情
    ///
    /// 用于查看一个作业的详细信息，包括内部任务（Task）和依赖（Dependence）信息。
    @inlinable
    public func describeJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeJobResponse> {
        self.describeJob(DescribeJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看作业详情
    ///
    /// 用于查看一个作业的详细信息，包括内部任务（Task）和依赖（Dependence）信息。
    @inlinable
    public func describeJob(jobId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeJobResponse {
        try await self.describeJob(DescribeJobRequest(jobId: jobId), region: region, logger: logger, on: eventLoop)
    }
}
