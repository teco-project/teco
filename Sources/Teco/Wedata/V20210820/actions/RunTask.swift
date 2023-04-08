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
    /// RunTask请求参数结构体
    public struct RunTaskRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 任务ID
        public let taskId: String

        public init(projectId: String, taskId: String) {
            self.projectId = projectId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
        }
    }

    /// RunTask返回参数结构体
    public struct RunTaskResponse: TCResponseModel {
        /// 运行成功或者失败
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 运行任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 运行任务
    @inlinable
    public func runTask(_ input: RunTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunTaskResponse> {
        self.client.execute(action: "RunTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 运行任务
    @inlinable
    public func runTask(_ input: RunTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunTaskResponse {
        try await self.client.execute(action: "RunTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 运行任务
    @inlinable
    public func runTask(projectId: String, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RunTaskResponse> {
        self.runTask(.init(projectId: projectId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 运行任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 运行任务
    @inlinable
    public func runTask(projectId: String, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunTaskResponse {
        try await self.runTask(.init(projectId: projectId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
