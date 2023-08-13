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

extension Vm {
    /// CancelTask请求参数结构体
    public struct CancelTaskRequest: TCRequestModel {
        /// 该字段表示创建视频审核任务后返回的任务ID（在Results参数中），用于标识需要取消的审核任务。
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// CancelTask返回参数结构体
    public struct CancelTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消任务
    ///
    /// 可使用该接口取消审核任务，成功取消后，该接口返回已取消任务的TaskId。
    ///
    /// 默认接口请求频率限制：**20次/秒**。
    @inlinable @discardableResult
    public func cancelTask(_ input: CancelTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelTaskResponse> {
        self.client.execute(action: "CancelTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消任务
    ///
    /// 可使用该接口取消审核任务，成功取消后，该接口返回已取消任务的TaskId。
    ///
    /// 默认接口请求频率限制：**20次/秒**。
    @inlinable @discardableResult
    public func cancelTask(_ input: CancelTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelTaskResponse {
        try await self.client.execute(action: "CancelTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消任务
    ///
    /// 可使用该接口取消审核任务，成功取消后，该接口返回已取消任务的TaskId。
    ///
    /// 默认接口请求频率限制：**20次/秒**。
    @inlinable @discardableResult
    public func cancelTask(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelTaskResponse> {
        self.cancelTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消任务
    ///
    /// 可使用该接口取消审核任务，成功取消后，该接口返回已取消任务的TaskId。
    ///
    /// 默认接口请求频率限制：**20次/秒**。
    @inlinable @discardableResult
    public func cancelTask(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelTaskResponse {
        try await self.cancelTask(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
