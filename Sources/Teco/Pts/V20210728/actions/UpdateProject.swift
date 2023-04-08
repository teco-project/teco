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

extension Pts {
    /// UpdateProject请求参数结构体
    public struct UpdateProjectRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        /// 项目名
        public let name: String?

        /// 项目描述
        public let description: String?

        /// 项目状态，默认传递1
        public let status: Int64?

        /// 标签数组
        public let tags: [TagSpec]?

        public init(projectId: String, name: String? = nil, description: String? = nil, status: Int64? = nil, tags: [TagSpec]? = nil) {
            self.projectId = projectId
            self.name = name
            self.description = description
            self.status = status
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case name = "Name"
            case description = "Description"
            case status = "Status"
            case tags = "Tags"
        }
    }

    /// UpdateProject返回参数结构体
    public struct UpdateProjectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新项目
    @inlinable @discardableResult
    public func updateProject(_ input: UpdateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectResponse> {
        self.client.execute(action: "UpdateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新项目
    @inlinable @discardableResult
    public func updateProject(_ input: UpdateProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProjectResponse {
        try await self.client.execute(action: "UpdateProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新项目
    @inlinable @discardableResult
    public func updateProject(projectId: String, name: String? = nil, description: String? = nil, status: Int64? = nil, tags: [TagSpec]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateProjectResponse> {
        self.updateProject(.init(projectId: projectId, name: name, description: description, status: status, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 更新项目
    @inlinable @discardableResult
    public func updateProject(projectId: String, name: String? = nil, description: String? = nil, status: Int64? = nil, tags: [TagSpec]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateProjectResponse {
        try await self.updateProject(.init(projectId: projectId, name: name, description: description, status: status, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
