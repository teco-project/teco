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

extension Solar {
    /// ModifyProject请求参数结构体
    public struct ModifyProjectRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        /// 项目名称
        public let projectName: String

        /// 项目预算
        public let projectBudget: String

        /// 项目机构
        public let projectOrg: String

        /// 项目简介
        public let projectIntroduction: String

        /// 项目机构Id
        public let projectOrgId: String?

        public init(projectId: String, projectName: String, projectBudget: String, projectOrg: String, projectIntroduction: String, projectOrgId: String? = nil) {
            self.projectId = projectId
            self.projectName = projectName
            self.projectBudget = projectBudget
            self.projectOrg = projectOrg
            self.projectIntroduction = projectIntroduction
            self.projectOrgId = projectOrgId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case projectName = "ProjectName"
            case projectBudget = "ProjectBudget"
            case projectOrg = "ProjectOrg"
            case projectIntroduction = "ProjectIntroduction"
            case projectOrgId = "ProjectOrgId"
        }
    }

    /// ModifyProject返回参数结构体
    public struct ModifyProjectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改项目
    @inlinable @discardableResult
    public func modifyProject(_ input: ModifyProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProjectResponse> {
        self.client.execute(action: "ModifyProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改项目
    @inlinable @discardableResult
    public func modifyProject(_ input: ModifyProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProjectResponse {
        try await self.client.execute(action: "ModifyProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改项目
    @inlinable @discardableResult
    public func modifyProject(projectId: String, projectName: String, projectBudget: String, projectOrg: String, projectIntroduction: String, projectOrgId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyProjectResponse> {
        self.modifyProject(.init(projectId: projectId, projectName: projectName, projectBudget: projectBudget, projectOrg: projectOrg, projectIntroduction: projectIntroduction, projectOrgId: projectOrgId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改项目
    @inlinable @discardableResult
    public func modifyProject(projectId: String, projectName: String, projectBudget: String, projectOrg: String, projectIntroduction: String, projectOrgId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyProjectResponse {
        try await self.modifyProject(.init(projectId: projectId, projectName: projectName, projectBudget: projectBudget, projectOrg: projectOrg, projectIntroduction: projectIntroduction, projectOrgId: projectOrgId), region: region, logger: logger, on: eventLoop)
    }
}
