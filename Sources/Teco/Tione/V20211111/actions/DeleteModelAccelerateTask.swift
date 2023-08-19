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

extension Tione {
    /// DeleteModelAccelerateTask请求参数结构体
    public struct DeleteModelAccelerateTaskRequest: TCRequest {
        /// 模型加速任务ID
        public let modelAccTaskId: String

        public init(modelAccTaskId: String) {
            self.modelAccTaskId = modelAccTaskId
        }

        enum CodingKeys: String, CodingKey {
            case modelAccTaskId = "ModelAccTaskId"
        }
    }

    /// DeleteModelAccelerateTask返回参数结构体
    public struct DeleteModelAccelerateTaskResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除模型加速任务
    @inlinable @discardableResult
    public func deleteModelAccelerateTask(_ input: DeleteModelAccelerateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteModelAccelerateTaskResponse> {
        self.client.execute(action: "DeleteModelAccelerateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除模型加速任务
    @inlinable @discardableResult
    public func deleteModelAccelerateTask(_ input: DeleteModelAccelerateTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModelAccelerateTaskResponse {
        try await self.client.execute(action: "DeleteModelAccelerateTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除模型加速任务
    @inlinable @discardableResult
    public func deleteModelAccelerateTask(modelAccTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteModelAccelerateTaskResponse> {
        self.deleteModelAccelerateTask(.init(modelAccTaskId: modelAccTaskId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除模型加速任务
    @inlinable @discardableResult
    public func deleteModelAccelerateTask(modelAccTaskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteModelAccelerateTaskResponse {
        try await self.deleteModelAccelerateTask(.init(modelAccTaskId: modelAccTaskId), region: region, logger: logger, on: eventLoop)
    }
}
