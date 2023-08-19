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

extension As {
    /// DeleteScheduledAction请求参数结构体
    public struct DeleteScheduledActionRequest: TCRequest {
        /// 待删除的定时任务ID。
        public let scheduledActionId: String

        public init(scheduledActionId: String) {
            self.scheduledActionId = scheduledActionId
        }

        enum CodingKeys: String, CodingKey {
            case scheduledActionId = "ScheduledActionId"
        }
    }

    /// DeleteScheduledAction返回参数结构体
    public struct DeleteScheduledActionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除定时任务
    ///
    /// 本接口（DeleteScheduledAction）用于删除特定的定时任务。
    @inlinable @discardableResult
    public func deleteScheduledAction(_ input: DeleteScheduledActionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScheduledActionResponse> {
        self.client.execute(action: "DeleteScheduledAction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除定时任务
    ///
    /// 本接口（DeleteScheduledAction）用于删除特定的定时任务。
    @inlinable @discardableResult
    public func deleteScheduledAction(_ input: DeleteScheduledActionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScheduledActionResponse {
        try await self.client.execute(action: "DeleteScheduledAction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除定时任务
    ///
    /// 本接口（DeleteScheduledAction）用于删除特定的定时任务。
    @inlinable @discardableResult
    public func deleteScheduledAction(scheduledActionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteScheduledActionResponse> {
        self.deleteScheduledAction(.init(scheduledActionId: scheduledActionId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除定时任务
    ///
    /// 本接口（DeleteScheduledAction）用于删除特定的定时任务。
    @inlinable @discardableResult
    public func deleteScheduledAction(scheduledActionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteScheduledActionResponse {
        try await self.deleteScheduledAction(.init(scheduledActionId: scheduledActionId), region: region, logger: logger, on: eventLoop)
    }
}
