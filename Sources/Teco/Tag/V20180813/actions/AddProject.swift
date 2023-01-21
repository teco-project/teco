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

extension Tag {
    /// AddProject请求参数结构体
    public struct AddProjectRequest: TCRequestModel {
        /// 项目名称
        public let projectName: String

        /// 项目描述
        public let info: String?

        public init(projectName: String, info: String? = nil) {
            self.projectName = projectName
            self.info = info
        }

        enum CodingKeys: String, CodingKey {
            case projectName = "ProjectName"
            case info = "Info"
        }
    }

    /// AddProject返回参数结构体
    public struct AddProjectResponse: TCResponseModel {
        /// 项目Id
        public let projectId: UInt64

        /// 是否为新项目
        public let isNew: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case isNew = "IsNew"
            case requestId = "RequestId"
        }
    }

    /// 创建项目
    @inlinable
    public func addProject(_ input: AddProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddProjectResponse> {
        self.client.execute(action: "AddProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建项目
    @inlinable
    public func addProject(_ input: AddProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddProjectResponse {
        try await self.client.execute(action: "AddProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建项目
    @inlinable
    public func addProject(projectName: String, info: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddProjectResponse> {
        self.addProject(AddProjectRequest(projectName: projectName, info: info), region: region, logger: logger, on: eventLoop)
    }

    /// 创建项目
    @inlinable
    public func addProject(projectName: String, info: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddProjectResponse {
        try await self.addProject(AddProjectRequest(projectName: projectName, info: info), region: region, logger: logger, on: eventLoop)
    }
}
