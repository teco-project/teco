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

extension Wedata {
    /// CountOpsInstanceState请求参数结构体
    public struct CountOpsInstanceStateRequest: TCRequestModel {
        /// 任务id
        public let taskId: String

        /// 项目Id
        public let projectId: String

        public init(taskId: String, projectId: String) {
            self.taskId = taskId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case projectId = "ProjectId"
        }
    }

    /// CountOpsInstanceState返回参数结构体
    public struct CountOpsInstanceStateResponse: TCResponseModel {
        /// 任务对应实例的状态统计
        public let data: TaskInstanceCountDto

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 智能运维-统计任务实例状态
    ///
    /// 统计任务实例状态
    @inlinable
    public func countOpsInstanceState(_ input: CountOpsInstanceStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CountOpsInstanceStateResponse> {
        self.client.execute(action: "CountOpsInstanceState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智能运维-统计任务实例状态
    ///
    /// 统计任务实例状态
    @inlinable
    public func countOpsInstanceState(_ input: CountOpsInstanceStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CountOpsInstanceStateResponse {
        try await self.client.execute(action: "CountOpsInstanceState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智能运维-统计任务实例状态
    ///
    /// 统计任务实例状态
    @inlinable
    public func countOpsInstanceState(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CountOpsInstanceStateResponse> {
        self.countOpsInstanceState(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 智能运维-统计任务实例状态
    ///
    /// 统计任务实例状态
    @inlinable
    public func countOpsInstanceState(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CountOpsInstanceStateResponse {
        try await self.countOpsInstanceState(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
