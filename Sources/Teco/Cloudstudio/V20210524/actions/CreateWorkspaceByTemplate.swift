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

extension Cloudstudio {
    /// CreateWorkspaceByTemplate请求参数结构体
    public struct CreateWorkspaceByTemplateRequest: TCRequestModel {
        /// 用户所属组
        public let cloudStudioSessionTeam: String

        /// 模板ID
        public let templateId: Int64

        public init(cloudStudioSessionTeam: String, templateId: Int64) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case templateId = "TemplateId"
        }
    }

    /// CreateWorkspaceByTemplate返回参数结构体
    public struct CreateWorkspaceByTemplateResponse: TCResponseModel {
        /// 创建工作空间返回的信息
        public let data: WorkspaceInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 基于模板创建工作空间
    ///
    /// 快速开始, 基于模板创建工作空间
    @inlinable
    public func createWorkspaceByTemplate(_ input: CreateWorkspaceByTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspaceByTemplateResponse> {
        self.client.execute(action: "CreateWorkspaceByTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 基于模板创建工作空间
    ///
    /// 快速开始, 基于模板创建工作空间
    @inlinable
    public func createWorkspaceByTemplate(_ input: CreateWorkspaceByTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceByTemplateResponse {
        try await self.client.execute(action: "CreateWorkspaceByTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 基于模板创建工作空间
    ///
    /// 快速开始, 基于模板创建工作空间
    @inlinable
    public func createWorkspaceByTemplate(cloudStudioSessionTeam: String, templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspaceByTemplateResponse> {
        self.createWorkspaceByTemplate(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 基于模板创建工作空间
    ///
    /// 快速开始, 基于模板创建工作空间
    @inlinable
    public func createWorkspaceByTemplate(cloudStudioSessionTeam: String, templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceByTemplateResponse {
        try await self.createWorkspaceByTemplate(.init(cloudStudioSessionTeam: cloudStudioSessionTeam, templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
