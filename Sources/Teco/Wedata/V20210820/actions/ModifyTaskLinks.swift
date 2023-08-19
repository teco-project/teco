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
    /// ModifyTaskLinks请求参数结构体
    public struct ModifyTaskLinksRequest: TCRequest {
        /// 项目Id
        public let projectId: String

        /// 父任务ID
        public let taskFrom: String

        /// 子任务ID
        public let taskTo: String

        /// 子任务工作流
        public let workflowId: String

        /// 父任务工作流
        public let realFromWorkflowId: String

        /// 父子任务之间的依赖关系
        public let linkDependencyType: String?

        public init(projectId: String, taskFrom: String, taskTo: String, workflowId: String, realFromWorkflowId: String, linkDependencyType: String? = nil) {
            self.projectId = projectId
            self.taskFrom = taskFrom
            self.taskTo = taskTo
            self.workflowId = workflowId
            self.realFromWorkflowId = realFromWorkflowId
            self.linkDependencyType = linkDependencyType
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskFrom = "TaskFrom"
            case taskTo = "TaskTo"
            case workflowId = "WorkflowId"
            case realFromWorkflowId = "RealFromWorkflowId"
            case linkDependencyType = "LinkDependencyType"
        }
    }

    /// ModifyTaskLinks返回参数结构体
    public struct ModifyTaskLinksResponse: TCResponse {
        /// 成功或者失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 添加父任务依赖【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 添加父任务依赖
    @inlinable
    public func modifyTaskLinks(_ input: ModifyTaskLinksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskLinksResponse> {
        self.client.execute(action: "ModifyTaskLinks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加父任务依赖【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 添加父任务依赖
    @inlinable
    public func modifyTaskLinks(_ input: ModifyTaskLinksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskLinksResponse {
        try await self.client.execute(action: "ModifyTaskLinks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加父任务依赖【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 添加父任务依赖
    @inlinable
    public func modifyTaskLinks(projectId: String, taskFrom: String, taskTo: String, workflowId: String, realFromWorkflowId: String, linkDependencyType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskLinksResponse> {
        self.modifyTaskLinks(.init(projectId: projectId, taskFrom: taskFrom, taskTo: taskTo, workflowId: workflowId, realFromWorkflowId: realFromWorkflowId, linkDependencyType: linkDependencyType), region: region, logger: logger, on: eventLoop)
    }

    /// 添加父任务依赖【Beta版本】
    ///
    /// _[注意：该Beta版本只满足广州区部分白名单客户使用]_
    ///
    /// 添加父任务依赖
    @inlinable
    public func modifyTaskLinks(projectId: String, taskFrom: String, taskTo: String, workflowId: String, realFromWorkflowId: String, linkDependencyType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskLinksResponse {
        try await self.modifyTaskLinks(.init(projectId: projectId, taskFrom: taskFrom, taskTo: taskTo, workflowId: workflowId, realFromWorkflowId: realFromWorkflowId, linkDependencyType: linkDependencyType), region: region, logger: logger, on: eventLoop)
    }
}
