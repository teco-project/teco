//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cme {
    /// DeleteProject请求参数结构体
    public struct DeleteProjectRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 要删除的项目 Id。
        public let projectId: String

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以删除一切项目。如果指定操作者，则操作者必须为项目所有者。
        public let `operator`: String?

        public init(platform: String, projectId: String, operator: String? = nil) {
            self.platform = platform
            self.projectId = projectId
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case projectId = "ProjectId"
            case `operator` = "Operator"
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
    ///
    /// 删除项目。
    @inlinable
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteProjectResponse > {
        self.client.execute(action: "DeleteProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除项目
    ///
    /// 删除项目。
    @inlinable
    public func deleteProject(_ input: DeleteProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectResponse {
        try await self.client.execute(action: "DeleteProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除项目
    ///
    /// 删除项目。
    @inlinable
    public func deleteProject(platform: String, projectId: String, operator: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteProjectResponse > {
        self.deleteProject(DeleteProjectRequest(platform: platform, projectId: projectId, operator: `operator`), logger: logger, on: eventLoop)
    }

    /// 删除项目
    ///
    /// 删除项目。
    @inlinable
    public func deleteProject(platform: String, projectId: String, operator: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteProjectResponse {
        try await self.deleteProject(DeleteProjectRequest(platform: platform, projectId: projectId, operator: `operator`), logger: logger, on: eventLoop)
    }
}
