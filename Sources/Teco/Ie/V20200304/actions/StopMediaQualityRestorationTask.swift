//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// StopMediaQualityRestorationTask请求参数结构体
    public struct StopMediaQualityRestorationTaskRequest: TCRequestModel {
        /// 要删除的画质重生任务ID。
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// StopMediaQualityRestorationTask返回参数结构体
    public struct StopMediaQualityRestorationTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除画质重生任务
    ///
    /// 删除正在进行的画质重生任务
    @inlinable
    public func stopMediaQualityRestorationTask(_ input: StopMediaQualityRestorationTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopMediaQualityRestorationTaskResponse > {
        self.client.execute(action: "StopMediaQualityRestorationTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除画质重生任务
    ///
    /// 删除正在进行的画质重生任务
    @inlinable
    public func stopMediaQualityRestorationTask(_ input: StopMediaQualityRestorationTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMediaQualityRestorationTaskResponse {
        try await self.client.execute(action: "StopMediaQualityRestorationTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除画质重生任务
    ///
    /// 删除正在进行的画质重生任务
    @inlinable
    public func stopMediaQualityRestorationTask(taskId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StopMediaQualityRestorationTaskResponse > {
        self.stopMediaQualityRestorationTask(StopMediaQualityRestorationTaskRequest(taskId: taskId), logger: logger, on: eventLoop)
    }

    /// 删除画质重生任务
    ///
    /// 删除正在进行的画质重生任务
    @inlinable
    public func stopMediaQualityRestorationTask(taskId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopMediaQualityRestorationTaskResponse {
        try await self.stopMediaQualityRestorationTask(StopMediaQualityRestorationTaskRequest(taskId: taskId), logger: logger, on: eventLoop)
    }
}
