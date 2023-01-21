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

extension Tione {
    /// DescribeTrainingMetrics请求参数结构体
    public struct DescribeTrainingMetricsRequest: TCRequestModel {
        /// 任务ID
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeTrainingMetrics返回参数结构体
    public struct DescribeTrainingMetricsResponse: TCResponseModel {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 训练指标数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [CustomTrainingData]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询训练自定义指标
    @inlinable
    public func describeTrainingMetrics(_ input: DescribeTrainingMetricsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingMetricsResponse> {
        self.client.execute(action: "DescribeTrainingMetrics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询训练自定义指标
    @inlinable
    public func describeTrainingMetrics(_ input: DescribeTrainingMetricsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingMetricsResponse {
        try await self.client.execute(action: "DescribeTrainingMetrics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询训练自定义指标
    @inlinable
    public func describeTrainingMetrics(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingMetricsResponse> {
        self.describeTrainingMetrics(DescribeTrainingMetricsRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询训练自定义指标
    @inlinable
    public func describeTrainingMetrics(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingMetricsResponse {
        try await self.describeTrainingMetrics(DescribeTrainingMetricsRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
