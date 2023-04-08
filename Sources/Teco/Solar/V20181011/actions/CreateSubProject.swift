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

extension Solar {
    /// CreateSubProject请求参数结构体
    public struct CreateSubProjectRequest: TCRequestModel {
        /// 所属项目id
        public let projectId: String

        /// 子项目名称
        public let subProjectName: String

        public init(projectId: String, subProjectName: String) {
            self.projectId = projectId
            self.subProjectName = subProjectName
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case subProjectName = "SubProjectName"
        }
    }

    /// CreateSubProject返回参数结构体
    public struct CreateSubProjectResponse: TCResponseModel {
        /// 子项目id
        public let subProjectId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subProjectId = "SubProjectId"
            case requestId = "RequestId"
        }
    }

    /// 创建子项目
    @inlinable
    public func createSubProject(_ input: CreateSubProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubProjectResponse> {
        self.client.execute(action: "CreateSubProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建子项目
    @inlinable
    public func createSubProject(_ input: CreateSubProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubProjectResponse {
        try await self.client.execute(action: "CreateSubProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建子项目
    @inlinable
    public func createSubProject(projectId: String, subProjectName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubProjectResponse> {
        self.createSubProject(.init(projectId: projectId, subProjectName: subProjectName), region: region, logger: logger, on: eventLoop)
    }

    /// 创建子项目
    @inlinable
    public func createSubProject(projectId: String, subProjectName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubProjectResponse {
        try await self.createSubProject(.init(projectId: projectId, subProjectName: subProjectName), region: region, logger: logger, on: eventLoop)
    }
}
