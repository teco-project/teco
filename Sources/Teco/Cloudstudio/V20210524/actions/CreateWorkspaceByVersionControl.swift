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

extension Cloudstudio {
    /// CreateWorkspaceByVersionControl请求参数结构体
    public struct CreateWorkspaceByVersionControlRequest: TCRequestModel {
        /// 工作空间结构
        public let workspaceDTO: WorkspaceDTO

        /// 用户所属组
        public let cloudStudioSessionTeam: String

        public init(workspaceDTO: WorkspaceDTO, cloudStudioSessionTeam: String) {
            self.workspaceDTO = workspaceDTO
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
        }

        enum CodingKeys: String, CodingKey {
            case workspaceDTO = "WorkspaceDTO"
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
        }
    }

    /// CreateWorkspaceByVersionControl返回参数结构体
    public struct CreateWorkspaceByVersionControlResponse: TCResponseModel {
        /// 无
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: WorkspaceInfoDTO?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 根据模板创建工作空间
    @inlinable
    public func createWorkspaceByVersionControl(_ input: CreateWorkspaceByVersionControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspaceByVersionControlResponse> {
        self.client.execute(action: "CreateWorkspaceByVersionControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 根据模板创建工作空间
    @inlinable
    public func createWorkspaceByVersionControl(_ input: CreateWorkspaceByVersionControlRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceByVersionControlResponse {
        try await self.client.execute(action: "CreateWorkspaceByVersionControl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 根据模板创建工作空间
    @inlinable
    public func createWorkspaceByVersionControl(workspaceDTO: WorkspaceDTO, cloudStudioSessionTeam: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateWorkspaceByVersionControlResponse> {
        self.createWorkspaceByVersionControl(.init(workspaceDTO: workspaceDTO, cloudStudioSessionTeam: cloudStudioSessionTeam), region: region, logger: logger, on: eventLoop)
    }

    /// 根据模板创建工作空间
    @inlinable
    public func createWorkspaceByVersionControl(workspaceDTO: WorkspaceDTO, cloudStudioSessionTeam: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateWorkspaceByVersionControlResponse {
        try await self.createWorkspaceByVersionControl(.init(workspaceDTO: workspaceDTO, cloudStudioSessionTeam: cloudStudioSessionTeam), region: region, logger: logger, on: eventLoop)
    }
}
