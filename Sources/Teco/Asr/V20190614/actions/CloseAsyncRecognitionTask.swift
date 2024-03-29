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

extension Asr {
    /// CloseAsyncRecognitionTask请求参数结构体
    public struct CloseAsyncRecognitionTaskRequest: TCRequest {
        /// 语音流异步识别任务的唯一标识，在创建任务时会返回
        public let taskId: Int64

        public init(taskId: Int64) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// CloseAsyncRecognitionTask返回参数结构体
    public struct CloseAsyncRecognitionTaskResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 语音流异步识别任务关闭
    ///
    /// 本接口用于关闭语音流异步识别任务。
    @inlinable @discardableResult
    public func closeAsyncRecognitionTask(_ input: CloseAsyncRecognitionTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseAsyncRecognitionTaskResponse> {
        self.client.execute(action: "CloseAsyncRecognitionTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 语音流异步识别任务关闭
    ///
    /// 本接口用于关闭语音流异步识别任务。
    @inlinable @discardableResult
    public func closeAsyncRecognitionTask(_ input: CloseAsyncRecognitionTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseAsyncRecognitionTaskResponse {
        try await self.client.execute(action: "CloseAsyncRecognitionTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 语音流异步识别任务关闭
    ///
    /// 本接口用于关闭语音流异步识别任务。
    @inlinable @discardableResult
    public func closeAsyncRecognitionTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseAsyncRecognitionTaskResponse> {
        self.closeAsyncRecognitionTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 语音流异步识别任务关闭
    ///
    /// 本接口用于关闭语音流异步识别任务。
    @inlinable @discardableResult
    public func closeAsyncRecognitionTask(taskId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseAsyncRecognitionTaskResponse {
        try await self.closeAsyncRecognitionTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
