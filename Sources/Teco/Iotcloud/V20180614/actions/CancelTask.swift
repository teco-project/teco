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

extension Iotcloud {
    /// CancelTask请求参数结构体
    public struct CancelTaskRequest: TCRequestModel {
        /// 任务 ID
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
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
    /// 本接口（CancelTask）用于取消一个未被调度的任务。
    @inlinable @discardableResult
    public func cancelTask(_ input: CancelTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelTaskResponse> {
        self.client.execute(action: "CancelTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消任务
    ///
    /// 本接口（CancelTask）用于取消一个未被调度的任务。
    @inlinable @discardableResult
    public func cancelTask(_ input: CancelTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelTaskResponse {
        try await self.client.execute(action: "CancelTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消任务
    ///
    /// 本接口（CancelTask）用于取消一个未被调度的任务。
    @inlinable @discardableResult
    public func cancelTask(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelTaskResponse> {
        self.cancelTask(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 取消任务
    ///
    /// 本接口（CancelTask）用于取消一个未被调度的任务。
    @inlinable @discardableResult
    public func cancelTask(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelTaskResponse {
        try await self.cancelTask(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
