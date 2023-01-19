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

extension Live {
    /// StopScreenshotTask请求参数结构体
    public struct StopScreenshotTaskRequest: TCRequestModel {
        /// 截图任务ID。
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// StopScreenshotTask返回参数结构体
    public struct StopScreenshotTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 终止截图任务
    ///
    /// 提前结束截图，中止运行中的截图任务。任务被成功终止后，本次任务将不再启动。
    @inlinable
    public func stopScreenshotTask(_ input: StopScreenshotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopScreenshotTaskResponse> {
        self.client.execute(action: "StopScreenshotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 终止截图任务
    ///
    /// 提前结束截图，中止运行中的截图任务。任务被成功终止后，本次任务将不再启动。
    @inlinable
    public func stopScreenshotTask(_ input: StopScreenshotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopScreenshotTaskResponse {
        try await self.client.execute(action: "StopScreenshotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 终止截图任务
    ///
    /// 提前结束截图，中止运行中的截图任务。任务被成功终止后，本次任务将不再启动。
    @inlinable
    public func stopScreenshotTask(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopScreenshotTaskResponse> {
        self.stopScreenshotTask(StopScreenshotTaskRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 终止截图任务
    ///
    /// 提前结束截图，中止运行中的截图任务。任务被成功终止后，本次任务将不再启动。
    @inlinable
    public func stopScreenshotTask(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopScreenshotTaskResponse {
        try await self.stopScreenshotTask(StopScreenshotTaskRequest(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
