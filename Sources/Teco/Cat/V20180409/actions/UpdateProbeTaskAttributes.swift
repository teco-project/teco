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

extension Cat {
    /// UpdateProbeTaskAttributes请求参数结构体
    public struct UpdateProbeTaskAttributesRequest: TCRequestModel {
        /// 任务 ID
        public let taskId: String

        /// 任务名
        public let name: String?

        public init(taskId: String, name: String? = nil) {
            self.taskId = taskId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case name = "Name"
        }
    }

    /// UpdateProbeTaskAttributes返回参数结构体
    public struct UpdateProbeTaskAttributesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新探测任务属性
    @inlinable @discardableResult
    public func updateProbeTaskAttributes(_ input: UpdateProbeTaskAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProbeTaskAttributesResponse> {
        self.client.execute(action: "UpdateProbeTaskAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新探测任务属性
    @inlinable @discardableResult
    public func updateProbeTaskAttributes(_ input: UpdateProbeTaskAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProbeTaskAttributesResponse {
        try await self.client.execute(action: "UpdateProbeTaskAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新探测任务属性
    @inlinable @discardableResult
    public func updateProbeTaskAttributes(taskId: String, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProbeTaskAttributesResponse> {
        self.updateProbeTaskAttributes(.init(taskId: taskId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 更新探测任务属性
    @inlinable @discardableResult
    public func updateProbeTaskAttributes(taskId: String, name: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProbeTaskAttributesResponse {
        try await self.updateProbeTaskAttributes(.init(taskId: taskId, name: name), region: region, logger: logger, on: eventLoop)
    }
}
