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

extension Tione {
    /// DescribeTrainingTask请求参数结构体
    public struct DescribeTrainingTaskRequest: TCRequestModel {
        /// 训练任务ID
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeTrainingTask返回参数结构体
    public struct DescribeTrainingTaskResponse: TCResponseModel {
        /// 训练任务详情
        public let trainingTaskDetail: TrainingTaskDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trainingTaskDetail = "TrainingTaskDetail"
            case requestId = "RequestId"
        }
    }

    /// 训练任务详情
    @inlinable
    public func describeTrainingTask(_ input: DescribeTrainingTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingTaskResponse> {
        self.client.execute(action: "DescribeTrainingTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 训练任务详情
    @inlinable
    public func describeTrainingTask(_ input: DescribeTrainingTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingTaskResponse {
        try await self.client.execute(action: "DescribeTrainingTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 训练任务详情
    @inlinable
    public func describeTrainingTask(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrainingTaskResponse> {
        self.describeTrainingTask(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 训练任务详情
    @inlinable
    public func describeTrainingTask(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrainingTaskResponse {
        try await self.describeTrainingTask(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
