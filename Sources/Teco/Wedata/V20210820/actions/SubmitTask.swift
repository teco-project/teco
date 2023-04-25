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

extension Wedata {
    /// SubmitTask请求参数结构体
    public struct SubmitTaskRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 任务ID
        public let taskId: String

        /// 版本备注
        public let versionRemark: String

        /// 是否启动调度
        public let startScheduling: Bool

        public init(projectId: String, taskId: String, versionRemark: String, startScheduling: Bool) {
            self.projectId = projectId
            self.taskId = taskId
            self.versionRemark = versionRemark
            self.startScheduling = startScheduling
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case versionRemark = "VersionRemark"
            case startScheduling = "StartScheduling"
        }
    }

    /// SubmitTask返回参数结构体
    public struct SubmitTaskResponse: TCResponseModel {
        /// 成功或者失败
        public let data: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 提交任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 提交任务
    @inlinable
    public func submitTask(_ input: SubmitTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitTaskResponse> {
        self.client.execute(action: "SubmitTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 提交任务
    @inlinable
    public func submitTask(_ input: SubmitTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitTaskResponse {
        try await self.client.execute(action: "SubmitTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 提交任务
    @inlinable
    public func submitTask(projectId: String, taskId: String, versionRemark: String, startScheduling: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitTaskResponse> {
        self.submitTask(.init(projectId: projectId, taskId: taskId, versionRemark: versionRemark, startScheduling: startScheduling), region: region, logger: logger, on: eventLoop)
    }

    /// 提交任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 提交任务
    @inlinable
    public func submitTask(projectId: String, taskId: String, versionRemark: String, startScheduling: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitTaskResponse {
        try await self.submitTask(.init(projectId: projectId, taskId: taskId, versionRemark: versionRemark, startScheduling: startScheduling), region: region, logger: logger, on: eventLoop)
    }
}
