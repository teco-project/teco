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

extension Iotexplorer {
    /// CreateProject请求参数结构体
    public struct CreateProjectRequest: TCRequestModel {
        /// 项目名称
        public let projectName: String

        /// 项目描述
        public let projectDesc: String

        /// 实例ID，不带实例ID，默认为公共实例
        public let instanceId: String?

        public init(projectName: String, projectDesc: String, instanceId: String? = nil) {
            self.projectName = projectName
            self.projectDesc = projectDesc
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case projectName = "ProjectName"
            case projectDesc = "ProjectDesc"
            case instanceId = "InstanceId"
        }
    }

    /// CreateProject返回参数结构体
    public struct CreateProjectResponse: TCResponseModel {
        /// 返回信息
        public let project: ProjectEntry

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case project = "Project"
            case requestId = "RequestId"
        }
    }

    /// 新建项目
    ///
    /// 为用户提供新建项目的能力，用于集中管理产品和应用。
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建项目
    ///
    /// 为用户提供新建项目的能力，用于集中管理产品和应用。
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建项目
    ///
    /// 为用户提供新建项目的能力，用于集中管理产品和应用。
    @inlinable
    public func createProject(projectName: String, projectDesc: String, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.createProject(CreateProjectRequest(projectName: projectName, projectDesc: projectDesc, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 新建项目
    ///
    /// 为用户提供新建项目的能力，用于集中管理产品和应用。
    @inlinable
    public func createProject(projectName: String, projectDesc: String, instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.createProject(CreateProjectRequest(projectName: projectName, projectDesc: projectDesc, instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
