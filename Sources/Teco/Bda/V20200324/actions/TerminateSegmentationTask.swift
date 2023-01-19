//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Bda {
    /// TerminateSegmentationTask请求参数结构体
    public struct TerminateSegmentationTaskRequest: TCRequestModel {
        /// 在提交分割任务成功时返回的任务标识ID。
        public let taskID: String

        public init(taskID: String) {
            self.taskID = taskID
        }

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
        }
    }

    /// TerminateSegmentationTask返回参数结构体
    public struct TerminateSegmentationTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 终止视频人像分割处理任务
    ///
    /// 终止指定视频人像分割处理任务
    @inlinable
    public func terminateSegmentationTask(_ input: TerminateSegmentationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateSegmentationTaskResponse> {
        self.client.execute(action: "TerminateSegmentationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终止视频人像分割处理任务
    ///
    /// 终止指定视频人像分割处理任务
    @inlinable
    public func terminateSegmentationTask(_ input: TerminateSegmentationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateSegmentationTaskResponse {
        try await self.client.execute(action: "TerminateSegmentationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终止视频人像分割处理任务
    ///
    /// 终止指定视频人像分割处理任务
    @inlinable
    public func terminateSegmentationTask(taskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateSegmentationTaskResponse> {
        self.terminateSegmentationTask(TerminateSegmentationTaskRequest(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }

    /// 终止视频人像分割处理任务
    ///
    /// 终止指定视频人像分割处理任务
    @inlinable
    public func terminateSegmentationTask(taskID: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateSegmentationTaskResponse {
        try await self.terminateSegmentationTask(TerminateSegmentationTaskRequest(taskID: taskID), region: region, logger: logger, on: eventLoop)
    }
}
