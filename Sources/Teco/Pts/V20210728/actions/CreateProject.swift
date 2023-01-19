//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Pts {
    /// CreateProject请求参数结构体
    public struct CreateProjectRequest: TCRequestModel {
        /// 项目名
        public let name: String

        /// 项目描述
        public let description: String?

        /// 标签数组
        public let tags: [TagSpec]?

        public init(name: String, description: String? = nil, tags: [TagSpec]? = nil) {
            self.name = name
            self.description = description
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case tags = "Tags"
        }
    }

    /// CreateProject返回参数结构体
    public struct CreateProjectResponse: TCResponseModel {
        /// 项目ID
        public let projectId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case requestId = "RequestId"
        }
    }

    /// 创建项目
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建项目
    @inlinable
    public func createProject(_ input: CreateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.client.execute(action: "CreateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建项目
    @inlinable
    public func createProject(name: String, description: String? = nil, tags: [TagSpec]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProjectResponse> {
        self.createProject(CreateProjectRequest(name: name, description: description, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建项目
    @inlinable
    public func createProject(name: String, description: String? = nil, tags: [TagSpec]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.createProject(CreateProjectRequest(name: name, description: description, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
