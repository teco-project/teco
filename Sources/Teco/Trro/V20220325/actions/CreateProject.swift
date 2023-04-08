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

import TecoCore

extension Trro {
    /// CreateProject请求参数结构体
    public struct CreateProjectRequest: TCRequestModel {
        /// 项目名称，长度不超过24个字符
        public let projectName: String

        /// 项目描述，长度不超过120个字符，不填默认为空
        public let projectDescription: String?

        /// 权限模式，black为黑名单，white为白名单，不填默认为black
        public let policyMode: String?

        public init(projectName: String, projectDescription: String? = nil, policyMode: String? = nil) {
            self.projectName = projectName
            self.projectDescription = projectDescription
            self.policyMode = policyMode
        }

        enum CodingKeys: String, CodingKey {
            case projectName = "ProjectName"
            case projectDescription = "ProjectDescription"
            case policyMode = "PolicyMode"
        }
    }

    /// CreateProject返回参数结构体
    public struct CreateProjectResponse: TCResponseModel {
        /// 项目ID，长度为16位
        public let projectId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case requestId = "RequestId"
        }
    }

    /// 创建项目
    ///
    /// 用于创建项目
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建项目
    ///
    /// 用于创建项目
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建项目
    ///
    /// 用于创建项目
    @inlinable
    public func createProject(projectName: String, projectDescription: String? = nil, policyMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.createProject(.init(projectName: projectName, projectDescription: projectDescription, policyMode: policyMode), region: region, logger: logger, on: eventLoop)
    }

    /// 创建项目
    ///
    /// 用于创建项目
    @inlinable
    public func createProject(projectName: String, projectDescription: String? = nil, policyMode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.createProject(.init(projectName: projectName, projectDescription: projectDescription, policyMode: policyMode), region: region, logger: logger, on: eventLoop)
    }
}
