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
    /// DescribeModelAccelerateTask请求参数结构体
    public struct DescribeModelAccelerateTaskRequest: TCRequestModel {
        /// 模型加速任务ID
        public let modelAccTaskId: String

        public init(modelAccTaskId: String) {
            self.modelAccTaskId = modelAccTaskId
        }

        enum CodingKeys: String, CodingKey {
            case modelAccTaskId = "ModelAccTaskId"
        }
    }

    /// DescribeModelAccelerateTask返回参数结构体
    public struct DescribeModelAccelerateTaskResponse: TCResponseModel {
        /// 模型加速任务详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelAccelerateTask: ModelAccelerateTask?

        /// 模型加速时长，单位s
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelAccRuntimeInSecond: UInt64?

        /// 模型加速任务开始时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelAccStartTime: String?

        /// 模型加速任务结束时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let modelAccEndTime: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case modelAccelerateTask = "ModelAccelerateTask"
            case modelAccRuntimeInSecond = "ModelAccRuntimeInSecond"
            case modelAccStartTime = "ModelAccStartTime"
            case modelAccEndTime = "ModelAccEndTime"
            case requestId = "RequestId"
        }
    }

    /// 查询模型优化任务详情
    @inlinable
    public func describeModelAccelerateTask(_ input: DescribeModelAccelerateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelAccelerateTaskResponse> {
        self.client.execute(action: "DescribeModelAccelerateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询模型优化任务详情
    @inlinable
    public func describeModelAccelerateTask(_ input: DescribeModelAccelerateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelAccelerateTaskResponse {
        try await self.client.execute(action: "DescribeModelAccelerateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询模型优化任务详情
    @inlinable
    public func describeModelAccelerateTask(modelAccTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelAccelerateTaskResponse> {
        self.describeModelAccelerateTask(.init(modelAccTaskId: modelAccTaskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询模型优化任务详情
    @inlinable
    public func describeModelAccelerateTask(modelAccTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelAccelerateTaskResponse {
        try await self.describeModelAccelerateTask(.init(modelAccTaskId: modelAccTaskId), region: region, logger: logger, on: eventLoop)
    }
}
