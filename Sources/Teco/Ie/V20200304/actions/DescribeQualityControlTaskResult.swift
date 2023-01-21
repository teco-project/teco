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

extension Ie {
    /// DescribeQualityControlTaskResult请求参数结构体
    public struct DescribeQualityControlTaskResultRequest: TCRequestModel {
        /// 质检任务 ID
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeQualityControlTaskResult返回参数结构体
    public struct DescribeQualityControlTaskResultResponse: TCResponseModel {
        /// 质检任务结果信息
        public let taskResult: QualityControlInfoTaskResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskResult = "TaskResult"
            case requestId = "RequestId"
        }
    }

    /// 获取媒体质检任务结果
    @inlinable
    public func describeQualityControlTaskResult(_ input: DescribeQualityControlTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQualityControlTaskResultResponse> {
        self.client.execute(action: "DescribeQualityControlTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取媒体质检任务结果
    @inlinable
    public func describeQualityControlTaskResult(_ input: DescribeQualityControlTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQualityControlTaskResultResponse {
        try await self.client.execute(action: "DescribeQualityControlTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取媒体质检任务结果
    @inlinable
    public func describeQualityControlTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeQualityControlTaskResultResponse> {
        self.describeQualityControlTaskResult(DescribeQualityControlTaskResultRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取媒体质检任务结果
    @inlinable
    public func describeQualityControlTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeQualityControlTaskResultResponse {
        try await self.describeQualityControlTaskResult(DescribeQualityControlTaskResultRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
