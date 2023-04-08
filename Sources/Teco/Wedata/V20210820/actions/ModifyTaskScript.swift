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
    /// ModifyTaskScript请求参数结构体
    public struct ModifyTaskScriptRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 任务ID
        public let taskId: String

        /// 脚本内容 base64编码
        public let scriptContent: String?

        /// 集成任务脚本配置
        public let integrationNodeDetails: [IntegrationNodeDetail]?

        public init(projectId: String, taskId: String, scriptContent: String? = nil, integrationNodeDetails: [IntegrationNodeDetail]? = nil) {
            self.projectId = projectId
            self.taskId = taskId
            self.scriptContent = scriptContent
            self.integrationNodeDetails = integrationNodeDetails
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case taskId = "TaskId"
            case scriptContent = "ScriptContent"
            case integrationNodeDetails = "IntegrationNodeDetails"
        }
    }

    /// ModifyTaskScript返回参数结构体
    public struct ModifyTaskScriptResponse: TCResponseModel {
        /// 详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: CommonContent?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 修改任务脚本【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 修改任务脚本
    @inlinable
    public func modifyTaskScript(_ input: ModifyTaskScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskScriptResponse> {
        self.client.execute(action: "ModifyTaskScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改任务脚本【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 修改任务脚本
    @inlinable
    public func modifyTaskScript(_ input: ModifyTaskScriptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskScriptResponse {
        try await self.client.execute(action: "ModifyTaskScript", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改任务脚本【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 修改任务脚本
    @inlinable
    public func modifyTaskScript(projectId: String, taskId: String, scriptContent: String? = nil, integrationNodeDetails: [IntegrationNodeDetail]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskScriptResponse> {
        self.modifyTaskScript(.init(projectId: projectId, taskId: taskId, scriptContent: scriptContent, integrationNodeDetails: integrationNodeDetails), region: region, logger: logger, on: eventLoop)
    }

    /// 修改任务脚本【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 修改任务脚本
    @inlinable
    public func modifyTaskScript(projectId: String, taskId: String, scriptContent: String? = nil, integrationNodeDetails: [IntegrationNodeDetail]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskScriptResponse {
        try await self.modifyTaskScript(.init(projectId: projectId, taskId: taskId, scriptContent: scriptContent, integrationNodeDetails: integrationNodeDetails), region: region, logger: logger, on: eventLoop)
    }
}
