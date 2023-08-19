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

extension Cls {
    /// DeleteDataTransform请求参数结构体
    public struct DeleteDataTransformRequest: TCRequest {
        /// 数据加工任务id
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DeleteDataTransform返回参数结构体
    public struct DeleteDataTransformResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除数据加工任务
    ///
    /// 本接口用于删除数据加工任务
    @inlinable @discardableResult
    public func deleteDataTransform(_ input: DeleteDataTransformRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataTransformResponse> {
        self.client.execute(action: "DeleteDataTransform", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除数据加工任务
    ///
    /// 本接口用于删除数据加工任务
    @inlinable @discardableResult
    public func deleteDataTransform(_ input: DeleteDataTransformRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDataTransformResponse {
        try await self.client.execute(action: "DeleteDataTransform", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除数据加工任务
    ///
    /// 本接口用于删除数据加工任务
    @inlinable @discardableResult
    public func deleteDataTransform(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteDataTransformResponse> {
        self.deleteDataTransform(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除数据加工任务
    ///
    /// 本接口用于删除数据加工任务
    @inlinable @discardableResult
    public func deleteDataTransform(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteDataTransformResponse {
        try await self.deleteDataTransform(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
