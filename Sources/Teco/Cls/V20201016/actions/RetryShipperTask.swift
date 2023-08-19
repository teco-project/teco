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
    /// RetryShipperTask请求参数结构体
    public struct RetryShipperTaskRequest: TCRequest {
        /// 投递规则ID
        public let shipperId: String

        /// 投递任务ID
        public let taskId: String

        public init(shipperId: String, taskId: String) {
            self.shipperId = shipperId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case shipperId = "ShipperId"
            case taskId = "TaskId"
        }
    }

    /// RetryShipperTask返回参数结构体
    public struct RetryShipperTaskResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重试失败的投递任务
    @inlinable @discardableResult
    public func retryShipperTask(_ input: RetryShipperTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryShipperTaskResponse> {
        self.client.execute(action: "RetryShipperTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重试失败的投递任务
    @inlinable @discardableResult
    public func retryShipperTask(_ input: RetryShipperTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetryShipperTaskResponse {
        try await self.client.execute(action: "RetryShipperTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重试失败的投递任务
    @inlinable @discardableResult
    public func retryShipperTask(shipperId: String, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RetryShipperTaskResponse> {
        self.retryShipperTask(.init(shipperId: shipperId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 重试失败的投递任务
    @inlinable @discardableResult
    public func retryShipperTask(shipperId: String, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RetryShipperTaskResponse {
        try await self.retryShipperTask(.init(shipperId: shipperId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
