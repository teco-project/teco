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

extension Solar {
    /// DeleteProject请求参数结构体
    public struct DeleteProjectRequest: TCRequestModel {
        /// 项目ID
        public let projectId: String

        public init(projectId: String) {
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
        }
    }

    /// DeleteProject返回参数结构体
    public struct DeleteProjectResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除项目
    @inlinable
    public func deleteProject(_ input: DeleteProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectResponse> {
        self.client.execute(action: "DeleteProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除项目
    @inlinable
    public func deleteProject(_ input: DeleteProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectResponse {
        try await self.client.execute(action: "DeleteProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除项目
    @inlinable
    public func deleteProject(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteProjectResponse> {
        self.deleteProject(DeleteProjectRequest(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除项目
    @inlinable
    public func deleteProject(projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectResponse {
        try await self.deleteProject(DeleteProjectRequest(projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
