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
    /// DescribeDependOpsTaskList请求参数结构体
    public struct DescribeDependOpsTaskListRequest: TCRequest {
        /// 任务id
        public let taskId: String

        /// 项目id
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

    /// DescribeDependOpsTaskList返回参数结构体
    public struct DescribeDependOpsTaskListResponse: TCResponse {
        /// 任务列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [TaskOpsDto]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取下游依赖任务列表
    ///
    /// 根据任务id获取下游依赖任务列表
    @inlinable
    public func describeDependOpsTaskList(_ input: DescribeDependOpsTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDependOpsTaskListResponse> {
        self.client.execute(action: "DescribeDependOpsTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取下游依赖任务列表
    ///
    /// 根据任务id获取下游依赖任务列表
    @inlinable
    public func describeDependOpsTaskList(_ input: DescribeDependOpsTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDependOpsTaskListResponse {
        try await self.client.execute(action: "DescribeDependOpsTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取下游依赖任务列表
    ///
    /// 根据任务id获取下游依赖任务列表
    @inlinable
    public func describeDependOpsTaskList(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDependOpsTaskListResponse> {
        self.describeDependOpsTaskList(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取下游依赖任务列表
    ///
    /// 根据任务id获取下游依赖任务列表
    @inlinable
    public func describeDependOpsTaskList(taskId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDependOpsTaskListResponse {
        try await self.describeDependOpsTaskList(.init(taskId: taskId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
